-- Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2018.3 (lin64) Build 2405991 Thu Dec  6 23:36:41 MST 2018
-- Date        : Wed Mar 11 21:57:57 2020
-- Host        : judas.joaomiguelvieira.com running 64-bit unknown
-- Command     : write_vhdl -force -mode funcsim -rename_top design_1_AXI4StreamConstant32_0_3 -prefix
--               design_1_AXI4StreamConstant32_0_3_ design_1_AXI4StreamConstant32_0_0_sim_netlist.vhdl
-- Design      : design_1_AXI4StreamConstant32_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z010clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_AXI4StreamConstant32_0_3_AXI4StreamConstant32_v1_0 is
  port (
    m00_axis_tvalid : out STD_LOGIC;
    m00_axis_tlast : out STD_LOGIC;
    m00_axis_tready : in STD_LOGIC;
    m00_axis_aclk : in STD_LOGIC;
    m00_axis_aresetn : in STD_LOGIC
  );
end design_1_AXI4StreamConstant32_0_3_AXI4StreamConstant32_v1_0;

architecture STRUCTURE of design_1_AXI4StreamConstant32_0_3_AXI4StreamConstant32_v1_0 is
  signal counter : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \counter0_carry__0_n_0\ : STD_LOGIC;
  signal \counter0_carry__0_n_1\ : STD_LOGIC;
  signal \counter0_carry__0_n_2\ : STD_LOGIC;
  signal \counter0_carry__0_n_3\ : STD_LOGIC;
  signal \counter0_carry__1_n_0\ : STD_LOGIC;
  signal \counter0_carry__1_n_1\ : STD_LOGIC;
  signal \counter0_carry__1_n_2\ : STD_LOGIC;
  signal \counter0_carry__1_n_3\ : STD_LOGIC;
  signal \counter0_carry__2_n_0\ : STD_LOGIC;
  signal \counter0_carry__2_n_1\ : STD_LOGIC;
  signal \counter0_carry__2_n_2\ : STD_LOGIC;
  signal \counter0_carry__2_n_3\ : STD_LOGIC;
  signal \counter0_carry__3_n_0\ : STD_LOGIC;
  signal \counter0_carry__3_n_1\ : STD_LOGIC;
  signal \counter0_carry__3_n_2\ : STD_LOGIC;
  signal \counter0_carry__3_n_3\ : STD_LOGIC;
  signal \counter0_carry__4_n_0\ : STD_LOGIC;
  signal \counter0_carry__4_n_1\ : STD_LOGIC;
  signal \counter0_carry__4_n_2\ : STD_LOGIC;
  signal \counter0_carry__4_n_3\ : STD_LOGIC;
  signal \counter0_carry__5_n_0\ : STD_LOGIC;
  signal \counter0_carry__5_n_1\ : STD_LOGIC;
  signal \counter0_carry__5_n_2\ : STD_LOGIC;
  signal \counter0_carry__5_n_3\ : STD_LOGIC;
  signal \counter0_carry__6_n_2\ : STD_LOGIC;
  signal \counter0_carry__6_n_3\ : STD_LOGIC;
  signal counter0_carry_n_0 : STD_LOGIC;
  signal counter0_carry_n_1 : STD_LOGIC;
  signal counter0_carry_n_2 : STD_LOGIC;
  signal counter0_carry_n_3 : STD_LOGIC;
  signal counter_0 : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal data0 : STD_LOGIC_VECTOR ( 31 downto 1 );
  signal m00_axis_tlast_i_1_n_0 : STD_LOGIC;
  signal m00_axis_tlast_i_2_n_0 : STD_LOGIC;
  signal m00_axis_tlast_i_3_n_0 : STD_LOGIC;
  signal m00_axis_tlast_i_4_n_0 : STD_LOGIC;
  signal m00_axis_tlast_i_5_n_0 : STD_LOGIC;
  signal m00_axis_tlast_i_6_n_0 : STD_LOGIC;
  signal m00_axis_tlast_i_7_n_0 : STD_LOGIC;
  signal m00_axis_tlast_i_8_n_0 : STD_LOGIC;
  signal m00_axis_tlast_i_9_n_0 : STD_LOGIC;
  signal m00_axis_tvalid_i_1_n_0 : STD_LOGIC;
  signal p_0_in : STD_LOGIC;
  signal \NLW_counter0_carry__6_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_counter0_carry__6_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
