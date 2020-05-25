// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.3 (lin64) Build 2405991 Thu Dec  6 23:36:41 MST 2018
// Date        : Fri Mar 13 12:35:31 2020
// Host        : judas.joaomiguelvieira.com running 64-bit unknown
// Command     : write_verilog -force -mode synth_stub
//               /home/joaovieira/reconfigurable_computing/xilinx/pl2ps_64bit/BandwidthAssessment.srcs/sources_1/bd/design_1/ip/design_1_AXI4StreamConstant_0_3/design_1_AXI4StreamConstant_0_3_stub.v
// Design      : design_1_AXI4StreamConstant_0_3
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z010clg400-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* x_core_info = "AXI4StreamConstant_v1_0,Vivado 2018.3" *)
module design_1_AXI4StreamConstant_0_3(m00_axis_tdata, m00_axis_tstrb, 
  m00_axis_tlast, m00_axis_tvalid, m00_axis_tready, m00_axis_aclk, m00_axis_aresetn)
/* synthesis syn_black_box black_box_pad_pin="m00_axis_tdata[63:0],m00_axis_tstrb[7:0],m00_axis_tlast,m00_axis_tvalid,m00_axis_tready,m00_axis_aclk,m00_axis_aresetn" */;
  output [63:0]m00_axis_tdata;
  output [7:0]m00_axis_tstrb;
  output m00_axis_tlast;
  output m00_axis_tvalid;
  input m00_axis_tready;
  input m00_axis_aclk;
  input m00_axis_aresetn;
endmodule
