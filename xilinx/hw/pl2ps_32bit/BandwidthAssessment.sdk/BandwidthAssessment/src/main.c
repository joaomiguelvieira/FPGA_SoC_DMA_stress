#include <stdio.h>
#include "xil_printf.h"
#include "xil_cache.h"
#include "xtime_l.h"
#include "DMAInterface.h"
#include <math.h>

/* configuration */
#define STREAM_SIZE 32 * 1024 * 1024 // byte
#define FAST_MODE
#define N_RUNS 200

/* static memory management */
#define DATA_SRC1 0x00100000
#define DATA_DST1 DATA_SRC1 + (STREAM_SIZE / 4)
#define DATA_SRC2 DATA_DST1 + (STREAM_SIZE / 4)
#define DATA_DST2 DATA_SRC2 + (STREAM_SIZE / 4)
#define DATA_SRC3 DATA_DST2 + (STREAM_SIZE / 4)
#define DATA_DST3 DATA_SRC3 + (STREAM_SIZE / 4)
#define DATA_SRC4 DATA_DST3 + (STREAM_SIZE / 4)
#define DATA_DST4 DATA_SRC4 + (STREAM_SIZE / 4)

/* global variables */
volatile int *data_src1, *data_dst1;
volatile int *data_src2, *data_dst2;
volatile int *data_src3, *data_dst3;
volatile int *data_src4, *data_dst4;

void initialize() {
	/* disable cache */
	Xil_DCacheDisable();

	/* initialize global pointers */
	data_src1 = (int *) DATA_SRC1; data_dst1 = (int *) DATA_DST1;
	data_src2 = (int *) DATA_SRC2; data_dst2 = (int *) DATA_DST2;
	data_src3 = (int *) DATA_SRC3; data_dst3 = (int *) DATA_DST3;
	data_src4 = (int *) DATA_SRC4; data_dst4 = (int *) DATA_DST4;

	/* initialize DMAs */
	if (initXAxiDmaSimplePollMode(0, recvMode) == FAILURE ||
			initXAxiDmaSimplePollMode(1, recvMode) == FAILURE ||
			initXAxiDmaSimplePollMode(2, recvMode) == FAILURE ||
			initXAxiDmaSimplePollMode(3, recvMode) == FAILURE) {
		xil_printf("[ERROR] Could not initialize all DMA engines\n\r");
		exit(-1);
	}
}

void pl2ps4() {
	/* setup receive */
	DMATransfer((void *) data_dst1, STREAM_SIZE, recv, 0);
	DMATransfer((void *) data_dst2, STREAM_SIZE, recv, 1);
	DMATransfer((void *) data_dst3, STREAM_SIZE, recv, 2);
	DMATransfer((void *) data_dst4, STREAM_SIZE, recv, 3);

	/* wait for completion */
	DMAWaitForCompletion(recv, 0);
	DMAWaitForCompletion(recv, 1);
	DMAWaitForCompletion(recv, 2);
	DMAWaitForCompletion(recv, 3);
}

void pl2ps3() {
	/* setup receive */
	DMATransfer((void *) data_dst1, STREAM_SIZE, recv, 0);
	DMATransfer((void *) data_dst2, STREAM_SIZE, recv, 1);
	DMATransfer((void *) data_dst3, STREAM_SIZE, recv, 2);

	/* wait for completion */
	DMAWaitForCompletion(recv, 0);
	DMAWaitForCompletion(recv, 1);
	DMAWaitForCompletion(recv, 2);
}

void pl2ps2() {
	/* setup receive */
	DMATransfer((void *) data_dst1, STREAM_SIZE, recv, 0);
	DMATransfer((void *) data_dst3, STREAM_SIZE, recv, 1);

	/* wait for completion */
	DMAWaitForCompletion(recv, 0);
	DMAWaitForCompletion(recv, 1);
}

void pl2ps2_opt() {
	/* setup receive */
	DMATransfer((void *) data_dst1, STREAM_SIZE, recv, 0);
	DMATransfer((void *) data_dst3, STREAM_SIZE, recv, 2);

	/* wait for completion */
	DMAWaitForCompletion(recv, 0);
	DMAWaitForCompletion(recv, 2);
}