begin
counter0_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => counter0_carry_n_0,
      CO(2) => counter0_carry_n_1,
      CO(1) => counter0_carry_n_2,
      CO(0) => counter0_carry_n_3,
      CYINIT => counter(0),
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => data0(4 downto 1),
      S(3 downto 0) => counter(4 downto 1)
    );
\counter0_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => counter0_carry_n_0,
      CO(3) => \counter0_carry__0_n_0\,
      CO(2) => \counter0_carry__0_n_1\,
      CO(1) => \counter0_carry__0_n_2\,
      CO(0) => \counter0_carry__0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => data0(8 downto 5),
      S(3 downto 0) => counter(8 downto 5)
    );
\counter0_carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \counter0_carry__0_n_0\,
      CO(3) => \counter0_carry__1_n_0\,
      CO(2) => \counter0_carry__1_n_1\,
      CO(1) => \counter0_carry__1_n_2\,
      CO(0) => \counter0_carry__1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => data0(12 downto 9),
      S(3 downto 0) => counter(12 downto 9)
    );
\counter0_carry__2\: unisim.vcomponents.CARRY4
     port map (
      CI => \counter0_carry__1_n_0\,
      CO(3) => \counter0_carry__2_n_0\,
      CO(2) => \counter0_carry__2_n_1\,
      CO(1) => \counter0_carry__2_n_2\,
      CO(0) => \counter0_carry__2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => data0(16 downto 13),
      S(3 downto 0) => counter(16 downto 13)
    );
\counter0_carry__3\: unisim.vcomponents.CARRY4
     port map (
      CI => \counter0_carry__2_n_0\,
      CO(3) => \counter0_carry__3_n_0\,
      CO(2) => \counter0_carry__3_n_1\,
      CO(1) => \counter0_carry__3_n_2\,
      CO(0) => \counter0_carry__3_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => data0(20 downto 17),
      S(3 downto 0) => counter(20 downto 17)
    );
\counter0_carry__4\: unisim.vcomponents.CARRY4
     port map (
      CI => \counter0_carry__3_n_0\,
      CO(3) => \counter0_carry__4_n_0\,
      CO(2) => \counter0_carry__4_n_1\,
      CO(1) => \counter0_carry__4_n_2\,
      CO(0) => \counter0_carry__4_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => data0(24 downto 21),
      S(3 downto 0) => counter(24 downto 21)
    );
\counter0_carry__5\: unisim.vcomponents.CARRY4
     port map (
      CI => \counter0_carry__4_n_0\,
      CO(3) => \counter0_carry__5_n_0\,
      CO(2) => \counter0_carry__5_n_1\,
      CO(1) => \counter0_carry__5_n_2\,
      CO(0) => \counter0_carry__5_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => data0(28 downto 25),
      S(3 downto 0) => counter(28 downto 25)
    );
\counter0_carry__6\: unisim.vcomponents.CARRY4
     port map (
      CI => \counter0_carry__5_n_0\,
      CO(3 downto 2) => \NLW_counter0_carry__6_CO_UNCONNECTED\(3 downto 2),
      CO(1) => \counter0_carry__6_n_2\,
      CO(0) => \counter0_carry__6_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \NLW_counter0_carry__6_O_UNCONNECTED\(3),
      O(2 downto 0) => data0(31 downto 29),
      S(3) => '0',
      S(2 downto 0) => counter(31 downto 29)
    );
\counter[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => counter(0),
      O => counter_0(0)
    );
\counter[10]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFE0000"
    )
        port map (
      I0 => m00_axis_tlast_i_5_n_0,
      I1 => m00_axis_tlast_i_4_n_0,
      I2 => m00_axis_tlast_i_3_n_0,
      I3 => m00_axis_tlast_i_2_n_0,
      I4 => data0(10),
      O => counter_0(10)
    );
