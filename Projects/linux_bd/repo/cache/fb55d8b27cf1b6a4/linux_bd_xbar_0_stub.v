// Copyright 1986-2016 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2016.1 (win64) Build 1538259 Fri Apr  8 15:45:27 MDT 2016
// Date        : Fri Jun 03 18:29:26 2016
// Host        : WK73 running 64-bit Service Pack 1  (build 7601)
// Command     : write_verilog -force -mode synth_stub -rename_top _xilinx_top_ -prefix _xilinx_top__
//               linux_bd_xbar_0_stub.v
// Design      : linux_bd_xbar_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z020clg400-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "axi_crossbar_v2_1_9_axi_crossbar,Vivado 2016.1" *)
module _xilinx_top_(aclk, aresetn, s_axi_awaddr, s_axi_awprot, s_axi_awvalid, s_axi_awready, s_axi_wdata, s_axi_wstrb, s_axi_wvalid, s_axi_wready, s_axi_bresp, s_axi_bvalid, s_axi_bready, s_axi_araddr, s_axi_arprot, s_axi_arvalid, s_axi_arready, s_axi_rdata, s_axi_rresp, s_axi_rvalid, s_axi_rready, m_axi_awaddr, m_axi_awprot, m_axi_awvalid, m_axi_awready, m_axi_wdata, m_axi_wstrb, m_axi_wvalid, m_axi_wready, m_axi_bresp, m_axi_bvalid, m_axi_bready, m_axi_araddr, m_axi_arprot, m_axi_arvalid, m_axi_arready, m_axi_rdata, m_axi_rresp, m_axi_rvalid, m_axi_rready)
/* synthesis syn_black_box black_box_pad_pin="aclk,aresetn,s_axi_awaddr[31:0],s_axi_awprot[2:0],s_axi_awvalid[0:0],s_axi_awready[0:0],s_axi_wdata[31:0],s_axi_wstrb[3:0],s_axi_wvalid[0:0],s_axi_wready[0:0],s_axi_bresp[1:0],s_axi_bvalid[0:0],s_axi_bready[0:0],s_axi_araddr[31:0],s_axi_arprot[2:0],s_axi_arvalid[0:0],s_axi_arready[0:0],s_axi_rdata[31:0],s_axi_rresp[1:0],s_axi_rvalid[0:0],s_axi_rready[0:0],m_axi_awaddr[287:0],m_axi_awprot[26:0],m_axi_awvalid[8:0],m_axi_awready[8:0],m_axi_wdata[287:0],m_axi_wstrb[35:0],m_axi_wvalid[8:0],m_axi_wready[8:0],m_axi_bresp[17:0],m_axi_bvalid[8:0],m_axi_bready[8:0],m_axi_araddr[287:0],m_axi_arprot[26:0],m_axi_arvalid[8:0],m_axi_arready[8:0],m_axi_rdata[287:0],m_axi_rresp[17:0],m_axi_rvalid[8:0],m_axi_rready[8:0]" */;
  input aclk;
  input aresetn;
  input [31:0]s_axi_awaddr;
  input [2:0]s_axi_awprot;
  input [0:0]s_axi_awvalid;
  output [0:0]s_axi_awready;
  input [31:0]s_axi_wdata;
  input [3:0]s_axi_wstrb;
  input [0:0]s_axi_wvalid;
  output [0:0]s_axi_wready;
  output [1:0]s_axi_bresp;
  output [0:0]s_axi_bvalid;
  input [0:0]s_axi_bready;
  input [31:0]s_axi_araddr;
  input [2:0]s_axi_arprot;
  input [0:0]s_axi_arvalid;
  output [0:0]s_axi_arready;
  output [31:0]s_axi_rdata;
  output [1:0]s_axi_rresp;
  output [0:0]s_axi_rvalid;
  input [0:0]s_axi_rready;
  output [287:0]m_axi_awaddr;
  output [26:0]m_axi_awprot;
  output [8:0]m_axi_awvalid;
  input [8:0]m_axi_awready;
  output [287:0]m_axi_wdata;
  output [35:0]m_axi_wstrb;
  output [8:0]m_axi_wvalid;
  input [8:0]m_axi_wready;
  input [17:0]m_axi_bresp;
  input [8:0]m_axi_bvalid;
  output [8:0]m_axi_bready;
  output [287:0]m_axi_araddr;
  output [26:0]m_axi_arprot;
  output [8:0]m_axi_arvalid;
  input [8:0]m_axi_arready;
  input [287:0]m_axi_rdata;
  input [17:0]m_axi_rresp;
  input [8:0]m_axi_rvalid;
  output [8:0]m_axi_rready;
endmodule
