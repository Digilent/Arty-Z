-- Copyright 1986-2016 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2016.1 (win64) Build 1538259 Fri Apr  8 15:45:27 MDT 2016
-- Date        : Fri Jun 03 18:24:46 2016
-- Host        : WK73 running 64-bit Service Pack 1  (build 7601)
-- Command     : write_vhdl -force -mode funcsim -rename_top _xilinx_top_ -prefix _xilinx_top__
--               linux_bd_rgb2dvi_0_0_sim_netlist.vhdl
-- Design      : linux_bd_rgb2dvi_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z020clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \_xilinx_top__OutputSERDES\ is
  port (
    TMDS_Clk_p : out STD_LOGIC;
    TMDS_Clk_n : out STD_LOGIC;
    SerialClk : in STD_LOGIC;
    PixelClk : in STD_LOGIC;
    aRst : in STD_LOGIC
  );
end \_xilinx_top__OutputSERDES\;

architecture STRUCTURE of \_xilinx_top__OutputSERDES\ is
  signal I : STD_LOGIC;
  signal SHIFTIN1 : STD_LOGIC;
  signal SHIFTIN2 : STD_LOGIC;
  signal NLW_SerializerMaster_OFB_UNCONNECTED : STD_LOGIC;
  signal NLW_SerializerMaster_SHIFTOUT1_UNCONNECTED : STD_LOGIC;
  signal NLW_SerializerMaster_SHIFTOUT2_UNCONNECTED : STD_LOGIC;
  signal NLW_SerializerMaster_TBYTEOUT_UNCONNECTED : STD_LOGIC;
  signal NLW_SerializerMaster_TFB_UNCONNECTED : STD_LOGIC;
  signal NLW_SerializerMaster_TQ_UNCONNECTED : STD_LOGIC;
  signal NLW_SerializerSlave_OFB_UNCONNECTED : STD_LOGIC;
  signal NLW_SerializerSlave_OQ_UNCONNECTED : STD_LOGIC;
  signal NLW_SerializerSlave_TBYTEOUT_UNCONNECTED : STD_LOGIC;
  signal NLW_SerializerSlave_TFB_UNCONNECTED : STD_LOGIC;
  signal NLW_SerializerSlave_TQ_UNCONNECTED : STD_LOGIC;
  attribute CAPACITANCE : string;
  attribute CAPACITANCE of OutputBuffer : label is "DONT_CARE";
  attribute box_type : string;
  attribute box_type of OutputBuffer : label is "PRIMITIVE";
  attribute box_type of SerializerMaster : label is "PRIMITIVE";
  attribute box_type of SerializerSlave : label is "PRIMITIVE";
begin
OutputBuffer: unisim.vcomponents.OBUFDS
     port map (
      I => I,
      O => TMDS_Clk_p,
      OB => TMDS_Clk_n
    );
SerializerMaster: unisim.vcomponents.OSERDESE2
    generic map(
      DATA_RATE_OQ => "DDR",
      DATA_RATE_TQ => "SDR",
      DATA_WIDTH => 10,
      INIT_OQ => '0',
      INIT_TQ => '0',
      IS_CLKDIV_INVERTED => '0',
      IS_CLK_INVERTED => '0',
      IS_D1_INVERTED => '0',
      IS_D2_INVERTED => '0',
      IS_D3_INVERTED => '0',
      IS_D4_INVERTED => '0',
      IS_D5_INVERTED => '0',
      IS_D6_INVERTED => '0',
      IS_D7_INVERTED => '0',
      IS_D8_INVERTED => '0',
      IS_T1_INVERTED => '0',
      IS_T2_INVERTED => '0',
      IS_T3_INVERTED => '0',
      IS_T4_INVERTED => '0',
      SERDES_MODE => "MASTER",
      SRVAL_OQ => '0',
      SRVAL_TQ => '0',
      TBYTE_CTL => "FALSE",
      TBYTE_SRC => "FALSE",
      TRISTATE_WIDTH => 1
    )
        port map (
      CLK => SerialClk,
      CLKDIV => PixelClk,
      D1 => '0',
      D2 => '0',
      D3 => '0',
      D4 => '0',
      D5 => '0',
      D6 => '1',
      D7 => '1',
      D8 => '1',
      OCE => '1',
      OFB => NLW_SerializerMaster_OFB_UNCONNECTED,
      OQ => I,
      RST => aRst,
      SHIFTIN1 => SHIFTIN1,
      SHIFTIN2 => SHIFTIN2,
      SHIFTOUT1 => NLW_SerializerMaster_SHIFTOUT1_UNCONNECTED,
      SHIFTOUT2 => NLW_SerializerMaster_SHIFTOUT2_UNCONNECTED,
      T1 => '0',
      T2 => '0',
      T3 => '0',
      T4 => '0',
      TBYTEIN => '0',
      TBYTEOUT => NLW_SerializerMaster_TBYTEOUT_UNCONNECTED,
      TCE => '0',
      TFB => NLW_SerializerMaster_TFB_UNCONNECTED,
      TQ => NLW_SerializerMaster_TQ_UNCONNECTED
    );
