#include <stdio.h>
#include "xil_printf.h"
#include "xil_cache.h"
#include "xtime_l.h"
#include "DMAInterface.h"
#include <math.h>

/* configuration */
#define BLOCK_SIZE 256 * 1024 * 1024 // byte
#define MAX_STREAM_SIZE 32 * 1024 * 1024 // byte
#define N_RUNS 200

/* static memory management */
#define DATA_SRC 0x00100000
#define DATA_DST DATA_SRC + (BLOCK_SIZE / 4)

/* global variables */
volatile int *data_src, *data_dst;

void initialize() {
	/* disable cache */
	Xil_DCacheDisable();

	/* initialize global pointers */
	data_src = (int *) DATA_SRC;
	data_dst = (int *) DATA_DST;

	/* initialize DMAs */
	if (initXAxiDmaSimplePollMode(0, sendMode) == FAILURE ||
			initXAxiDmaSimplePollMode(1, recvMode) == FAILURE) {
		xil_printf("[ERROR] Could not initialize all DMA engines\n\r");
		exit(-1);
	}
}

void duplex1(int stream_size) {
	/* setup receive */
	DMATransfer((void *) data_dst, stream_size, recv, 1);

	/* setup send */
	DMATransfer((void *) data_src, stream_size, send, 0);

	/* wait for completion */
	DMAWaitForCompletion(recv, 1);
}

double calculate_avg(double *values, int n_values) {
	double accum = 0;
	for (int i = 0; i < n_values; i++)
		accum += values[i];

	return accum / n_values;
}

double calculate_min(double *values, int n_values) {
	double min = values[0];
	for (int i = 1; i < n_values; i++)
		if (values[i] < min)
			min = values[i];

	return min;
}

double calculate_max(double *values, int n_values) {
	double max = values[0];
	for (int i = 1; i < n_values; i++)
		if (values[i] > max)
			max = values[i];

	return max;
}

double calculate_sd(double *values, int n_values) {
	double avg = calculate_avg(values, n_values);

	double sd = 0;
	for (int i = 0; i < n_values; i++) {
		double elem = values[i] - avg;
		elem *= elem;
		sd += elem;
	}

	sd /= n_values;
	return sqrt(sd);
}

int main(int argc, char **argv) {
	XTime start, end;

	initialize();

	xil_printf("\n\r* SECTOR SIZE: %d MB\n\r", BLOCK_SIZE / 1024 / 1024);
	xil_printf("* CHANNEL WIDTH: 64-bit\n\r");
	xil_printf("* N RUNS: %d\n\n\r", N_RUNS);

	xil_printf("RESULTS IN CSV:\n\n\r");
	xil_printf("------------------------------------------------------------\n\r");
	xil_printf("BLOCK SIZE,EXPECTED,AVG,MIN,MAX,SD\n\r");

	double bandwidthDuplex[N_RUNS];
	for (int i = 4; i <= MAX_STREAM_SIZE; i *= 2) {
		for (int j = 0; j < N_RUNS; j++) {
			XTime_GetTime(&start);
			duplex1(i);
			XTime_GetTime(&end);
			bandwidthDuplex[j] = i * 2 / (1.0 * (end - start) / (COUNTS_PER_SECOND / 1000000));
		}

		double bandwidthDuplex_avg = calculate_avg(bandwidthDuplex, N_RUNS);
		double bandwidthDuplex_min = calculate_min(bandwidthDuplex, N_RUNS);
		double bandwidthDuplex_max = calculate_max(bandwidthDuplex, N_RUNS);
		double bandwidthDuplex_sd  = calculate_sd(bandwidthDuplex, N_RUNS);

		printf("%d,%.4f,%.4f,%.4f,%.4f,%.4f\n\r", i, 8.0 * 100 * 2, bandwidthDuplex_avg, bandwidthDuplex_min, bandwidthDuplex_max, bandwidthDuplex_sd);
	}
	xil_printf("------------------------------------------------------------\n\r");

	return 0;
}