\counter[11]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFE0000"
    )
        port map (
      I0 => m00_axis_tlast_i_5_n_0,
      I1 => m00_axis_tlast_i_4_n_0,
      I2 => m00_axis_tlast_i_3_n_0,
      I3 => m00_axis_tlast_i_2_n_0,
      I4 => data0(11),
      O => counter_0(11)
    );
\counter[12]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFE0000"
    )
        port map (
      I0 => m00_axis_tlast_i_5_n_0,
      I1 => m00_axis_tlast_i_4_n_0,
      I2 => m00_axis_tlast_i_3_n_0,
      I3 => m00_axis_tlast_i_2_n_0,
      I4 => data0(12),
      O => counter_0(12)
    );
\counter[13]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFE0000"
    )
        port map (
      I0 => m00_axis_tlast_i_5_n_0,
      I1 => m00_axis_tlast_i_4_n_0,
      I2 => m00_axis_tlast_i_3_n_0,
      I3 => m00_axis_tlast_i_2_n_0,
      I4 => data0(13),
      O => counter_0(13)
    );
\counter[14]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFE0000"
    )
        port map (
      I0 => m00_axis_tlast_i_5_n_0,
      I1 => m00_axis_tlast_i_4_n_0,
      I2 => m00_axis_tlast_i_3_n_0,
      I3 => m00_axis_tlast_i_2_n_0,
      I4 => data0(14),
      O => counter_0(14)
    );
\counter[15]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFE0000"
    )
        port map (
      I0 => m00_axis_tlast_i_5_n_0,
      I1 => m00_axis_tlast_i_4_n_0,
      I2 => m00_axis_tlast_i_3_n_0,
      I3 => m00_axis_tlast_i_2_n_0,
      I4 => data0(15),
      O => counter_0(15)
    );
\counter[16]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFE0000"
    )
        port map (
      I0 => m00_axis_tlast_i_5_n_0,
      I1 => m00_axis_tlast_i_4_n_0,
      I2 => m00_axis_tlast_i_3_n_0,
      I3 => m00_axis_tlast_i_2_n_0,
      I4 => data0(16),
      O => counter_0(16)
    );
\counter[17]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFE0000"
    )
        port map (
      I0 => m00_axis_tlast_i_5_n_0,
      I1 => m00_axis_tlast_i_4_n_0,
      I2 => m00_axis_tlast_i_3_n_0,
      I3 => m00_axis_tlast_i_2_n_0,
      I4 => data0(17),
      O => counter_0(17)
    );
\counter[18]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFE0000"
    )
        port map (
      I0 => m00_axis_tlast_i_5_n_0,
      I1 => m00_axis_tlast_i_4_n_0,
      I2 => m00_axis_tlast_i_3_n_0,
      I3 => m00_axis_tlast_i_2_n_0,
      I4 => data0(18),
      O => counter_0(18)
    );
\counter[19]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFE0000"
    )
        port map (
      I0 => m00_axis_tlast_i_5_n_0,
      I1 => m00_axis_tlast_i_4_n_0,
      I2 => m00_axis_tlast_i_3_n_0,
      I3 => m00_axis_tlast_i_2_n_0,
      I4 => data0(19),
      O => counter_0(19)
    );
\counter[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFE0000"
    )
        port map (
      I0 => m00_axis_tlast_i_5_n_0,
      I1 => m00_axis_tlast_i_4_n_0,
      I2 => m00_axis_tlast_i_3_n_0,
      I3 => m00_axis_tlast_i_2_n_0,
      I4 => data0(1),
      O => counter_0(1)
    );
\counter[20]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFE0000"
    )
        port map (
      I0 => m00_axis_tlast_i_5_n_0,
      I1 => m00_axis_tlast_i_4_n_0,
      I2 => m00_axis_tlast_i_3_n_0,
      I3 => m00_axis_tlast_i_2_n_0,
      I4 => data0(20),
      O => counter_0(20)
    );
\counter[21]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFE0000"
    )
        port map (
      I0 => m00_axis_tlast_i_5_n_0,
      I1 => m00_axis_tlast_i_4_n_0,
      I2 => m00_axis_tlast_i_3_n_0,
      I3 => m00_axis_tlast_i_2_n_0,
      I4 => data0(21),
      O => counter_0(21)
    );