SerializerSlave: unisim.vcomponents.OSERDESE2
    generic map(
      DATA_RATE_OQ => "DDR",
      DATA_RATE_TQ => "SDR",
      DATA_WIDTH => 10,
      INIT_OQ => '0',
      INIT_TQ => '0',
      IS_CLKDIV_INVERTED => '0',
      IS_CLK_INVERTED => '0',
      IS_D1_INVERTED => '0',
      IS_D2_INVERTED => '0',
      IS_D3_INVERTED => '0',
      IS_D4_INVERTED => '0',
      IS_D5_INVERTED => '0',
      IS_D6_INVERTED => '0',
      IS_D7_INVERTED => '0',
      IS_D8_INVERTED => '0',
      IS_T1_INVERTED => '0',
      IS_T2_INVERTED => '0',
      IS_T3_INVERTED => '0',
      IS_T4_INVERTED => '0',
      SERDES_MODE => "SLAVE",
      SRVAL_OQ => '0',
      SRVAL_TQ => '0',
      TBYTE_CTL => "FALSE",
      TBYTE_SRC => "FALSE",
      TRISTATE_WIDTH => 1
    )
        port map (
      CLK => SerialClk,
      CLKDIV => PixelClk,
      D1 => '0',
      D2 => '0',
      D3 => '1',
      D4 => '1',
      D5 => '0',
      D6 => '0',
      D7 => '0',
      D8 => '0',
      OCE => '1',
      OFB => NLW_SerializerSlave_OFB_UNCONNECTED,
      OQ => NLW_SerializerSlave_OQ_UNCONNECTED,
      RST => aRst,
      SHIFTIN1 => '0',
      SHIFTIN2 => '0',
      SHIFTOUT1 => SHIFTIN1,
      SHIFTOUT2 => SHIFTIN2,
      T1 => '0',
      T2 => '0',
      T3 => '0',
      T4 => '0',
      TBYTEIN => '0',
      TBYTEOUT => NLW_SerializerSlave_TBYTEOUT_UNCONNECTED,
      TCE => '0',
      TFB => NLW_SerializerSlave_TFB_UNCONNECTED,
      TQ => NLW_SerializerSlave_TQ_UNCONNECTED
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \_xilinx_top__OutputSERDES_0\ is
  port (
    TMDS_Data_p : out STD_LOGIC_VECTOR ( 0 to 0 );
    TMDS_Data_n : out STD_LOGIC_VECTOR ( 0 to 0 );
    SerialClk : in STD_LOGIC;
    PixelClk : in STD_LOGIC;
    pDataOut : in STD_LOGIC_VECTOR ( 9 downto 0 );
    aRst : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \_xilinx_top__OutputSERDES_0\ : entity is "OutputSERDES";
end \_xilinx_top__OutputSERDES_0\;

architecture STRUCTURE of \_xilinx_top__OutputSERDES_0\ is
  signal I : STD_LOGIC;
  signal SHIFTIN1 : STD_LOGIC;
  signal SHIFTIN2 : STD_LOGIC;
  signal NLW_SerializerMaster_OFB_UNCONNECTED : STD_LOGIC;
  signal NLW_SerializerMaster_SHIFTOUT1_UNCONNECTED : STD_LOGIC;
  signal NLW_SerializerMaster_SHIFTOUT2_UNCONNECTED : STD_LOGIC;
  signal NLW_SerializerMaster_TBYTEOUT_UNCONNECTED : STD_LOGIC;
  signal NLW_SerializerMaster_TFB_UNCONNECTED : STD_LOGIC;
  signal NLW_SerializerMaster_TQ_UNCONNECTED : STD_LOGIC;
  signal NLW_SerializerSlave_OFB_UNCONNECTED : STD_LOGIC;
  signal NLW_SerializerSlave_OQ_UNCONNECTED : STD_LOGIC;
  signal NLW_SerializerSlave_TBYTEOUT_UNCONNECTED : STD_LOGIC;
  signal NLW_SerializerSlave_TFB_UNCONNECTED : STD_LOGIC;
  signal NLW_SerializerSlave_TQ_UNCONNECTED : STD_LOGIC;
  attribute CAPACITANCE : string;
  attribute CAPACITANCE of OutputBuffer : label is "DONT_CARE";
  attribute box_type : string;
  attribute box_type of OutputBuffer : label is "PRIMITIVE";
  attribute box_type of SerializerMaster : label is "PRIMITIVE";
  attribute box_type of SerializerSlave : label is "PRIMITIVE";
begin
OutputBuffer: unisim.vcomponents.OBUFDS
     port map (
      I => I,
      O => TMDS_Data_p(0),
      OB => TMDS_Data_n(0)
    );
SerializerMaster: unisim.vcomponents.OSERDESE2
    generic map(
      DATA_RATE_OQ => "DDR",
      DATA_RATE_TQ => "SDR",
      DATA_WIDTH => 10,
      INIT_OQ => '0',
      INIT_TQ => '0',
      IS_CLKDIV_INVERTED => '0',
      IS_CLK_INVERTED => '0',
      IS_D1_INVERTED => '0',
      IS_D2_INVERTED => '0',
      IS_D3_INVERTED => '0',
      IS_D4_INVERTED => '0',
      IS_D5_INVERTED => '0',
      IS_D6_INVERTED => '0',
      IS_D7_INVERTED => '0',
      IS_D8_INVERTED => '0',
      IS_T1_INVERTED => '0',
      IS_T2_INVERTED => '0',
      IS_T3_INVERTED => '0',
      IS_T4_INVERTED => '0',
      SERDES_MODE => "MASTER",
      SRVAL_OQ => '0',
      SRVAL_TQ => '0',
      TBYTE_CTL => "FALSE",
      TBYTE_SRC => "FALSE",
      TRISTATE_WIDTH => 1
    )
        port map (
      CLK => SerialClk,
      CLKDIV => PixelClk,
      D1 => pDataOut(0),
      D2 => pDataOut(1),
      D3 => pDataOut(2),
      D4 => pDataOut(3),
      D5 => pDataOut(4),
      D6 => pDataOut(5),
      D7 => pDataOut(6),
      D8 => pDataOut(7),
      OCE => '1',
      OFB => NLW_SerializerMaster_OFB_UNCONNECTED,
      OQ => I,
      RST => aRst,
      SHIFTIN1 => SHIFTIN1,
      SHIFTIN2 => SHIFTIN2,
      SHIFTOUT1 => NLW_SerializerMaster_SHIFTOUT1_UNCONNECTED,
      SHIFTOUT2 => NLW_SerializerMaster_SHIFTOUT2_UNCONNECTED,
      T1 => '0',
      T2 => '0',
      T3 => '0',
      T4 => '0',
      TBYTEIN => '0',
      TBYTEOUT => NLW_SerializerMaster_TBYTEOUT_UNCONNECTED,
      TCE => '0',
      TFB => NLW_SerializerMaster_TFB_UNCONNECTED,
      TQ => NLW_SerializerMaster_TQ_UNCONNECTED
    );
SerializerSlave: unisim.vcomponents.OSERDESE2
    generic map(
      DATA_RATE_OQ => "DDR",
      DATA_RATE_TQ => "SDR",
      DATA_WIDTH => 10,
      INIT_OQ => '0',
      INIT_TQ => '0',
      IS_CLKDIV_INVERTED => '0',
      IS_CLK_INVERTED => '0',
      IS_D1_INVERTED => '0',
      IS_D2_INVERTED => '0',
      IS_D3_INVERTED => '0',
      IS_D4_INVERTED => '0',
      IS_D5_INVERTED => '0',
      IS_D6_INVERTED => '0',
      IS_D7_INVERTED => '0',
      IS_D8_INVERTED => '0',
      IS_T1_INVERTED => '0',
      IS_T2_INVERTED => '0',
      IS_T3_INVERTED => '0',
      IS_T4_INVERTED => '0',
      SERDES_MODE => "SLAVE",
      SRVAL_OQ => '0',
      SRVAL_TQ => '0',
      TBYTE_CTL => "FALSE",
      TBYTE_SRC => "FALSE",
      TRISTATE_WIDTH => 1
    )
        port map (
      CLK => SerialClk,
      CLKDIV => PixelClk,
      D1 => '0',
      D2 => '0',
      D3 => pDataOut(8),
      D4 => pDataOut(9),
      D5 => '0',
      D6 => '0',
      D7 => '0',
      D8 => '0',
      OCE => '1',
      OFB => NLW_SerializerSlave_OFB_UNCONNECTED,
      OQ => NLW_SerializerSlave_OQ_UNCONNECTED,
      RST => aRst,
      SHIFTIN1 => '0',
      SHIFTIN2 => '0',
      SHIFTOUT1 => SHIFTIN1,
      SHIFTOUT2 => SHIFTIN2,
      T1 => '0',
      T2 => '0',
      T3 => '0',
      T4 => '0',
      TBYTEIN => '0',
      TBYTEOUT => NLW_SerializerSlave_TBYTEOUT_UNCONNECTED,
      TCE => '0',
      TFB => NLW_SerializerSlave_TFB_UNCONNECTED,
      TQ => NLW_SerializerSlave_TQ_UNCONNECTED
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \_xilinx_top__OutputSERDES_2\ is
  port (
    TMDS_Data_p : out STD_LOGIC_VECTOR ( 0 to 0 );
    TMDS_Data_n : out STD_LOGIC_VECTOR ( 0 to 0 );
    SerialClk : in STD_LOGIC;
    PixelClk : in STD_LOGIC;
    pDataOut : in STD_LOGIC_VECTOR ( 9 downto 0 );
    \out\ : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \_xilinx_top__OutputSERDES_2\ : entity is "OutputSERDES";
end \_xilinx_top__OutputSERDES_2\;

architecture STRUCTURE of \_xilinx_top__OutputSERDES_2\ is
  signal I : STD_LOGIC;
  signal SHIFTIN1 : STD_LOGIC;
  signal SHIFTIN2 : STD_LOGIC;
  signal NLW_SerializerMaster_OFB_UNCONNECTED : STD_LOGIC;
  signal NLW_SerializerMaster_SHIFTOUT1_UNCONNECTED : STD_LOGIC;
  signal NLW_SerializerMaster_SHIFTOUT2_UNCONNECTED : STD_LOGIC;
  signal NLW_SerializerMaster_TBYTEOUT_UNCONNECTED : STD_LOGIC;
  signal NLW_SerializerMaster_TFB_UNCONNECTED : STD_LOGIC;
  signal NLW_SerializerMaster_TQ_UNCONNECTED : STD_LOGIC;
  signal NLW_SerializerSlave_OFB_UNCONNECTED : STD_LOGIC;
  signal NLW_SerializerSlave_OQ_UNCONNECTED : STD_LOGIC;
  signal NLW_SerializerSlave_TBYTEOUT_UNCONNECTED : STD_LOGIC;
  signal NLW_SerializerSlave_TFB_UNCONNECTED : STD_LOGIC;
  signal NLW_SerializerSlave_TQ_UNCONNECTED : STD_LOGIC;
  attribute CAPACITANCE : string;
  attribute CAPACITANCE of OutputBuffer : label is "DONT_CARE";
  attribute box_type : string;
  attribute box_type of OutputBuffer : label is "PRIMITIVE";
  attribute box_type of SerializerMaster : label is "PRIMITIVE";
  attribute box_type of SerializerSlave : label is "PRIMITIVE";
begin
OutputBuffer: unisim.vcomponents.OBUFDS
     port map (
      I => I,
      O => TMDS_Data_p(0),
      OB => TMDS_Data_n(0)
    );
SerializerMaster: unisim.vcomponents.OSERDESE2
    generic map(
      DATA_RATE_OQ => "DDR",
      DATA_RATE_TQ => "SDR",
      DATA_WIDTH => 10,
      INIT_OQ => '0',
      INIT_TQ => '0',
      IS_CLKDIV_INVERTED => '0',
      IS_CLK_INVERTED => '0',
      IS_D1_INVERTED => '0',
      IS_D2_INVERTED => '0',
      IS_D3_INVERTED => '0',
      IS_D4_INVERTED => '0',
      IS_D5_INVERTED => '0',
      IS_D6_INVERTED => '0',
      IS_D7_INVERTED => '0',
      IS_D8_INVERTED => '0',
      IS_T1_INVERTED => '0',
      IS_T2_INVERTED => '0',
      IS_T3_INVERTED => '0',
      IS_T4_INVERTED => '0',
      SERDES_MODE => "MASTER",
      SRVAL_OQ => '0',
      SRVAL_TQ => '0',
      TBYTE_CTL => "FALSE",
      TBYTE_SRC => "FALSE",
      TRISTATE_WIDTH => 1
    )
        port map (
      CLK => SerialClk,
      CLKDIV => PixelClk,
      D1 => pDataOut(0),
      D2 => pDataOut(1),
      D3 => pDataOut(2),
      D4 => pDataOut(3),
      D5 => pDataOut(4),
      D6 => pDataOut(5),
      D7 => pDataOut(6),
      D8 => pDataOut(7),
      OCE => '1',
      OFB => NLW_SerializerMaster_OFB_UNCONNECTED,
      OQ => I,
      RST => \out\(0),
      SHIFTIN1 => SHIFTIN1,
      SHIFTIN2 => SHIFTIN2,
      SHIFTOUT1 => NLW_SerializerMaster_SHIFTOUT1_UNCONNECTED,
      SHIFTOUT2 => NLW_SerializerMaster_SHIFTOUT2_UNCONNECTED,
      T1 => '0',
      T2 => '0',
      T3 => '0',
      T4 => '0',
      TBYTEIN => '0',
      TBYTEOUT => NLW_SerializerMaster_TBYTEOUT_UNCONNECTED,
      TCE => '0',
      TFB => NLW_SerializerMaster_TFB_UNCONNECTED,
      TQ => NLW_SerializerMaster_TQ_UNCONNECTED
    );
SerializerSlave: unisim.vcomponents.OSERDESE2
    generic map(
      DATA_RATE_OQ => "DDR",
      DATA_RATE_TQ => "SDR",
      DATA_WIDTH => 10,
      INIT_OQ => '0',
      INIT_TQ => '0',
      IS_CLKDIV_INVERTED => '0',
      IS_CLK_INVERTED => '0',
      IS_D1_INVERTED => '0',
      IS_D2_INVERTED => '0',
      IS_D3_INVERTED => '0',
      IS_D4_INVERTED => '0',
      IS_D5_INVERTED => '0',
      IS_D6_INVERTED => '0',
      IS_D7_INVERTED => '0',
      IS_D8_INVERTED => '0',
      IS_T1_INVERTED => '0',
      IS_T2_INVERTED => '0',
      IS_T3_INVERTED => '0',
      IS_T4_INVERTED => '0',
      SERDES_MODE => "SLAVE",
      SRVAL_OQ => '0',
      SRVAL_TQ => '0',
      TBYTE_CTL => "FALSE",
      TBYTE_SRC => "FALSE",
      TRISTATE_WIDTH => 1
    )
        port map (
      CLK => SerialClk,
      CLKDIV => PixelClk,
      D1 => '0',
      D2 => '0',
      D3 => pDataOut(8),
      D4 => pDataOut(9),
      D5 => '0',
      D6 => '0',
      D7 => '0',
      D8 => '0',
      OCE => '1',
      OFB => NLW_SerializerSlave_OFB_UNCONNECTED,
      OQ => NLW_SerializerSlave_OQ_UNCONNECTED,
      RST => \out\(0),
      SHIFTIN1 => '0',
      SHIFTIN2 => '0',
      SHIFTOUT1 => SHIFTIN1,
      SHIFTOUT2 => SHIFTIN2,
      T1 => '0',
      T2 => '0',
      T3 => '0',
      T4 => '0',
      TBYTEIN => '0',
      TBYTEOUT => NLW_SerializerSlave_TBYTEOUT_UNCONNECTED,
      TCE => '0',
      TFB => NLW_SerializerSlave_TFB_UNCONNECTED,
      TQ => NLW_SerializerSlave_TQ_UNCONNECTED
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \_xilinx_top__OutputSERDES_4\ is
  port (
    TMDS_Data_p : out STD_LOGIC_VECTOR ( 0 to 0 );
    TMDS_Data_n : out STD_LOGIC_VECTOR ( 0 to 0 );
    SerialClk : in STD_LOGIC;
    PixelClk : in STD_LOGIC;
    pDataOut : in STD_LOGIC_VECTOR ( 9 downto 0 );
    \out\ : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \_xilinx_top__OutputSERDES_4\ : entity is "OutputSERDES";
end \_xilinx_top__OutputSERDES_4\;

architecture STRUCTURE of \_xilinx_top__OutputSERDES_4\ is
  signal I : STD_LOGIC;
  signal SHIFTIN1 : STD_LOGIC;
  signal SHIFTIN2 : STD_LOGIC;
  signal NLW_SerializerMaster_OFB_UNCONNECTED : STD_LOGIC;
  signal NLW_SerializerMaster_SHIFTOUT1_UNCONNECTED : STD_LOGIC;
  signal NLW_SerializerMaster_SHIFTOUT2_UNCONNECTED : STD_LOGIC;
  signal NLW_SerializerMaster_TBYTEOUT_UNCONNECTED : STD_LOGIC;
  signal NLW_SerializerMaster_TFB_UNCONNECTED : STD_LOGIC;
  signal NLW_SerializerMaster_TQ_UNCONNECTED : STD_LOGIC;
  signal NLW_SerializerSlave_OFB_UNCONNECTED : STD_LOGIC;
  signal NLW_SerializerSlave_OQ_UNCONNECTED : STD_LOGIC;
  signal NLW_SerializerSlave_TBYTEOUT_UNCONNECTED : STD_LOGIC;
  signal NLW_SerializerSlave_TFB_UNCONNECTED : STD_LOGIC;
  signal NLW_SerializerSlave_TQ_UNCONNECTED : STD_LOGIC;
  attribute CAPACITANCE : string;
  attribute CAPACITANCE of OutputBuffer : label is "DONT_CARE";
  attribute box_type : string;
  attribute box_type of OutputBuffer : label is "PRIMITIVE";
  attribute box_type of SerializerMaster : label is "PRIMITIVE";
  attribute box_type of SerializerSlave : label is "PRIMITIVE";
begin
OutputBuffer: unisim.vcomponents.OBUFDS
     port map (
      I => I,
      O => TMDS_Data_p(0),
      OB => TMDS_Data_n(0)
    );
SerializerMaster: unisim.vcomponents.OSERDESE2
    generic map(
      DATA_RATE_OQ => "DDR",
      DATA_RATE_TQ => "SDR",
      DATA_WIDTH => 10,
      INIT_OQ => '0',
      INIT_TQ => '0',
      IS_CLKDIV_INVERTED => '0',
      IS_CLK_INVERTED => '0',
      IS_D1_INVERTED => '0',
      IS_D2_INVERTED => '0',
      IS_D3_INVERTED => '0',
      IS_D4_INVERTED => '0',
      IS_D5_INVERTED => '0',
      IS_D6_INVERTED => '0',
      IS_D7_INVERTED => '0',
      IS_D8_INVERTED => '0',
      IS_T1_INVERTED => '0',
      IS_T2_INVERTED => '0',
      IS_T3_INVERTED => '0',
      IS_T4_INVERTED => '0',
      SERDES_MODE => "MASTER",
      SRVAL_OQ => '0',
      SRVAL_TQ => '0',
      TBYTE_CTL => "FALSE",
      TBYTE_SRC => "FALSE",
      TRISTATE_WIDTH => 1
    )
        port map (
      CLK => SerialClk,
      CLKDIV => PixelClk,
      D1 => pDataOut(0),
      D2 => pDataOut(1),
      D3 => pDataOut(2),
      D4 => pDataOut(3),
      D5 => pDataOut(4),
      D6 => pDataOut(5),
      D7 => pDataOut(6),
      D8 => pDataOut(7),
      OCE => '1',
      OFB => NLW_SerializerMaster_OFB_UNCONNECTED,
      OQ => I,
      RST => \out\(0),
      SHIFTIN1 => SHIFTIN1,
      SHIFTIN2 => SHIFTIN2,
      SHIFTOUT1 => NLW_SerializerMaster_SHIFTOUT1_UNCONNECTED,
      SHIFTOUT2 => NLW_SerializerMaster_SHIFTOUT2_UNCONNECTED,
      T1 => '0',
      T2 => '0',
      T3 => '0',
      T4 => '0',
      TBYTEIN => '0',
      TBYTEOUT => NLW_SerializerMaster_TBYTEOUT_UNCONNECTED,
      TCE => '0',
      TFB => NLW_SerializerMaster_TFB_UNCONNECTED,
      TQ => NLW_SerializerMaster_TQ_UNCONNECTED
    );
SerializerSlave: unisim.vcomponents.OSERDESE2
    generic map(
      DATA_RATE_OQ => "DDR",
      DATA_RATE_TQ => "SDR",
      DATA_WIDTH => 10,
      INIT_OQ => '0',
      INIT_TQ => '0',
      IS_CLKDIV_INVERTED => '0',
      IS_CLK_INVERTED => '0',
      IS_D1_INVERTED => '0',
      IS_D2_INVERTED => '0',
      IS_D3_INVERTED => '0',
      IS_D4_INVERTED => '0',
      IS_D5_INVERTED => '0',
      IS_D6_INVERTED => '0',
      IS_D7_INVERTED => '0',
      IS_D8_INVERTED => '0',
      IS_T1_INVERTED => '0',
      IS_T2_INVERTED => '0',
      IS_T3_INVERTED => '0',
      IS_T4_INVERTED => '0',
      SERDES_MODE => "SLAVE",
      SRVAL_OQ => '0',
      SRVAL_TQ => '0',
      TBYTE_CTL => "FALSE",
      TBYTE_SRC => "FALSE",
      TRISTATE_WIDTH => 1
    )
        port map (
      CLK => SerialClk,
      CLKDIV => PixelClk,
      D1 => '0',
      D2 => '0',
      D3 => pDataOut(8),
      D4 => pDataOut(9),
      D5 => '0',
      D6 => '0',
      D7 => '0',
      D8 => '0',
      OCE => '1',
      OFB => NLW_SerializerSlave_OFB_UNCONNECTED,
      OQ => NLW_SerializerSlave_OQ_UNCONNECTED,
      RST => \out\(0),
      SHIFTIN1 => '0',
      SHIFTIN2 => '0',
      SHIFTOUT1 => SHIFTIN1,
      SHIFTOUT2 => SHIFTIN2,
      T1 => '0',
      T2 => '0',
      T3 => '0',
      T4 => '0',
      TBYTEIN => '0',
      TBYTEOUT => NLW_SerializerSlave_TBYTEOUT_UNCONNECTED,
      TCE => '0',
      TFB => NLW_SerializerSlave_TFB_UNCONNECTED,
      TQ => NLW_SerializerSlave_TQ_UNCONNECTED
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \_xilinx_top__SyncAsync\ is
  port (
    \out\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    PixelClk : in STD_LOGIC;
    AS : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
end \_xilinx_top__SyncAsync\;

architecture STRUCTURE of \_xilinx_top__SyncAsync\ is
  signal oSyncStages : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute async_reg : string;
  attribute async_reg of oSyncStages : signal is "true";
  attribute ASYNC_REG_boolean : boolean;
  attribute ASYNC_REG_boolean of \oSyncStages_reg[0]\ : label is std.standard.true;
  attribute KEEP : string;
  attribute KEEP of \oSyncStages_reg[0]\ : label is "yes";
  attribute ASYNC_REG_boolean of \oSyncStages_reg[1]\ : label is std.standard.true;
  attribute KEEP of \oSyncStages_reg[1]\ : label is "yes";
begin
  \out\(0) <= oSyncStages(1);
\oSyncStages_reg[0]\: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => PixelClk,
      CE => '1',
      D => '0',
      PRE => AS(0),
      Q => oSyncStages(0)
    );
\oSyncStages_reg[1]\: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => PixelClk,
      CE => '1',
      D => oSyncStages(0),
      PRE => AS(0),
      Q => oSyncStages(1)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \_xilinx_top__TMDS_Encoder\ is
  port (
    pVde_2 : out STD_LOGIC;
    SR : out STD_LOGIC_VECTOR ( 0 to 0 );
    D : out STD_LOGIC_VECTOR ( 0 to 0 );
    \pDataOutRaw_reg[9]_0\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    Q : out STD_LOGIC_VECTOR ( 9 downto 0 );
    vid_pHSync : in STD_LOGIC;
    PixelClk : in STD_LOGIC;
    vid_pVSync : in STD_LOGIC;
    vid_pVDE : in STD_LOGIC;
    \cnt_t_3_reg[4]_0\ : in STD_LOGIC;
    \cnt_t_3_reg[4]_1\ : in STD_LOGIC;
    vid_pData : in STD_LOGIC_VECTOR ( 7 downto 0 )
  );
end \_xilinx_top__TMDS_Encoder\;

architecture STRUCTURE of \_xilinx_top__TMDS_Encoder\ is
  signal \^sr\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal cnt_t_2 : STD_LOGIC_VECTOR ( 4 downto 1 );
  signal cnt_t_3 : STD_LOGIC_VECTOR ( 4 downto 1 );
  signal \cnt_t_3[2]_i_2_n_0\ : STD_LOGIC;
  signal \cnt_t_3[2]_i_3_n_0\ : STD_LOGIC;
  signal \cnt_t_3[2]_i_4_n_0\ : STD_LOGIC;
  signal \cnt_t_3[3]_i_10_n_0\ : STD_LOGIC;
  signal \cnt_t_3[3]_i_2_n_0\ : STD_LOGIC;
  signal \cnt_t_3[3]_i_3_n_0\ : STD_LOGIC;
  signal \cnt_t_3[3]_i_4_n_0\ : STD_LOGIC;
  signal \cnt_t_3[3]_i_5_n_0\ : STD_LOGIC;
  signal \cnt_t_3[3]_i_6_n_0\ : STD_LOGIC;
  signal \cnt_t_3[3]_i_7_n_0\ : STD_LOGIC;
  signal \cnt_t_3[3]_i_8_n_0\ : STD_LOGIC;
  signal \cnt_t_3[3]_i_9_n_0\ : STD_LOGIC;
  signal \cnt_t_3[4]_i_10_n_0\ : STD_LOGIC;
  signal \cnt_t_3[4]_i_11__1_n_0\ : STD_LOGIC;
  signal \cnt_t_3[4]_i_12_n_0\ : STD_LOGIC;
  signal \cnt_t_3[4]_i_13_n_0\ : STD_LOGIC;
  signal \cnt_t_3[4]_i_14_n_0\ : STD_LOGIC;
  signal \cnt_t_3[4]_i_15_n_0\ : STD_LOGIC;
  signal \cnt_t_3[4]_i_16_n_0\ : STD_LOGIC;
  signal \cnt_t_3[4]_i_3_n_0\ : STD_LOGIC;
  signal \cnt_t_3[4]_i_4__1_n_0\ : STD_LOGIC;
  signal \cnt_t_3[4]_i_5_n_0\ : STD_LOGIC;
  signal \cnt_t_3[4]_i_6_n_0\ : STD_LOGIC;
  signal \cnt_t_3[4]_i_7_n_0\ : STD_LOGIC;
  signal \cnt_t_3[4]_i_8_n_0\ : STD_LOGIC;
  signal \cnt_t_3[4]_i_9_n_0\ : STD_LOGIC;
  signal minusOp : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal n0q_m_2 : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \n1d_1[0]_i_2_n_0\ : STD_LOGIC;
  signal \n1d_1[1]_i_2_n_0\ : STD_LOGIC;
  signal \n1d_1[2]_i_2_n_0\ : STD_LOGIC;
  signal \n1d_1[3]_i_2_n_0\ : STD_LOGIC;
  signal \n1d_1[3]_i_3_n_0\ : STD_LOGIC;
  signal \n1d_1[3]_i_4_n_0\ : STD_LOGIC;
  signal \n1d_1_reg_n_0_[0]\ : STD_LOGIC;
  signal \n1d_1_reg_n_0_[1]\ : STD_LOGIC;
  signal \n1d_1_reg_n_0_[2]\ : STD_LOGIC;
  signal \n1d_1_reg_n_0_[3]\ : STD_LOGIC;
  signal n1q_m_1 : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \n1q_m_2[0]_i_2_n_0\ : STD_LOGIC;
  signal \n1q_m_2[3]_i_2_n_0\ : STD_LOGIC;
  signal \n1q_m_2[3]_i_3_n_0\ : STD_LOGIC;
  signal \n1q_m_2[3]_i_4_n_0\ : STD_LOGIC;
  signal \n1q_m_2[3]_i_5_n_0\ : STD_LOGIC;
  signal \n1q_m_2_reg_n_0_[0]\ : STD_LOGIC;
  signal \n1q_m_2_reg_n_0_[1]\ : STD_LOGIC;
  signal \n1q_m_2_reg_n_0_[2]\ : STD_LOGIC;
  signal \n1q_m_2_reg_n_0_[3]\ : STD_LOGIC;
  signal pC0_1 : STD_LOGIC;
  signal pC0_2 : STD_LOGIC;
  signal pC1_1 : STD_LOGIC;
  signal pC1_2 : STD_LOGIC;
  signal \pDataOutRaw[9]_i_1_n_0\ : STD_LOGIC;
  signal \pDataOutRaw[9]_i_3_n_0\ : STD_LOGIC;
  signal \pDataOut_1_reg_n_0_[0]\ : STD_LOGIC;
  signal \pDataOut_1_reg_n_0_[1]\ : STD_LOGIC;
  signal pVde_1 : STD_LOGIC;
  signal \^pvde_2\ : STD_LOGIC;
  signal p_0_in0_in : STD_LOGIC;
  signal p_0_in10_in : STD_LOGIC;
  signal p_0_in11_in : STD_LOGIC;
  signal p_0_in2_in : STD_LOGIC;
  signal p_0_in4_in : STD_LOGIC;
  signal p_0_in5_out : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal p_0_in6_in : STD_LOGIC;
  signal p_0_in7_in : STD_LOGIC;
  signal p_0_in8_in : STD_LOGIC;
  signal p_0_in9_in : STD_LOGIC;
  signal \p_0_in__0\ : STD_LOGIC;
  signal p_1_in13_in : STD_LOGIC;
  signal \q_m_11__5\ : STD_LOGIC;
  signal \q_m_2[5]_i_2_n_0\ : STD_LOGIC;
  signal \q_m_2[8]_i_1_n_0\ : STD_LOGIC;
  signal \q_m_2_reg_n_0_[0]\ : STD_LOGIC;
  signal \q_m_2_reg_n_0_[1]\ : STD_LOGIC;
  signal \q_m_2_reg_n_0_[2]\ : STD_LOGIC;
  signal \q_m_2_reg_n_0_[3]\ : STD_LOGIC;
  signal \q_m_2_reg_n_0_[4]\ : STD_LOGIC;
  signal \q_m_2_reg_n_0_[5]\ : STD_LOGIC;
  signal \q_m_2_reg_n_0_[6]\ : STD_LOGIC;
  signal \q_m_2_reg_n_0_[7]\ : STD_LOGIC;
  signal q_m_xor_1 : STD_LOGIC_VECTOR ( 6 downto 2 );
  signal q_out_20_in : STD_LOGIC_VECTOR ( 9 downto 0 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \cnt_t_3[2]_i_2\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \cnt_t_3[2]_i_3\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \cnt_t_3[3]_i_2\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \cnt_t_3[3]_i_4\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \cnt_t_3[3]_i_8\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \cnt_t_3[3]_i_9\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \cnt_t_3[4]_i_11__1\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \cnt_t_3[4]_i_12\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \cnt_t_3[4]_i_13\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \cnt_t_3[4]_i_14\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \cnt_t_3[4]_i_15\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \cnt_t_3[4]_i_16\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \cnt_t_3[4]_i_3\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \cnt_t_3[4]_i_4__1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \cnt_t_3[4]_i_5\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \cnt_t_3[4]_i_6\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \n1d_1[0]_i_2\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \n1d_1[3]_i_3\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \n1q_m_2[3]_i_2\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \n1q_m_2[3]_i_3\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \pDataOutRaw[6]_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \pDataOutRaw[8]_i_1\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \pDataOutRaw[9]_i_1__0\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \pDataOutRaw[9]_i_2\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \q_m_2[2]_i_1\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \q_m_2[3]_i_1\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \q_m_2[4]_i_1\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \q_m_2[5]_i_2\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \q_m_2[6]_i_1\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \q_m_2[7]_i_2\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \q_m_2[7]_i_3\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \q_m_2[8]_i_1\ : label is "soft_lutpair2";
begin
  SR(0) <= \^sr\(0);
  pVde_2 <= \^pvde_2\;
\cnt_t_3[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9669699696969696"
    )
        port map (
      I0 => \n1q_m_2_reg_n_0_[1]\,
      I1 => n0q_m_2(1),
      I2 => cnt_t_3(1),
      I3 => \p_0_in__0\,
      I4 => \cnt_t_3[4]_i_7_n_0\,
      I5 => \cnt_t_3[2]_i_4_n_0\,
      O => cnt_t_2(1)
    );
\cnt_t_3[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"66A555A5A599A555"
    )
        port map (
      I0 => \cnt_t_3[2]_i_2_n_0\,
      I1 => \cnt_t_3[4]_i_7_n_0\,
      I2 => \cnt_t_3[2]_i_3_n_0\,
      I3 => cnt_t_3(1),
      I4 => \cnt_t_3[2]_i_4_n_0\,
      I5 => \p_0_in__0\,
      O => cnt_t_2(2)
    );
\cnt_t_3[2]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"59A6A659"
    )
        port map (
      I0 => cnt_t_3(2),
      I1 => \n1q_m_2_reg_n_0_[1]\,
      I2 => n0q_m_2(1),
      I3 => n0q_m_2(2),
      I4 => \n1q_m_2_reg_n_0_[2]\,
      O => \cnt_t_3[2]_i_2_n_0\
    );
\cnt_t_3[2]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \n1q_m_2_reg_n_0_[1]\,
      I1 => n0q_m_2(1),
      O => \cnt_t_3[2]_i_3_n_0\
    );
\cnt_t_3[2]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFE0000FFFEFFFE"
    )
        port map (
      I0 => cnt_t_3(3),
      I1 => cnt_t_3(1),
      I2 => cnt_t_3(2),
      I3 => cnt_t_3(4),
      I4 => \cnt_t_3[4]_i_11__1_n_0\,
      I5 => \n1q_m_2_reg_n_0_[2]\,
      O => \cnt_t_3[2]_i_4_n_0\
    );
\cnt_t_3[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"99999999AAA9AAAA"
    )
        port map (
      I0 => \cnt_t_3[3]_i_2_n_0\,
      I1 => \cnt_t_3[3]_i_3_n_0\,
      I2 => \cnt_t_3[3]_i_4_n_0\,
      I3 => \cnt_t_3[3]_i_5_n_0\,
      I4 => \cnt_t_3[3]_i_6_n_0\,
      I5 => \cnt_t_3[3]_i_7_n_0\,
      O => cnt_t_2(3)
    );
\cnt_t_3[3]_i_10\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EFFBFBEFCB2020CB"
    )
        port map (
      I0 => cnt_t_3(1),
      I1 => n0q_m_2(1),
      I2 => \n1q_m_2_reg_n_0_[1]\,
      I3 => \n1q_m_2_reg_n_0_[2]\,
      I4 => n0q_m_2(2),
      I5 => cnt_t_3(2),
      O => \cnt_t_3[3]_i_10_n_0\
    );
\cnt_t_3[3]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => cnt_t_3(3),
      I1 => \cnt_t_3[4]_i_10_n_0\,
      O => \cnt_t_3[3]_i_2_n_0\
    );
\cnt_t_3[3]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000001F11"
    )
        port map (
      I0 => \cnt_t_3[4]_i_12_n_0\,
      I1 => cnt_t_3(4),
      I2 => \cnt_t_3[4]_i_11__1_n_0\,
      I3 => \n1q_m_2_reg_n_0_[2]\,
      I4 => \p_0_in__0\,
      I5 => \cnt_t_3[4]_i_9_n_0\,
      O => \cnt_t_3[3]_i_3_n_0\
    );
\cnt_t_3[3]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"080808AA"
    )
        port map (
      I0 => \p_0_in__0\,
      I1 => \n1q_m_2_reg_n_0_[2]\,
      I2 => \cnt_t_3[4]_i_11__1_n_0\,
      I3 => cnt_t_3(4),
      I4 => \cnt_t_3[4]_i_12_n_0\,
      O => \cnt_t_3[3]_i_4_n_0\
    );
\cnt_t_3[3]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"E800E8E8E800E800"
    )
        port map (
      I0 => \cnt_t_3[4]_i_15_n_0\,
      I1 => cnt_t_3(2),
      I2 => \cnt_t_3[4]_i_14_n_0\,
      I3 => \cnt_t_3[3]_i_8_n_0\,
      I4 => \cnt_t_3[3]_i_9_n_0\,
      I5 => \cnt_t_3[4]_i_12_n_0\,
      O => \cnt_t_3[3]_i_5_n_0\
    );
\cnt_t_3[3]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFD4FFFFFFD4FFD4"
    )
        port map (
      I0 => \cnt_t_3[4]_i_15_n_0\,
      I1 => cnt_t_3(2),
      I2 => \cnt_t_3[4]_i_16_n_0\,
      I3 => \cnt_t_3[3]_i_8_n_0\,
      I4 => \cnt_t_3[3]_i_9_n_0\,
      I5 => \cnt_t_3[4]_i_12_n_0\,
      O => \cnt_t_3[3]_i_6_n_0\
    );
\cnt_t_3[3]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"03FF030301550101"
    )
        port map (
      I0 => \p_0_in__0\,
      I1 => \cnt_t_3[4]_i_12_n_0\,
      I2 => cnt_t_3(4),
      I3 => \cnt_t_3[4]_i_11__1_n_0\,
      I4 => \n1q_m_2_reg_n_0_[2]\,
      I5 => \cnt_t_3[3]_i_10_n_0\,
      O => \cnt_t_3[3]_i_7_n_0\
    );
\cnt_t_3[3]_i_8\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"02"
    )
        port map (
      I0 => cnt_t_3(4),
      I1 => \n1q_m_2_reg_n_0_[3]\,
      I2 => \n1q_m_2_reg_n_0_[2]\,
      O => \cnt_t_3[3]_i_8_n_0\
    );
\cnt_t_3[3]_i_9\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F0F0F1FF"
    )
        port map (
      I0 => \n1q_m_2_reg_n_0_[1]\,
      I1 => \n1q_m_2_reg_n_0_[0]\,
      I2 => cnt_t_3(4),
      I3 => \n1q_m_2_reg_n_0_[2]\,
      I4 => \n1q_m_2_reg_n_0_[3]\,
      O => \cnt_t_3[3]_i_9_n_0\
    );
\cnt_t_3[4]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^pvde_2\,
      O => \^sr\(0)
    );
\cnt_t_3[4]_i_10\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5D04A2FBA2FB5D04"
    )
        port map (
      I0 => n0q_m_2(2),
      I1 => \n1q_m_2_reg_n_0_[1]\,
      I2 => n0q_m_2(1),
      I3 => \n1q_m_2_reg_n_0_[2]\,
      I4 => n0q_m_2(3),
      I5 => \n1q_m_2_reg_n_0_[3]\,
      O => \cnt_t_3[4]_i_10_n_0\
    );
\cnt_t_3[4]_i_11__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FE"
    )
        port map (
      I0 => \n1q_m_2_reg_n_0_[3]\,
      I1 => \n1q_m_2_reg_n_0_[0]\,
      I2 => \n1q_m_2_reg_n_0_[1]\,
      O => \cnt_t_3[4]_i_11__1_n_0\
    );
\cnt_t_3[4]_i_12\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FE"
    )
        port map (
      I0 => cnt_t_3(3),
      I1 => cnt_t_3(1),
      I2 => cnt_t_3(2),
      O => \cnt_t_3[4]_i_12_n_0\
    );
