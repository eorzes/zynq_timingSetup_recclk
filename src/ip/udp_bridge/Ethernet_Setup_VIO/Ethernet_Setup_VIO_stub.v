// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2022.1 (win64) Build 3526262 Mon Apr 18 15:48:16 MDT 2022
// Date        : Mon Jun 19 12:30:47 2023
// Host        : PCPHESE71 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               c:/Users/eorzes/cernbox/git/fanout_sma/src/ip/udp_bridge/Ethernet_Setup_VIO/Ethernet_Setup_VIO_stub.v
// Design      : Ethernet_Setup_VIO
// Purpose     : Stub declaration of top-level module interface
// Device      : xczu9eg-ffvb1156-2-e
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "vio,Vivado 2022.1" *)
module Ethernet_Setup_VIO(clk, probe_out0, probe_out1, probe_out2, 
  probe_out3, probe_out4, probe_out5)
/* synthesis syn_black_box black_box_pad_pin="clk,probe_out0[47:0],probe_out1[31:0],probe_out2[15:0],probe_out3[47:0],probe_out4[31:0],probe_out5[15:0]" */;
  input clk;
  output [47:0]probe_out0;
  output [31:0]probe_out1;
  output [15:0]probe_out2;
  output [47:0]probe_out3;
  output [31:0]probe_out4;
  output [15:0]probe_out5;
endmodule