\counter[22]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFE0000"
    )
        port map (
      I0 => m00_axis_tlast_i_5_n_0,
      I1 => m00_axis_tlast_i_4_n_0,
      I2 => m00_axis_tlast_i_3_n_0,
      I3 => m00_axis_tlast_i_2_n_0,
      I4 => data0(22),
      O => counter_0(22)
    );
\counter[23]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFE0000"
    )
        port map (
      I0 => m00_axis_tlast_i_5_n_0,
      I1 => m00_axis_tlast_i_4_n_0,
      I2 => m00_axis_tlast_i_3_n_0,
      I3 => m00_axis_tlast_i_2_n_0,
      I4 => data0(23),
      O => counter_0(23)
    );
\counter[24]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFE0000"
    )
        port map (
      I0 => m00_axis_tlast_i_5_n_0,
      I1 => m00_axis_tlast_i_4_n_0,
      I2 => m00_axis_tlast_i_3_n_0,
      I3 => m00_axis_tlast_i_2_n_0,
      I4 => data0(24),
      O => counter_0(24)
    );
\counter[25]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFE0000"
    )
        port map (
      I0 => m00_axis_tlast_i_5_n_0,
      I1 => m00_axis_tlast_i_4_n_0,
      I2 => m00_axis_tlast_i_3_n_0,
      I3 => m00_axis_tlast_i_2_n_0,
      I4 => data0(25),
      O => counter_0(25)
    );
\counter[26]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFE0000"
    )
        port map (
      I0 => m00_axis_tlast_i_5_n_0,
      I1 => m00_axis_tlast_i_4_n_0,
      I2 => m00_axis_tlast_i_3_n_0,
      I3 => m00_axis_tlast_i_2_n_0,
      I4 => data0(26),
      O => counter_0(26)
    );
\counter[27]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFE0000"
    )
        port map (
      I0 => m00_axis_tlast_i_5_n_0,
      I1 => m00_axis_tlast_i_4_n_0,
      I2 => m00_axis_tlast_i_3_n_0,
      I3 => m00_axis_tlast_i_2_n_0,
      I4 => data0(27),
      O => counter_0(27)
    );
\counter[28]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFE0000"
    )
        port map (
      I0 => m00_axis_tlast_i_5_n_0,
      I1 => m00_axis_tlast_i_4_n_0,
      I2 => m00_axis_tlast_i_3_n_0,
      I3 => m00_axis_tlast_i_2_n_0,
      I4 => data0(28),
      O => counter_0(28)
    );
\counter[29]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFE0000"
    )
        port map (
      I0 => m00_axis_tlast_i_5_n_0,
      I1 => m00_axis_tlast_i_4_n_0,
      I2 => m00_axis_tlast_i_3_n_0,
      I3 => m00_axis_tlast_i_2_n_0,
      I4 => data0(29),
      O => counter_0(29)
    );
\counter[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFE0000"
    )
        port map (
      I0 => m00_axis_tlast_i_5_n_0,
      I1 => m00_axis_tlast_i_4_n_0,
      I2 => m00_axis_tlast_i_3_n_0,
      I3 => m00_axis_tlast_i_2_n_0,
      I4 => data0(2),
      O => counter_0(2)
    );
\counter[30]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFE0000"
    )
        port map (
      I0 => m00_axis_tlast_i_5_n_0,
      I1 => m00_axis_tlast_i_4_n_0,
      I2 => m00_axis_tlast_i_3_n_0,
      I3 => m00_axis_tlast_i_2_n_0,
      I4 => data0(30),
      O => counter_0(30)
    );
\counter[31]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => m00_axis_aresetn,
      O => p_0_in
    );
\counter[31]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFE0000"
    )
        port map (
      I0 => m00_axis_tlast_i_5_n_0,
      I1 => m00_axis_tlast_i_4_n_0,
      I2 => m00_axis_tlast_i_3_n_0,
      I3 => m00_axis_tlast_i_2_n_0,
      I4 => data0(31),
      O => counter_0(31)
    );
\counter[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFE0000"
    )
        port map (
      I0 => m00_axis_tlast_i_5_n_0,
      I1 => m00_axis_tlast_i_4_n_0,
      I2 => m00_axis_tlast_i_3_n_0,
      I3 => m00_axis_tlast_i_2_n_0,
      I4 => data0(3),
      O => counter_0(3)
    );