\cnt_t_3[4]_i_13\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"20BA"
    )
        port map (
      I0 => \n1q_m_2_reg_n_0_[2]\,
      I1 => n0q_m_2(1),
      I2 => \n1q_m_2_reg_n_0_[1]\,
      I3 => n0q_m_2(2),
      O => \cnt_t_3[4]_i_13_n_0\
    );
\cnt_t_3[4]_i_14\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BE28"
    )
        port map (
      I0 => \p_0_in__0\,
      I1 => \n1q_m_2_reg_n_0_[1]\,
      I2 => n0q_m_2(1),
      I3 => cnt_t_3(1),
      O => \cnt_t_3[4]_i_14_n_0\
    );
\cnt_t_3[4]_i_15\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2DD2"
    )
        port map (
      I0 => \n1q_m_2_reg_n_0_[1]\,
      I1 => n0q_m_2(1),
      I2 => n0q_m_2(2),
      I3 => \n1q_m_2_reg_n_0_[2]\,
      O => \cnt_t_3[4]_i_15_n_0\
    );
\cnt_t_3[4]_i_16\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EB82"
    )
        port map (
      I0 => cnt_t_3(1),
      I1 => n0q_m_2(1),
      I2 => \n1q_m_2_reg_n_0_[1]\,
      I3 => \p_0_in__0\,
      O => \cnt_t_3[4]_i_16_n_0\
    );
\cnt_t_3[4]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4B4B4B7878784B78"
    )
        port map (
      I0 => \cnt_t_3[4]_i_3_n_0\,
      I1 => \cnt_t_3[4]_i_4__1_n_0\,
      I2 => \cnt_t_3[4]_i_5_n_0\,
      I3 => \cnt_t_3[4]_i_6_n_0\,
      I4 => \cnt_t_3[4]_i_7_n_0\,
      I5 => \cnt_t_3[4]_i_8_n_0\,
      O => cnt_t_2(4)
    );
\cnt_t_3[4]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"2B"
    )
        port map (
      I0 => \cnt_t_3[4]_i_9_n_0\,
      I1 => cnt_t_3(3),
      I2 => \cnt_t_3[4]_i_10_n_0\,
      O => \cnt_t_3[4]_i_3_n_0\
    );
\cnt_t_3[4]_i_4__1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"04040455"
    )
        port map (
      I0 => \p_0_in__0\,
      I1 => \n1q_m_2_reg_n_0_[2]\,
      I2 => \cnt_t_3[4]_i_11__1_n_0\,
      I3 => cnt_t_3(4),
      I4 => \cnt_t_3[4]_i_12_n_0\,
      O => \cnt_t_3[4]_i_4__1_n_0\
    );
\cnt_t_3[4]_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"95A9"
    )
        port map (
      I0 => cnt_t_3(4),
      I1 => \n1q_m_2_reg_n_0_[3]\,
      I2 => \cnt_t_3[4]_i_13_n_0\,
      I3 => n0q_m_2(3),
      O => \cnt_t_3[4]_i_5_n_0\
    );
\cnt_t_3[4]_i_6\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"11171777"
    )
        port map (
      I0 => cnt_t_3(3),
      I1 => \cnt_t_3[4]_i_10_n_0\,
      I2 => \cnt_t_3[4]_i_14_n_0\,
      I3 => cnt_t_3(2),
      I4 => \cnt_t_3[4]_i_15_n_0\,
      O => \cnt_t_3[4]_i_6_n_0\
    );
\cnt_t_3[4]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFF00555557FF"
    )
        port map (
      I0 => \cnt_t_3[4]_i_12_n_0\,
      I1 => \n1q_m_2_reg_n_0_[1]\,
      I2 => \n1q_m_2_reg_n_0_[0]\,
      I3 => \n1q_m_2_reg_n_0_[2]\,
      I4 => \n1q_m_2_reg_n_0_[3]\,
      I5 => cnt_t_3(4),
      O => \cnt_t_3[4]_i_7_n_0\
    );
\cnt_t_3[4]_i_8\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"8EFF008E"
    )
        port map (
      I0 => \cnt_t_3[4]_i_16_n_0\,
      I1 => cnt_t_3(2),
      I2 => \cnt_t_3[4]_i_15_n_0\,
      I3 => \cnt_t_3[4]_i_10_n_0\,
      I4 => cnt_t_3(3),
      O => \cnt_t_3[4]_i_8_n_0\
    );
\cnt_t_3[4]_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"C7DF10F710F7C7DF"
    )
        port map (
      I0 => cnt_t_3(1),
      I1 => n0q_m_2(1),
      I2 => \n1q_m_2_reg_n_0_[1]\,
      I3 => cnt_t_3(2),
      I4 => \n1q_m_2_reg_n_0_[2]\,
      I5 => n0q_m_2(2),
      O => \cnt_t_3[4]_i_9_n_0\
    );
\cnt_t_3_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => PixelClk,
      CE => '1',
      D => cnt_t_2(1),
      Q => cnt_t_3(1),
      R => \^sr\(0)
    );
\cnt_t_3_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => PixelClk,
      CE => '1',
      D => cnt_t_2(2),
      Q => cnt_t_3(2),
      R => \^sr\(0)
    );
\cnt_t_3_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => PixelClk,
      CE => '1',
      D => cnt_t_2(3),
      Q => cnt_t_3(3),
      R => \^sr\(0)
    );
\cnt_t_3_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => PixelClk,
      CE => '1',
      D => cnt_t_2(4),
      Q => cnt_t_3(4),
      R => \^sr\(0)
    );
\n0q_m_2[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"177EE881E881177E"
    )
        port map (
      I0 => q_m_xor_1(4),
      I1 => q_m_xor_1(6),
      I2 => p_0_in7_in,
      I3 => \n1q_m_2[3]_i_2_n_0\,
      I4 => \n1q_m_2[3]_i_4_n_0\,
      I5 => \n1q_m_2[3]_i_3_n_0\,
      O => minusOp(1)
    );
\n0q_m_2[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0001177F177FFFFE"
    )
        port map (
      I0 => \n1q_m_2[3]_i_2_n_0\,
      I1 => q_m_xor_1(4),
      I2 => p_0_in7_in,
      I3 => q_m_xor_1(6),
      I4 => \n1q_m_2[3]_i_3_n_0\,
      I5 => \n1q_m_2[3]_i_4_n_0\,
      O => minusOp(2)
    );
\n0q_m_2[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000001"
    )
        port map (
      I0 => \n1q_m_2[3]_i_2_n_0\,
      I1 => q_m_xor_1(4),
      I2 => p_0_in7_in,
      I3 => q_m_xor_1(6),
      I4 => \n1q_m_2[3]_i_3_n_0\,
      I5 => \n1q_m_2[3]_i_4_n_0\,
      O => minusOp(3)
    );
\n0q_m_2_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => PixelClk,
      CE => '1',
      D => minusOp(1),
      Q => n0q_m_2(1),
      R => '0'
    );
\n0q_m_2_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => PixelClk,
      CE => '1',
      D => minusOp(2),
      Q => n0q_m_2(2),
      R => '0'
    );
\n0q_m_2_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => PixelClk,
      CE => '1',
      D => minusOp(3),
      Q => n0q_m_2(3),
      R => '0'
    );
\n1d_1[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6996966996696996"
    )
        port map (
      I0 => vid_pData(7),
      I1 => vid_pData(0),
      I2 => \n1d_1[0]_i_2_n_0\,
      I3 => vid_pData(5),
      I4 => vid_pData(6),
      I5 => vid_pData(4),
      O => p_0_in5_out(0)
    );
\n1d_1[0]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => vid_pData(1),
      I1 => vid_pData(3),
      I2 => vid_pData(2),
      O => \n1d_1[0]_i_2_n_0\
    );
\n1d_1[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => \n1d_1[3]_i_2_n_0\,
      I1 => \n1d_1[1]_i_2_n_0\,
      I2 => \n1d_1[3]_i_3_n_0\,
      O => p_0_in5_out(1)
    );
\n1d_1[1]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"171717E817E8E8E8"
    )
        port map (
      I0 => vid_pData(4),
      I1 => vid_pData(5),
      I2 => vid_pData(6),
      I3 => vid_pData(1),
      I4 => vid_pData(2),
      I5 => vid_pData(3),
      O => \n1d_1[1]_i_2_n_0\
    );
\n1d_1[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7E7E7EE87EE8E8E8"
    )
        port map (
      I0 => \n1d_1[3]_i_2_n_0\,
      I1 => \n1d_1[3]_i_3_n_0\,
      I2 => \n1d_1[2]_i_2_n_0\,
      I3 => vid_pData(3),
      I4 => vid_pData(2),
      I5 => vid_pData(1),
      O => p_0_in5_out(2)
    );
\n1d_1[2]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => vid_pData(6),
      I1 => vid_pData(5),
      I2 => vid_pData(4),
      O => \n1d_1[2]_i_2_n_0\
    );
\n1d_1[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8880800000000000"
    )
        port map (
      I0 => \n1d_1[3]_i_2_n_0\,
      I1 => \n1d_1[3]_i_3_n_0\,
      I2 => vid_pData(4),
      I3 => vid_pData(5),
      I4 => vid_pData(6),
      I5 => \n1d_1[3]_i_4_n_0\,
      O => p_0_in5_out(3)
    );
\n1d_1[3]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9600009600969600"
    )
        port map (
      I0 => vid_pData(5),
      I1 => vid_pData(6),
      I2 => vid_pData(4),
      I3 => vid_pData(7),
      I4 => vid_pData(0),
      I5 => \n1d_1[0]_i_2_n_0\,
      O => \n1d_1[3]_i_2_n_0\
    );
\n1d_1[3]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"E88E8EE8"
    )
        port map (
      I0 => vid_pData(0),
      I1 => vid_pData(7),
      I2 => vid_pData(2),
      I3 => vid_pData(3),
      I4 => vid_pData(1),
      O => \n1d_1[3]_i_3_n_0\
    );
\n1d_1[3]_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => vid_pData(3),
      I1 => vid_pData(2),
      I2 => vid_pData(1),
      O => \n1d_1[3]_i_4_n_0\
    );
\n1d_1_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => PixelClk,
      CE => '1',
      D => p_0_in5_out(0),
      Q => \n1d_1_reg_n_0_[0]\,
      R => '0'
    );
\n1d_1_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => PixelClk,
      CE => '1',
      D => p_0_in5_out(1),
      Q => \n1d_1_reg_n_0_[1]\,
      R => '0'
    );
\n1d_1_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => PixelClk,
      CE => '1',
      D => p_0_in5_out(2),
      Q => \n1d_1_reg_n_0_[2]\,
      R => '0'
    );
\n1d_1_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => PixelClk,
      CE => '1',
      D => p_0_in5_out(3),
      Q => \n1d_1_reg_n_0_[3]\,
      R => '0'
    );
\n1q_m_2[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6996966996696996"
    )
        port map (
      I0 => p_1_in13_in,
      I1 => \pDataOut_1_reg_n_0_[0]\,
      I2 => \n1q_m_2[0]_i_2_n_0\,
      I3 => q_m_xor_1(4),
      I4 => q_m_xor_1(6),
      I5 => p_0_in7_in,
      O => n1q_m_1(0)
    );
\n1q_m_2[0]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => p_0_in2_in,
      I1 => \pDataOut_1_reg_n_0_[1]\,
      I2 => \pDataOut_1_reg_n_0_[0]\,
      O => \n1q_m_2[0]_i_2_n_0\
    );
\n1q_m_2[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6999999699969666"
    )
        port map (
      I0 => \n1q_m_2[3]_i_3_n_0\,
      I1 => \n1q_m_2[3]_i_4_n_0\,
      I2 => \n1q_m_2[3]_i_2_n_0\,
      I3 => p_0_in7_in,
      I4 => q_m_xor_1(6),
      I5 => q_m_xor_1(4),
      O => n1q_m_1(1)
    );
\n1q_m_2[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7EEEEEE8EEE8E888"
    )
        port map (
      I0 => \n1q_m_2[3]_i_4_n_0\,
      I1 => \n1q_m_2[3]_i_3_n_0\,
      I2 => q_m_xor_1(6),
      I3 => p_0_in7_in,
      I4 => q_m_xor_1(4),
      I5 => \n1q_m_2[3]_i_2_n_0\,
      O => n1q_m_1(2)
    );
\n1q_m_2[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8000000000000000"
    )
        port map (
      I0 => \n1q_m_2[3]_i_2_n_0\,
      I1 => q_m_xor_1(4),
      I2 => p_0_in7_in,
      I3 => q_m_xor_1(6),
      I4 => \n1q_m_2[3]_i_3_n_0\,
      I5 => \n1q_m_2[3]_i_4_n_0\,
      O => n1q_m_1(3)
    );
\n1q_m_2[3]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => \pDataOut_1_reg_n_0_[0]\,
      I1 => \n1q_m_2[3]_i_5_n_0\,
      I2 => p_0_in0_in,
      I3 => \q_m_11__5\,
      O => \n1q_m_2[3]_i_2_n_0\
    );
\n1q_m_2[3]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"96996696"
    )
        port map (
      I0 => \pDataOut_1_reg_n_0_[0]\,
      I1 => \pDataOut_1_reg_n_0_[1]\,
      I2 => p_0_in0_in,
      I3 => p_0_in2_in,
      I4 => \q_m_11__5\,
      O => \n1q_m_2[3]_i_3_n_0\
    );
\n1q_m_2[3]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EDB71248DE7B2184"
    )
        port map (
      I0 => \q_m_11__5\,
      I1 => p_0_in2_in,
      I2 => p_0_in0_in,
      I3 => \pDataOut_1_reg_n_0_[1]\,
      I4 => \pDataOut_1_reg_n_0_[0]\,
      I5 => \n1q_m_2[3]_i_5_n_0\,
      O => \n1q_m_2[3]_i_4_n_0\
    );
\n1q_m_2[3]_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => p_0_in10_in,
      I1 => p_0_in8_in,
      I2 => p_0_in6_in,
      I3 => p_0_in4_in,
      O => \n1q_m_2[3]_i_5_n_0\
    );
\n1q_m_2_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => PixelClk,
      CE => '1',
      D => n1q_m_1(0),
      Q => \n1q_m_2_reg_n_0_[0]\,
      R => '0'
    );
\n1q_m_2_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => PixelClk,
      CE => '1',
      D => n1q_m_1(1),
      Q => \n1q_m_2_reg_n_0_[1]\,
      R => '0'
    );
\n1q_m_2_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => PixelClk,
      CE => '1',
      D => n1q_m_1(2),
      Q => \n1q_m_2_reg_n_0_[2]\,
      R => '0'
    );
\n1q_m_2_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => PixelClk,
      CE => '1',
      D => n1q_m_1(3),
      Q => \n1q_m_2_reg_n_0_[3]\,
      R => '0'
    );
pC0_1_reg: unisim.vcomponents.FDRE
     port map (
      C => PixelClk,
      CE => '1',
      D => vid_pHSync,
      Q => pC0_1,
      R => '0'
    );
pC0_2_reg: unisim.vcomponents.FDRE
     port map (
      C => PixelClk,
      CE => '1',
      D => pC0_1,
      Q => pC0_2,
      R => '0'
    );
pC1_1_reg: unisim.vcomponents.FDRE
     port map (
      C => PixelClk,
      CE => '1',
      D => vid_pVSync,
      Q => pC1_1,
      R => '0'
    );
pC1_2_reg: unisim.vcomponents.FDRE
     port map (
      C => PixelClk,
      CE => '1',
      D => pC1_1,
      Q => pC1_2,
      R => '0'
    );
\pDataOutRaw[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"6F606F6F"
    )
        port map (
      I0 => \q_m_2_reg_n_0_[0]\,
      I1 => \pDataOutRaw[9]_i_3_n_0\,
      I2 => \^pvde_2\,
      I3 => pC0_2,
      I4 => pC1_2,
      O => q_out_20_in(0)
    );
\pDataOutRaw[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"6F606F6F"
    )
        port map (
      I0 => \q_m_2_reg_n_0_[1]\,
      I1 => \pDataOutRaw[9]_i_3_n_0\,
      I2 => \^pvde_2\,
      I3 => pC0_2,
      I4 => pC1_2,
      O => q_out_20_in(1)
    );
\pDataOutRaw[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"60606F60"
    )
        port map (
      I0 => \q_m_2_reg_n_0_[2]\,
      I1 => \pDataOutRaw[9]_i_3_n_0\,
      I2 => \^pvde_2\,
      I3 => pC1_2,
      I4 => pC0_2,
      O => q_out_20_in(2)
    );
\pDataOutRaw[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"6F606F6F"
    )
        port map (
      I0 => \q_m_2_reg_n_0_[3]\,
      I1 => \pDataOutRaw[9]_i_3_n_0\,
      I2 => \^pvde_2\,
      I3 => pC0_2,
      I4 => pC1_2,
      O => q_out_20_in(3)
    );
\pDataOutRaw[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"60606F60"
    )
        port map (
      I0 => \q_m_2_reg_n_0_[4]\,
      I1 => \pDataOutRaw[9]_i_3_n_0\,
      I2 => \^pvde_2\,
      I3 => pC1_2,
      I4 => pC0_2,
      O => q_out_20_in(4)
    );
\pDataOutRaw[5]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"6F606F6F"
    )
        port map (
      I0 => \q_m_2_reg_n_0_[5]\,
      I1 => \pDataOutRaw[9]_i_3_n_0\,
      I2 => \^pvde_2\,
      I3 => pC0_2,
      I4 => pC1_2,
      O => q_out_20_in(5)
    );
\pDataOutRaw[6]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"60606F60"
    )
        port map (
      I0 => \q_m_2_reg_n_0_[6]\,
      I1 => \pDataOutRaw[9]_i_3_n_0\,
      I2 => \^pvde_2\,
      I3 => pC1_2,
      I4 => pC0_2,
      O => q_out_20_in(6)
    );
\pDataOutRaw[7]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"6F606F6F"
    )
        port map (
      I0 => \q_m_2_reg_n_0_[7]\,
      I1 => \pDataOutRaw[9]_i_3_n_0\,
      I2 => \^pvde_2\,
      I3 => pC0_2,
      I4 => pC1_2,
      O => q_out_20_in(7)
    );
\pDataOutRaw[8]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"88B8"
    )
        port map (
      I0 => \p_0_in__0\,
      I1 => \^pvde_2\,
      I2 => pC1_2,
      I3 => pC0_2,
      O => q_out_20_in(8)
    );
\pDataOutRaw[9]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"01"
    )
        port map (
      I0 => \^pvde_2\,
      I1 => pC0_2,
      I2 => pC1_2,
      O => \pDataOutRaw[9]_i_1_n_0\
    );
\pDataOutRaw[9]_i_1__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => \^pvde_2\,
      I1 => \cnt_t_3_reg[4]_0\,
      O => D(0)
    );
\pDataOutRaw[9]_i_1__1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => \^pvde_2\,
      I1 => \cnt_t_3_reg[4]_1\,
      O => \pDataOutRaw_reg[9]_0\(0)
    );
\pDataOutRaw[9]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"B88B"
    )
        port map (
      I0 => \pDataOutRaw[9]_i_3_n_0\,
      I1 => \^pvde_2\,
      I2 => pC0_2,
      I3 => pC1_2,
      O => q_out_20_in(9)
    );
\pDataOutRaw[9]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"333C550C111D551D"
    )
        port map (
      I0 => \p_0_in__0\,
      I1 => cnt_t_3(4),
      I2 => \n1q_m_2_reg_n_0_[3]\,
      I3 => \n1q_m_2_reg_n_0_[2]\,
      I4 => \cnt_t_3[4]_i_11__1_n_0\,
      I5 => \cnt_t_3[4]_i_12_n_0\,
      O => \pDataOutRaw[9]_i_3_n_0\
    );
\pDataOutRaw_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => PixelClk,
      CE => '1',
      D => q_out_20_in(0),
      Q => Q(0),
      R => \pDataOutRaw[9]_i_1_n_0\
    );
\pDataOutRaw_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => PixelClk,
      CE => '1',
      D => q_out_20_in(1),
      Q => Q(1),
      R => \pDataOutRaw[9]_i_1_n_0\
    );
\pDataOutRaw_reg[2]\: unisim.vcomponents.FDSE
     port map (
      C => PixelClk,
      CE => '1',
      D => q_out_20_in(2),
      Q => Q(2),
      S => \pDataOutRaw[9]_i_1_n_0\
    );
\pDataOutRaw_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => PixelClk,
      CE => '1',
      D => q_out_20_in(3),
      Q => Q(3),
      R => \pDataOutRaw[9]_i_1_n_0\
    );
\pDataOutRaw_reg[4]\: unisim.vcomponents.FDSE
     port map (
      C => PixelClk,
      CE => '1',
      D => q_out_20_in(4),
      Q => Q(4),
      S => \pDataOutRaw[9]_i_1_n_0\
    );
\pDataOutRaw_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => PixelClk,
      CE => '1',
      D => q_out_20_in(5),
      Q => Q(5),
      R => \pDataOutRaw[9]_i_1_n_0\
    );
\pDataOutRaw_reg[6]\: unisim.vcomponents.FDSE
     port map (
      C => PixelClk,
      CE => '1',
      D => q_out_20_in(6),
      Q => Q(6),
      S => \pDataOutRaw[9]_i_1_n_0\
    );
\pDataOutRaw_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => PixelClk,
      CE => '1',
      D => q_out_20_in(7),
      Q => Q(7),
      R => \pDataOutRaw[9]_i_1_n_0\
    );
\pDataOutRaw_reg[8]\: unisim.vcomponents.FDSE
     port map (
      C => PixelClk,
      CE => '1',
      D => q_out_20_in(8),
      Q => Q(8),
      S => \pDataOutRaw[9]_i_1_n_0\
    );
\pDataOutRaw_reg[9]\: unisim.vcomponents.FDSE
     port map (
      C => PixelClk,
      CE => '1',
      D => q_out_20_in(9),
      Q => Q(9),
      S => \pDataOutRaw[9]_i_1_n_0\
    );
\pDataOut_1_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => PixelClk,
      CE => '1',
      D => vid_pData(0),
      Q => \pDataOut_1_reg_n_0_[0]\,
      R => '0'
    );
\pDataOut_1_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => PixelClk,
      CE => '1',
      D => vid_pData(1),
      Q => \pDataOut_1_reg_n_0_[1]\,
      R => '0'
    );
\pDataOut_1_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => PixelClk,
      CE => '1',
      D => vid_pData(2),
      Q => p_0_in0_in,
      R => '0'
    );
\pDataOut_1_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => PixelClk,
      CE => '1',
      D => vid_pData(3),
      Q => p_0_in2_in,
      R => '0'
    );
