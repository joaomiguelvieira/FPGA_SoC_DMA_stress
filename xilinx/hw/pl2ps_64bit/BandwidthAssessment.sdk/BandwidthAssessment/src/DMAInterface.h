#include "xaxidma.h"

#define SUCCESS 0
#define FAILURE 1

#define NUMBER_OF_DMA 8

typedef enum{sendMode, recvMode, dualMode} Mode;
typedef enum{send, recv} Way;
typedef int DeviceID;

int initXAxiDmaSimplePollMode(DeviceID deviceID, Mode mode);
int DMATransfer(void *baseAddr, int nBytes, Way w, DeviceID deviceID);
void DMAWaitForCompletion(Way w, DeviceID deviceID);