\counter[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFE0000"
    )
        port map (
      I0 => m00_axis_tlast_i_5_n_0,
      I1 => m00_axis_tlast_i_4_n_0,
      I2 => m00_axis_tlast_i_3_n_0,
      I3 => m00_axis_tlast_i_2_n_0,
      I4 => data0(4),
      O => counter_0(4)
    );
\counter[5]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFE0000"
    )
        port map (
      I0 => m00_axis_tlast_i_5_n_0,
      I1 => m00_axis_tlast_i_4_n_0,
      I2 => m00_axis_tlast_i_3_n_0,
      I3 => m00_axis_tlast_i_2_n_0,
      I4 => data0(5),
      O => counter_0(5)
    );
\counter[6]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFE0000"
    )
        port map (
      I0 => m00_axis_tlast_i_5_n_0,
      I1 => m00_axis_tlast_i_4_n_0,
      I2 => m00_axis_tlast_i_3_n_0,
      I3 => m00_axis_tlast_i_2_n_0,
      I4 => data0(6),
      O => counter_0(6)
    );
\counter[7]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFE0000"
    )
        port map (
      I0 => m00_axis_tlast_i_5_n_0,
      I1 => m00_axis_tlast_i_4_n_0,
      I2 => m00_axis_tlast_i_3_n_0,
      I3 => m00_axis_tlast_i_2_n_0,
      I4 => data0(7),
      O => counter_0(7)
    );
\counter[8]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFE0000"
    )
        port map (
      I0 => m00_axis_tlast_i_5_n_0,
      I1 => m00_axis_tlast_i_4_n_0,
      I2 => m00_axis_tlast_i_3_n_0,
      I3 => m00_axis_tlast_i_2_n_0,
      I4 => data0(8),
      O => counter_0(8)
    );
\counter[9]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFE0000"
    )
        port map (
      I0 => m00_axis_tlast_i_5_n_0,
      I1 => m00_axis_tlast_i_4_n_0,
      I2 => m00_axis_tlast_i_3_n_0,
      I3 => m00_axis_tlast_i_2_n_0,
      I4 => data0(9),
      O => counter_0(9)
    );
\counter_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => m00_axis_aclk,
      CE => m00_axis_tready,
      D => counter_0(0),
      Q => counter(0),
      R => p_0_in
    );
\counter_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => m00_axis_aclk,
      CE => m00_axis_tready,
      D => counter_0(10),
      Q => counter(10),
      R => p_0_in
    );
\counter_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => m00_axis_aclk,
      CE => m00_axis_tready,
      D => counter_0(11),
      Q => counter(11),
      R => p_0_in
    );
\counter_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => m00_axis_aclk,
      CE => m00_axis_tready,
      D => counter_0(12),
      Q => counter(12),
      R => p_0_in
    );
\counter_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => m00_axis_aclk,
      CE => m00_axis_tready,
      D => counter_0(13),
      Q => counter(13),
      R => p_0_in
    );
\counter_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => m00_axis_aclk,
      CE => m00_axis_tready,
      D => counter_0(14),
      Q => counter(14),
      R => p_0_in
    );
\counter_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => m00_axis_aclk,
      CE => m00_axis_tready,
      D => counter_0(15),
      Q => counter(15),
      R => p_0_in
    );
\counter_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => m00_axis_aclk,
      CE => m00_axis_tready,
      D => counter_0(16),
      Q => counter(16),
      R => p_0_in
    );
\counter_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => m00_axis_aclk,
      CE => m00_axis_tready,
      D => counter_0(17),
      Q => counter(17),
      R => p_0_in
    );
\counter_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => m00_axis_aclk,
      CE => m00_axis_tready,
      D => counter_0(18),
      Q => counter(18),
      R => p_0_in
    );
\counter_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => m00_axis_aclk,
      CE => m00_axis_tready,
      D => counter_0(19),
      Q => counter(19),
      R => p_0_in
    );