\pDataOut_1_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => PixelClk,
      CE => '1',
      D => vid_pData(4),
      Q => p_0_in4_in,
      R => '0'
    );
\pDataOut_1_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => PixelClk,
      CE => '1',
      D => vid_pData(5),
      Q => p_0_in6_in,
      R => '0'
    );
\pDataOut_1_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => PixelClk,
      CE => '1',
      D => vid_pData(6),
      Q => p_0_in8_in,
      R => '0'
    );
\pDataOut_1_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => PixelClk,
      CE => '1',
      D => vid_pData(7),
      Q => p_0_in10_in,
      R => '0'
    );
pVde_1_reg: unisim.vcomponents.FDRE
     port map (
      C => PixelClk,
      CE => '1',
      D => vid_pVDE,
      Q => pVde_1,
      R => '0'
    );
pVde_2_reg: unisim.vcomponents.FDRE
     port map (
      C => PixelClk,
      CE => '1',
      D => pVde_1,
      Q => \^pvde_2\,
      R => '0'
    );
\q_m_2[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EEEC11131111EEEE"
    )
        port map (
      I0 => \n1d_1_reg_n_0_[2]\,
      I1 => \n1d_1_reg_n_0_[3]\,
      I2 => \n1d_1_reg_n_0_[1]\,
      I3 => \n1d_1_reg_n_0_[0]\,
      I4 => \pDataOut_1_reg_n_0_[1]\,
      I5 => \pDataOut_1_reg_n_0_[0]\,
      O => p_0_in11_in
    );
\q_m_2[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => p_0_in0_in,
      I1 => \pDataOut_1_reg_n_0_[1]\,
      I2 => \pDataOut_1_reg_n_0_[0]\,
      O => q_m_xor_1(2)
    );
\q_m_2[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"96696996"
    )
        port map (
      I0 => \pDataOut_1_reg_n_0_[0]\,
      I1 => \pDataOut_1_reg_n_0_[1]\,
      I2 => p_0_in0_in,
      I3 => p_0_in2_in,
      I4 => \q_m_11__5\,
      O => p_0_in9_in
    );
\q_m_2[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"96696996"
    )
        port map (
      I0 => p_0_in2_in,
      I1 => p_0_in4_in,
      I2 => p_0_in0_in,
      I3 => \pDataOut_1_reg_n_0_[1]\,
      I4 => \pDataOut_1_reg_n_0_[0]\,
      O => q_m_xor_1(4)
    );
\q_m_2[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6996966996696996"
    )
        port map (
      I0 => \q_m_11__5\,
      I1 => \pDataOut_1_reg_n_0_[0]\,
      I2 => \pDataOut_1_reg_n_0_[1]\,
      I3 => p_0_in0_in,
      I4 => p_0_in2_in,
      I5 => \q_m_2[5]_i_2_n_0\,
      O => p_0_in7_in
    );
\q_m_2[5]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => p_0_in4_in,
      I1 => p_0_in6_in,
      O => \q_m_2[5]_i_2_n_0\
    );
\q_m_2[6]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"96696996"
    )
        port map (
      I0 => q_m_xor_1(2),
      I1 => p_0_in2_in,
      I2 => p_0_in4_in,
      I3 => p_0_in6_in,
      I4 => p_0_in8_in,
      O => q_m_xor_1(6)
    );
\q_m_2[7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6996966996696996"
    )
        port map (
      I0 => p_0_in10_in,
      I1 => p_0_in8_in,
      I2 => p_0_in6_in,
      I3 => p_0_in4_in,
      I4 => q_m_xor_1(3),
      I5 => \q_m_11__5\,
      O => p_1_in13_in
    );
\q_m_2[7]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => p_0_in2_in,
      I1 => p_0_in0_in,
      I2 => \pDataOut_1_reg_n_0_[1]\,
      I3 => \pDataOut_1_reg_n_0_[0]\,
      O => q_m_xor_1(3)
    );
\q_m_2[7]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FEF0FFF0"
    )
        port map (
      I0 => \n1d_1_reg_n_0_[0]\,
      I1 => \n1d_1_reg_n_0_[1]\,
      I2 => \n1d_1_reg_n_0_[3]\,
      I3 => \n1d_1_reg_n_0_[2]\,
      I4 => \pDataOut_1_reg_n_0_[0]\,
      O => \q_m_11__5\
    );
\q_m_2[8]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0303030B"
    )
        port map (
      I0 => \pDataOut_1_reg_n_0_[0]\,
      I1 => \n1d_1_reg_n_0_[2]\,
      I2 => \n1d_1_reg_n_0_[3]\,
      I3 => \n1d_1_reg_n_0_[1]\,
      I4 => \n1d_1_reg_n_0_[0]\,
      O => \q_m_2[8]_i_1_n_0\
    );
\q_m_2_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => PixelClk,
      CE => '1',
      D => \pDataOut_1_reg_n_0_[0]\,
      Q => \q_m_2_reg_n_0_[0]\,
      R => '0'
    );
\q_m_2_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => PixelClk,
      CE => '1',
      D => p_0_in11_in,
      Q => \q_m_2_reg_n_0_[1]\,
      R => '0'
    );
\q_m_2_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => PixelClk,
      CE => '1',
      D => q_m_xor_1(2),
      Q => \q_m_2_reg_n_0_[2]\,
      R => '0'
    );
\q_m_2_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => PixelClk,
      CE => '1',
      D => p_0_in9_in,
      Q => \q_m_2_reg_n_0_[3]\,
      R => '0'
    );
\q_m_2_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => PixelClk,
      CE => '1',
      D => q_m_xor_1(4),
      Q => \q_m_2_reg_n_0_[4]\,
      R => '0'
    );
\q_m_2_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => PixelClk,
      CE => '1',
      D => p_0_in7_in,
      Q => \q_m_2_reg_n_0_[5]\,
      R => '0'
    );
\q_m_2_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => PixelClk,
      CE => '1',
      D => q_m_xor_1(6),
      Q => \q_m_2_reg_n_0_[6]\,
      R => '0'
    );
\q_m_2_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => PixelClk,
      CE => '1',
      D => p_1_in13_in,
      Q => \q_m_2_reg_n_0_[7]\,
      R => '0'
    );
\q_m_2_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => PixelClk,
      CE => '1',
      D => \q_m_2[8]_i_1_n_0\,
      Q => \p_0_in__0\,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \_xilinx_top__TMDS_Encoder_1\ is
  port (
    \pDataOutRaw_reg[0]_0\ : out STD_LOGIC;
    Q : out STD_LOGIC_VECTOR ( 9 downto 0 );
    PixelClk : in STD_LOGIC;
    pVde_2 : in STD_LOGIC;
    vid_pData : in STD_LOGIC_VECTOR ( 7 downto 0 );
    SR : in STD_LOGIC_VECTOR ( 0 to 0 );
    D : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \_xilinx_top__TMDS_Encoder_1\ : entity is "TMDS_Encoder";
end \_xilinx_top__TMDS_Encoder_1\;

architecture STRUCTURE of \_xilinx_top__TMDS_Encoder_1\ is
  signal cnt_t_2 : STD_LOGIC_VECTOR ( 4 downto 1 );
  signal \cnt_t_3[2]_i_1__1_n_0\ : STD_LOGIC;
  signal \cnt_t_3[2]_i_2__1_n_0\ : STD_LOGIC;
  signal \cnt_t_3[2]_i_3__0_n_0\ : STD_LOGIC;
  signal \cnt_t_3[2]_i_4__0_n_0\ : STD_LOGIC;
  signal \cnt_t_3[3]_i_10__0_n_0\ : STD_LOGIC;
  signal \cnt_t_3[3]_i_11_n_0\ : STD_LOGIC;
  signal \cnt_t_3[3]_i_12_n_0\ : STD_LOGIC;
  signal \cnt_t_3[3]_i_2__0_n_0\ : STD_LOGIC;
  signal \cnt_t_3[3]_i_3__0_n_0\ : STD_LOGIC;
  signal \cnt_t_3[3]_i_4__0_n_0\ : STD_LOGIC;
  signal \cnt_t_3[3]_i_5__1_n_0\ : STD_LOGIC;
  signal \cnt_t_3[3]_i_6__0_n_0\ : STD_LOGIC;
  signal \cnt_t_3[3]_i_7__0_n_0\ : STD_LOGIC;
  signal \cnt_t_3[3]_i_8__0_n_0\ : STD_LOGIC;
  signal \cnt_t_3[3]_i_9__0_n_0\ : STD_LOGIC;
  signal \cnt_t_3[4]_i_10__0_n_0\ : STD_LOGIC;
  signal \cnt_t_3[4]_i_11_n_0\ : STD_LOGIC;
  signal \cnt_t_3[4]_i_12__0_n_0\ : STD_LOGIC;
  signal \cnt_t_3[4]_i_13__0_n_0\ : STD_LOGIC;
  signal \cnt_t_3[4]_i_14__0_n_0\ : STD_LOGIC;
  signal \cnt_t_3[4]_i_2__0_n_0\ : STD_LOGIC;
  signal \cnt_t_3[4]_i_3__0_n_0\ : STD_LOGIC;
  signal \cnt_t_3[4]_i_4_n_0\ : STD_LOGIC;
  signal \cnt_t_3[4]_i_5__0_n_0\ : STD_LOGIC;
  signal \cnt_t_3[4]_i_6__0_n_0\ : STD_LOGIC;
  signal \cnt_t_3[4]_i_7__0_n_0\ : STD_LOGIC;
  signal \cnt_t_3[4]_i_8__0_n_0\ : STD_LOGIC;
  signal \cnt_t_3[4]_i_9__0_n_0\ : STD_LOGIC;
  signal \cnt_t_3_reg_n_0_[1]\ : STD_LOGIC;
  signal \cnt_t_3_reg_n_0_[2]\ : STD_LOGIC;
  signal \cnt_t_3_reg_n_0_[3]\ : STD_LOGIC;
  signal \cnt_t_3_reg_n_0_[4]\ : STD_LOGIC;
  signal \n0q_m_2[1]_i_1__0_n_0\ : STD_LOGIC;
  signal \n0q_m_2[2]_i_1__0_n_0\ : STD_LOGIC;
  signal \n0q_m_2[3]_i_1__0_n_0\ : STD_LOGIC;
  signal \n0q_m_2_reg_n_0_[1]\ : STD_LOGIC;
  signal \n0q_m_2_reg_n_0_[2]\ : STD_LOGIC;
  signal \n0q_m_2_reg_n_0_[3]\ : STD_LOGIC;
  signal \n1d_1[0]_i_1_n_0\ : STD_LOGIC;
  signal \n1d_1[0]_i_2_n_0\ : STD_LOGIC;
  signal \n1d_1[1]_i_1_n_0\ : STD_LOGIC;
  signal \n1d_1[1]_i_2_n_0\ : STD_LOGIC;
  signal \n1d_1[2]_i_1_n_0\ : STD_LOGIC;
  signal \n1d_1[2]_i_2_n_0\ : STD_LOGIC;
  signal \n1d_1[3]_i_1_n_0\ : STD_LOGIC;
  signal \n1d_1[3]_i_2_n_0\ : STD_LOGIC;
  signal \n1d_1[3]_i_3_n_0\ : STD_LOGIC;
  signal \n1d_1[3]_i_4_n_0\ : STD_LOGIC;
  signal \n1d_1_reg_n_0_[0]\ : STD_LOGIC;
  signal \n1d_1_reg_n_0_[1]\ : STD_LOGIC;
  signal \n1d_1_reg_n_0_[2]\ : STD_LOGIC;
  signal \n1d_1_reg_n_0_[3]\ : STD_LOGIC;
  signal \n1q_m_2[0]_i_1__0_n_0\ : STD_LOGIC;
  signal \n1q_m_2[0]_i_2__0_n_0\ : STD_LOGIC;
  signal \n1q_m_2[1]_i_1__0_n_0\ : STD_LOGIC;
  signal \n1q_m_2[2]_i_1__0_n_0\ : STD_LOGIC;
  signal \n1q_m_2[3]_i_1__0_n_0\ : STD_LOGIC;
  signal \n1q_m_2[3]_i_2__0_n_0\ : STD_LOGIC;
  signal \n1q_m_2[3]_i_3__0_n_0\ : STD_LOGIC;
  signal \n1q_m_2[3]_i_4__0_n_0\ : STD_LOGIC;
  signal \n1q_m_2[3]_i_5__0_n_0\ : STD_LOGIC;
  signal \n1q_m_2_reg_n_0_[0]\ : STD_LOGIC;
  signal \n1q_m_2_reg_n_0_[1]\ : STD_LOGIC;
  signal \n1q_m_2_reg_n_0_[2]\ : STD_LOGIC;
  signal \n1q_m_2_reg_n_0_[3]\ : STD_LOGIC;
  signal \pDataOutRaw[0]_i_1__0_n_0\ : STD_LOGIC;
  signal \pDataOutRaw[1]_i_1__0_n_0\ : STD_LOGIC;
  signal \pDataOutRaw[2]_i_1__0_n_0\ : STD_LOGIC;
  signal \pDataOutRaw[3]_i_1__0_n_0\ : STD_LOGIC;
  signal \pDataOutRaw[4]_i_1__0_n_0\ : STD_LOGIC;
  signal \pDataOutRaw[5]_i_1__0_n_0\ : STD_LOGIC;
  signal \pDataOutRaw[6]_i_1__0_n_0\ : STD_LOGIC;
  signal \pDataOutRaw[7]_i_1__0_n_0\ : STD_LOGIC;
  signal \pDataOutRaw[8]_i_1__0_n_0\ : STD_LOGIC;
  signal \pDataOutRaw[9]_i_3__0_n_0\ : STD_LOGIC;
  signal \^pdataoutraw_reg[0]_0\ : STD_LOGIC;
  signal \pDataOut_1_reg_n_0_[0]\ : STD_LOGIC;
  signal \pDataOut_1_reg_n_0_[1]\ : STD_LOGIC;
  signal p_0_in0_in : STD_LOGIC;
  signal p_0_in10_in : STD_LOGIC;
  signal p_0_in2_in : STD_LOGIC;
  signal p_0_in4_in : STD_LOGIC;
  signal p_0_in6_in : STD_LOGIC;
  signal p_0_in8_in : STD_LOGIC;
  signal \p_0_in__0\ : STD_LOGIC;
  signal \q_m_11__5\ : STD_LOGIC;
  signal \q_m_2[1]_i_1__0_n_0\ : STD_LOGIC;
  signal \q_m_2[3]_i_1__0_n_0\ : STD_LOGIC;
  signal \q_m_2[5]_i_1__0_n_0\ : STD_LOGIC;
  signal \q_m_2[5]_i_2__0_n_0\ : STD_LOGIC;
  signal \q_m_2[7]_i_1__0_n_0\ : STD_LOGIC;
  signal \q_m_2[8]_i_1__0_n_0\ : STD_LOGIC;
  signal \q_m_2_reg_n_0_[0]\ : STD_LOGIC;
  signal \q_m_2_reg_n_0_[1]\ : STD_LOGIC;
  signal \q_m_2_reg_n_0_[2]\ : STD_LOGIC;
  signal \q_m_2_reg_n_0_[3]\ : STD_LOGIC;
  signal \q_m_2_reg_n_0_[4]\ : STD_LOGIC;
  signal \q_m_2_reg_n_0_[5]\ : STD_LOGIC;
  signal \q_m_2_reg_n_0_[6]\ : STD_LOGIC;
  signal \q_m_2_reg_n_0_[7]\ : STD_LOGIC;
  signal q_m_xor_1 : STD_LOGIC_VECTOR ( 6 downto 2 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \cnt_t_3[2]_i_2__1\ : label is "soft_lutpair22";
  attribute SOFT_HLUTNM of \cnt_t_3[2]_i_3__0\ : label is "soft_lutpair25";
  attribute SOFT_HLUTNM of \cnt_t_3[3]_i_10__0\ : label is "soft_lutpair24";
  attribute SOFT_HLUTNM of \cnt_t_3[3]_i_11\ : label is "soft_lutpair27";
  attribute SOFT_HLUTNM of \cnt_t_3[3]_i_2__0\ : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of \cnt_t_3[3]_i_9__0\ : label is "soft_lutpair26";
  attribute SOFT_HLUTNM of \cnt_t_3[4]_i_10__0\ : label is "soft_lutpair23";
  attribute SOFT_HLUTNM of \cnt_t_3[4]_i_11\ : label is "soft_lutpair25";
  attribute SOFT_HLUTNM of \cnt_t_3[4]_i_12__0\ : label is "soft_lutpair27";
  attribute SOFT_HLUTNM of \cnt_t_3[4]_i_13__0\ : label is "soft_lutpair23";
  attribute SOFT_HLUTNM of \cnt_t_3[4]_i_14__0\ : label is "soft_lutpair24";
  attribute SOFT_HLUTNM of \cnt_t_3[4]_i_2__0\ : label is "soft_lutpair26";
  attribute SOFT_HLUTNM of \cnt_t_3[4]_i_3__0\ : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of \cnt_t_3[4]_i_8__0\ : label is "soft_lutpair22";
  attribute SOFT_HLUTNM of \n1d_1[0]_i_2\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \n1d_1[3]_i_3\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \n1q_m_2[3]_i_2__0\ : label is "soft_lutpair28";
  attribute SOFT_HLUTNM of \n1q_m_2[3]_i_3__0\ : label is "soft_lutpair21";
  attribute SOFT_HLUTNM of \pDataOutRaw[0]_i_1__0\ : label is "soft_lutpair29";
  attribute SOFT_HLUTNM of \pDataOutRaw[1]_i_1__0\ : label is "soft_lutpair31";
  attribute SOFT_HLUTNM of \pDataOutRaw[2]_i_1__0\ : label is "soft_lutpair30";
  attribute SOFT_HLUTNM of \pDataOutRaw[3]_i_1__0\ : label is "soft_lutpair29";
  attribute SOFT_HLUTNM of \pDataOutRaw[4]_i_1__0\ : label is "soft_lutpair30";
  attribute SOFT_HLUTNM of \pDataOutRaw[6]_i_1__0\ : label is "soft_lutpair32";
  attribute SOFT_HLUTNM of \pDataOutRaw[7]_i_1__0\ : label is "soft_lutpair31";
  attribute SOFT_HLUTNM of \pDataOutRaw[8]_i_1__0\ : label is "soft_lutpair32";
  attribute SOFT_HLUTNM of \q_m_2[2]_i_1__0\ : label is "soft_lutpair28";
  attribute SOFT_HLUTNM of \q_m_2[3]_i_1__0\ : label is "soft_lutpair21";
  attribute SOFT_HLUTNM of \q_m_2[4]_i_1__0\ : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of \q_m_2[5]_i_2__0\ : label is "soft_lutpair19";
  attribute SOFT_HLUTNM of \q_m_2[6]_i_1__0\ : label is "soft_lutpair19";
  attribute SOFT_HLUTNM of \q_m_2[7]_i_2__0\ : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of \q_m_2[7]_i_3__0\ : label is "soft_lutpair20";
  attribute SOFT_HLUTNM of \q_m_2[8]_i_1__0\ : label is "soft_lutpair20";
begin
  \pDataOutRaw_reg[0]_0\ <= \^pdataoutraw_reg[0]_0\;
\cnt_t_3[1]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EB1414EB14EBEB14"
    )
        port map (
      I0 => \cnt_t_3[4]_i_6__0_n_0\,
      I1 => \cnt_t_3[4]_i_4_n_0\,
      I2 => \p_0_in__0\,
      I3 => \n0q_m_2_reg_n_0_[1]\,
      I4 => \n1q_m_2_reg_n_0_[1]\,
      I5 => \cnt_t_3_reg_n_0_[1]\,
      O => cnt_t_2(1)
    );
\cnt_t_3[2]_i_1__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"995AAA5A5A665AAA"
    )
        port map (
      I0 => \cnt_t_3[2]_i_2__1_n_0\,
      I1 => \cnt_t_3[4]_i_4_n_0\,
      I2 => \cnt_t_3[2]_i_3__0_n_0\,
      I3 => \cnt_t_3_reg_n_0_[1]\,
      I4 => \cnt_t_3[2]_i_4__0_n_0\,
      I5 => \p_0_in__0\,
      O => \cnt_t_3[2]_i_1__1_n_0\
    );
\cnt_t_3[2]_i_2__1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"96699696"
    )
        port map (
      I0 => \cnt_t_3_reg_n_0_[2]\,
      I1 => \n1q_m_2_reg_n_0_[2]\,
      I2 => \n0q_m_2_reg_n_0_[2]\,
      I3 => \n0q_m_2_reg_n_0_[1]\,
      I4 => \n1q_m_2_reg_n_0_[1]\,
      O => \cnt_t_3[2]_i_2__1_n_0\
    );
\cnt_t_3[2]_i_3__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \n1q_m_2_reg_n_0_[1]\,
      I1 => \n0q_m_2_reg_n_0_[1]\,
      O => \cnt_t_3[2]_i_3__0_n_0\
    );
\cnt_t_3[2]_i_4__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"DDDDDDDDDDDDD0DD"
    )
        port map (
      I0 => \cnt_t_3[4]_i_12__0_n_0\,
      I1 => \cnt_t_3_reg_n_0_[4]\,
      I2 => \n1q_m_2_reg_n_0_[3]\,
      I3 => \n1q_m_2_reg_n_0_[2]\,
      I4 => \n1q_m_2_reg_n_0_[1]\,
      I5 => \n1q_m_2_reg_n_0_[0]\,
      O => \cnt_t_3[2]_i_4__0_n_0\
    );
\cnt_t_3[3]_i_10__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0155"
    )
        port map (
      I0 => \n1q_m_2_reg_n_0_[3]\,
      I1 => \n1q_m_2_reg_n_0_[1]\,
      I2 => \n1q_m_2_reg_n_0_[0]\,
      I3 => \n1q_m_2_reg_n_0_[2]\,
      O => \cnt_t_3[3]_i_10__0_n_0\
    );
\cnt_t_3[3]_i_11\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"5554"
    )
        port map (
      I0 => \cnt_t_3_reg_n_0_[4]\,
      I1 => \cnt_t_3_reg_n_0_[2]\,
      I2 => \cnt_t_3_reg_n_0_[1]\,
      I3 => \cnt_t_3_reg_n_0_[3]\,
      O => \cnt_t_3[3]_i_11_n_0\
    );
