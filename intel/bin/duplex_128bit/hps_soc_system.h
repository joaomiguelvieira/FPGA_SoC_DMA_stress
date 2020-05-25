#ifndef _ALTERA_HPS_SOC_SYSTEM_H_
#define _ALTERA_HPS_SOC_SYSTEM_H_

/*
 * This file was automatically generated by the swinfo2header utility.
 * 
 * Created from SOPC Builder system 'soc_system' in
 * file 'DDR_FPGA/hw/quartus/soc_system.sopcinfo'.
 */

/*
 * This file contains macros for module 'hps_0' and devices
 * connected to the following master:
 *   h2f_lw_axi_master
 * 
 * Do not include this header file and another header file created for a
 * different module or master group at the same time.
 * Doing so may result in duplicate macro names.
 * Instead, use the system header file which has macros with unique names.
 */

/*
 * Macros for device 'msgdma_0_csr', class 'altera_msgdma'
 * The macros are prefixed with 'MSGDMA_0_CSR_'.
 * The prefix is the slave descriptor.
 */
#define MSGDMA_0_CSR_COMPONENT_TYPE altera_msgdma
#define MSGDMA_0_CSR_COMPONENT_NAME msgdma_0
#define MSGDMA_0_CSR_BASE 0x0
#define MSGDMA_0_CSR_SPAN 32
#define MSGDMA_0_CSR_END 0x1f
#define MSGDMA_0_CSR_BURST_ENABLE 1
#define MSGDMA_0_CSR_BURST_WRAPPING_SUPPORT 0
#define MSGDMA_0_CSR_CHANNEL_ENABLE 0
#define MSGDMA_0_CSR_CHANNEL_ENABLE_DERIVED 0
#define MSGDMA_0_CSR_CHANNEL_WIDTH 8
#define MSGDMA_0_CSR_DATA_FIFO_DEPTH 1024
#define MSGDMA_0_CSR_DATA_WIDTH 128
#define MSGDMA_0_CSR_DESCRIPTOR_FIFO_DEPTH 128
#define MSGDMA_0_CSR_DMA_MODE 0
#define MSGDMA_0_CSR_ENHANCED_FEATURES 0
#define MSGDMA_0_CSR_ERROR_ENABLE 0
#define MSGDMA_0_CSR_ERROR_ENABLE_DERIVED 0
#define MSGDMA_0_CSR_ERROR_WIDTH 8
#define MSGDMA_0_CSR_MAX_BURST_COUNT 16
#define MSGDMA_0_CSR_MAX_BYTE 368435456
#define MSGDMA_0_CSR_MAX_STRIDE 1
#define MSGDMA_0_CSR_PACKET_ENABLE 0
#define MSGDMA_0_CSR_PACKET_ENABLE_DERIVED 0
#define MSGDMA_0_CSR_PREFETCHER_ENABLE 0
#define MSGDMA_0_CSR_PROGRAMMABLE_BURST_ENABLE 0
#define MSGDMA_0_CSR_RESPONSE_PORT 2
#define MSGDMA_0_CSR_STRIDE_ENABLE 0
#define MSGDMA_0_CSR_STRIDE_ENABLE_DERIVED 0
#define MSGDMA_0_CSR_TRANSFER_TYPE Aligned Accesses

/*
 * Macros for device 'msgdma_0_descriptor_slave', class 'altera_msgdma'
 * The macros are prefixed with 'MSGDMA_0_DESCRIPTOR_SLAVE_'.
 * The prefix is the slave descriptor.
 */
