#include <stdio.h>
#include <stdlib.h>
#include <assert.h>
#include <fcntl.h>
#include <sys/mman.h>
#include <stdint.h>
#include <sys/time.h>
#include <unistd.h>
#include <math.h>

#include "../hps_soc_system.h"
#include "alt_generalpurpose_io.h"
#include "msgdma/msgdma.h"
#include "hps_linux.h"
#include "socal/hps.h"
#include "socal/socal.h"

#define DDR_START_ADDR 0x100000
#define LINUX_KERNEL_SIZE 0x30000000
#define READ_ADDR (LINUX_KERNEL_SIZE) // 768 MiB
#define WRITE_ADDR (READ_ADDR + 0x8000000) // 768 + 128 MiB
#define LENGTH 0x2000000 // 32MiB

#define CTRL_VALUE 0x1fffffff
#define N_RUNS 200

double getElapsedUS(struct timeval startTime, struct timeval endTime) {
  return (endTime.tv_sec - startTime.tv_sec) * 1000000.00 + (endTime.tv_usec - startTime.tv_usec);
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

int main(void) {
	printf("Hello world!\n");

	// open physical memory device
	int fd_dev_mem = open("/dev/mem", O_RDWR | O_SYNC);
	assert(fd_dev_mem != -1);

	// map fpga peripherals
	size_t h2f_lw_len = (intptr_t) ALT_LWFPGASLVS_UB_ADDR - (intptr_t) ALT_LWFPGASLVS_LB_ADDR + 1;
	void *h2f_lw_axi_master = mmap(NULL, h2f_lw_len,
			PROT_READ | PROT_WRITE, MAP_SHARED, fd_dev_mem, ALT_LWFPGASLVS_OFST);

	uint32_t *fpga_leds = h2f_lw_axi_master + PIO_0_BASE;
	void *csr_base = h2f_lw_axi_master + MSGDMA_0_CSR_BASE;
	void *descriptor_base = h2f_lw_axi_master + MSGDMA_0_DESCRIPTOR_SLAVE_BASE;

	*fpga_leds = 0x3ff;

	// Initialize memory at READ_ADDR until READ_ADDR + LENGTH to CTRL_VALUE
	void *read_section = mmap(NULL, LENGTH, PROT_READ | PROT_WRITE, MAP_SHARED, fd_dev_mem, READ_ADDR);
	assert(read_section != MAP_FAILED);

	void *write_section = mmap(NULL, LENGTH, PROT_READ | PROT_WRITE, MAP_SHARED, fd_dev_mem, WRITE_ADDR);
	assert(write_section != MAP_FAILED);

//	for (uint32_t *addr = (uint32_t *) read_section; addr < (uint32_t *) read_section + LENGTH / sizeof(uint32_t); addr++)
//		*addr = CTRL_VALUE;

	// create msgdma device and descriptor
	msgdma_dev dev = msgdma_csr_descriptor_inst(csr_base, descriptor_base,
			MSGDMA_0_DESCRIPTOR_SLAVE_DESCRIPTOR_FIFO_DEPTH,
			MSGDMA_0_CSR_BURST_ENABLE,
			MSGDMA_0_CSR_BURST_WRAPPING_SUPPORT,
			MSGDMA_0_CSR_DATA_FIFO_DEPTH,
			MSGDMA_0_CSR_DATA_WIDTH,
			MSGDMA_0_CSR_MAX_BURST_COUNT,
			MSGDMA_0_CSR_MAX_BYTE,
			MSGDMA_0_CSR_MAX_STRIDE,
			MSGDMA_0_CSR_PROGRAMMABLE_BURST_ENABLE,
			MSGDMA_0_CSR_STRIDE_ENABLE,
			MSGDMA_0_CSR_ENHANCED_FEATURES,
			MSGDMA_0_CSR_RESPONSE_PORT);
	msgdma_standard_descriptor desc;

	void *read_addr = (void *) READ_ADDR;
	void *write_addr = (void *) WRITE_ADDR;

	for (int s = 0x4; s <= LENGTH; s *= 2) {
		assert(msgdma_construct_standard_mm_to_mm_descriptor(&dev, &desc, read_addr, write_addr, s, 0x0) == 0);
	//	assert(msgdma_construct_standard_mm_to_st_descriptor(&dev, &desc, read_addr, LENGTH, 0x0) == 0);
	//	assert(msgdma_construct_standard_st_to_mm_descriptor(&dev, &desc, write_addr, LENGTH, 0x0) == 0);

		struct timeval startROI, endROI;
		double samples[N_RUNS];

		for (int i = 0; i < N_RUNS; i++) {
			// start ROI
			gettimeofday(&startROI, NULL);
			assert(msgdma_standard_descriptor_sync_transfer(&dev, &desc) == 0);
			msgdma_wait_until_idle(&dev);
			gettimeofday(&endROI, NULL);
			// end ROI

			double dt = getElapsedUS(startROI, endROI);
			samples[i] = 2 * s / dt;
		}

	//	for (uint32_t *addr = (uint32_t *) write_section; addr < (uint32_t *) write_section + LENGTH / sizeof(uint32_t); addr++)
	//		assert(*addr == CTRL_VALUE);

		printf("%.2f,%.2f,%.2f,%.4f\n", calculate_avg(samples, N_RUNS), calculate_min(samples, N_RUNS), calculate_max(samples, N_RUNS), calculate_sd(samples, N_RUNS));
	}

	return 0;
}