\cnt_t_3[3]_i_12\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EFFBFBEFCB2020CB"
    )
        port map (
      I0 => \cnt_t_3_reg_n_0_[1]\,
      I1 => \n0q_m_2_reg_n_0_[1]\,
      I2 => \n1q_m_2_reg_n_0_[1]\,
      I3 => \n0q_m_2_reg_n_0_[2]\,
      I4 => \n1q_m_2_reg_n_0_[2]\,
      I5 => \cnt_t_3_reg_n_0_[2]\,
      O => \cnt_t_3[3]_i_12_n_0\
    );
\cnt_t_3[3]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"99999999AAA9AAAA"
    )
        port map (
      I0 => \cnt_t_3[3]_i_2__0_n_0\,
      I1 => \cnt_t_3[3]_i_3__0_n_0\,
      I2 => \cnt_t_3[3]_i_4__0_n_0\,
      I3 => \cnt_t_3[3]_i_5__1_n_0\,
      I4 => \cnt_t_3[3]_i_6__0_n_0\,
      I5 => \cnt_t_3[3]_i_7__0_n_0\,
      O => cnt_t_2(3)
    );
\cnt_t_3[3]_i_2__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \cnt_t_3_reg_n_0_[3]\,
      I1 => \cnt_t_3[4]_i_9__0_n_0\,
      O => \cnt_t_3[3]_i_2__0_n_0\
    );
\cnt_t_3[3]_i_3__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0000AA08"
    )
        port map (
      I0 => \cnt_t_3[3]_i_8__0_n_0\,
      I1 => \cnt_t_3[4]_i_12__0_n_0\,
      I2 => \cnt_t_3_reg_n_0_[4]\,
      I3 => \cnt_t_3[4]_i_14__0_n_0\,
      I4 => \p_0_in__0\,
      O => \cnt_t_3[3]_i_3__0_n_0\
    );
\cnt_t_3[3]_i_4__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"888888888888888A"
    )
        port map (
      I0 => \p_0_in__0\,
      I1 => \cnt_t_3[4]_i_14__0_n_0\,
      I2 => \cnt_t_3_reg_n_0_[4]\,
      I3 => \cnt_t_3_reg_n_0_[2]\,
      I4 => \cnt_t_3_reg_n_0_[1]\,
      I5 => \cnt_t_3_reg_n_0_[3]\,
      O => \cnt_t_3[3]_i_4__0_n_0\
    );
\cnt_t_3[3]_i_5__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00BA0000BABA00BA"
    )
        port map (
      I0 => \cnt_t_3[3]_i_9__0_n_0\,
      I1 => \cnt_t_3[3]_i_10__0_n_0\,
      I2 => \cnt_t_3[3]_i_11_n_0\,
      I3 => \cnt_t_3[4]_i_11_n_0\,
      I4 => \cnt_t_3_reg_n_0_[2]\,
      I5 => \cnt_t_3[4]_i_10__0_n_0\,
      O => \cnt_t_3[3]_i_5__1_n_0\
    );
\cnt_t_3[3]_i_6__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFE8FFFFFFE8FFE8"
    )
        port map (
      I0 => \cnt_t_3[4]_i_11_n_0\,
      I1 => \cnt_t_3_reg_n_0_[2]\,
      I2 => \cnt_t_3[4]_i_13__0_n_0\,
      I3 => \cnt_t_3[3]_i_9__0_n_0\,
      I4 => \cnt_t_3[3]_i_10__0_n_0\,
      I5 => \cnt_t_3[3]_i_11_n_0\,
      O => \cnt_t_3[3]_i_6__0_n_0\
    );
\cnt_t_3[3]_i_7__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FF0C5504"
    )
        port map (
      I0 => \p_0_in__0\,
      I1 => \cnt_t_3[4]_i_12__0_n_0\,
      I2 => \cnt_t_3_reg_n_0_[4]\,
      I3 => \cnt_t_3[4]_i_14__0_n_0\,
      I4 => \cnt_t_3[3]_i_12_n_0\,
      O => \cnt_t_3[3]_i_7__0_n_0\
    );
\cnt_t_3[3]_i_8__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"08E0CE8CCE8C08E0"
    )
        port map (
      I0 => \cnt_t_3_reg_n_0_[1]\,
      I1 => \cnt_t_3_reg_n_0_[2]\,
      I2 => \n1q_m_2_reg_n_0_[1]\,
      I3 => \n0q_m_2_reg_n_0_[1]\,
      I4 => \n0q_m_2_reg_n_0_[2]\,
      I5 => \n1q_m_2_reg_n_0_[2]\,
      O => \cnt_t_3[3]_i_8__0_n_0\
    );
\cnt_t_3[3]_i_9__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"04"
    )
        port map (
      I0 => \n1q_m_2_reg_n_0_[3]\,
      I1 => \cnt_t_3_reg_n_0_[4]\,
      I2 => \n1q_m_2_reg_n_0_[2]\,
      O => \cnt_t_3[3]_i_9__0_n_0\
    );
\cnt_t_3[4]_i_10__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"41D7"
    )
        port map (
      I0 => \cnt_t_3_reg_n_0_[1]\,
      I1 => \n0q_m_2_reg_n_0_[1]\,
      I2 => \n1q_m_2_reg_n_0_[1]\,
      I3 => \p_0_in__0\,
      O => \cnt_t_3[4]_i_10__0_n_0\
    );
\cnt_t_3[4]_i_11\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"D22D"
    )
        port map (
      I0 => \n1q_m_2_reg_n_0_[1]\,
      I1 => \n0q_m_2_reg_n_0_[1]\,
      I2 => \n0q_m_2_reg_n_0_[2]\,
      I3 => \n1q_m_2_reg_n_0_[2]\,
      O => \cnt_t_3[4]_i_11_n_0\
    );
\cnt_t_3[4]_i_12__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"01"
    )
        port map (
      I0 => \cnt_t_3_reg_n_0_[3]\,
      I1 => \cnt_t_3_reg_n_0_[1]\,
      I2 => \cnt_t_3_reg_n_0_[2]\,
      O => \cnt_t_3[4]_i_12__0_n_0\
    );
\cnt_t_3[4]_i_13__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EB82"
    )
        port map (
      I0 => \cnt_t_3_reg_n_0_[1]\,
      I1 => \n0q_m_2_reg_n_0_[1]\,
      I2 => \n1q_m_2_reg_n_0_[1]\,
      I3 => \p_0_in__0\,
      O => \cnt_t_3[4]_i_13__0_n_0\
    );
\cnt_t_3[4]_i_14__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0010"
    )
        port map (
      I0 => \n1q_m_2_reg_n_0_[0]\,
      I1 => \n1q_m_2_reg_n_0_[1]\,
      I2 => \n1q_m_2_reg_n_0_[2]\,
      I3 => \n1q_m_2_reg_n_0_[3]\,
      O => \cnt_t_3[4]_i_14__0_n_0\
    );
\cnt_t_3[4]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"555556A6AAAA56A6"
    )
        port map (
      I0 => \cnt_t_3[4]_i_2__0_n_0\,
      I1 => \cnt_t_3[4]_i_3__0_n_0\,
      I2 => \cnt_t_3[4]_i_4_n_0\,
      I3 => \cnt_t_3[4]_i_5__0_n_0\,
      I4 => \cnt_t_3[4]_i_6__0_n_0\,
      I5 => \cnt_t_3[4]_i_7__0_n_0\,
      O => cnt_t_2(4)
    );
\cnt_t_3[4]_i_2__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9A59"
    )
        port map (
      I0 => \cnt_t_3_reg_n_0_[4]\,
      I1 => \n1q_m_2_reg_n_0_[3]\,
      I2 => \n0q_m_2_reg_n_0_[3]\,
      I3 => \cnt_t_3[4]_i_8__0_n_0\,
      O => \cnt_t_3[4]_i_2__0_n_0\
    );
\cnt_t_3[4]_i_3__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"71771171"
    )
        port map (
      I0 => \cnt_t_3[4]_i_9__0_n_0\,
      I1 => \cnt_t_3_reg_n_0_[3]\,
      I2 => \cnt_t_3[4]_i_10__0_n_0\,
      I3 => \cnt_t_3_reg_n_0_[2]\,
      I4 => \cnt_t_3[4]_i_11_n_0\,
      O => \cnt_t_3[4]_i_3__0_n_0\
    );
\cnt_t_3[4]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFAAAAFF00ABFF"
    )
        port map (
      I0 => \cnt_t_3[4]_i_12__0_n_0\,
      I1 => \n1q_m_2_reg_n_0_[1]\,
      I2 => \n1q_m_2_reg_n_0_[0]\,
      I3 => \n1q_m_2_reg_n_0_[2]\,
      I4 => \cnt_t_3_reg_n_0_[4]\,
      I5 => \n1q_m_2_reg_n_0_[3]\,
      O => \cnt_t_3[4]_i_4_n_0\
    );
\cnt_t_3[4]_i_5__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BBB2B222"
    )
        port map (
      I0 => \cnt_t_3_reg_n_0_[3]\,
      I1 => \cnt_t_3[4]_i_9__0_n_0\,
      I2 => \cnt_t_3[4]_i_13__0_n_0\,
      I3 => \cnt_t_3_reg_n_0_[2]\,
      I4 => \cnt_t_3[4]_i_11_n_0\,
      O => \cnt_t_3[4]_i_5__0_n_0\
    );
\cnt_t_3[4]_i_6__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4444444444444445"
    )
        port map (
      I0 => \p_0_in__0\,
      I1 => \cnt_t_3[4]_i_14__0_n_0\,
      I2 => \cnt_t_3_reg_n_0_[4]\,
      I3 => \cnt_t_3_reg_n_0_[2]\,
      I4 => \cnt_t_3_reg_n_0_[1]\,
      I5 => \cnt_t_3_reg_n_0_[3]\,
      O => \cnt_t_3[4]_i_6__0_n_0\
    );
\cnt_t_3[4]_i_7__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00007F077F07FFFF"
    )
        port map (
      I0 => \cnt_t_3_reg_n_0_[1]\,
      I1 => \cnt_t_3[2]_i_3__0_n_0\,
      I2 => \cnt_t_3_reg_n_0_[2]\,
      I3 => \cnt_t_3[4]_i_11_n_0\,
      I4 => \cnt_t_3_reg_n_0_[3]\,
      I5 => \cnt_t_3[4]_i_9__0_n_0\,
      O => \cnt_t_3[4]_i_7__0_n_0\
    );
\cnt_t_3[4]_i_8__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"20BA"
    )
        port map (
      I0 => \n1q_m_2_reg_n_0_[2]\,
      I1 => \n0q_m_2_reg_n_0_[1]\,
      I2 => \n1q_m_2_reg_n_0_[1]\,
      I3 => \n0q_m_2_reg_n_0_[2]\,
      O => \cnt_t_3[4]_i_8__0_n_0\
    );
\cnt_t_3[4]_i_9__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5D04A2FBA2FB5D04"
    )
        port map (
      I0 => \n0q_m_2_reg_n_0_[2]\,
      I1 => \n1q_m_2_reg_n_0_[1]\,
      I2 => \n0q_m_2_reg_n_0_[1]\,
      I3 => \n1q_m_2_reg_n_0_[2]\,
      I4 => \n0q_m_2_reg_n_0_[3]\,
      I5 => \n1q_m_2_reg_n_0_[3]\,
      O => \cnt_t_3[4]_i_9__0_n_0\
    );
\cnt_t_3_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => PixelClk,
      CE => '1',
      D => cnt_t_2(1),
      Q => \cnt_t_3_reg_n_0_[1]\,
      R => SR(0)
    );
\cnt_t_3_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => PixelClk,
      CE => '1',
      D => \cnt_t_3[2]_i_1__1_n_0\,
      Q => \cnt_t_3_reg_n_0_[2]\,
      R => SR(0)
    );
\cnt_t_3_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => PixelClk,
      CE => '1',
      D => cnt_t_2(3),
      Q => \cnt_t_3_reg_n_0_[3]\,
      R => SR(0)
    );
\cnt_t_3_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => PixelClk,
      CE => '1',
      D => cnt_t_2(4),
      Q => \cnt_t_3_reg_n_0_[4]\,
      R => SR(0)
    );
\n0q_m_2[1]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"177EE881E881177E"
    )
        port map (
      I0 => q_m_xor_1(4),
      I1 => q_m_xor_1(6),
      I2 => \q_m_2[5]_i_1__0_n_0\,
      I3 => \n1q_m_2[3]_i_2__0_n_0\,
      I4 => \n1q_m_2[3]_i_4__0_n_0\,
      I5 => \n1q_m_2[3]_i_3__0_n_0\,
      O => \n0q_m_2[1]_i_1__0_n_0\
    );
\n0q_m_2[2]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0001177F177FFFFE"
    )
        port map (
      I0 => \n1q_m_2[3]_i_2__0_n_0\,
      I1 => q_m_xor_1(4),
      I2 => \q_m_2[5]_i_1__0_n_0\,
      I3 => q_m_xor_1(6),
      I4 => \n1q_m_2[3]_i_3__0_n_0\,
      I5 => \n1q_m_2[3]_i_4__0_n_0\,
      O => \n0q_m_2[2]_i_1__0_n_0\
    );
\n0q_m_2[3]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000001"
    )
        port map (
      I0 => \n1q_m_2[3]_i_2__0_n_0\,
      I1 => q_m_xor_1(4),
      I2 => \q_m_2[5]_i_1__0_n_0\,
      I3 => q_m_xor_1(6),
      I4 => \n1q_m_2[3]_i_3__0_n_0\,
      I5 => \n1q_m_2[3]_i_4__0_n_0\,
      O => \n0q_m_2[3]_i_1__0_n_0\
    );
\n0q_m_2_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => PixelClk,
      CE => '1',
      D => \n0q_m_2[1]_i_1__0_n_0\,
      Q => \n0q_m_2_reg_n_0_[1]\,
      R => '0'
    );
\n0q_m_2_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => PixelClk,
      CE => '1',
      D => \n0q_m_2[2]_i_1__0_n_0\,
      Q => \n0q_m_2_reg_n_0_[2]\,
      R => '0'
    );
\n0q_m_2_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => PixelClk,
      CE => '1',
      D => \n0q_m_2[3]_i_1__0_n_0\,
      Q => \n0q_m_2_reg_n_0_[3]\,
      R => '0'
    );
\n1d_1[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6996966996696996"
    )
        port map (
      I0 => vid_pData(7),
      I1 => vid_pData(0),
      I2 => \n1d_1[0]_i_2_n_0\,
      I3 => vid_pData(5),
      I4 => vid_pData(6),
      I5 => vid_pData(4),
      O => \n1d_1[0]_i_1_n_0\
    );
\n1d_1[0]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => vid_pData(1),
      I1 => vid_pData(3),
      I2 => vid_pData(2),
      O => \n1d_1[0]_i_2_n_0\
    );
\n1d_1[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => \n1d_1[3]_i_2_n_0\,
      I1 => \n1d_1[1]_i_2_n_0\,
      I2 => \n1d_1[3]_i_3_n_0\,
      O => \n1d_1[1]_i_1_n_0\
    );
\n1d_1[1]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"171717E817E8E8E8"
    )
        port map (
      I0 => vid_pData(4),
      I1 => vid_pData(5),
      I2 => vid_pData(6),
      I3 => vid_pData(1),
      I4 => vid_pData(2),
      I5 => vid_pData(3),
      O => \n1d_1[1]_i_2_n_0\
    );
\n1d_1[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7E7E7EE87EE8E8E8"
    )
        port map (
      I0 => \n1d_1[3]_i_2_n_0\,
      I1 => \n1d_1[3]_i_3_n_0\,
      I2 => \n1d_1[2]_i_2_n_0\,
      I3 => vid_pData(3),
      I4 => vid_pData(2),
      I5 => vid_pData(1),
      O => \n1d_1[2]_i_1_n_0\
    );
\n1d_1[2]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => vid_pData(6),
      I1 => vid_pData(5),
      I2 => vid_pData(4),
      O => \n1d_1[2]_i_2_n_0\
    );
\n1d_1[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8880800000000000"
    )
        port map (
      I0 => \n1d_1[3]_i_2_n_0\,
      I1 => \n1d_1[3]_i_3_n_0\,
      I2 => vid_pData(4),
      I3 => vid_pData(5),
      I4 => vid_pData(6),
      I5 => \n1d_1[3]_i_4_n_0\,
      O => \n1d_1[3]_i_1_n_0\
    );
\n1d_1[3]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9600009600969600"
    )
        port map (
      I0 => vid_pData(5),
      I1 => vid_pData(6),
      I2 => vid_pData(4),
      I3 => vid_pData(7),
      I4 => vid_pData(0),
      I5 => \n1d_1[0]_i_2_n_0\,
      O => \n1d_1[3]_i_2_n_0\
    );
\n1d_1[3]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"E88E8EE8"
    )
        port map (
      I0 => vid_pData(0),
      I1 => vid_pData(7),
      I2 => vid_pData(2),
      I3 => vid_pData(3),
      I4 => vid_pData(1),
      O => \n1d_1[3]_i_3_n_0\
    );
\n1d_1[3]_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => vid_pData(3),
      I1 => vid_pData(2),
      I2 => vid_pData(1),
      O => \n1d_1[3]_i_4_n_0\
    );
\n1d_1_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => PixelClk,
      CE => '1',
      D => \n1d_1[0]_i_1_n_0\,
      Q => \n1d_1_reg_n_0_[0]\,
      R => '0'
    );
\n1d_1_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => PixelClk,
      CE => '1',
      D => \n1d_1[1]_i_1_n_0\,
      Q => \n1d_1_reg_n_0_[1]\,
      R => '0'
    );
\n1d_1_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => PixelClk,
      CE => '1',
      D => \n1d_1[2]_i_1_n_0\,
      Q => \n1d_1_reg_n_0_[2]\,
      R => '0'
    );
\n1d_1_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => PixelClk,
      CE => '1',
      D => \n1d_1[3]_i_1_n_0\,
      Q => \n1d_1_reg_n_0_[3]\,
      R => '0'
    );
\n1q_m_2[0]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6996966996696996"
    )
        port map (
      I0 => \q_m_2[7]_i_1__0_n_0\,
      I1 => \pDataOut_1_reg_n_0_[0]\,
      I2 => \n1q_m_2[0]_i_2__0_n_0\,
      I3 => q_m_xor_1(4),
      I4 => q_m_xor_1(6),
      I5 => \q_m_2[5]_i_1__0_n_0\,
      O => \n1q_m_2[0]_i_1__0_n_0\
    );
\n1q_m_2[0]_i_2__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => p_0_in2_in,
      I1 => \pDataOut_1_reg_n_0_[1]\,
      I2 => \pDataOut_1_reg_n_0_[0]\,
      O => \n1q_m_2[0]_i_2__0_n_0\
    );
\n1q_m_2[1]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6999999699969666"
    )
        port map (
      I0 => \n1q_m_2[3]_i_3__0_n_0\,
      I1 => \n1q_m_2[3]_i_4__0_n_0\,
      I2 => \n1q_m_2[3]_i_2__0_n_0\,
      I3 => \q_m_2[5]_i_1__0_n_0\,
      I4 => q_m_xor_1(6),
      I5 => q_m_xor_1(4),
      O => \n1q_m_2[1]_i_1__0_n_0\
    );
\n1q_m_2[2]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7EEEEEE8EEE8E888"
    )
        port map (
      I0 => \n1q_m_2[3]_i_4__0_n_0\,
      I1 => \n1q_m_2[3]_i_3__0_n_0\,
      I2 => q_m_xor_1(6),
      I3 => \q_m_2[5]_i_1__0_n_0\,
      I4 => q_m_xor_1(4),
      I5 => \n1q_m_2[3]_i_2__0_n_0\,
      O => \n1q_m_2[2]_i_1__0_n_0\
    );
\n1q_m_2[3]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8000000000000000"
    )
        port map (
      I0 => \n1q_m_2[3]_i_2__0_n_0\,
      I1 => q_m_xor_1(4),
      I2 => \q_m_2[5]_i_1__0_n_0\,
      I3 => q_m_xor_1(6),
      I4 => \n1q_m_2[3]_i_3__0_n_0\,
      I5 => \n1q_m_2[3]_i_4__0_n_0\,
      O => \n1q_m_2[3]_i_1__0_n_0\
    );
\n1q_m_2[3]_i_2__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => \pDataOut_1_reg_n_0_[0]\,
      I1 => \n1q_m_2[3]_i_5__0_n_0\,
      I2 => p_0_in0_in,
      I3 => \q_m_11__5\,
      O => \n1q_m_2[3]_i_2__0_n_0\
    );
\n1q_m_2[3]_i_3__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"96996696"
    )
        port map (
      I0 => \pDataOut_1_reg_n_0_[0]\,
      I1 => \pDataOut_1_reg_n_0_[1]\,
      I2 => p_0_in0_in,
      I3 => p_0_in2_in,
      I4 => \q_m_11__5\,
      O => \n1q_m_2[3]_i_3__0_n_0\
    );
\n1q_m_2[3]_i_4__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EDB71248DE7B2184"
    )
        port map (
      I0 => \q_m_11__5\,
      I1 => p_0_in2_in,
      I2 => p_0_in0_in,
      I3 => \pDataOut_1_reg_n_0_[1]\,
      I4 => \pDataOut_1_reg_n_0_[0]\,
      I5 => \n1q_m_2[3]_i_5__0_n_0\,
      O => \n1q_m_2[3]_i_4__0_n_0\
    );
\n1q_m_2[3]_i_5__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => p_0_in10_in,
      I1 => p_0_in8_in,
      I2 => p_0_in6_in,
      I3 => p_0_in4_in,
      O => \n1q_m_2[3]_i_5__0_n_0\
    );
\n1q_m_2_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => PixelClk,
      CE => '1',
      D => \n1q_m_2[0]_i_1__0_n_0\,
      Q => \n1q_m_2_reg_n_0_[0]\,
      R => '0'
    );
\n1q_m_2_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => PixelClk,
      CE => '1',
      D => \n1q_m_2[1]_i_1__0_n_0\,
      Q => \n1q_m_2_reg_n_0_[1]\,
      R => '0'
    );
\n1q_m_2_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => PixelClk,
      CE => '1',
      D => \n1q_m_2[2]_i_1__0_n_0\,
      Q => \n1q_m_2_reg_n_0_[2]\,
      R => '0'
    );
\n1q_m_2_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => PixelClk,
      CE => '1',
      D => \n1q_m_2[3]_i_1__0_n_0\,
      Q => \n1q_m_2_reg_n_0_[3]\,
      R => '0'
    );
\pDataOutRaw[0]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"D7"
    )
        port map (
      I0 => pVde_2,
      I1 => \^pdataoutraw_reg[0]_0\,
      I2 => \q_m_2_reg_n_0_[0]\,
      O => \pDataOutRaw[0]_i_1__0_n_0\
    );
