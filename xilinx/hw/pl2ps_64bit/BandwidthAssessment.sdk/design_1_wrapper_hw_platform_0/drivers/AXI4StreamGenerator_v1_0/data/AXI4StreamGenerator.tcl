

proc generate {drv_handle} {
	xdefine_include_file $drv_handle "xparameters.h" "AXI4StreamGenerator" "NUM_INSTANCES" "DEVICE_ID"  "C_SG_Ctrl_BASEADDR" "C_SG_Ctrl_HIGHADDR"
}