\counter_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => m00_axis_aclk,
      CE => m00_axis_tready,
      D => counter_0(1),
      Q => counter(1),
      R => p_0_in
    );
\counter_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => m00_axis_aclk,
      CE => m00_axis_tready,
      D => counter_0(20),
      Q => counter(20),
      R => p_0_in
    );
\counter_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => m00_axis_aclk,
      CE => m00_axis_tready,
      D => counter_0(21),
      Q => counter(21),
      R => p_0_in
    );
\counter_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => m00_axis_aclk,
      CE => m00_axis_tready,
      D => counter_0(22),
      Q => counter(22),
      R => p_0_in
    );
\counter_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => m00_axis_aclk,
      CE => m00_axis_tready,
      D => counter_0(23),
      Q => counter(23),
      R => p_0_in
    );
\counter_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => m00_axis_aclk,
      CE => m00_axis_tready,
      D => counter_0(24),
      Q => counter(24),
      R => p_0_in
    );
\counter_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => m00_axis_aclk,
      CE => m00_axis_tready,
      D => counter_0(25),
      Q => counter(25),
      R => p_0_in
    );
\counter_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => m00_axis_aclk,
      CE => m00_axis_tready,
      D => counter_0(26),
      Q => counter(26),
      R => p_0_in
    );
\counter_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => m00_axis_aclk,
      CE => m00_axis_tready,
      D => counter_0(27),
      Q => counter(27),
      R => p_0_in
    );
\counter_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => m00_axis_aclk,
      CE => m00_axis_tready,
      D => counter_0(28),
      Q => counter(28),
      R => p_0_in
    );
\counter_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => m00_axis_aclk,
      CE => m00_axis_tready,
      D => counter_0(29),
      Q => counter(29),
      R => p_0_in
    );
\counter_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => m00_axis_aclk,
      CE => m00_axis_tready,
      D => counter_0(2),
      Q => counter(2),
      R => p_0_in
    );
\counter_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => m00_axis_aclk,
      CE => m00_axis_tready,
      D => counter_0(30),
      Q => counter(30),
      R => p_0_in
    );
\counter_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => m00_axis_aclk,
      CE => m00_axis_tready,
      D => counter_0(31),
      Q => counter(31),
      R => p_0_in
    );
\counter_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => m00_axis_aclk,
      CE => m00_axis_tready,
      D => counter_0(3),
      Q => counter(3),
      R => p_0_in
    );
\counter_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => m00_axis_aclk,
      CE => m00_axis_tready,
      D => counter_0(4),
      Q => counter(4),
      R => p_0_in
    );
\counter_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => m00_axis_aclk,
      CE => m00_axis_tready,
      D => counter_0(5),
      Q => counter(5),
      R => p_0_in
    );
\counter_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => m00_axis_aclk,
      CE => m00_axis_tready,
      D => counter_0(6),
      Q => counter(6),
      R => p_0_in
    );
\counter_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => m00_axis_aclk,
      CE => m00_axis_tready,
      D => counter_0(7),
      Q => counter(7),
      R => p_0_in
    );
\counter_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => m00_axis_aclk,
      CE => m00_axis_tready,
      D => counter_0(8),
      Q => counter(8),
      R => p_0_in
    );
\counter_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => m00_axis_aclk,
      CE => m00_axis_tready,
      D => counter_0(9),
      Q => counter(9),
      R => p_0_in
    );
m00_axis_tlast_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0001000000000000"
    )
        port map (
      I0 => m00_axis_tlast_i_2_n_0,
      I1 => m00_axis_tlast_i_3_n_0,
      I2 => m00_axis_tlast_i_4_n_0,
      I3 => m00_axis_tlast_i_5_n_0,
      I4 => m00_axis_tready,
      I5 => m00_axis_aresetn,
      O => m00_axis_tlast_i_1_n_0
    );
m00_axis_tlast_i_2: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFF7FFF"
    )
        port map (
      I0 => counter(10),
      I1 => counter(11),
      I2 => counter(8),
      I3 => counter(9),
      I4 => m00_axis_tlast_i_6_n_0,
      O => m00_axis_tlast_i_2_n_0
    );
