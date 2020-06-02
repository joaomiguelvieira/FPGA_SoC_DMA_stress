-- (c) Copyright 1995-2020 Xilinx, Inc. All rights reserved.
-- 
-- This file contains confidential and proprietary information
-- of Xilinx, Inc. and is protected under U.S. and
-- international copyright and other intellectual property
-- laws.
-- 
-- DISCLAIMER
-- This disclaimer is not a license and does not grant any
-- rights to the materials distributed herewith. Except as
-- otherwise provided in a valid license issued to you by
-- Xilinx, and to the maximum extent permitted by applicable
-- law: (1) THESE MATERIALS ARE MADE AVAILABLE "AS IS" AND
-- WITH ALL FAULTS, AND XILINX HEREBY DISCLAIMS ALL WARRANTIES
-- AND CONDITIONS, EXPRESS, IMPLIED, OR STATUTORY, INCLUDING
-- BUT NOT LIMITED TO WARRANTIES OF MERCHANTABILITY, NON-
-- INFRINGEMENT, OR FITNESS FOR ANY PARTICULAR PURPOSE; and
-- (2) Xilinx shall not be liable (whether in contract or tort,
-- including negligence, or under any other theory of
-- liability) for any loss or damage of any kind or nature
-- related to, arising under or in connection with these
-- materials, including for any direct, or any indirect,
-- special, incidental, or consequential loss or damage
-- (including loss of data, profits, goodwill, or any type of
-- loss or damage suffered as a result of any action brought
-- by a third party) even if such damage or loss was
-- reasonably foreseeable or Xilinx had been advised of the
-- possibility of the same.
-- 
-- CRITICAL APPLICATIONS
-- Xilinx products are not designed or intended to be fail-
-- safe, or for use in any application requiring fail-safe
-- performance, such as life-support or safety devices or
-- systems, Class III medical devices, nuclear facilities,
-- applications related to the deployment of airbags, or any
-- other applications that could lead to death, personal
-- injury, or severe property or environmental damage
-- (individually and collectively, "Critical
-- Applications"). Customer assumes the sole risk and
-- liability of any use of Xilinx products in Critical
-- Applications, subject only to applicable laws and
-- regulations governing limitations on product liability.
-- 
-- THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS
-- PART OF THIS FILE AT ALL TIMES.
-- 
-- DO NOT MODIFY THIS FILE.

-- IP VLNV: joaomiguelvieira.com:user:AXI4StreamConstant:1.0
-- IP Revision: 12

LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;

ENTITY design_1_AXI4StreamConstant_0_0 IS
  PORT (
    m00_axis_tdata : OUT STD_LOGIC_VECTOR(63 DOWNTO 0);
    m00_axis_tstrb : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
    m00_axis_tlast : OUT STD_LOGIC;
    m00_axis_tvalid : OUT STD_LOGIC;
    m00_axis_tready : IN STD_LOGIC;
    m00_axis_aclk : IN STD_LOGIC;
    m00_axis_aresetn : IN STD_LOGIC
  );
END design_1_AXI4StreamConstant_0_0;

ARCHITECTURE design_1_AXI4StreamConstant_0_0_arch OF design_1_AXI4StreamConstant_0_0 IS
  ATTRIBUTE DowngradeIPIdentifiedWarnings : STRING;
  ATTRIBUTE DowngradeIPIdentifiedWarnings OF design_1_AXI4StreamConstant_0_0_arch: ARCHITECTURE IS "yes";
  COMPONENT AXI4StreamConstant_v1_0 IS
    GENERIC (
      C_M00_AXIS_TDATA_WIDTH : INTEGER -- Width of S_AXIS address bus. The slave accepts the read and write addresses of width C_M_AXIS_TDATA_WIDTH.
    );
    PORT (
      m00_axis_tdata : OUT STD_LOGIC_VECTOR(63 DOWNTO 0);
      m00_axis_tstrb : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
      m00_axis_tlast : OUT STD_LOGIC;
      m00_axis_tvalid : OUT STD_LOGIC;
      m00_axis_tready : IN STD_LOGIC;
      m00_axis_aclk : IN STD_LOGIC;
      m00_axis_aresetn : IN STD_LOGIC
    );
  END COMPONENT AXI4StreamConstant_v1_0;
  ATTRIBUTE X_INTERFACE_INFO : STRING;
  ATTRIBUTE X_INTERFACE_PARAMETER : STRING;
  ATTRIBUTE X_INTERFACE_PARAMETER OF m00_axis_aresetn: SIGNAL IS "XIL_INTERFACENAME M00_AXIS_RST, POLARITY ACTIVE_LOW, INSERT_VIP 0";
  ATTRIBUTE X_INTERFACE_INFO OF m00_axis_aresetn: SIGNAL IS "xilinx.com:signal:reset:1.0 M00_AXIS_RST RST";
  ATTRIBUTE X_INTERFACE_PARAMETER OF m00_axis_aclk: SIGNAL IS "XIL_INTERFACENAME M00_AXIS_CLK, ASSOCIATED_BUSIF M00_AXIS, ASSOCIATED_RESET m00_axis_aresetn, FREQ_HZ 100000000, PHASE 0.000, CLK_DOMAIN design_1_processing_system7_0_0_FCLK_CLK0, INSERT_VIP 0";
  ATTRIBUTE X_INTERFACE_INFO OF m00_axis_aclk: SIGNAL IS "xilinx.com:signal:clock:1.0 M00_AXIS_CLK CLK";
  ATTRIBUTE X_INTERFACE_INFO OF m00_axis_tready: SIGNAL IS "xilinx.com:interface:axis:1.0 M00_AXIS TREADY";
  ATTRIBUTE X_INTERFACE_INFO OF m00_axis_tvalid: SIGNAL IS "xilinx.com:interface:axis:1.0 M00_AXIS TVALID";
  ATTRIBUTE X_INTERFACE_INFO OF m00_axis_tlast: SIGNAL IS "xilinx.com:interface:axis:1.0 M00_AXIS TLAST";
  ATTRIBUTE X_INTERFACE_INFO OF m00_axis_tstrb: SIGNAL IS "xilinx.com:interface:axis:1.0 M00_AXIS TSTRB";
  ATTRIBUTE X_INTERFACE_PARAMETER OF m00_axis_tdata: SIGNAL IS "XIL_INTERFACENAME M00_AXIS, WIZ_DATA_WIDTH 32, TDATA_NUM_BYTES 8, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 1, HAS_TKEEP 0, HAS_TLAST 1, FREQ_HZ 100000000, PHASE 0.000, CLK_DOMAIN design_1_processing_system7_0_0_FCLK_CLK0, LAYERED_METADATA undef, INSERT_VIP 0";
  ATTRIBUTE X_INTERFACE_INFO OF m00_axis_tdata: SIGNAL IS "xilinx.com:interface:axis:1.0 M00_AXIS TDATA";
BEGIN
  U0 : AXI4StreamConstant_v1_0
    GENERIC MAP (
      C_M00_AXIS_TDATA_WIDTH => 64
    )
    PORT MAP (
      m00_axis_tdata => m00_axis_tdata,
      m00_axis_tstrb => m00_axis_tstrb,
      m00_axis_tlast => m00_axis_tlast,
      m00_axis_tvalid => m00_axis_tvalid,
      m00_axis_tready => m00_axis_tready,
      m00_axis_aclk => m00_axis_aclk,
      m00_axis_aresetn => m00_axis_aresetn
    );
END design_1_AXI4StreamConstant_0_0_arch;