#define MSGDMA_0_DESCRIPTOR_SLAVE_COMPONENT_TYPE altera_msgdma
#define MSGDMA_0_DESCRIPTOR_SLAVE_COMPONENT_NAME msgdma_0
#define MSGDMA_0_DESCRIPTOR_SLAVE_BASE 0x20
#define MSGDMA_0_DESCRIPTOR_SLAVE_SPAN 16
#define MSGDMA_0_DESCRIPTOR_SLAVE_END 0x2f
#define MSGDMA_0_DESCRIPTOR_SLAVE_BURST_ENABLE 1
#define MSGDMA_0_DESCRIPTOR_SLAVE_BURST_WRAPPING_SUPPORT 0
#define MSGDMA_0_DESCRIPTOR_SLAVE_CHANNEL_ENABLE 0
#define MSGDMA_0_DESCRIPTOR_SLAVE_CHANNEL_ENABLE_DERIVED 0
#define MSGDMA_0_DESCRIPTOR_SLAVE_CHANNEL_WIDTH 8
#define MSGDMA_0_DESCRIPTOR_SLAVE_DATA_FIFO_DEPTH 1024
#define MSGDMA_0_DESCRIPTOR_SLAVE_DATA_WIDTH 128
#define MSGDMA_0_DESCRIPTOR_SLAVE_DESCRIPTOR_FIFO_DEPTH 128
#define MSGDMA_0_DESCRIPTOR_SLAVE_DMA_MODE 0
#define MSGDMA_0_DESCRIPTOR_SLAVE_ENHANCED_FEATURES 0
#define MSGDMA_0_DESCRIPTOR_SLAVE_ERROR_ENABLE 0
#define MSGDMA_0_DESCRIPTOR_SLAVE_ERROR_ENABLE_DERIVED 0
#define MSGDMA_0_DESCRIPTOR_SLAVE_ERROR_WIDTH 8
#define MSGDMA_0_DESCRIPTOR_SLAVE_MAX_BURST_COUNT 16
#define MSGDMA_0_DESCRIPTOR_SLAVE_MAX_BYTE 368435456
#define MSGDMA_0_DESCRIPTOR_SLAVE_MAX_STRIDE 1
#define MSGDMA_0_DESCRIPTOR_SLAVE_PACKET_ENABLE 0
#define MSGDMA_0_DESCRIPTOR_SLAVE_PACKET_ENABLE_DERIVED 0
#define MSGDMA_0_DESCRIPTOR_SLAVE_PREFETCHER_ENABLE 0
#define MSGDMA_0_DESCRIPTOR_SLAVE_PROGRAMMABLE_BURST_ENABLE 0
#define MSGDMA_0_DESCRIPTOR_SLAVE_RESPONSE_PORT 2
#define MSGDMA_0_DESCRIPTOR_SLAVE_STRIDE_ENABLE 0
#define MSGDMA_0_DESCRIPTOR_SLAVE_STRIDE_ENABLE_DERIVED 0
#define MSGDMA_0_DESCRIPTOR_SLAVE_TRANSFER_TYPE Aligned Accesses

/*
 * Macros for device 'pio_0', class 'altera_avalon_pio'
 * The macros are prefixed with 'PIO_0_'.
 * The prefix is the slave descriptor.
 */
#define PIO_0_COMPONENT_TYPE altera_avalon_pio
#define PIO_0_COMPONENT_NAME pio_0
#define PIO_0_BASE 0x30
#define PIO_0_SPAN 16
#define PIO_0_END 0x3f
#define PIO_0_BIT_CLEARING_EDGE_REGISTER 0
#define PIO_0_BIT_MODIFYING_OUTPUT_REGISTER 0
#define PIO_0_CAPTURE 0
#define PIO_0_DATA_WIDTH 10
#define PIO_0_DO_TEST_BENCH_WIRING 0
#define PIO_0_DRIVEN_SIM_VALUE 0
#define PIO_0_EDGE_TYPE NONE
#define PIO_0_FREQ 100000000
#define PIO_0_HAS_IN 0
#define PIO_0_HAS_OUT 1
#define PIO_0_HAS_TRI 0
#define PIO_0_IRQ_TYPE NONE
#define PIO_0_RESET_VALUE 170


#endif /* _ALTERA_HPS_SOC_SYSTEM_H_ */
