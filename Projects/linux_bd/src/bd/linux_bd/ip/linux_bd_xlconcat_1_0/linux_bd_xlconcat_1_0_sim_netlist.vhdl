-- Copyright 1986-2015 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2015.4 (lin64) Build 1412921 Wed Nov 18 09:44:32 MST 2015
-- Date        : Sun May 29 23:58:54 2016
-- Host        : localhost.localdomain running 64-bit Fedora release 22 (Twenty Two)
-- Command     : write_vhdl -force -mode funcsim
--               /home/samb/sam_work/git/digilent/Arty-Z/Projects/linux_bd/src/bd/linux_bd/ip/linux_bd_xlconcat_1_0/linux_bd_xlconcat_1_0_sim_netlist.vhdl
-- Design      : linux_bd_xlconcat_1_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z020clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity linux_bd_xlconcat_1_0 is
  port (
    In0 : in STD_LOGIC_VECTOR ( 0 to 0 );
    In1 : in STD_LOGIC_VECTOR ( 0 to 0 );
    dout : out STD_LOGIC_VECTOR ( 1 downto 0 )
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of linux_bd_xlconcat_1_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of linux_bd_xlconcat_1_0 : entity is "linux_bd_xlconcat_1_0,xlconcat,{}";
  attribute CORE_GENERATION_INFO : string;
  attribute CORE_GENERATION_INFO of linux_bd_xlconcat_1_0 : entity is "linux_bd_xlconcat_1_0,xlconcat,{x_ipProduct=Vivado 2015.4,x_ipVendor=xilinx.com,x_ipLibrary=ip,x_ipName=xlconcat,x_ipVersion=2.1,x_ipCoreRevision=2,x_ipLanguage=VERILOG,x_ipSimLanguage=MIXED,IN0_WIDTH=1,IN1_WIDTH=1,IN2_WIDTH=1,IN3_WIDTH=1,IN4_WIDTH=1,IN5_WIDTH=1,IN6_WIDTH=1,IN7_WIDTH=1,IN8_WIDTH=1,IN9_WIDTH=1,IN10_WIDTH=1,IN11_WIDTH=1,IN12_WIDTH=1,IN13_WIDTH=1,IN14_WIDTH=1,IN15_WIDTH=1,IN16_WIDTH=1,IN17_WIDTH=1,IN18_WIDTH=1,IN19_WIDTH=1,IN20_WIDTH=1,IN21_WIDTH=1,IN22_WIDTH=1,IN23_WIDTH=1,IN24_WIDTH=1,IN25_WIDTH=1,IN26_WIDTH=1,IN27_WIDTH=1,IN28_WIDTH=1,IN29_WIDTH=1,IN30_WIDTH=1,IN31_WIDTH=1,dout_width=2,NUM_PORTS=2}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of linux_bd_xlconcat_1_0 : entity is "yes";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of linux_bd_xlconcat_1_0 : entity is "xlconcat,Vivado 2015.4";
end linux_bd_xlconcat_1_0;

architecture STRUCTURE of linux_bd_xlconcat_1_0 is
  signal \^in0\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \^in1\ : STD_LOGIC_VECTOR ( 0 to 0 );
begin
  \^in0\(0) <= In0(0);
  \^in1\(0) <= In1(0);
  dout(1) <= \^in1\(0);
  dout(0) <= \^in0\(0);
end STRUCTURE;