m00_axis_tlast_i_3: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFF7FFF"
    )
        port map (
      I0 => counter(2),
      I1 => counter(3),
      I2 => counter(0),
      I3 => counter(1),
      I4 => m00_axis_tlast_i_7_n_0,
      O => m00_axis_tlast_i_3_n_0
    );
m00_axis_tlast_i_4: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
        port map (
      I0 => counter(26),
      I1 => counter(27),
      I2 => counter(24),
      I3 => counter(25),
      I4 => m00_axis_tlast_i_8_n_0,
      O => m00_axis_tlast_i_4_n_0
    );
m00_axis_tlast_i_5: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFF7FFF"
    )
        port map (
      I0 => counter(18),
      I1 => counter(19),
      I2 => counter(16),
      I3 => counter(17),
      I4 => m00_axis_tlast_i_9_n_0,
      O => m00_axis_tlast_i_5_n_0
    );
m00_axis_tlast_i_6: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7FFF"
    )
        port map (
      I0 => counter(13),
      I1 => counter(12),
      I2 => counter(15),
      I3 => counter(14),
      O => m00_axis_tlast_i_6_n_0
    );
m00_axis_tlast_i_7: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7FFF"
    )
        port map (
      I0 => counter(5),
      I1 => counter(4),
      I2 => counter(7),
      I3 => counter(6),
      O => m00_axis_tlast_i_7_n_0
    );
m00_axis_tlast_i_8: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => counter(29),
      I1 => counter(28),
      I2 => counter(31),
      I3 => counter(30),
      O => m00_axis_tlast_i_8_n_0
    );
m00_axis_tlast_i_9: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FF7F"
    )
        port map (
      I0 => counter(21),
      I1 => counter(20),
      I2 => counter(22),
      I3 => counter(23),
      O => m00_axis_tlast_i_9_n_0
    );
m00_axis_tlast_reg: unisim.vcomponents.FDRE
     port map (
      C => m00_axis_aclk,
      CE => '1',
      D => m00_axis_tlast_i_1_n_0,
      Q => m00_axis_tlast,
      R => '0'
    );
m00_axis_tvalid_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => m00_axis_tready,
      I1 => m00_axis_aresetn,
      O => m00_axis_tvalid_i_1_n_0
    );
