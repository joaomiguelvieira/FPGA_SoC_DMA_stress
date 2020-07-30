-- Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2018.3 (lin64) Build 2405991 Thu Dec  6 23:36:41 MST 2018
-- Date        : Wed Mar 11 21:57:57 2020
-- Host        : judas.joaomiguelvieira.com running 64-bit unknown
-- Command     : write_vhdl -force -mode synth_stub -rename_top design_1_AXI4StreamConstant32_0_2 -prefix
--               design_1_AXI4StreamConstant32_0_2_ design_1_AXI4StreamConstant32_0_0_stub.vhdl
-- Design      : design_1_AXI4StreamConstant32_0_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7z010clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity design_1_AXI4StreamConstant32_0_2 is
  Port ( 
    m00_axis_tdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m00_axis_tstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m00_axis_tlast : out STD_LOGIC;
    m00_axis_tvalid : out STD_LOGIC;
    m00_axis_tready : in STD_LOGIC;
    m00_axis_aclk : in STD_LOGIC;
    m00_axis_aresetn : in STD_LOGIC
  );

end design_1_AXI4StreamConstant32_0_2;

architecture stub of design_1_AXI4StreamConstant32_0_2 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "m00_axis_tdata[31:0],m00_axis_tstrb[3:0],m00_axis_tlast,m00_axis_tvalid,m00_axis_tready,m00_axis_aclk,m00_axis_aresetn";
attribute x_core_info : string;
attribute x_core_info of stub : architecture is "AXI4StreamConstant32_v1_0,Vivado 2018.3";
begin
end;
