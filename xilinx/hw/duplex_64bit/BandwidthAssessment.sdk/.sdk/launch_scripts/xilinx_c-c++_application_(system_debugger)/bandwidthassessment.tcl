connect -url tcp:127.0.0.1:3121
source /home/joaovieira/FPGA_SoC_DMA_stress/xilinx/hw/duplex_64bit/BandwidthAssessment.sdk/design_1_wrapper_hw_platform_0/ps7_init.tcl
targets -set -nocase -filter {name =~"APU*" && jtag_cable_name =~ "Digilent Zybo 210279787593A"} -index 0
rst -system
after 3000
targets -set -filter {jtag_cable_name =~ "Digilent Zybo 210279787593A" && level==0} -index 1
fpga -file /home/joaovieira/FPGA_SoC_DMA_stress/xilinx/hw/duplex_64bit/BandwidthAssessment.sdk/design_1_wrapper_hw_platform_0/design_1_wrapper.bit
targets -set -nocase -filter {name =~"APU*" && jtag_cable_name =~ "Digilent Zybo 210279787593A"} -index 0
loadhw -hw /home/joaovieira/FPGA_SoC_DMA_stress/xilinx/hw/duplex_64bit/BandwidthAssessment.sdk/design_1_wrapper_hw_platform_0/system.hdf -mem-ranges [list {0x40000000 0xbfffffff}]
configparams force-mem-access 1
targets -set -nocase -filter {name =~"APU*" && jtag_cable_name =~ "Digilent Zybo 210279787593A"} -index 0
ps7_init
ps7_post_config
targets -set -nocase -filter {name =~ "ARM*#0" && jtag_cable_name =~ "Digilent Zybo 210279787593A"} -index 0
dow /home/joaovieira/FPGA_SoC_DMA_stress/xilinx/hw/duplex_64bit/BandwidthAssessment.sdk/BandwidthAssessment/Debug/BandwidthAssessment.elf
configparams force-mem-access 0
targets -set -nocase -filter {name =~ "ARM*#0" && jtag_cable_name =~ "Digilent Zybo 210279787593A"} -index 0
con