\pDataOutRaw[1]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"D7"
    )
        port map (
      I0 => pVde_2,
      I1 => \^pdataoutraw_reg[0]_0\,
      I2 => \q_m_2_reg_n_0_[1]\,
      O => \pDataOutRaw[1]_i_1__0_n_0\
    );
\pDataOutRaw[2]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"82"
    )
        port map (
      I0 => pVde_2,
      I1 => \^pdataoutraw_reg[0]_0\,
      I2 => \q_m_2_reg_n_0_[2]\,
      O => \pDataOutRaw[2]_i_1__0_n_0\
    );
\pDataOutRaw[3]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"D7"
    )
        port map (
      I0 => pVde_2,
      I1 => \^pdataoutraw_reg[0]_0\,
      I2 => \q_m_2_reg_n_0_[3]\,
      O => \pDataOutRaw[3]_i_1__0_n_0\
    );
\pDataOutRaw[4]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"82"
    )
        port map (
      I0 => pVde_2,
      I1 => \^pdataoutraw_reg[0]_0\,
      I2 => \q_m_2_reg_n_0_[4]\,
      O => \pDataOutRaw[4]_i_1__0_n_0\
    );
\pDataOutRaw[5]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"D7"
    )
        port map (
      I0 => pVde_2,
      I1 => \^pdataoutraw_reg[0]_0\,
      I2 => \q_m_2_reg_n_0_[5]\,
      O => \pDataOutRaw[5]_i_1__0_n_0\
    );
\pDataOutRaw[6]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"82"
    )
        port map (
      I0 => pVde_2,
      I1 => \^pdataoutraw_reg[0]_0\,
      I2 => \q_m_2_reg_n_0_[6]\,
      O => \pDataOutRaw[6]_i_1__0_n_0\
    );
\pDataOutRaw[7]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"D7"
    )
        port map (
      I0 => pVde_2,
      I1 => \^pdataoutraw_reg[0]_0\,
      I2 => \q_m_2_reg_n_0_[7]\,
      O => \pDataOutRaw[7]_i_1__0_n_0\
    );
\pDataOutRaw[8]_i_1__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \p_0_in__0\,
      I1 => pVde_2,
      O => \pDataOutRaw[8]_i_1__0_n_0\
    );
\pDataOutRaw[9]_i_2__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EFE3EEE3C0C1CCC1"
    )
        port map (
      I0 => \cnt_t_3[4]_i_12__0_n_0\,
      I1 => \cnt_t_3_reg_n_0_[4]\,
      I2 => \n1q_m_2_reg_n_0_[3]\,
      I3 => \n1q_m_2_reg_n_0_[2]\,
      I4 => \pDataOutRaw[9]_i_3__0_n_0\,
      I5 => \p_0_in__0\,
      O => \^pdataoutraw_reg[0]_0\
    );
\pDataOutRaw[9]_i_3__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \n1q_m_2_reg_n_0_[1]\,
      I1 => \n1q_m_2_reg_n_0_[0]\,
      O => \pDataOutRaw[9]_i_3__0_n_0\
    );
\pDataOutRaw_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => PixelClk,
      CE => '1',
      D => \pDataOutRaw[0]_i_1__0_n_0\,
      Q => Q(0),
      R => SR(0)
    );
\pDataOutRaw_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => PixelClk,
      CE => '1',
      D => \pDataOutRaw[1]_i_1__0_n_0\,
      Q => Q(1),
      R => SR(0)
    );
\pDataOutRaw_reg[2]\: unisim.vcomponents.FDSE
     port map (
      C => PixelClk,
      CE => '1',
      D => \pDataOutRaw[2]_i_1__0_n_0\,
      Q => Q(2),
      S => SR(0)
    );
\pDataOutRaw_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => PixelClk,
      CE => '1',
      D => \pDataOutRaw[3]_i_1__0_n_0\,
      Q => Q(3),
      R => SR(0)
    );
\pDataOutRaw_reg[4]\: unisim.vcomponents.FDSE
     port map (
      C => PixelClk,
      CE => '1',
      D => \pDataOutRaw[4]_i_1__0_n_0\,
      Q => Q(4),
      S => SR(0)
    );
\pDataOutRaw_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => PixelClk,
      CE => '1',
      D => \pDataOutRaw[5]_i_1__0_n_0\,
      Q => Q(5),
      R => SR(0)
    );
\pDataOutRaw_reg[6]\: unisim.vcomponents.FDSE
     port map (
      C => PixelClk,
      CE => '1',
      D => \pDataOutRaw[6]_i_1__0_n_0\,
      Q => Q(6),
      S => SR(0)
    );
\pDataOutRaw_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => PixelClk,
      CE => '1',
      D => \pDataOutRaw[7]_i_1__0_n_0\,
      Q => Q(7),
      R => SR(0)
    );
\pDataOutRaw_reg[8]\: unisim.vcomponents.FDSE
     port map (
      C => PixelClk,
      CE => '1',
      D => \pDataOutRaw[8]_i_1__0_n_0\,
      Q => Q(8),
      S => SR(0)
    );
\pDataOutRaw_reg[9]\: unisim.vcomponents.FDSE
     port map (
      C => PixelClk,
      CE => '1',
      D => D(0),
      Q => Q(9),
      S => SR(0)
    );
\pDataOut_1_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => PixelClk,
      CE => '1',
      D => vid_pData(0),
      Q => \pDataOut_1_reg_n_0_[0]\,
      R => '0'
    );
\pDataOut_1_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => PixelClk,
      CE => '1',
      D => vid_pData(1),
      Q => \pDataOut_1_reg_n_0_[1]\,
      R => '0'
    );
\pDataOut_1_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => PixelClk,
      CE => '1',
      D => vid_pData(2),
      Q => p_0_in0_in,
      R => '0'
    );
\pDataOut_1_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => PixelClk,
      CE => '1',
      D => vid_pData(3),
      Q => p_0_in2_in,
      R => '0'
    );
\pDataOut_1_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => PixelClk,
      CE => '1',
      D => vid_pData(4),
      Q => p_0_in4_in,
      R => '0'
    );
\pDataOut_1_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => PixelClk,
      CE => '1',
      D => vid_pData(5),
      Q => p_0_in6_in,
      R => '0'
    );
\pDataOut_1_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => PixelClk,
      CE => '1',
      D => vid_pData(6),
      Q => p_0_in8_in,
      R => '0'
    );
\pDataOut_1_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => PixelClk,
      CE => '1',
      D => vid_pData(7),
      Q => p_0_in10_in,
      R => '0'
    );
\q_m_2[1]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EEEC11131111EEEE"
    )
        port map (
      I0 => \n1d_1_reg_n_0_[2]\,
      I1 => \n1d_1_reg_n_0_[3]\,
      I2 => \n1d_1_reg_n_0_[1]\,
      I3 => \n1d_1_reg_n_0_[0]\,
      I4 => \pDataOut_1_reg_n_0_[1]\,
      I5 => \pDataOut_1_reg_n_0_[0]\,
      O => \q_m_2[1]_i_1__0_n_0\
    );
\q_m_2[2]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => p_0_in0_in,
      I1 => \pDataOut_1_reg_n_0_[1]\,
      I2 => \pDataOut_1_reg_n_0_[0]\,
      O => q_m_xor_1(2)
    );
\q_m_2[3]_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"96696996"
    )
        port map (
      I0 => \pDataOut_1_reg_n_0_[0]\,
      I1 => \pDataOut_1_reg_n_0_[1]\,
      I2 => p_0_in0_in,
      I3 => p_0_in2_in,
      I4 => \q_m_11__5\,
      O => \q_m_2[3]_i_1__0_n_0\
    );
\q_m_2[4]_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"96696996"
    )
        port map (
      I0 => p_0_in2_in,
      I1 => p_0_in4_in,
      I2 => p_0_in0_in,
      I3 => \pDataOut_1_reg_n_0_[1]\,
      I4 => \pDataOut_1_reg_n_0_[0]\,
      O => q_m_xor_1(4)
    );
\q_m_2[5]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6996966996696996"
    )
        port map (
      I0 => \q_m_11__5\,
      I1 => \pDataOut_1_reg_n_0_[0]\,
      I2 => \pDataOut_1_reg_n_0_[1]\,
      I3 => p_0_in0_in,
      I4 => p_0_in2_in,
      I5 => \q_m_2[5]_i_2__0_n_0\,
      O => \q_m_2[5]_i_1__0_n_0\
    );
\q_m_2[5]_i_2__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => p_0_in4_in,
      I1 => p_0_in6_in,
      O => \q_m_2[5]_i_2__0_n_0\
    );
\q_m_2[6]_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"96696996"
    )
        port map (
      I0 => q_m_xor_1(2),
      I1 => p_0_in2_in,
      I2 => p_0_in4_in,
      I3 => p_0_in6_in,
      I4 => p_0_in8_in,
      O => q_m_xor_1(6)
    );
\q_m_2[7]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6996966996696996"
    )
        port map (
      I0 => p_0_in10_in,
      I1 => p_0_in8_in,
      I2 => p_0_in6_in,
      I3 => p_0_in4_in,
      I4 => q_m_xor_1(3),
      I5 => \q_m_11__5\,
      O => \q_m_2[7]_i_1__0_n_0\
    );
\q_m_2[7]_i_2__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => p_0_in2_in,
      I1 => p_0_in0_in,
      I2 => \pDataOut_1_reg_n_0_[1]\,
      I3 => \pDataOut_1_reg_n_0_[0]\,
      O => q_m_xor_1(3)
    );
\q_m_2[7]_i_3__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FEF0FFF0"
    )
        port map (
      I0 => \n1d_1_reg_n_0_[0]\,
      I1 => \n1d_1_reg_n_0_[1]\,
      I2 => \n1d_1_reg_n_0_[3]\,
      I3 => \n1d_1_reg_n_0_[2]\,
      I4 => \pDataOut_1_reg_n_0_[0]\,
      O => \q_m_11__5\
    );
\q_m_2[8]_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0303030B"
    )
        port map (
      I0 => \pDataOut_1_reg_n_0_[0]\,
      I1 => \n1d_1_reg_n_0_[2]\,
      I2 => \n1d_1_reg_n_0_[3]\,
      I3 => \n1d_1_reg_n_0_[1]\,
      I4 => \n1d_1_reg_n_0_[0]\,
      O => \q_m_2[8]_i_1__0_n_0\
    );
\q_m_2_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => PixelClk,
      CE => '1',
      D => \pDataOut_1_reg_n_0_[0]\,
      Q => \q_m_2_reg_n_0_[0]\,
      R => '0'
    );
\q_m_2_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => PixelClk,
      CE => '1',
      D => \q_m_2[1]_i_1__0_n_0\,
      Q => \q_m_2_reg_n_0_[1]\,
      R => '0'
    );
\q_m_2_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => PixelClk,
      CE => '1',
      D => q_m_xor_1(2),
      Q => \q_m_2_reg_n_0_[2]\,
      R => '0'
    );
\q_m_2_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => PixelClk,
      CE => '1',
      D => \q_m_2[3]_i_1__0_n_0\,
      Q => \q_m_2_reg_n_0_[3]\,
      R => '0'
    );
\q_m_2_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => PixelClk,
      CE => '1',
      D => q_m_xor_1(4),
      Q => \q_m_2_reg_n_0_[4]\,
      R => '0'
    );
\q_m_2_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => PixelClk,
      CE => '1',
      D => \q_m_2[5]_i_1__0_n_0\,
      Q => \q_m_2_reg_n_0_[5]\,
      R => '0'
    );
\q_m_2_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => PixelClk,
      CE => '1',
      D => q_m_xor_1(6),
      Q => \q_m_2_reg_n_0_[6]\,
      R => '0'
    );
\q_m_2_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => PixelClk,
      CE => '1',
      D => \q_m_2[7]_i_1__0_n_0\,
      Q => \q_m_2_reg_n_0_[7]\,
      R => '0'
    );
\q_m_2_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => PixelClk,
      CE => '1',
      D => \q_m_2[8]_i_1__0_n_0\,
      Q => \p_0_in__0\,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \_xilinx_top__TMDS_Encoder_3\ is
  port (
    \pDataOutRaw_reg[0]_0\ : out STD_LOGIC;
    Q : out STD_LOGIC_VECTOR ( 9 downto 0 );
    PixelClk : in STD_LOGIC;
    pVde_2 : in STD_LOGIC;
    vid_pData : in STD_LOGIC_VECTOR ( 7 downto 0 );
    SR : in STD_LOGIC_VECTOR ( 0 to 0 );
    D : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \_xilinx_top__TMDS_Encoder_3\ : entity is "TMDS_Encoder";
end \_xilinx_top__TMDS_Encoder_3\;

architecture STRUCTURE of \_xilinx_top__TMDS_Encoder_3\ is
  signal cnt_t_2 : STD_LOGIC_VECTOR ( 4 downto 1 );
  signal \cnt_t_3[2]_i_2__0_n_0\ : STD_LOGIC;
  signal \cnt_t_3[2]_i_3__1_n_0\ : STD_LOGIC;
  signal \cnt_t_3[3]_i_2__1_n_0\ : STD_LOGIC;
  signal \cnt_t_3[3]_i_3__1_n_0\ : STD_LOGIC;
  signal \cnt_t_3[3]_i_4__1_n_0\ : STD_LOGIC;
  signal \cnt_t_3[3]_i_5__0_n_0\ : STD_LOGIC;
  signal \cnt_t_3[4]_i_10__1_n_0\ : STD_LOGIC;
  signal \cnt_t_3[4]_i_11__0_n_0\ : STD_LOGIC;
  signal \cnt_t_3[4]_i_12__1_n_0\ : STD_LOGIC;
  signal \cnt_t_3[4]_i_13__1_n_0\ : STD_LOGIC;
  signal \cnt_t_3[4]_i_14__1_n_0\ : STD_LOGIC;
  signal \cnt_t_3[4]_i_2__1_n_0\ : STD_LOGIC;
  signal \cnt_t_3[4]_i_3__1_n_0\ : STD_LOGIC;
  signal \cnt_t_3[4]_i_4__0_n_0\ : STD_LOGIC;
  signal \cnt_t_3[4]_i_5__1_n_0\ : STD_LOGIC;
  signal \cnt_t_3[4]_i_6__1_n_0\ : STD_LOGIC;
  signal \cnt_t_3[4]_i_7__1_n_0\ : STD_LOGIC;
  signal \cnt_t_3[4]_i_8__1_n_0\ : STD_LOGIC;
  signal \cnt_t_3[4]_i_9__1_n_0\ : STD_LOGIC;
  signal \cnt_t_3_reg_n_0_[1]\ : STD_LOGIC;
  signal \cnt_t_3_reg_n_0_[2]\ : STD_LOGIC;
  signal \cnt_t_3_reg_n_0_[3]\ : STD_LOGIC;
  signal \cnt_t_3_reg_n_0_[4]\ : STD_LOGIC;
  signal \n0q_m_2[1]_i_1__1_n_0\ : STD_LOGIC;
  signal \n0q_m_2[2]_i_1__1_n_0\ : STD_LOGIC;
  signal \n0q_m_2[3]_i_1__1_n_0\ : STD_LOGIC;
  signal \n0q_m_2_reg_n_0_[1]\ : STD_LOGIC;
  signal \n0q_m_2_reg_n_0_[2]\ : STD_LOGIC;
  signal \n0q_m_2_reg_n_0_[3]\ : STD_LOGIC;
  signal \n1d_1[0]_i_1_n_0\ : STD_LOGIC;
  signal \n1d_1[0]_i_2_n_0\ : STD_LOGIC;
  signal \n1d_1[1]_i_1_n_0\ : STD_LOGIC;
  signal \n1d_1[1]_i_2_n_0\ : STD_LOGIC;
  signal \n1d_1[2]_i_1_n_0\ : STD_LOGIC;
  signal \n1d_1[2]_i_2_n_0\ : STD_LOGIC;
  signal \n1d_1[3]_i_1_n_0\ : STD_LOGIC;
  signal \n1d_1[3]_i_2_n_0\ : STD_LOGIC;
  signal \n1d_1[3]_i_3_n_0\ : STD_LOGIC;
  signal \n1d_1[3]_i_4_n_0\ : STD_LOGIC;
  signal \n1d_1_reg_n_0_[0]\ : STD_LOGIC;
  signal \n1d_1_reg_n_0_[1]\ : STD_LOGIC;
  signal \n1d_1_reg_n_0_[2]\ : STD_LOGIC;
  signal \n1d_1_reg_n_0_[3]\ : STD_LOGIC;
  signal \n1q_m_2[0]_i_1__1_n_0\ : STD_LOGIC;
  signal \n1q_m_2[0]_i_2__1_n_0\ : STD_LOGIC;
  signal \n1q_m_2[1]_i_1__1_n_0\ : STD_LOGIC;
  signal \n1q_m_2[2]_i_1__1_n_0\ : STD_LOGIC;
  signal \n1q_m_2[3]_i_1__1_n_0\ : STD_LOGIC;
  signal \n1q_m_2[3]_i_2__1_n_0\ : STD_LOGIC;
  signal \n1q_m_2[3]_i_3__1_n_0\ : STD_LOGIC;
  signal \n1q_m_2[3]_i_4__1_n_0\ : STD_LOGIC;
  signal \n1q_m_2[3]_i_5__1_n_0\ : STD_LOGIC;
  signal \n1q_m_2_reg_n_0_[0]\ : STD_LOGIC;
  signal \n1q_m_2_reg_n_0_[1]\ : STD_LOGIC;
  signal \n1q_m_2_reg_n_0_[2]\ : STD_LOGIC;
  signal \n1q_m_2_reg_n_0_[3]\ : STD_LOGIC;
  signal \pDataOutRaw[0]_i_1__1_n_0\ : STD_LOGIC;
  signal \pDataOutRaw[1]_i_1__1_n_0\ : STD_LOGIC;
  signal \pDataOutRaw[2]_i_1__1_n_0\ : STD_LOGIC;
  signal \pDataOutRaw[3]_i_1__1_n_0\ : STD_LOGIC;
  signal \pDataOutRaw[4]_i_1__1_n_0\ : STD_LOGIC;
  signal \pDataOutRaw[5]_i_1__1_n_0\ : STD_LOGIC;
  signal \pDataOutRaw[6]_i_1__1_n_0\ : STD_LOGIC;
  signal \pDataOutRaw[7]_i_1__1_n_0\ : STD_LOGIC;
  signal \pDataOutRaw[8]_i_1__1_n_0\ : STD_LOGIC;
  signal \pDataOutRaw[9]_i_3__1_n_0\ : STD_LOGIC;
  signal \^pdataoutraw_reg[0]_0\ : STD_LOGIC;
  signal \pDataOut_1_reg_n_0_[0]\ : STD_LOGIC;
  signal \pDataOut_1_reg_n_0_[1]\ : STD_LOGIC;
  signal p_0_in0_in : STD_LOGIC;
  signal p_0_in10_in : STD_LOGIC;
  signal p_0_in2_in : STD_LOGIC;
  signal p_0_in4_in : STD_LOGIC;
  signal p_0_in6_in : STD_LOGIC;
  signal p_0_in8_in : STD_LOGIC;
  signal \p_0_in__0\ : STD_LOGIC;
  signal \q_m_11__5\ : STD_LOGIC;
  signal \q_m_2[1]_i_1__1_n_0\ : STD_LOGIC;
  signal \q_m_2[3]_i_1__1_n_0\ : STD_LOGIC;
  signal \q_m_2[5]_i_1__1_n_0\ : STD_LOGIC;
  signal \q_m_2[5]_i_2__1_n_0\ : STD_LOGIC;
  signal \q_m_2[7]_i_1__1_n_0\ : STD_LOGIC;
  signal \q_m_2[8]_i_1__1_n_0\ : STD_LOGIC;
  signal \q_m_2_reg_n_0_[0]\ : STD_LOGIC;
  signal \q_m_2_reg_n_0_[1]\ : STD_LOGIC;
  signal \q_m_2_reg_n_0_[2]\ : STD_LOGIC;
  signal \q_m_2_reg_n_0_[3]\ : STD_LOGIC;
  signal \q_m_2_reg_n_0_[4]\ : STD_LOGIC;
  signal \q_m_2_reg_n_0_[5]\ : STD_LOGIC;
  signal \q_m_2_reg_n_0_[6]\ : STD_LOGIC;
  signal \q_m_2_reg_n_0_[7]\ : STD_LOGIC;
  signal q_m_xor_1 : STD_LOGIC_VECTOR ( 6 downto 2 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \cnt_t_3[2]_i_2__0\ : label is "soft_lutpair40";
  attribute SOFT_HLUTNM of \cnt_t_3[2]_i_3__1\ : label is "soft_lutpair39";
  attribute SOFT_HLUTNM of \cnt_t_3[3]_i_2__1\ : label is "soft_lutpair33";
  attribute SOFT_HLUTNM of \cnt_t_3[4]_i_10__1\ : label is "soft_lutpair41";
  attribute SOFT_HLUTNM of \cnt_t_3[4]_i_11__0\ : label is "soft_lutpair40";
  attribute SOFT_HLUTNM of \cnt_t_3[4]_i_13__1\ : label is "soft_lutpair41";
  attribute SOFT_HLUTNM of \cnt_t_3[4]_i_14__1\ : label is "soft_lutpair43";
  attribute SOFT_HLUTNM of \cnt_t_3[4]_i_5__1\ : label is "soft_lutpair33";
  attribute SOFT_HLUTNM of \cnt_t_3[4]_i_8__1\ : label is "soft_lutpair39";
  attribute SOFT_HLUTNM of \n1d_1[0]_i_2\ : label is "soft_lutpair34";
  attribute SOFT_HLUTNM of \n1d_1[3]_i_3\ : label is "soft_lutpair34";
  attribute SOFT_HLUTNM of \n1q_m_2[3]_i_2__1\ : label is "soft_lutpair42";
  attribute SOFT_HLUTNM of \n1q_m_2[3]_i_3__1\ : label is "soft_lutpair38";
  attribute SOFT_HLUTNM of \pDataOutRaw[0]_i_1__1\ : label is "soft_lutpair45";
  attribute SOFT_HLUTNM of \pDataOutRaw[1]_i_1__1\ : label is "soft_lutpair47";
  attribute SOFT_HLUTNM of \pDataOutRaw[2]_i_1__1\ : label is "soft_lutpair44";
  attribute SOFT_HLUTNM of \pDataOutRaw[3]_i_1__1\ : label is "soft_lutpair47";
  attribute SOFT_HLUTNM of \pDataOutRaw[4]_i_1__1\ : label is "soft_lutpair44";
  attribute SOFT_HLUTNM of \pDataOutRaw[6]_i_1__1\ : label is "soft_lutpair46";
  attribute SOFT_HLUTNM of \pDataOutRaw[7]_i_1__1\ : label is "soft_lutpair45";
  attribute SOFT_HLUTNM of \pDataOutRaw[8]_i_1__1\ : label is "soft_lutpair46";
  attribute SOFT_HLUTNM of \pDataOutRaw[9]_i_3__1\ : label is "soft_lutpair43";
  attribute SOFT_HLUTNM of \q_m_2[2]_i_1__1\ : label is "soft_lutpair42";
  attribute SOFT_HLUTNM of \q_m_2[3]_i_1__1\ : label is "soft_lutpair38";
  attribute SOFT_HLUTNM of \q_m_2[4]_i_1__1\ : label is "soft_lutpair37";
  attribute SOFT_HLUTNM of \q_m_2[5]_i_2__1\ : label is "soft_lutpair36";
  attribute SOFT_HLUTNM of \q_m_2[6]_i_1__1\ : label is "soft_lutpair36";
  attribute SOFT_HLUTNM of \q_m_2[7]_i_2__1\ : label is "soft_lutpair37";
  attribute SOFT_HLUTNM of \q_m_2[7]_i_3__1\ : label is "soft_lutpair35";
  attribute SOFT_HLUTNM of \q_m_2[8]_i_1__1\ : label is "soft_lutpair35";
begin
  \pDataOutRaw_reg[0]_0\ <= \^pdataoutraw_reg[0]_0\;
\cnt_t_3[1]_i_1__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EB1414EB14EBEB14"
    )
        port map (
      I0 => \cnt_t_3[4]_i_6__1_n_0\,
      I1 => \cnt_t_3[4]_i_4__0_n_0\,
      I2 => \p_0_in__0\,
      I3 => \n0q_m_2_reg_n_0_[1]\,
      I4 => \n1q_m_2_reg_n_0_[1]\,
      I5 => \cnt_t_3_reg_n_0_[1]\,
      O => cnt_t_2(1)
    );
\cnt_t_3[2]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B510F4044AEF0BFB"
    )
        port map (
      I0 => \cnt_t_3[4]_i_6__1_n_0\,
      I1 => \cnt_t_3[4]_i_4__0_n_0\,
      I2 => \cnt_t_3_reg_n_0_[1]\,
      I3 => \cnt_t_3[2]_i_2__0_n_0\,
      I4 => \p_0_in__0\,
      I5 => \cnt_t_3[2]_i_3__1_n_0\,
      O => cnt_t_2(2)
    );
