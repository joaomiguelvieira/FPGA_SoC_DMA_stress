#include "DMAInterface.h"

XAxiDma axiDma[NUMBER_OF_DMA];

int initXAxiDmaSimplePollMode(DeviceID deviceID, Mode mode) {
	XAxiDma_Config *config;

	if(!(config = XAxiDma_LookupConfig(deviceID)) ||
			(XAxiDma_CfgInitialize(&axiDma[deviceID], config) != XST_SUCCESS) ||
			(XAxiDma_HasSg(&axiDma[deviceID])))
		return FAILURE;

	if (mode == recvMode || mode == dualMode)
		XAxiDma_IntrDisable(&axiDma[deviceID], XAXIDMA_IRQ_ALL_MASK, XAXIDMA_DEVICE_TO_DMA);

	if (mode == sendMode || mode == dualMode)
		XAxiDma_IntrDisable(&axiDma[deviceID], XAXIDMA_IRQ_ALL_MASK, XAXIDMA_DMA_TO_DEVICE);

	return SUCCESS;
}

int DMATransfer(void *baseAddr, int nBytes, Way w, DeviceID deviceID) {
	int path = (w == send) ? XAXIDMA_DMA_TO_DEVICE : XAXIDMA_DEVICE_TO_DMA;

	if(XAxiDma_SimpleTransfer(&axiDma[deviceID], (UINTPTR) baseAddr, nBytes, path) != XST_SUCCESS)
		return FAILURE;

	return SUCCESS;
}

void DMAWaitForCompletion(Way w, DeviceID deviceID) {
	int path = (w == send) ? XAXIDMA_DMA_TO_DEVICE : XAXIDMA_DEVICE_TO_DMA;

	// wait for transaction to end
	while(XAxiDma_Busy(&axiDma[deviceID], path));
}
