// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.3 (lin64) Build 2405991 Thu Dec  6 23:36:41 MST 2018
// Date        : Wed Mar 11 21:57:57 2020
// Host        : judas.joaomiguelvieira.com running 64-bit unknown
// Command     : write_verilog -force -mode funcsim -rename_top design_1_AXI4StreamConstant32_0_2 -prefix
//               design_1_AXI4StreamConstant32_0_2_ design_1_AXI4StreamConstant32_0_0_sim_netlist.v
// Design      : design_1_AXI4StreamConstant32_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z010clg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module design_1_AXI4StreamConstant32_0_2_AXI4StreamConstant32_v1_0
   (m00_axis_tvalid,
    m00_axis_tlast,
    m00_axis_tready,
    m00_axis_aclk,
    m00_axis_aresetn);
  output m00_axis_tvalid;
  output m00_axis_tlast;
  input m00_axis_tready;
  input m00_axis_aclk;
  input m00_axis_aresetn;

  wire [31:0]counter;
  wire counter0_carry__0_n_0;
  wire counter0_carry__0_n_1;
  wire counter0_carry__0_n_2;
  wire counter0_carry__0_n_3;
  wire counter0_carry__1_n_0;
  wire counter0_carry__1_n_1;
  wire counter0_carry__1_n_2;
  wire counter0_carry__1_n_3;
  wire counter0_carry__2_n_0;
  wire counter0_carry__2_n_1;
  wire counter0_carry__2_n_2;
  wire counter0_carry__2_n_3;
  wire counter0_carry__3_n_0;
  wire counter0_carry__3_n_1;
  wire counter0_carry__3_n_2;
  wire counter0_carry__3_n_3;
  wire counter0_carry__4_n_0;
  wire counter0_carry__4_n_1;
  wire counter0_carry__4_n_2;
  wire counter0_carry__4_n_3;
  wire counter0_carry__5_n_0;
  wire counter0_carry__5_n_1;
  wire counter0_carry__5_n_2;
  wire counter0_carry__5_n_3;
  wire counter0_carry__6_n_2;
  wire counter0_carry__6_n_3;
  wire counter0_carry_n_0;
  wire counter0_carry_n_1;
  wire counter0_carry_n_2;
  wire counter0_carry_n_3;
  wire [31:0]counter_0;
  wire [31:1]data0;
  wire m00_axis_aclk;
  wire m00_axis_aresetn;
  wire m00_axis_tlast;
  wire m00_axis_tlast_i_1_n_0;
  wire m00_axis_tlast_i_2_n_0;
  wire m00_axis_tlast_i_3_n_0;
  wire m00_axis_tlast_i_4_n_0;
  wire m00_axis_tlast_i_5_n_0;
  wire m00_axis_tlast_i_6_n_0;
  wire m00_axis_tlast_i_7_n_0;
  wire m00_axis_tlast_i_8_n_0;
  wire m00_axis_tlast_i_9_n_0;
  wire m00_axis_tready;
  wire m00_axis_tvalid;
  wire m00_axis_tvalid_i_1_n_0;
  wire p_0_in;
  wire [3:2]NLW_counter0_carry__6_CO_UNCONNECTED;
  wire [3:3]NLW_counter0_carry__6_O_UNCONNECTED;

  CARRY4 counter0_carry
       (.CI(1'b0),
        .CO({counter0_carry_n_0,counter0_carry_n_1,counter0_carry_n_2,counter0_carry_n_3}),
        .CYINIT(counter[0]),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(data0[4:1]),
        .S(counter[4:1]));
  CARRY4 counter0_carry__0
       (.CI(counter0_carry_n_0),
        .CO({counter0_carry__0_n_0,counter0_carry__0_n_1,counter0_carry__0_n_2,counter0_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(data0[8:5]),
        .S(counter[8:5]));
  CARRY4 counter0_carry__1
       (.CI(counter0_carry__0_n_0),
        .CO({counter0_carry__1_n_0,counter0_carry__1_n_1,counter0_carry__1_n_2,counter0_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(data0[12:9]),
        .S(counter[12:9]));
  CARRY4 counter0_carry__2
       (.CI(counter0_carry__1_n_0),
        .CO({counter0_carry__2_n_0,counter0_carry__2_n_1,counter0_carry__2_n_2,counter0_carry__2_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(data0[16:13]),
        .S(counter[16:13]));
  CARRY4 counter0_carry__3
       (.CI(counter0_carry__2_n_0),
        .CO({counter0_carry__3_n_0,counter0_carry__3_n_1,counter0_carry__3_n_2,counter0_carry__3_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(data0[20:17]),
        .S(counter[20:17]));
  CARRY4 counter0_carry__4
       (.CI(counter0_carry__3_n_0),
        .CO({counter0_carry__4_n_0,counter0_carry__4_n_1,counter0_carry__4_n_2,counter0_carry__4_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(data0[24:21]),
        .S(counter[24:21]));
  CARRY4 counter0_carry__5
       (.CI(counter0_carry__4_n_0),
        .CO({counter0_carry__5_n_0,counter0_carry__5_n_1,counter0_carry__5_n_2,counter0_carry__5_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(data0[28:25]),
        .S(counter[28:25]));
  CARRY4 counter0_carry__6
       (.CI(counter0_carry__5_n_0),
        .CO({NLW_counter0_carry__6_CO_UNCONNECTED[3:2],counter0_carry__6_n_2,counter0_carry__6_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({NLW_counter0_carry__6_O_UNCONNECTED[3],data0[31:29]}),
        .S({1'b0,counter[31:29]}));
  LUT1 #(
    .INIT(2'h1)) 
    \counter[0]_i_1 
       (.I0(counter[0]),
        .O(counter_0[0]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \counter[10]_i_1 
       (.I0(m00_axis_tlast_i_5_n_0),
        .I1(m00_axis_tlast_i_4_n_0),
        .I2(m00_axis_tlast_i_3_n_0),
        .I3(m00_axis_tlast_i_2_n_0),
        .I4(data0[10]),
        .O(counter_0[10]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \counter[11]_i_1 
       (.I0(m00_axis_tlast_i_5_n_0),
        .I1(m00_axis_tlast_i_4_n_0),
        .I2(m00_axis_tlast_i_3_n_0),
        .I3(m00_axis_tlast_i_2_n_0),
        .I4(data0[11]),
        .O(counter_0[11]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \counter[12]_i_1 
       (.I0(m00_axis_tlast_i_5_n_0),
        .I1(m00_axis_tlast_i_4_n_0),
        .I2(m00_axis_tlast_i_3_n_0),
        .I3(m00_axis_tlast_i_2_n_0),
        .I4(data0[12]),
        .O(counter_0[12]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \counter[13]_i_1 
       (.I0(m00_axis_tlast_i_5_n_0),
        .I1(m00_axis_tlast_i_4_n_0),
        .I2(m00_axis_tlast_i_3_n_0),
        .I3(m00_axis_tlast_i_2_n_0),
        .I4(data0[13]),
        .O(counter_0[13]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \counter[14]_i_1 
       (.I0(m00_axis_tlast_i_5_n_0),
        .I1(m00_axis_tlast_i_4_n_0),
        .I2(m00_axis_tlast_i_3_n_0),
        .I3(m00_axis_tlast_i_2_n_0),
        .I4(data0[14]),
        .O(counter_0[14]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \counter[15]_i_1 
       (.I0(m00_axis_tlast_i_5_n_0),
        .I1(m00_axis_tlast_i_4_n_0),
        .I2(m00_axis_tlast_i_3_n_0),
        .I3(m00_axis_tlast_i_2_n_0),
        .I4(data0[15]),
        .O(counter_0[15]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \counter[16]_i_1 
       (.I0(m00_axis_tlast_i_5_n_0),
        .I1(m00_axis_tlast_i_4_n_0),
        .I2(m00_axis_tlast_i_3_n_0),
        .I3(m00_axis_tlast_i_2_n_0),
        .I4(data0[16]),
        .O(counter_0[16]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \counter[17]_i_1 
       (.I0(m00_axis_tlast_i_5_n_0),
        .I1(m00_axis_tlast_i_4_n_0),
        .I2(m00_axis_tlast_i_3_n_0),
        .I3(m00_axis_tlast_i_2_n_0),
        .I4(data0[17]),
        .O(counter_0[17]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \counter[18]_i_1 
       (.I0(m00_axis_tlast_i_5_n_0),
        .I1(m00_axis_tlast_i_4_n_0),
        .I2(m00_axis_tlast_i_3_n_0),
        .I3(m00_axis_tlast_i_2_n_0),
        .I4(data0[18]),
        .O(counter_0[18]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \counter[19]_i_1 
       (.I0(m00_axis_tlast_i_5_n_0),
        .I1(m00_axis_tlast_i_4_n_0),
        .I2(m00_axis_tlast_i_3_n_0),
        .I3(m00_axis_tlast_i_2_n_0),
        .I4(data0[19]),
        .O(counter_0[19]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \counter[1]_i_1 
       (.I0(m00_axis_tlast_i_5_n_0),
        .I1(m00_axis_tlast_i_4_n_0),
        .I2(m00_axis_tlast_i_3_n_0),
        .I3(m00_axis_tlast_i_2_n_0),
        .I4(data0[1]),
        .O(counter_0[1]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \counter[20]_i_1 
       (.I0(m00_axis_tlast_i_5_n_0),
        .I1(m00_axis_tlast_i_4_n_0),
        .I2(m00_axis_tlast_i_3_n_0),
        .I3(m00_axis_tlast_i_2_n_0),
        .I4(data0[20]),
        .O(counter_0[20]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \counter[21]_i_1 
       (.I0(m00_axis_tlast_i_5_n_0),
        .I1(m00_axis_tlast_i_4_n_0),
        .I2(m00_axis_tlast_i_3_n_0),
        .I3(m00_axis_tlast_i_2_n_0),
        .I4(data0[21]),
        .O(counter_0[21]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \counter[22]_i_1 
       (.I0(m00_axis_tlast_i_5_n_0),
        .I1(m00_axis_tlast_i_4_n_0),
        .I2(m00_axis_tlast_i_3_n_0),
        .I3(m00_axis_tlast_i_2_n_0),
        .I4(data0[22]),
        .O(counter_0[22]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \counter[23]_i_1 
       (.I0(m00_axis_tlast_i_5_n_0),
        .I1(m00_axis_tlast_i_4_n_0),
        .I2(m00_axis_tlast_i_3_n_0),
        .I3(m00_axis_tlast_i_2_n_0),
        .I4(data0[23]),
        .O(counter_0[23]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \counter[24]_i_1 
       (.I0(m00_axis_tlast_i_5_n_0),
        .I1(m00_axis_tlast_i_4_n_0),
        .I2(m00_axis_tlast_i_3_n_0),
        .I3(m00_axis_tlast_i_2_n_0),
        .I4(data0[24]),
        .O(counter_0[24]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \counter[25]_i_1 
       (.I0(m00_axis_tlast_i_5_n_0),
        .I1(m00_axis_tlast_i_4_n_0),
        .I2(m00_axis_tlast_i_3_n_0),
        .I3(m00_axis_tlast_i_2_n_0),
        .I4(data0[25]),
        .O(counter_0[25]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \counter[26]_i_1 
       (.I0(m00_axis_tlast_i_5_n_0),
        .I1(m00_axis_tlast_i_4_n_0),
        .I2(m00_axis_tlast_i_3_n_0),
        .I3(m00_axis_tlast_i_2_n_0),
        .I4(data0[26]),
        .O(counter_0[26]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \counter[27]_i_1 
       (.I0(m00_axis_tlast_i_5_n_0),
        .I1(m00_axis_tlast_i_4_n_0),
        .I2(m00_axis_tlast_i_3_n_0),
        .I3(m00_axis_tlast_i_2_n_0),
        .I4(data0[27]),
        .O(counter_0[27]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \counter[28]_i_1 
       (.I0(m00_axis_tlast_i_5_n_0),
        .I1(m00_axis_tlast_i_4_n_0),
        .I2(m00_axis_tlast_i_3_n_0),
        .I3(m00_axis_tlast_i_2_n_0),
        .I4(data0[28]),
        .O(counter_0[28]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \counter[29]_i_1 
       (.I0(m00_axis_tlast_i_5_n_0),
        .I1(m00_axis_tlast_i_4_n_0),
        .I2(m00_axis_tlast_i_3_n_0),
        .I3(m00_axis_tlast_i_2_n_0),
        .I4(data0[29]),
        .O(counter_0[29]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \counter[2]_i_1 
       (.I0(m00_axis_tlast_i_5_n_0),
        .I1(m00_axis_tlast_i_4_n_0),
        .I2(m00_axis_tlast_i_3_n_0),
        .I3(m00_axis_tlast_i_2_n_0),
        .I4(data0[2]),
        .O(counter_0[2]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \counter[30]_i_1 
       (.I0(m00_axis_tlast_i_5_n_0),
        .I1(m00_axis_tlast_i_4_n_0),
        .I2(m00_axis_tlast_i_3_n_0),
        .I3(m00_axis_tlast_i_2_n_0),
        .I4(data0[30]),
        .O(counter_0[30]));
  LUT1 #(
    .INIT(2'h1)) 
    \counter[31]_i_1 
       (.I0(m00_axis_aresetn),
        .O(p_0_in));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \counter[31]_i_2 
       (.I0(m00_axis_tlast_i_5_n_0),
        .I1(m00_axis_tlast_i_4_n_0),
        .I2(m00_axis_tlast_i_3_n_0),
        .I3(m00_axis_tlast_i_2_n_0),
        .I4(data0[31]),
        .O(counter_0[31]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \counter[3]_i_1 
       (.I0(m00_axis_tlast_i_5_n_0),
        .I1(m00_axis_tlast_i_4_n_0),
        .I2(m00_axis_tlast_i_3_n_0),
        .I3(m00_axis_tlast_i_2_n_0),
        .I4(data0[3]),
        .O(counter_0[3]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \counter[4]_i_1 
       (.I0(m00_axis_tlast_i_5_n_0),
        .I1(m00_axis_tlast_i_4_n_0),
        .I2(m00_axis_tlast_i_3_n_0),
        .I3(m00_axis_tlast_i_2_n_0),
        .I4(data0[4]),
        .O(counter_0[4]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \counter[5]_i_1 
       (.I0(m00_axis_tlast_i_5_n_0),
        .I1(m00_axis_tlast_i_4_n_0),
        .I2(m00_axis_tlast_i_3_n_0),
        .I3(m00_axis_tlast_i_2_n_0),
        .I4(data0[5]),
        .O(counter_0[5]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \counter[6]_i_1 
       (.I0(m00_axis_tlast_i_5_n_0),
        .I1(m00_axis_tlast_i_4_n_0),
        .I2(m00_axis_tlast_i_3_n_0),
        .I3(m00_axis_tlast_i_2_n_0),
        .I4(data0[6]),
        .O(counter_0[6]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \counter[7]_i_1 
       (.I0(m00_axis_tlast_i_5_n_0),
        .I1(m00_axis_tlast_i_4_n_0),
        .I2(m00_axis_tlast_i_3_n_0),
        .I3(m00_axis_tlast_i_2_n_0),
        .I4(data0[7]),
        .O(counter_0[7]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \counter[8]_i_1 
       (.I0(m00_axis_tlast_i_5_n_0),
        .I1(m00_axis_tlast_i_4_n_0),
        .I2(m00_axis_tlast_i_3_n_0),
        .I3(m00_axis_tlast_i_2_n_0),
        .I4(data0[8]),
        .O(counter_0[8]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \counter[9]_i_1 
       (.I0(m00_axis_tlast_i_5_n_0),
        .I1(m00_axis_tlast_i_4_n_0),
        .I2(m00_axis_tlast_i_3_n_0),
        .I3(m00_axis_tlast_i_2_n_0),
        .I4(data0[9]),
        .O(counter_0[9]));
  FDRE \counter_reg[0] 
       (.C(m00_axis_aclk),
        .CE(m00_axis_tready),
        .D(counter_0[0]),
        .Q(counter[0]),
        .R(p_0_in));
  FDRE \counter_reg[10] 
       (.C(m00_axis_aclk),
        .CE(m00_axis_tready),
        .D(counter_0[10]),
        .Q(counter[10]),
        .R(p_0_in));
  FDRE \counter_reg[11] 
       (.C(m00_axis_aclk),
        .CE(m00_axis_tready),
        .D(counter_0[11]),
        .Q(counter[11]),
        .R(p_0_in));
  FDRE \counter_reg[12] 
       (.C(m00_axis_aclk),
        .CE(m00_axis_tready),
        .D(counter_0[12]),
        .Q(counter[12]),
        .R(p_0_in));
  FDRE \counter_reg[13] 
       (.C(m00_axis_aclk),
        .CE(m00_axis_tready),
        .D(counter_0[13]),
        .Q(counter[13]),
        .R(p_0_in));
  FDRE \counter_reg[14] 
       (.C(m00_axis_aclk),
        .CE(m00_axis_tready),
        .D(counter_0[14]),
        .Q(counter[14]),
        .R(p_0_in));
  FDRE \counter_reg[15] 
       (.C(m00_axis_aclk),
        .CE(m00_axis_tready),
        .D(counter_0[15]),
        .Q(counter[15]),
        .R(p_0_in));
  FDRE \counter_reg[16] 
       (.C(m00_axis_aclk),
        .CE(m00_axis_tready),
        .D(counter_0[16]),
        .Q(counter[16]),
        .R(p_0_in));
  FDRE \counter_reg[17] 
       (.C(m00_axis_aclk),
        .CE(m00_axis_tready),
        .D(counter_0[17]),
        .Q(counter[17]),
        .R(p_0_in));
  FDRE \counter_reg[18] 
       (.C(m00_axis_aclk),
        .CE(m00_axis_tready),
        .D(counter_0[18]),
        .Q(counter[18]),
        .R(p_0_in));
  FDRE \counter_reg[19] 
       (.C(m00_axis_aclk),
        .CE(m00_axis_tready),
        .D(counter_0[19]),
        .Q(counter[19]),
        .R(p_0_in));
  FDRE \counter_reg[1] 
       (.C(m00_axis_aclk),
        .CE(m00_axis_tready),
        .D(counter_0[1]),
        .Q(counter[1]),
        .R(p_0_in));
  FDRE \counter_reg[20] 
       (.C(m00_axis_aclk),
        .CE(m00_axis_tready),
        .D(counter_0[20]),
        .Q(counter[20]),
        .R(p_0_in));
  FDRE \counter_reg[21] 
       (.C(m00_axis_aclk),
        .CE(m00_axis_tready),
        .D(counter_0[21]),
        .Q(counter[21]),
        .R(p_0_in));
  FDRE \counter_reg[22] 
       (.C(m00_axis_aclk),
        .CE(m00_axis_tready),
        .D(counter_0[22]),
        .Q(counter[22]),
        .R(p_0_in));
  FDRE \counter_reg[23] 
       (.C(m00_axis_aclk),
        .CE(m00_axis_tready),
        .D(counter_0[23]),
        .Q(counter[23]),
        .R(p_0_in));
  FDRE \counter_reg[24] 
       (.C(m00_axis_aclk),
        .CE(m00_axis_tready),
        .D(counter_0[24]),
        .Q(counter[24]),
        .R(p_0_in));
  FDRE \counter_reg[25] 
       (.C(m00_axis_aclk),
        .CE(m00_axis_tready),
        .D(counter_0[25]),
        .Q(counter[25]),
        .R(p_0_in));
  FDRE \counter_reg[26] 
       (.C(m00_axis_aclk),
        .CE(m00_axis_tready),
        .D(counter_0[26]),
        .Q(counter[26]),
        .R(p_0_in));
  FDRE \counter_reg[27] 
       (.C(m00_axis_aclk),
        .CE(m00_axis_tready),
        .D(counter_0[27]),
        .Q(counter[27]),
        .R(p_0_in));
  FDRE \counter_reg[28] 
       (.C(m00_axis_aclk),
        .CE(m00_axis_tready),
        .D(counter_0[28]),
        .Q(counter[28]),
        .R(p_0_in));
  FDRE \counter_reg[29] 
       (.C(m00_axis_aclk),
        .CE(m00_axis_tready),
        .D(counter_0[29]),
        .Q(counter[29]),
        .R(p_0_in));
  FDRE \counter_reg[2] 
       (.C(m00_axis_aclk),
        .CE(m00_axis_tready),
        .D(counter_0[2]),
        .Q(counter[2]),
        .R(p_0_in));
  FDRE \counter_reg[30] 
       (.C(m00_axis_aclk),
        .CE(m00_axis_tready),
        .D(counter_0[30]),
        .Q(counter[30]),
        .R(p_0_in));
  FDRE \counter_reg[31] 
       (.C(m00_axis_aclk),
        .CE(m00_axis_tready),
        .D(counter_0[31]),
        .Q(counter[31]),
        .R(p_0_in));
  FDRE \counter_reg[3] 
       (.C(m00_axis_aclk),
        .CE(m00_axis_tready),
        .D(counter_0[3]),
        .Q(counter[3]),
        .R(p_0_in));
  FDRE \counter_reg[4] 
       (.C(m00_axis_aclk),
        .CE(m00_axis_tready),
        .D(counter_0[4]),
        .Q(counter[4]),
        .R(p_0_in));
  FDRE \counter_reg[5] 
       (.C(m00_axis_aclk),
        .CE(m00_axis_tready),
        .D(counter_0[5]),
        .Q(counter[5]),
        .R(p_0_in));
  FDRE \counter_reg[6] 
       (.C(m00_axis_aclk),
        .CE(m00_axis_tready),
        .D(counter_0[6]),
        .Q(counter[6]),
        .R(p_0_in));
  FDRE \counter_reg[7] 
       (.C(m00_axis_aclk),
        .CE(m00_axis_tready),
        .D(counter_0[7]),
        .Q(counter[7]),
        .R(p_0_in));
  FDRE \counter_reg[8] 
       (.C(m00_axis_aclk),
        .CE(m00_axis_tready),
        .D(counter_0[8]),
        .Q(counter[8]),
        .R(p_0_in));
  FDRE \counter_reg[9] 
       (.C(m00_axis_aclk),
        .CE(m00_axis_tready),
        .D(counter_0[9]),
        .Q(counter[9]),
        .R(p_0_in));
  LUT6 #(
    .INIT(64'h0001000000000000)) 
    m00_axis_tlast_i_1
       (.I0(m00_axis_tlast_i_2_n_0),
        .I1(m00_axis_tlast_i_3_n_0),
        .I2(m00_axis_tlast_i_4_n_0),
        .I3(m00_axis_tlast_i_5_n_0),
        .I4(m00_axis_tready),
        .I5(m00_axis_aresetn),
        .O(m00_axis_tlast_i_1_n_0));
  LUT5 #(
    .INIT(32'hFFFF7FFF)) 
    m00_axis_tlast_i_2
       (.I0(counter[10]),
        .I1(counter[11]),
        .I2(counter[8]),
        .I3(counter[9]),
        .I4(m00_axis_tlast_i_6_n_0),
        .O(m00_axis_tlast_i_2_n_0));
  LUT5 #(
    .INIT(32'hFFFF7FFF)) 
    m00_axis_tlast_i_3
       (.I0(counter[2]),
        .I1(counter[3]),
        .I2(counter[0]),
        .I3(counter[1]),
        .I4(m00_axis_tlast_i_7_n_0),
        .O(m00_axis_tlast_i_3_n_0));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    m00_axis_tlast_i_4
       (.I0(counter[26]),
        .I1(counter[27]),
        .I2(counter[24]),
        .I3(counter[25]),
        .I4(m00_axis_tlast_i_8_n_0),
        .O(m00_axis_tlast_i_4_n_0));
  LUT5 #(
    .INIT(32'hFFFF7FFF)) 
    m00_axis_tlast_i_5
       (.I0(counter[18]),
        .I1(counter[19]),
        .I2(counter[16]),
        .I3(counter[17]),
        .I4(m00_axis_tlast_i_9_n_0),
        .O(m00_axis_tlast_i_5_n_0));
  LUT4 #(
    .INIT(16'h7FFF)) 
    m00_axis_tlast_i_6
       (.I0(counter[13]),
        .I1(counter[12]),
        .I2(counter[15]),
        .I3(counter[14]),
        .O(m00_axis_tlast_i_6_n_0));
  LUT4 #(
    .INIT(16'h7FFF)) 
    m00_axis_tlast_i_7
       (.I0(counter[5]),
        .I1(counter[4]),
        .I2(counter[7]),
        .I3(counter[6]),
        .O(m00_axis_tlast_i_7_n_0));
  LUT4 #(
    .INIT(16'hFFFE)) 
    m00_axis_tlast_i_8
       (.I0(counter[29]),
        .I1(counter[28]),
        .I2(counter[31]),
        .I3(counter[30]),
        .O(m00_axis_tlast_i_8_n_0));
  LUT4 #(
    .INIT(16'hFF7F)) 
    m00_axis_tlast_i_9
       (.I0(counter[21]),
        .I1(counter[20]),
        .I2(counter[22]),
        .I3(counter[23]),
        .O(m00_axis_tlast_i_9_n_0));
  FDRE m00_axis_tlast_reg
       (.C(m00_axis_aclk),
        .CE(1'b1),
        .D(m00_axis_tlast_i_1_n_0),
        .Q(m00_axis_tlast),
        .R(1'b0));
  LUT2 #(
    .INIT(4'h8)) 
    m00_axis_tvalid_i_1
       (.I0(m00_axis_tready),
        .I1(m00_axis_aresetn),
        .O(m00_axis_tvalid_i_1_n_0));
  FDRE m00_axis_tvalid_reg
       (.C(m00_axis_aclk),
        .CE(1'b1),
        .D(m00_axis_tvalid_i_1_n_0),
        .Q(m00_axis_tvalid),
        .R(1'b0));
endmodule

(* CHECK_LICENSE_TYPE = "design_1_AXI4StreamConstant32_0_0,AXI4StreamConstant32_v1_0,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "AXI4StreamConstant32_v1_0,Vivado 2018.3" *) 
(* NotValidForBitStream *)
module design_1_AXI4StreamConstant32_0_2
   (m00_axis_tdata,
    m00_axis_tstrb,
    m00_axis_tlast,
    m00_axis_tvalid,
    m00_axis_tready,
    m00_axis_aclk,
    m00_axis_aresetn);
  (* x_interface_info = "xilinx.com:interface:axis:1.0 M00_AXIS TDATA" *) (* x_interface_parameter = "XIL_INTERFACENAME M00_AXIS, WIZ_DATA_WIDTH 32, TDATA_NUM_BYTES 4, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 1, HAS_TKEEP 0, HAS_TLAST 1, FREQ_HZ 100000000, PHASE 0.000, CLK_DOMAIN design_1_processing_system7_0_0_FCLK_CLK0, LAYERED_METADATA undef, INSERT_VIP 0" *) output [31:0]m00_axis_tdata;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 M00_AXIS TSTRB" *) output [3:0]m00_axis_tstrb;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 M00_AXIS TLAST" *) output m00_axis_tlast;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 M00_AXIS TVALID" *) output m00_axis_tvalid;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 M00_AXIS TREADY" *) input m00_axis_tready;
  (* x_interface_info = "xilinx.com:signal:clock:1.0 M00_AXIS_CLK CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME M00_AXIS_CLK, ASSOCIATED_BUSIF M00_AXIS, ASSOCIATED_RESET m00_axis_aresetn, FREQ_HZ 100000000, PHASE 0.000, CLK_DOMAIN design_1_processing_system7_0_0_FCLK_CLK0, INSERT_VIP 0" *) input m00_axis_aclk;
  (* x_interface_info = "xilinx.com:signal:reset:1.0 M00_AXIS_RST RST" *) (* x_interface_parameter = "XIL_INTERFACENAME M00_AXIS_RST, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input m00_axis_aresetn;

  wire \<const0> ;
  wire \<const1> ;
  wire m00_axis_aclk;
  wire m00_axis_aresetn;
  wire m00_axis_tlast;
  wire m00_axis_tready;
  wire m00_axis_tvalid;

  assign m00_axis_tdata[31] = \<const0> ;
  assign m00_axis_tdata[30] = \<const0> ;
  assign m00_axis_tdata[29] = \<const0> ;
  assign m00_axis_tdata[28] = \<const0> ;
  assign m00_axis_tdata[27] = \<const0> ;
  assign m00_axis_tdata[26] = \<const0> ;
  assign m00_axis_tdata[25] = \<const0> ;
  assign m00_axis_tdata[24] = \<const0> ;
  assign m00_axis_tdata[23] = \<const0> ;
  assign m00_axis_tdata[22] = \<const0> ;
  assign m00_axis_tdata[21] = \<const0> ;
  assign m00_axis_tdata[20] = \<const0> ;
  assign m00_axis_tdata[19] = \<const0> ;
  assign m00_axis_tdata[18] = \<const0> ;
  assign m00_axis_tdata[17] = \<const0> ;
  assign m00_axis_tdata[16] = \<const0> ;
  assign m00_axis_tdata[15] = \<const0> ;
  assign m00_axis_tdata[14] = \<const0> ;
  assign m00_axis_tdata[13] = \<const0> ;
  assign m00_axis_tdata[12] = \<const0> ;
  assign m00_axis_tdata[11] = \<const0> ;
  assign m00_axis_tdata[10] = \<const0> ;
  assign m00_axis_tdata[9] = \<const0> ;
  assign m00_axis_tdata[8] = \<const0> ;
  assign m00_axis_tdata[7] = \<const0> ;
  assign m00_axis_tdata[6] = \<const0> ;
  assign m00_axis_tdata[5] = \<const0> ;
  assign m00_axis_tdata[4] = \<const0> ;
  assign m00_axis_tdata[3] = \<const0> ;
  assign m00_axis_tdata[2] = \<const0> ;
  assign m00_axis_tdata[1] = \<const0> ;
  assign m00_axis_tdata[0] = \<const1> ;
  assign m00_axis_tstrb[3] = \<const1> ;
  assign m00_axis_tstrb[2] = \<const1> ;
  assign m00_axis_tstrb[1] = \<const1> ;
  assign m00_axis_tstrb[0] = \<const1> ;
  GND GND
       (.G(\<const0> ));
  design_1_AXI4StreamConstant32_0_2_AXI4StreamConstant32_v1_0 U0
       (.m00_axis_aclk(m00_axis_aclk),
        .m00_axis_aresetn(m00_axis_aresetn),
        .m00_axis_tlast(m00_axis_tlast),
        .m00_axis_tready(m00_axis_tready),
        .m00_axis_tvalid(m00_axis_tvalid));
  VCC VCC
       (.P(\<const1> ));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

endmodule
`endif