\cnt_t_3[2]_i_2__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \n1q_m_2_reg_n_0_[1]\,
      I1 => \n0q_m_2_reg_n_0_[1]\,
      O => \cnt_t_3[2]_i_2__0_n_0\
    );
\cnt_t_3[2]_i_3__1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"69966969"
    )
        port map (
      I0 => \cnt_t_3_reg_n_0_[2]\,
      I1 => \n1q_m_2_reg_n_0_[2]\,
      I2 => \n0q_m_2_reg_n_0_[2]\,
      I3 => \n0q_m_2_reg_n_0_[1]\,
      I4 => \n1q_m_2_reg_n_0_[1]\,
      O => \cnt_t_3[2]_i_3__1_n_0\
    );
\cnt_t_3[3]_i_1__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"555556A6AAAA56A6"
    )
        port map (
      I0 => \cnt_t_3[3]_i_2__1_n_0\,
      I1 => \cnt_t_3[3]_i_3__1_n_0\,
      I2 => \cnt_t_3[4]_i_4__0_n_0\,
      I3 => \cnt_t_3[3]_i_4__1_n_0\,
      I4 => \cnt_t_3[4]_i_6__1_n_0\,
      I5 => \cnt_t_3[3]_i_5__0_n_0\,
      O => cnt_t_2(3)
    );
\cnt_t_3[3]_i_2__1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \cnt_t_3_reg_n_0_[3]\,
      I1 => \cnt_t_3[4]_i_9__1_n_0\,
      O => \cnt_t_3[3]_i_2__1_n_0\
    );
\cnt_t_3[3]_i_3__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"41D7FFFF000041D7"
    )
        port map (
      I0 => \p_0_in__0\,
      I1 => \n1q_m_2_reg_n_0_[1]\,
      I2 => \n0q_m_2_reg_n_0_[1]\,
      I3 => \cnt_t_3_reg_n_0_[1]\,
      I4 => \cnt_t_3_reg_n_0_[2]\,
      I5 => \cnt_t_3[4]_i_11__0_n_0\,
      O => \cnt_t_3[3]_i_3__1_n_0\
    );
\cnt_t_3[3]_i_4__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFEB82EB820000"
    )
        port map (
      I0 => \cnt_t_3_reg_n_0_[1]\,
      I1 => \n0q_m_2_reg_n_0_[1]\,
      I2 => \n1q_m_2_reg_n_0_[1]\,
      I3 => \p_0_in__0\,
      I4 => \cnt_t_3_reg_n_0_[2]\,
      I5 => \cnt_t_3[4]_i_11__0_n_0\,
      O => \cnt_t_3[3]_i_4__1_n_0\
    );
\cnt_t_3[3]_i_5__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"C7DF10F710F7C7DF"
    )
        port map (
      I0 => \cnt_t_3_reg_n_0_[1]\,
      I1 => \n0q_m_2_reg_n_0_[1]\,
      I2 => \n1q_m_2_reg_n_0_[1]\,
      I3 => \cnt_t_3_reg_n_0_[2]\,
      I4 => \n0q_m_2_reg_n_0_[2]\,
      I5 => \n1q_m_2_reg_n_0_[2]\,
      O => \cnt_t_3[3]_i_5__0_n_0\
    );
\cnt_t_3[4]_i_10__1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BE28"
    )
        port map (
      I0 => \p_0_in__0\,
      I1 => \n1q_m_2_reg_n_0_[1]\,
      I2 => \n0q_m_2_reg_n_0_[1]\,
      I3 => \cnt_t_3_reg_n_0_[1]\,
      O => \cnt_t_3[4]_i_10__1_n_0\
    );
\cnt_t_3[4]_i_11__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"D22D"
    )
        port map (
      I0 => \n1q_m_2_reg_n_0_[1]\,
      I1 => \n0q_m_2_reg_n_0_[1]\,
      I2 => \n0q_m_2_reg_n_0_[2]\,
      I3 => \n1q_m_2_reg_n_0_[2]\,
      O => \cnt_t_3[4]_i_11__0_n_0\
    );
\cnt_t_3[4]_i_12__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"01"
    )
        port map (
      I0 => \cnt_t_3_reg_n_0_[3]\,
      I1 => \cnt_t_3_reg_n_0_[1]\,
      I2 => \cnt_t_3_reg_n_0_[2]\,
      O => \cnt_t_3[4]_i_12__1_n_0\
    );
\cnt_t_3[4]_i_13__1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EB82"
    )
        port map (
      I0 => \cnt_t_3_reg_n_0_[1]\,
      I1 => \n0q_m_2_reg_n_0_[1]\,
      I2 => \n1q_m_2_reg_n_0_[1]\,
      I3 => \p_0_in__0\,
      O => \cnt_t_3[4]_i_13__1_n_0\
    );
\cnt_t_3[4]_i_14__1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0010"
    )
        port map (
      I0 => \n1q_m_2_reg_n_0_[0]\,
      I1 => \n1q_m_2_reg_n_0_[1]\,
      I2 => \n1q_m_2_reg_n_0_[2]\,
      I3 => \n1q_m_2_reg_n_0_[3]\,
      O => \cnt_t_3[4]_i_14__1_n_0\
    );
\cnt_t_3[4]_i_1__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"555556A6AAAA56A6"
    )
        port map (
      I0 => \cnt_t_3[4]_i_2__1_n_0\,
      I1 => \cnt_t_3[4]_i_3__1_n_0\,
      I2 => \cnt_t_3[4]_i_4__0_n_0\,
      I3 => \cnt_t_3[4]_i_5__1_n_0\,
      I4 => \cnt_t_3[4]_i_6__1_n_0\,
      I5 => \cnt_t_3[4]_i_7__1_n_0\,
      O => cnt_t_2(4)
    );
\cnt_t_3[4]_i_2__1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9A59"
    )
        port map (
      I0 => \cnt_t_3_reg_n_0_[4]\,
      I1 => \n1q_m_2_reg_n_0_[3]\,
      I2 => \n0q_m_2_reg_n_0_[3]\,
      I3 => \cnt_t_3[4]_i_8__1_n_0\,
      O => \cnt_t_3[4]_i_2__1_n_0\
    );
\cnt_t_3[4]_i_3__1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"17771117"
    )
        port map (
      I0 => \cnt_t_3_reg_n_0_[3]\,
      I1 => \cnt_t_3[4]_i_9__1_n_0\,
      I2 => \cnt_t_3[4]_i_10__1_n_0\,
      I3 => \cnt_t_3_reg_n_0_[2]\,
      I4 => \cnt_t_3[4]_i_11__0_n_0\,
      O => \cnt_t_3[4]_i_3__1_n_0\
    );
\cnt_t_3[4]_i_4__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFAAAAFF00ABFF"
    )
        port map (
      I0 => \cnt_t_3[4]_i_12__1_n_0\,
      I1 => \n1q_m_2_reg_n_0_[1]\,
      I2 => \n1q_m_2_reg_n_0_[0]\,
      I3 => \n1q_m_2_reg_n_0_[2]\,
      I4 => \cnt_t_3_reg_n_0_[4]\,
      I5 => \n1q_m_2_reg_n_0_[3]\,
      O => \cnt_t_3[4]_i_4__0_n_0\
    );
\cnt_t_3[4]_i_5__1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BBB2B222"
    )
        port map (
      I0 => \cnt_t_3_reg_n_0_[3]\,
      I1 => \cnt_t_3[4]_i_9__1_n_0\,
      I2 => \cnt_t_3[4]_i_13__1_n_0\,
      I3 => \cnt_t_3_reg_n_0_[2]\,
      I4 => \cnt_t_3[4]_i_11__0_n_0\,
      O => \cnt_t_3[4]_i_5__1_n_0\
    );
\cnt_t_3[4]_i_6__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4444444444444445"
    )
        port map (
      I0 => \p_0_in__0\,
      I1 => \cnt_t_3[4]_i_14__1_n_0\,
      I2 => \cnt_t_3_reg_n_0_[4]\,
      I3 => \cnt_t_3_reg_n_0_[2]\,
      I4 => \cnt_t_3_reg_n_0_[1]\,
      I5 => \cnt_t_3_reg_n_0_[3]\,
      O => \cnt_t_3[4]_i_6__1_n_0\
    );
\cnt_t_3[4]_i_7__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00007F077F07FFFF"
    )
        port map (
      I0 => \cnt_t_3_reg_n_0_[1]\,
      I1 => \cnt_t_3[2]_i_2__0_n_0\,
      I2 => \cnt_t_3_reg_n_0_[2]\,
      I3 => \cnt_t_3[4]_i_11__0_n_0\,
      I4 => \cnt_t_3_reg_n_0_[3]\,
      I5 => \cnt_t_3[4]_i_9__1_n_0\,
      O => \cnt_t_3[4]_i_7__1_n_0\
    );
\cnt_t_3[4]_i_8__1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"20BA"
    )
        port map (
      I0 => \n1q_m_2_reg_n_0_[2]\,
      I1 => \n0q_m_2_reg_n_0_[1]\,
      I2 => \n1q_m_2_reg_n_0_[1]\,
      I3 => \n0q_m_2_reg_n_0_[2]\,
      O => \cnt_t_3[4]_i_8__1_n_0\
    );
\cnt_t_3[4]_i_9__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5D04A2FBA2FB5D04"
    )
        port map (
      I0 => \n0q_m_2_reg_n_0_[2]\,
      I1 => \n1q_m_2_reg_n_0_[1]\,
      I2 => \n0q_m_2_reg_n_0_[1]\,
      I3 => \n1q_m_2_reg_n_0_[2]\,
      I4 => \n0q_m_2_reg_n_0_[3]\,
      I5 => \n1q_m_2_reg_n_0_[3]\,
      O => \cnt_t_3[4]_i_9__1_n_0\
    );
\cnt_t_3_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => PixelClk,
      CE => '1',
      D => cnt_t_2(1),
      Q => \cnt_t_3_reg_n_0_[1]\,
      R => SR(0)
    );
\cnt_t_3_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => PixelClk,
      CE => '1',
      D => cnt_t_2(2),
      Q => \cnt_t_3_reg_n_0_[2]\,
      R => SR(0)
    );
\cnt_t_3_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => PixelClk,
      CE => '1',
      D => cnt_t_2(3),
      Q => \cnt_t_3_reg_n_0_[3]\,
      R => SR(0)
    );
\cnt_t_3_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => PixelClk,
      CE => '1',
      D => cnt_t_2(4),
      Q => \cnt_t_3_reg_n_0_[4]\,
      R => SR(0)
    );
\n0q_m_2[1]_i_1__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"177EE881E881177E"
    )
        port map (
      I0 => q_m_xor_1(4),
      I1 => q_m_xor_1(6),
      I2 => \q_m_2[5]_i_1__1_n_0\,
      I3 => \n1q_m_2[3]_i_2__1_n_0\,
      I4 => \n1q_m_2[3]_i_4__1_n_0\,
      I5 => \n1q_m_2[3]_i_3__1_n_0\,
      O => \n0q_m_2[1]_i_1__1_n_0\
    );
\n0q_m_2[2]_i_1__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0001177F177FFFFE"
    )
        port map (
      I0 => \n1q_m_2[3]_i_2__1_n_0\,
      I1 => q_m_xor_1(4),
      I2 => \q_m_2[5]_i_1__1_n_0\,
      I3 => q_m_xor_1(6),
      I4 => \n1q_m_2[3]_i_3__1_n_0\,
      I5 => \n1q_m_2[3]_i_4__1_n_0\,
      O => \n0q_m_2[2]_i_1__1_n_0\
    );
\n0q_m_2[3]_i_1__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000001"
    )
        port map (
      I0 => \n1q_m_2[3]_i_2__1_n_0\,
      I1 => q_m_xor_1(4),
      I2 => \q_m_2[5]_i_1__1_n_0\,
      I3 => q_m_xor_1(6),
      I4 => \n1q_m_2[3]_i_3__1_n_0\,
      I5 => \n1q_m_2[3]_i_4__1_n_0\,
      O => \n0q_m_2[3]_i_1__1_n_0\
    );
\n0q_m_2_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => PixelClk,
      CE => '1',
      D => \n0q_m_2[1]_i_1__1_n_0\,
      Q => \n0q_m_2_reg_n_0_[1]\,
      R => '0'
    );
\n0q_m_2_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => PixelClk,
      CE => '1',
      D => \n0q_m_2[2]_i_1__1_n_0\,
      Q => \n0q_m_2_reg_n_0_[2]\,
      R => '0'
    );
\n0q_m_2_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => PixelClk,
      CE => '1',
      D => \n0q_m_2[3]_i_1__1_n_0\,
      Q => \n0q_m_2_reg_n_0_[3]\,
      R => '0'
    );
\n1d_1[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6996966996696996"
    )
        port map (
      I0 => vid_pData(7),
      I1 => vid_pData(0),
      I2 => \n1d_1[0]_i_2_n_0\,
      I3 => vid_pData(5),
      I4 => vid_pData(6),
      I5 => vid_pData(4),
      O => \n1d_1[0]_i_1_n_0\
    );
\n1d_1[0]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => vid_pData(1),
      I1 => vid_pData(3),
      I2 => vid_pData(2),
      O => \n1d_1[0]_i_2_n_0\
    );
\n1d_1[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => \n1d_1[3]_i_2_n_0\,
      I1 => \n1d_1[1]_i_2_n_0\,
      I2 => \n1d_1[3]_i_3_n_0\,
      O => \n1d_1[1]_i_1_n_0\
    );
\n1d_1[1]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"171717E817E8E8E8"
    )
        port map (
      I0 => vid_pData(4),
      I1 => vid_pData(5),
      I2 => vid_pData(6),
      I3 => vid_pData(1),
      I4 => vid_pData(2),
      I5 => vid_pData(3),
      O => \n1d_1[1]_i_2_n_0\
    );
\n1d_1[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7E7E7EE87EE8E8E8"
    )
        port map (
      I0 => \n1d_1[3]_i_2_n_0\,
      I1 => \n1d_1[3]_i_3_n_0\,
      I2 => \n1d_1[2]_i_2_n_0\,
      I3 => vid_pData(3),
      I4 => vid_pData(2),
      I5 => vid_pData(1),
      O => \n1d_1[2]_i_1_n_0\
    );
\n1d_1[2]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => vid_pData(6),
      I1 => vid_pData(5),
      I2 => vid_pData(4),
      O => \n1d_1[2]_i_2_n_0\
    );
\n1d_1[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8880800000000000"
    )
        port map (
      I0 => \n1d_1[3]_i_2_n_0\,
      I1 => \n1d_1[3]_i_3_n_0\,
      I2 => vid_pData(4),
      I3 => vid_pData(5),
      I4 => vid_pData(6),
      I5 => \n1d_1[3]_i_4_n_0\,
      O => \n1d_1[3]_i_1_n_0\
    );
\n1d_1[3]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9600009600969600"
    )
        port map (
      I0 => vid_pData(5),
      I1 => vid_pData(6),
      I2 => vid_pData(4),
      I3 => vid_pData(7),
      I4 => vid_pData(0),
      I5 => \n1d_1[0]_i_2_n_0\,
      O => \n1d_1[3]_i_2_n_0\
    );
\n1d_1[3]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"E88E8EE8"
    )
        port map (
      I0 => vid_pData(0),
      I1 => vid_pData(7),
      I2 => vid_pData(2),
      I3 => vid_pData(3),
      I4 => vid_pData(1),
      O => \n1d_1[3]_i_3_n_0\
    );
\n1d_1[3]_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => vid_pData(3),
      I1 => vid_pData(2),
      I2 => vid_pData(1),
      O => \n1d_1[3]_i_4_n_0\
    );
\n1d_1_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => PixelClk,
      CE => '1',
      D => \n1d_1[0]_i_1_n_0\,
      Q => \n1d_1_reg_n_0_[0]\,
      R => '0'
    );
\n1d_1_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => PixelClk,
      CE => '1',
      D => \n1d_1[1]_i_1_n_0\,
      Q => \n1d_1_reg_n_0_[1]\,
      R => '0'
    );
\n1d_1_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => PixelClk,
      CE => '1',
      D => \n1d_1[2]_i_1_n_0\,
      Q => \n1d_1_reg_n_0_[2]\,
      R => '0'
    );
\n1d_1_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => PixelClk,
      CE => '1',
      D => \n1d_1[3]_i_1_n_0\,
      Q => \n1d_1_reg_n_0_[3]\,
      R => '0'
    );
\n1q_m_2[0]_i_1__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6996966996696996"
    )
        port map (
      I0 => \q_m_2[7]_i_1__1_n_0\,
      I1 => \pDataOut_1_reg_n_0_[0]\,
      I2 => \n1q_m_2[0]_i_2__1_n_0\,
      I3 => q_m_xor_1(4),
      I4 => q_m_xor_1(6),
      I5 => \q_m_2[5]_i_1__1_n_0\,
      O => \n1q_m_2[0]_i_1__1_n_0\
    );
\n1q_m_2[0]_i_2__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => p_0_in2_in,
      I1 => \pDataOut_1_reg_n_0_[1]\,
      I2 => \pDataOut_1_reg_n_0_[0]\,
      O => \n1q_m_2[0]_i_2__1_n_0\
    );
\n1q_m_2[1]_i_1__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6999999699969666"
    )
        port map (
      I0 => \n1q_m_2[3]_i_3__1_n_0\,
      I1 => \n1q_m_2[3]_i_4__1_n_0\,
      I2 => \n1q_m_2[3]_i_2__1_n_0\,
      I3 => \q_m_2[5]_i_1__1_n_0\,
      I4 => q_m_xor_1(6),
      I5 => q_m_xor_1(4),
      O => \n1q_m_2[1]_i_1__1_n_0\
    );
\n1q_m_2[2]_i_1__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7EEEEEE8EEE8E888"
    )
        port map (
      I0 => \n1q_m_2[3]_i_4__1_n_0\,
      I1 => \n1q_m_2[3]_i_3__1_n_0\,
      I2 => q_m_xor_1(6),
      I3 => \q_m_2[5]_i_1__1_n_0\,
      I4 => q_m_xor_1(4),
      I5 => \n1q_m_2[3]_i_2__1_n_0\,
      O => \n1q_m_2[2]_i_1__1_n_0\
    );
\n1q_m_2[3]_i_1__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8000000000000000"
    )
        port map (
      I0 => \n1q_m_2[3]_i_2__1_n_0\,
      I1 => q_m_xor_1(4),
      I2 => \q_m_2[5]_i_1__1_n_0\,
      I3 => q_m_xor_1(6),
      I4 => \n1q_m_2[3]_i_3__1_n_0\,
      I5 => \n1q_m_2[3]_i_4__1_n_0\,
      O => \n1q_m_2[3]_i_1__1_n_0\
    );
\n1q_m_2[3]_i_2__1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => \pDataOut_1_reg_n_0_[0]\,
      I1 => \n1q_m_2[3]_i_5__1_n_0\,
      I2 => p_0_in0_in,
      I3 => \q_m_11__5\,
      O => \n1q_m_2[3]_i_2__1_n_0\
    );
\n1q_m_2[3]_i_3__1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"96996696"
    )
        port map (
      I0 => \pDataOut_1_reg_n_0_[0]\,
      I1 => \pDataOut_1_reg_n_0_[1]\,
      I2 => p_0_in0_in,
      I3 => p_0_in2_in,
      I4 => \q_m_11__5\,
      O => \n1q_m_2[3]_i_3__1_n_0\
    );
\n1q_m_2[3]_i_4__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EDB71248DE7B2184"
    )
        port map (
      I0 => \q_m_11__5\,
      I1 => p_0_in2_in,
      I2 => p_0_in0_in,
      I3 => \pDataOut_1_reg_n_0_[1]\,
      I4 => \pDataOut_1_reg_n_0_[0]\,
      I5 => \n1q_m_2[3]_i_5__1_n_0\,
      O => \n1q_m_2[3]_i_4__1_n_0\
    );