m00_axis_tvalid_reg: unisim.vcomponents.FDRE
     port map (
      C => m00_axis_aclk,
      CE => '1',
      D => m00_axis_tvalid_i_1_n_0,
      Q => m00_axis_tvalid,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_AXI4StreamConstant32_0_3 is
  port (
    m00_axis_tdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m00_axis_tstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m00_axis_tlast : out STD_LOGIC;
    m00_axis_tvalid : out STD_LOGIC;
    m00_axis_tready : in STD_LOGIC;
    m00_axis_aclk : in STD_LOGIC;
    m00_axis_aresetn : in STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of design_1_AXI4StreamConstant32_0_3 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of design_1_AXI4StreamConstant32_0_3 : entity is "design_1_AXI4StreamConstant32_0_0,AXI4StreamConstant32_v1_0,{}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of design_1_AXI4StreamConstant32_0_3 : entity is "yes";
  attribute x_core_info : string;
  attribute x_core_info of design_1_AXI4StreamConstant32_0_3 : entity is "AXI4StreamConstant32_v1_0,Vivado 2018.3";
end design_1_AXI4StreamConstant32_0_3;

architecture STRUCTURE of design_1_AXI4StreamConstant32_0_3 is
  signal \<const0>\ : STD_LOGIC;
  signal \<const1>\ : STD_LOGIC;
  attribute x_interface_info : string;
  attribute x_interface_info of m00_axis_aclk : signal is "xilinx.com:signal:clock:1.0 M00_AXIS_CLK CLK";
  attribute x_interface_parameter : string;
  attribute x_interface_parameter of m00_axis_aclk : signal is "XIL_INTERFACENAME M00_AXIS_CLK, ASSOCIATED_BUSIF M00_AXIS, ASSOCIATED_RESET m00_axis_aresetn, FREQ_HZ 100000000, PHASE 0.000, CLK_DOMAIN design_1_processing_system7_0_0_FCLK_CLK0, INSERT_VIP 0";
  attribute x_interface_info of m00_axis_aresetn : signal is "xilinx.com:signal:reset:1.0 M00_AXIS_RST RST";
  attribute x_interface_parameter of m00_axis_aresetn : signal is "XIL_INTERFACENAME M00_AXIS_RST, POLARITY ACTIVE_LOW, INSERT_VIP 0";
  attribute x_interface_info of m00_axis_tlast : signal is "xilinx.com:interface:axis:1.0 M00_AXIS TLAST";
  attribute x_interface_info of m00_axis_tready : signal is "xilinx.com:interface:axis:1.0 M00_AXIS TREADY";
  attribute x_interface_info of m00_axis_tvalid : signal is "xilinx.com:interface:axis:1.0 M00_AXIS TVALID";
  attribute x_interface_info of m00_axis_tdata : signal is "xilinx.com:interface:axis:1.0 M00_AXIS TDATA";
  attribute x_interface_parameter of m00_axis_tdata : signal is "XIL_INTERFACENAME M00_AXIS, WIZ_DATA_WIDTH 32, TDATA_NUM_BYTES 4, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 1, HAS_TKEEP 0, HAS_TLAST 1, FREQ_HZ 100000000, PHASE 0.000, CLK_DOMAIN design_1_processing_system7_0_0_FCLK_CLK0, LAYERED_METADATA undef, INSERT_VIP 0";
  attribute x_interface_info of m00_axis_tstrb : signal is "xilinx.com:interface:axis:1.0 M00_AXIS TSTRB";
begin
  m00_axis_tdata(31) <= \<const0>\;
  m00_axis_tdata(30) <= \<const0>\;
  m00_axis_tdata(29) <= \<const0>\;
  m00_axis_tdata(28) <= \<const0>\;
  m00_axis_tdata(27) <= \<const0>\;
  m00_axis_tdata(26) <= \<const0>\;
  m00_axis_tdata(25) <= \<const0>\;
  m00_axis_tdata(24) <= \<const0>\;
  m00_axis_tdata(23) <= \<const0>\;
  m00_axis_tdata(22) <= \<const0>\;
  m00_axis_tdata(21) <= \<const0>\;
  m00_axis_tdata(20) <= \<const0>\;
  m00_axis_tdata(19) <= \<const0>\;
  m00_axis_tdata(18) <= \<const0>\;
  m00_axis_tdata(17) <= \<const0>\;
  m00_axis_tdata(16) <= \<const0>\;
  m00_axis_tdata(15) <= \<const0>\;
  m00_axis_tdata(14) <= \<const0>\;
  m00_axis_tdata(13) <= \<const0>\;
  m00_axis_tdata(12) <= \<const0>\;
  m00_axis_tdata(11) <= \<const0>\;
  m00_axis_tdata(10) <= \<const0>\;
  m00_axis_tdata(9) <= \<const0>\;
  m00_axis_tdata(8) <= \<const0>\;
  m00_axis_tdata(7) <= \<const0>\;
  m00_axis_tdata(6) <= \<const0>\;
  m00_axis_tdata(5) <= \<const0>\;
  m00_axis_tdata(4) <= \<const0>\;
  m00_axis_tdata(3) <= \<const0>\;
  m00_axis_tdata(2) <= \<const0>\;
  m00_axis_tdata(1) <= \<const0>\;
  m00_axis_tdata(0) <= \<const1>\;
  m00_axis_tstrb(3) <= \<const1>\;
  m00_axis_tstrb(2) <= \<const1>\;
  m00_axis_tstrb(1) <= \<const1>\;
  m00_axis_tstrb(0) <= \<const1>\;
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
U0: entity work.design_1_AXI4StreamConstant32_0_3_AXI4StreamConstant32_v1_0
     port map (
      m00_axis_aclk => m00_axis_aclk,
      m00_axis_aresetn => m00_axis_aresetn,
      m00_axis_tlast => m00_axis_tlast,
      m00_axis_tready => m00_axis_tready,
      m00_axis_tvalid => m00_axis_tvalid
    );
VCC: unisim.vcomponents.VCC
     port map (
      P => \<const1>\
    );
end STRUCTURE;
