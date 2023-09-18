// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2022.1 (win64) Build 3526262 Mon Apr 18 15:48:16 MDT 2022
// Date        : Mon Jun 19 12:27:35 2023
// Host        : PCPHESE71 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               c:/Users/eorzes/cernbox/git/fanout_sma/src/ip/udp_bridge/clk_pcs_pma_62_5/clk_pcs_pma_62_5_stub.v
// Design      : clk_pcs_pma_62_5
// Purpose     : Stub declaration of top-level module interface
// Device      : xczu9eg-ffvb1156-2-e
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
module clk_pcs_pma_62_5(freerun_clk_62_5, locked, sys_clk_125)
/* synthesis syn_black_box black_box_pad_pin="freerun_clk_62_5,locked,sys_clk_125" */;
  output freerun_clk_62_5;
  output locked;
  input sys_clk_125;
endmodule