void pl2ps1() {
	/* setup receive */
	DMATransfer((void *) data_dst1, STREAM_SIZE, recv, 0);

	/* wait for completion */
	DMAWaitForCompletion(recv, 0);
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

	/* 1 DMA */
	double bandwidth1pl2ps[N_RUNS];
	for (int i = 0; i < N_RUNS; i++) {
#ifndef FAST_MODE
		xil_printf("Performing 32-bit PL to PS transfer...\n\r");
#endif
		XTime_GetTime(&start);
		pl2ps1();
		XTime_GetTime(&end);
		bandwidth1pl2ps[i] = STREAM_SIZE / (1.0 * (end - start) / (COUNTS_PER_SECOND / 1000000));
	}
	double bandwidth1pl2ps_avg = calculate_avg(bandwidth1pl2ps, N_RUNS);
	double bandwidth1pl2ps_min = calculate_min(bandwidth1pl2ps, N_RUNS);
	double bandwidth1pl2ps_max = calculate_max(bandwidth1pl2ps, N_RUNS);
	double bandwidth1pl2ps_sd  = calculate_sd(bandwidth1pl2ps, N_RUNS);

	/* 2 DMA */
	double bandwidth2pl2ps[N_RUNS];
	for (int i = 0; i < N_RUNS; i++) {
#ifndef FAST_MODE
		xil_printf("Performing 64-bit PL to PS transfer...\n\r");
#endif
		XTime_GetTime(&start);
		pl2ps2();
		XTime_GetTime(&end);
		bandwidth2pl2ps[i] = STREAM_SIZE * 2 / (1.0 * (end - start) / (COUNTS_PER_SECOND / 1000000));
	}
	double bandwidth2pl2ps_avg = calculate_avg(bandwidth2pl2ps, N_RUNS);
	double bandwidth2pl2ps_min = calculate_min(bandwidth2pl2ps, N_RUNS);
	double bandwidth2pl2ps_max = calculate_max(bandwidth2pl2ps, N_RUNS);
	double bandwidth2pl2ps_sd  = calculate_sd(bandwidth2pl2ps, N_RUNS);

	/* 2 DMA */
	double bandwidth2pl2ps_opt[N_RUNS];
	for (int i = 0; i < N_RUNS; i++) {
#ifndef FAST_MODE
		xil_printf("Performing 64-bit PL to PS optimized transfer...\n\r");
#endif
		XTime_GetTime(&start);
		pl2ps2_opt();
		XTime_GetTime(&end);
		bandwidth2pl2ps_opt[i] = STREAM_SIZE * 2 / (1.0 * (end - start) / (COUNTS_PER_SECOND / 1000000));
	}
	double bandwidth2pl2ps_opt_avg = calculate_avg(bandwidth2pl2ps_opt, N_RUNS);
	double bandwidth2pl2ps_opt_min = calculate_min(bandwidth2pl2ps_opt, N_RUNS);
	double bandwidth2pl2ps_opt_max = calculate_max(bandwidth2pl2ps_opt, N_RUNS);
	double bandwidth2pl2ps_opt_sd  = calculate_sd(bandwidth2pl2ps_opt, N_RUNS);

	/* 3 DMA */
	double bandwidth3pl2ps[N_RUNS];
	for (int i = 0; i < N_RUNS; i++) {
#ifndef FAST_MODE
		xil_printf("Performing 96-bit PL to PS transfer...\n\r");
#endif
		XTime_GetTime(&start);
		pl2ps3();
		XTime_GetTime(&end);
		bandwidth3pl2ps[i] = STREAM_SIZE * 3 / (1.0 * (end - start) / (COUNTS_PER_SECOND / 1000000));
	}
	double bandwidth3pl2ps_avg = calculate_avg(bandwidth3pl2ps, N_RUNS);
	double bandwidth3pl2ps_min = calculate_min(bandwidth3pl2ps, N_RUNS);
	double bandwidth3pl2ps_max = calculate_max(bandwidth3pl2ps, N_RUNS);
	double bandwidth3pl2ps_sd  = calculate_sd(bandwidth3pl2ps, N_RUNS);

	/* 4 DMA */
	double bandwidth4pl2ps[N_RUNS];
	for (int i = 0; i < N_RUNS; i++) {
#ifndef FAST_MODE
		xil_printf("Performing 128-bit PL to PS transfer...\n\r");
#endif
		XTime_GetTime(&start);
		pl2ps4();
		XTime_GetTime(&end);
		bandwidth4pl2ps[i] = STREAM_SIZE * 4 / (1.0 * (end - start) / (COUNTS_PER_SECOND / 1000000));
	}
	double bandwidth4pl2ps_avg = calculate_avg(bandwidth4pl2ps, N_RUNS);
	double bandwidth4pl2ps_min = calculate_min(bandwidth4pl2ps, N_RUNS);
	double bandwidth4pl2ps_max = calculate_max(bandwidth4pl2ps, N_RUNS);
	double bandwidth4pl2ps_sd  = calculate_sd(bandwidth4pl2ps, N_RUNS);

	/* summary */
		xil_printf("\n\r* DATA BLOCK SIZE: %d MiB\n\r", STREAM_SIZE / 1024 / 1024);
		xil_printf("* CHANNEL WIDTH: 32-bit\n\r");
		xil_printf("* N RUNS: %d\n\n\r", N_RUNS);
		xil_printf("====================================================================\n\r");
		xil_printf("| CHANNELS |  EXPECTED  |       OBSERVED (avg, min, max, sd)       |\n\r");
		xil_printf("--------------------------------------------------------------------\n\r");
		    printf("| 0        | 400 MB/s   | %.4f, %.4f, %.4f, %.4f\n\r", bandwidth1pl2ps_avg, bandwidth1pl2ps_min, bandwidth1pl2ps_max, bandwidth1pl2ps_sd);
		    printf("| 0,1      | 800 MB/s   | %.4f, %.4f, %.4f, %.4f\n\r", bandwidth2pl2ps_avg, bandwidth2pl2ps_min, bandwidth2pl2ps_max, bandwidth2pl2ps_sd);
		    printf("| 0,2      | 800 MB/s   | %.4f, %.4f, %.4f, %.4f\n\r", bandwidth2pl2ps_opt_avg, bandwidth2pl2ps_opt_min, bandwidth2pl2ps_opt_max, bandwidth2pl2ps_opt_sd);
		    printf("| 0,1,2    | 1200 MB/s  | %.4f, %.4f, %.4f, %.4f\n\r", bandwidth3pl2ps_avg, bandwidth3pl2ps_min, bandwidth3pl2ps_max, bandwidth3pl2ps_sd);
		    printf("| 0,1,2,3  | 1600 MB/s  | %.4f, %.4f, %.4f, %.4f\n\r", bandwidth4pl2ps_avg, bandwidth4pl2ps_min, bandwidth4pl2ps_max, bandwidth4pl2ps_sd);
		xil_printf("--------------------------------------------------------------------\n\r");

	return 0;
}