\n1q_m_2[3]_i_5__1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => p_0_in10_in,
      I1 => p_0_in8_in,
      I2 => p_0_in6_in,
      I3 => p_0_in4_in,
      O => \n1q_m_2[3]_i_5__1_n_0\
    );
\n1q_m_2_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => PixelClk,
      CE => '1',
      D => \n1q_m_2[0]_i_1__1_n_0\,
      Q => \n1q_m_2_reg_n_0_[0]\,
      R => '0'
    );
\n1q_m_2_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => PixelClk,
      CE => '1',
      D => \n1q_m_2[1]_i_1__1_n_0\,
      Q => \n1q_m_2_reg_n_0_[1]\,
      R => '0'
    );
\n1q_m_2_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => PixelClk,
      CE => '1',
      D => \n1q_m_2[2]_i_1__1_n_0\,
      Q => \n1q_m_2_reg_n_0_[2]\,
      R => '0'
    );
\n1q_m_2_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => PixelClk,
      CE => '1',
      D => \n1q_m_2[3]_i_1__1_n_0\,
      Q => \n1q_m_2_reg_n_0_[3]\,
      R => '0'
    );
\pDataOutRaw[0]_i_1__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"D7"
    )
        port map (
      I0 => pVde_2,
      I1 => \^pdataoutraw_reg[0]_0\,
      I2 => \q_m_2_reg_n_0_[0]\,
      O => \pDataOutRaw[0]_i_1__1_n_0\
    );
\pDataOutRaw[1]_i_1__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"D7"
    )
        port map (
      I0 => pVde_2,
      I1 => \^pdataoutraw_reg[0]_0\,
      I2 => \q_m_2_reg_n_0_[1]\,
      O => \pDataOutRaw[1]_i_1__1_n_0\
    );
\pDataOutRaw[2]_i_1__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"82"
    )
        port map (
      I0 => pVde_2,
      I1 => \^pdataoutraw_reg[0]_0\,
      I2 => \q_m_2_reg_n_0_[2]\,
      O => \pDataOutRaw[2]_i_1__1_n_0\
    );
\pDataOutRaw[3]_i_1__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"D7"
    )
        port map (
      I0 => pVde_2,
      I1 => \^pdataoutraw_reg[0]_0\,
      I2 => \q_m_2_reg_n_0_[3]\,
      O => \pDataOutRaw[3]_i_1__1_n_0\
    );
\pDataOutRaw[4]_i_1__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"82"
    )
        port map (
      I0 => pVde_2,
      I1 => \^pdataoutraw_reg[0]_0\,
      I2 => \q_m_2_reg_n_0_[4]\,
      O => \pDataOutRaw[4]_i_1__1_n_0\
    );
\pDataOutRaw[5]_i_1__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"D7"
    )
        port map (
      I0 => pVde_2,
      I1 => \^pdataoutraw_reg[0]_0\,
      I2 => \q_m_2_reg_n_0_[5]\,
      O => \pDataOutRaw[5]_i_1__1_n_0\
    );
\pDataOutRaw[6]_i_1__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"82"
    )
        port map (
      I0 => pVde_2,
      I1 => \^pdataoutraw_reg[0]_0\,
      I2 => \q_m_2_reg_n_0_[6]\,
      O => \pDataOutRaw[6]_i_1__1_n_0\
    );
\pDataOutRaw[7]_i_1__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"D7"
    )
        port map (
      I0 => pVde_2,
      I1 => \^pdataoutraw_reg[0]_0\,
      I2 => \q_m_2_reg_n_0_[7]\,
      O => \pDataOutRaw[7]_i_1__1_n_0\
    );
\pDataOutRaw[8]_i_1__1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \p_0_in__0\,
      I1 => pVde_2,
      O => \pDataOutRaw[8]_i_1__1_n_0\
    );
\pDataOutRaw[9]_i_2__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EFE3EEE3C0C1CCC1"
    )
        port map (
      I0 => \cnt_t_3[4]_i_12__1_n_0\,
      I1 => \cnt_t_3_reg_n_0_[4]\,
      I2 => \n1q_m_2_reg_n_0_[3]\,
      I3 => \n1q_m_2_reg_n_0_[2]\,
      I4 => \pDataOutRaw[9]_i_3__1_n_0\,
      I5 => \p_0_in__0\,
      O => \^pdataoutraw_reg[0]_0\
    );
\pDataOutRaw[9]_i_3__1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \n1q_m_2_reg_n_0_[1]\,
      I1 => \n1q_m_2_reg_n_0_[0]\,
      O => \pDataOutRaw[9]_i_3__1_n_0\
    );
\pDataOutRaw_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => PixelClk,
      CE => '1',
      D => \pDataOutRaw[0]_i_1__1_n_0\,
      Q => Q(0),
      R => SR(0)
    );
\pDataOutRaw_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => PixelClk,
      CE => '1',
      D => \pDataOutRaw[1]_i_1__1_n_0\,
      Q => Q(1),
      R => SR(0)
    );
\pDataOutRaw_reg[2]\: unisim.vcomponents.FDSE
     port map (
      C => PixelClk,
      CE => '1',
      D => \pDataOutRaw[2]_i_1__1_n_0\,
      Q => Q(2),
      S => SR(0)
    );
\pDataOutRaw_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => PixelClk,
      CE => '1',
      D => \pDataOutRaw[3]_i_1__1_n_0\,
      Q => Q(3),
      R => SR(0)
    );
\pDataOutRaw_reg[4]\: unisim.vcomponents.FDSE
     port map (
      C => PixelClk,
      CE => '1',
      D => \pDataOutRaw[4]_i_1__1_n_0\,
      Q => Q(4),
      S => SR(0)
    );
\pDataOutRaw_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => PixelClk,
      CE => '1',
      D => \pDataOutRaw[5]_i_1__1_n_0\,
      Q => Q(5),
      R => SR(0)
    );
\pDataOutRaw_reg[6]\: unisim.vcomponents.FDSE
     port map (
      C => PixelClk,
      CE => '1',
      D => \pDataOutRaw[6]_i_1__1_n_0\,
      Q => Q(6),
      S => SR(0)
    );
\pDataOutRaw_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => PixelClk,
      CE => '1',
      D => \pDataOutRaw[7]_i_1__1_n_0\,
      Q => Q(7),
      R => SR(0)
    );
\pDataOutRaw_reg[8]\: unisim.vcomponents.FDSE
     port map (
      C => PixelClk,
      CE => '1',
      D => \pDataOutRaw[8]_i_1__1_n_0\,
      Q => Q(8),
      S => SR(0)
    );
\pDataOutRaw_reg[9]\: unisim.vcomponents.FDSE
     port map (
      C => PixelClk,
      CE => '1',
      D => D(0),
      Q => Q(9),
      S => SR(0)
    );
\pDataOut_1_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => PixelClk,
      CE => '1',
      D => vid_pData(0),
      Q => \pDataOut_1_reg_n_0_[0]\,
      R => '0'
    );
\pDataOut_1_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => PixelClk,
      CE => '1',
      D => vid_pData(1),
      Q => \pDataOut_1_reg_n_0_[1]\,
      R => '0'
    );
\pDataOut_1_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => PixelClk,
      CE => '1',
      D => vid_pData(2),
      Q => p_0_in0_in,
      R => '0'
    );
\pDataOut_1_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => PixelClk,
      CE => '1',
      D => vid_pData(3),
      Q => p_0_in2_in,
      R => '0'
    );
\pDataOut_1_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => PixelClk,
      CE => '1',
      D => vid_pData(4),
      Q => p_0_in4_in,
      R => '0'
    );
\pDataOut_1_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => PixelClk,
      CE => '1',
      D => vid_pData(5),
      Q => p_0_in6_in,
      R => '0'
    );
\pDataOut_1_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => PixelClk,
      CE => '1',
      D => vid_pData(6),
      Q => p_0_in8_in,
      R => '0'
    );
\pDataOut_1_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => PixelClk,
      CE => '1',
      D => vid_pData(7),
      Q => p_0_in10_in,
      R => '0'
    );
\q_m_2[1]_i_1__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EEEC11131111EEEE"
    )
        port map (
      I0 => \n1d_1_reg_n_0_[2]\,
      I1 => \n1d_1_reg_n_0_[3]\,
      I2 => \n1d_1_reg_n_0_[1]\,
      I3 => \n1d_1_reg_n_0_[0]\,
      I4 => \pDataOut_1_reg_n_0_[1]\,
      I5 => \pDataOut_1_reg_n_0_[0]\,
      O => \q_m_2[1]_i_1__1_n_0\
    );
\q_m_2[2]_i_1__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => p_0_in0_in,
      I1 => \pDataOut_1_reg_n_0_[1]\,
      I2 => \pDataOut_1_reg_n_0_[0]\,
      O => q_m_xor_1(2)
    );
\q_m_2[3]_i_1__1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"96696996"
    )
        port map (
      I0 => \pDataOut_1_reg_n_0_[0]\,
      I1 => \pDataOut_1_reg_n_0_[1]\,
      I2 => p_0_in0_in,
      I3 => p_0_in2_in,
      I4 => \q_m_11__5\,
      O => \q_m_2[3]_i_1__1_n_0\
    );
\q_m_2[4]_i_1__1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"96696996"
    )
        port map (
      I0 => p_0_in2_in,
      I1 => p_0_in4_in,
      I2 => p_0_in0_in,
      I3 => \pDataOut_1_reg_n_0_[1]\,
      I4 => \pDataOut_1_reg_n_0_[0]\,
      O => q_m_xor_1(4)
    );
\q_m_2[5]_i_1__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6996966996696996"
    )
        port map (
      I0 => \q_m_11__5\,
      I1 => \pDataOut_1_reg_n_0_[0]\,
      I2 => \pDataOut_1_reg_n_0_[1]\,
      I3 => p_0_in0_in,
      I4 => p_0_in2_in,
      I5 => \q_m_2[5]_i_2__1_n_0\,
      O => \q_m_2[5]_i_1__1_n_0\
    );
\q_m_2[5]_i_2__1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => p_0_in4_in,
      I1 => p_0_in6_in,
      O => \q_m_2[5]_i_2__1_n_0\
    );
\q_m_2[6]_i_1__1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"96696996"
    )
        port map (
      I0 => q_m_xor_1(2),
      I1 => p_0_in2_in,
      I2 => p_0_in4_in,
      I3 => p_0_in6_in,
      I4 => p_0_in8_in,
      O => q_m_xor_1(6)
    );
\q_m_2[7]_i_1__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6996966996696996"
    )
        port map (
      I0 => p_0_in10_in,
      I1 => p_0_in8_in,
      I2 => p_0_in6_in,
      I3 => p_0_in4_in,
      I4 => q_m_xor_1(3),
      I5 => \q_m_11__5\,
      O => \q_m_2[7]_i_1__1_n_0\
    );
\q_m_2[7]_i_2__1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => p_0_in2_in,
      I1 => p_0_in0_in,
      I2 => \pDataOut_1_reg_n_0_[1]\,
      I3 => \pDataOut_1_reg_n_0_[0]\,
      O => q_m_xor_1(3)
    );
\q_m_2[7]_i_3__1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FEF0FFF0"
    )
        port map (
      I0 => \n1d_1_reg_n_0_[0]\,
      I1 => \n1d_1_reg_n_0_[1]\,
      I2 => \n1d_1_reg_n_0_[3]\,
      I3 => \n1d_1_reg_n_0_[2]\,
      I4 => \pDataOut_1_reg_n_0_[0]\,
      O => \q_m_11__5\
    );
\q_m_2[8]_i_1__1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0303030B"
    )
        port map (
      I0 => \pDataOut_1_reg_n_0_[0]\,
      I1 => \n1d_1_reg_n_0_[2]\,
      I2 => \n1d_1_reg_n_0_[3]\,
      I3 => \n1d_1_reg_n_0_[1]\,
      I4 => \n1d_1_reg_n_0_[0]\,
      O => \q_m_2[8]_i_1__1_n_0\
    );
\q_m_2_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => PixelClk,
      CE => '1',
      D => \pDataOut_1_reg_n_0_[0]\,
      Q => \q_m_2_reg_n_0_[0]\,
      R => '0'
    );
\q_m_2_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => PixelClk,
      CE => '1',
      D => \q_m_2[1]_i_1__1_n_0\,
      Q => \q_m_2_reg_n_0_[1]\,
      R => '0'
    );
\q_m_2_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => PixelClk,
      CE => '1',
      D => q_m_xor_1(2),
      Q => \q_m_2_reg_n_0_[2]\,
      R => '0'
    );
\q_m_2_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => PixelClk,
      CE => '1',
      D => \q_m_2[3]_i_1__1_n_0\,
      Q => \q_m_2_reg_n_0_[3]\,
      R => '0'
    );
\q_m_2_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => PixelClk,
      CE => '1',
      D => q_m_xor_1(4),
      Q => \q_m_2_reg_n_0_[4]\,
      R => '0'
    );
\q_m_2_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => PixelClk,
      CE => '1',
      D => \q_m_2[5]_i_1__1_n_0\,
      Q => \q_m_2_reg_n_0_[5]\,
      R => '0'
    );
\q_m_2_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => PixelClk,
      CE => '1',
      D => q_m_xor_1(6),
      Q => \q_m_2_reg_n_0_[6]\,
      R => '0'
    );
\q_m_2_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => PixelClk,
      CE => '1',
      D => \q_m_2[7]_i_1__1_n_0\,
      Q => \q_m_2_reg_n_0_[7]\,
      R => '0'
    );
\q_m_2_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => PixelClk,
      CE => '1',
      D => \q_m_2[8]_i_1__1_n_0\,
      Q => \p_0_in__0\,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \_xilinx_top__ResetBridge\ is
  port (
    \out\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    aRst_n : in STD_LOGIC;
    PixelClk : in STD_LOGIC
  );
end \_xilinx_top__ResetBridge\;

architecture STRUCTURE of \_xilinx_top__ResetBridge\ is
  signal aRst_int : STD_LOGIC;
  attribute RTL_KEEP : string;
  attribute RTL_KEEP of aRst_int : signal is "true";
begin
SyncAsyncx: entity work.\_xilinx_top__SyncAsync\
     port map (
      AS(0) => aRst_int,
      PixelClk => PixelClk,
      \out\(0) => \out\(0)
    );
aRst_int_inferred_i_1: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => aRst_n,
      O => aRst_int
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \_xilinx_top__rgb2dvi\ is
  port (
    TMDS_Clk_p : out STD_LOGIC;
    TMDS_Clk_n : out STD_LOGIC;
    TMDS_Data_p : out STD_LOGIC_VECTOR ( 2 downto 0 );
    TMDS_Data_n : out STD_LOGIC_VECTOR ( 2 downto 0 );
    aRst : in STD_LOGIC;
    aRst_n : in STD_LOGIC;
    vid_pData : in STD_LOGIC_VECTOR ( 23 downto 0 );
    vid_pVDE : in STD_LOGIC;
    vid_pHSync : in STD_LOGIC;
    vid_pVSync : in STD_LOGIC;
    PixelClk : in STD_LOGIC;
    SerialClk : in STD_LOGIC
  );
  attribute kClkPrimitive : string;
  attribute kClkPrimitive of \_xilinx_top__rgb2dvi\ : entity is "PLL";
  attribute kClkRange : integer;
  attribute kClkRange of \_xilinx_top__rgb2dvi\ : entity is 2;
  attribute kGenerateSerialClk : string;
  attribute kGenerateSerialClk of \_xilinx_top__rgb2dvi\ : entity is "FALSE";
  attribute kRstActiveHigh : string;
  attribute kRstActiveHigh of \_xilinx_top__rgb2dvi\ : entity is "FALSE";
end \_xilinx_top__rgb2dvi\;

architecture STRUCTURE of \_xilinx_top__rgb2dvi\ is
  signal \DataEncoders[0].DataEncoder_n_2\ : STD_LOGIC;
  signal \DataEncoders[0].DataEncoder_n_3\ : STD_LOGIC;
  signal \DataEncoders[1].DataEncoder_n_0\ : STD_LOGIC;
  signal \DataEncoders[2].DataEncoder_n_0\ : STD_LOGIC;
  signal \pDataOutRaw[0]\ : STD_LOGIC_VECTOR ( 9 downto 0 );
  signal \pDataOutRaw[1]\ : STD_LOGIC_VECTOR ( 9 downto 0 );
  signal \pDataOutRaw[2]\ : STD_LOGIC_VECTOR ( 9 downto 0 );
  signal pRstLck : STD_LOGIC;
  signal pVde_2 : STD_LOGIC;
  signal p_1_in : STD_LOGIC;
begin
ClockSerializer: entity work.\_xilinx_top__OutputSERDES\
     port map (
      PixelClk => PixelClk,
      SerialClk => SerialClk,
      TMDS_Clk_n => TMDS_Clk_n,
      TMDS_Clk_p => TMDS_Clk_p,
      aRst => pRstLck
    );
\DataEncoders[0].DataEncoder\: entity work.\_xilinx_top__TMDS_Encoder\
     port map (
      D(0) => \DataEncoders[0].DataEncoder_n_2\,
      PixelClk => PixelClk,
      Q(9 downto 0) => \pDataOutRaw[0]\(9 downto 0),
      SR(0) => p_1_in,
      \cnt_t_3_reg[4]_0\ => \DataEncoders[1].DataEncoder_n_0\,
      \cnt_t_3_reg[4]_1\ => \DataEncoders[2].DataEncoder_n_0\,
      \pDataOutRaw_reg[9]_0\(0) => \DataEncoders[0].DataEncoder_n_3\,
      pVde_2 => pVde_2,
      vid_pData(7 downto 0) => vid_pData(15 downto 8),
      vid_pHSync => vid_pHSync,
      vid_pVDE => vid_pVDE,
      vid_pVSync => vid_pVSync
    );
\DataEncoders[0].DataSerializer\: entity work.\_xilinx_top__OutputSERDES_0\
     port map (
      PixelClk => PixelClk,
      SerialClk => SerialClk,
      TMDS_Data_n(0) => TMDS_Data_n(0),
      TMDS_Data_p(0) => TMDS_Data_p(0),
      aRst => pRstLck,
      pDataOut(9 downto 0) => \pDataOutRaw[0]\(9 downto 0)
    );
\DataEncoders[1].DataEncoder\: entity work.\_xilinx_top__TMDS_Encoder_1\
     port map (
      D(0) => \DataEncoders[0].DataEncoder_n_2\,
      PixelClk => PixelClk,
      Q(9 downto 0) => \pDataOutRaw[1]\(9 downto 0),
      SR(0) => p_1_in,
      \pDataOutRaw_reg[0]_0\ => \DataEncoders[1].DataEncoder_n_0\,
      pVde_2 => pVde_2,
      vid_pData(7 downto 0) => vid_pData(7 downto 0)
    );
\DataEncoders[1].DataSerializer\: entity work.\_xilinx_top__OutputSERDES_2\
     port map (
      PixelClk => PixelClk,
      SerialClk => SerialClk,
      TMDS_Data_n(0) => TMDS_Data_n(1),
      TMDS_Data_p(0) => TMDS_Data_p(1),
      \out\(0) => pRstLck,
      pDataOut(9 downto 0) => \pDataOutRaw[1]\(9 downto 0)
    );
\DataEncoders[2].DataEncoder\: entity work.\_xilinx_top__TMDS_Encoder_3\
     port map (
      D(0) => \DataEncoders[0].DataEncoder_n_3\,
      PixelClk => PixelClk,
      Q(9 downto 0) => \pDataOutRaw[2]\(9 downto 0),
      SR(0) => p_1_in,
      \pDataOutRaw_reg[0]_0\ => \DataEncoders[2].DataEncoder_n_0\,
      pVde_2 => pVde_2,
      vid_pData(7 downto 0) => vid_pData(23 downto 16)
    );
\DataEncoders[2].DataSerializer\: entity work.\_xilinx_top__OutputSERDES_4\
     port map (
      PixelClk => PixelClk,
      SerialClk => SerialClk,
      TMDS_Data_n(0) => TMDS_Data_n(2),
      TMDS_Data_p(0) => TMDS_Data_p(2),
      \out\(0) => pRstLck,
      pDataOut(9 downto 0) => \pDataOutRaw[2]\(9 downto 0)
    );
LockLostReset: entity work.\_xilinx_top__ResetBridge\
     port map (
      PixelClk => PixelClk,
      aRst_n => aRst_n,
      \out\(0) => pRstLck
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \_xilinx_top_\ is
  port (
    TMDS_Clk_p : out STD_LOGIC;
    TMDS_Clk_n : out STD_LOGIC;
    TMDS_Data_p : out STD_LOGIC_VECTOR ( 2 downto 0 );
    TMDS_Data_n : out STD_LOGIC_VECTOR ( 2 downto 0 );
    aRst_n : in STD_LOGIC;
    vid_pData : in STD_LOGIC_VECTOR ( 23 downto 0 );
    vid_pVDE : in STD_LOGIC;
    vid_pHSync : in STD_LOGIC;
    vid_pVSync : in STD_LOGIC;
    PixelClk : in STD_LOGIC;
    SerialClk : in STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of \_xilinx_top_\ : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of \_xilinx_top_\ : entity is "linux_bd_rgb2dvi_0_0,rgb2dvi,{}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of \_xilinx_top_\ : entity is "yes";
  attribute x_core_info : string;
  attribute x_core_info of \_xilinx_top_\ : entity is "rgb2dvi,Vivado 2016.1";
end \_xilinx_top_\;

architecture STRUCTURE of \_xilinx_top_\ is
  attribute kClkPrimitive : string;
  attribute kClkPrimitive of U0 : label is "PLL";
  attribute kClkRange : integer;
  attribute kClkRange of U0 : label is 2;
  attribute kGenerateSerialClk : string;
  attribute kGenerateSerialClk of U0 : label is "FALSE";
  attribute kRstActiveHigh : string;
  attribute kRstActiveHigh of U0 : label is "FALSE";
begin
U0: entity work.\_xilinx_top__rgb2dvi\
     port map (
      PixelClk => PixelClk,
      SerialClk => SerialClk,
      TMDS_Clk_n => TMDS_Clk_n,
      TMDS_Clk_p => TMDS_Clk_p,
      TMDS_Data_n(2 downto 0) => TMDS_Data_n(2 downto 0),
      TMDS_Data_p(2 downto 0) => TMDS_Data_p(2 downto 0),
      aRst => '0',
      aRst_n => aRst_n,
      vid_pData(23 downto 0) => vid_pData(23 downto 0),
      vid_pHSync => vid_pHSync,
      vid_pVDE => vid_pVDE,
      vid_pVSync => vid_pVSync
    );
end STRUCTURE;
