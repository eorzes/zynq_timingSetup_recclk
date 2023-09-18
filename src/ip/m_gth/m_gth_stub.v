// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2022.1 (win64) Build 3526262 Mon Apr 18 15:48:16 MDT 2022
// Date        : Mon Jun 19 12:27:49 2023
// Host        : PCPHESE71 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub c:/Users/eorzes/cernbox/git/fanout_sma/src/ip/m_gth/m_gth_stub.v
// Design      : m_gth
// Purpose     : Stub declaration of top-level module interface
// Device      : xczu9eg-ffvb1156-2-e
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "m_gth_gtwizard_top,Vivado 2022.1" *)
module m_gth(gtwiz_userclk_tx_active_in, 
  gtwiz_userclk_rx_active_in, gtwiz_buffbypass_rx_reset_in, 
  gtwiz_buffbypass_rx_start_user_in, gtwiz_buffbypass_rx_done_out, 
  gtwiz_buffbypass_rx_error_out, gtwiz_reset_clk_freerun_in, gtwiz_reset_all_in, 
  gtwiz_reset_tx_pll_and_datapath_in, gtwiz_reset_tx_datapath_in, 
  gtwiz_reset_rx_pll_and_datapath_in, gtwiz_reset_rx_datapath_in, 
  gtwiz_reset_qpll1lock_in, gtwiz_reset_rx_cdr_stable_out, gtwiz_reset_tx_done_out, 
  gtwiz_reset_rx_done_out, gtwiz_reset_qpll1reset_out, gtwiz_userdata_tx_in, 
  gtwiz_userdata_rx_out, cplllockdetclk_in, dmonitorclk_in, drpaddr_in, drpclk_in, drpdi_in, 
  drpen_in, drpwe_in, eyescanreset_in, gthrxn_in, gthrxp_in, loopback_in, qpll0clk_in, 
  qpll0refclk_in, qpll1clk_in, qpll1refclk_in, rx8b10ben_in, rxcommadeten_in, rxlpmgchold_in, 
  rxlpmgcovrden_in, rxlpmhfhold_in, rxlpmhfovrden_in, rxlpmlfhold_in, rxlpmlfklovrden_in, 
  rxlpmoshold_in, rxlpmosovrden_in, rxmcommaalignen_in, rxpcommaalignen_in, rxpolarity_in, 
  rxprbscntreset_in, rxprbssel_in, rxslide_in, rxusrclk_in, rxusrclk2_in, txpippmen_in, 
  txpippmovrden_in, txpippmpd_in, txpippmsel_in, txpippmstepsize_in, txpolarity_in, 
  txprbsforceerr_in, txprbssel_in, txusrclk_in, txusrclk2_in, cplllock_out, 
  cpllrefclklost_out, dmonitorout_out, drpdo_out, drprdy_out, gthtxn_out, gthtxp_out, 
  gtpowergood_out, rxbyteisaligned_out, rxbyterealign_out, rxcommadet_out, rxctrl0_out, 
  rxctrl1_out, rxctrl2_out, rxctrl3_out, rxoutclk_out, rxpmaresetdone_out, rxprbserr_out, 
  rxprbslocked_out, rxrecclkout_out, txbufstatus_out, txoutclk_out, txpmaresetdone_out)
/* synthesis syn_black_box black_box_pad_pin="gtwiz_userclk_tx_active_in[0:0],gtwiz_userclk_rx_active_in[0:0],gtwiz_buffbypass_rx_reset_in[0:0],gtwiz_buffbypass_rx_start_user_in[0:0],gtwiz_buffbypass_rx_done_out[0:0],gtwiz_buffbypass_rx_error_out[0:0],gtwiz_reset_clk_freerun_in[0:0],gtwiz_reset_all_in[0:0],gtwiz_reset_tx_pll_and_datapath_in[0:0],gtwiz_reset_tx_datapath_in[0:0],gtwiz_reset_rx_pll_and_datapath_in[0:0],gtwiz_reset_rx_datapath_in[0:0],gtwiz_reset_qpll1lock_in[0:0],gtwiz_reset_rx_cdr_stable_out[0:0],gtwiz_reset_tx_done_out[0:0],gtwiz_reset_rx_done_out[0:0],gtwiz_reset_qpll1reset_out[0:0],gtwiz_userdata_tx_in[39:0],gtwiz_userdata_rx_out[31:0],cplllockdetclk_in[0:0],dmonitorclk_in[0:0],drpaddr_in[9:0],drpclk_in[0:0],drpdi_in[15:0],drpen_in[0:0],drpwe_in[0:0],eyescanreset_in[0:0],gthrxn_in[0:0],gthrxp_in[0:0],loopback_in[2:0],qpll0clk_in[0:0],qpll0refclk_in[0:0],qpll1clk_in[0:0],qpll1refclk_in[0:0],rx8b10ben_in[0:0],rxcommadeten_in[0:0],rxlpmgchold_in[0:0],rxlpmgcovrden_in[0:0],rxlpmhfhold_in[0:0],rxlpmhfovrden_in[0:0],rxlpmlfhold_in[0:0],rxlpmlfklovrden_in[0:0],rxlpmoshold_in[0:0],rxlpmosovrden_in[0:0],rxmcommaalignen_in[0:0],rxpcommaalignen_in[0:0],rxpolarity_in[0:0],rxprbscntreset_in[0:0],rxprbssel_in[3:0],rxslide_in[0:0],rxusrclk_in[0:0],rxusrclk2_in[0:0],txpippmen_in[0:0],txpippmovrden_in[0:0],txpippmpd_in[0:0],txpippmsel_in[0:0],txpippmstepsize_in[4:0],txpolarity_in[0:0],txprbsforceerr_in[0:0],txprbssel_in[3:0],txusrclk_in[0:0],txusrclk2_in[0:0],cplllock_out[0:0],cpllrefclklost_out[0:0],dmonitorout_out[15:0],drpdo_out[15:0],drprdy_out[0:0],gthtxn_out[0:0],gthtxp_out[0:0],gtpowergood_out[0:0],rxbyteisaligned_out[0:0],rxbyterealign_out[0:0],rxcommadet_out[0:0],rxctrl0_out[15:0],rxctrl1_out[15:0],rxctrl2_out[7:0],rxctrl3_out[7:0],rxoutclk_out[0:0],rxpmaresetdone_out[0:0],rxprbserr_out[0:0],rxprbslocked_out[0:0],rxrecclkout_out[0:0],txbufstatus_out[1:0],txoutclk_out[0:0],txpmaresetdone_out[0:0]" */;
  input [0:0]gtwiz_userclk_tx_active_in;
  input [0:0]gtwiz_userclk_rx_active_in;
  input [0:0]gtwiz_buffbypass_rx_reset_in;
  input [0:0]gtwiz_buffbypass_rx_start_user_in;
  output [0:0]gtwiz_buffbypass_rx_done_out;
  output [0:0]gtwiz_buffbypass_rx_error_out;
  input [0:0]gtwiz_reset_clk_freerun_in;
  input [0:0]gtwiz_reset_all_in;
  input [0:0]gtwiz_reset_tx_pll_and_datapath_in;
  input [0:0]gtwiz_reset_tx_datapath_in;
  input [0:0]gtwiz_reset_rx_pll_and_datapath_in;
  input [0:0]gtwiz_reset_rx_datapath_in;
  input [0:0]gtwiz_reset_qpll1lock_in;
  output [0:0]gtwiz_reset_rx_cdr_stable_out;
  output [0:0]gtwiz_reset_tx_done_out;
  output [0:0]gtwiz_reset_rx_done_out;
  output [0:0]gtwiz_reset_qpll1reset_out;
  input [39:0]gtwiz_userdata_tx_in;
  output [31:0]gtwiz_userdata_rx_out;
  input [0:0]cplllockdetclk_in;
  input [0:0]dmonitorclk_in;
  input [9:0]drpaddr_in;
  input [0:0]drpclk_in;
  input [15:0]drpdi_in;
  input [0:0]drpen_in;
  input [0:0]drpwe_in;
  input [0:0]eyescanreset_in;
  input [0:0]gthrxn_in;
  input [0:0]gthrxp_in;
  input [2:0]loopback_in;
  input [0:0]qpll0clk_in;
  input [0:0]qpll0refclk_in;
  input [0:0]qpll1clk_in;
  input [0:0]qpll1refclk_in;
  input [0:0]rx8b10ben_in;
  input [0:0]rxcommadeten_in;
  input [0:0]rxlpmgchold_in;
  input [0:0]rxlpmgcovrden_in;
  input [0:0]rxlpmhfhold_in;
  input [0:0]rxlpmhfovrden_in;
  input [0:0]rxlpmlfhold_in;
  input [0:0]rxlpmlfklovrden_in;
  input [0:0]rxlpmoshold_in;
  input [0:0]rxlpmosovrden_in;
  input [0:0]rxmcommaalignen_in;
  input [0:0]rxpcommaalignen_in;
  input [0:0]rxpolarity_in;
  input [0:0]rxprbscntreset_in;
  input [3:0]rxprbssel_in;
  input [0:0]rxslide_in;
  input [0:0]rxusrclk_in;
  input [0:0]rxusrclk2_in;
  input [0:0]txpippmen_in;
  input [0:0]txpippmovrden_in;
  input [0:0]txpippmpd_in;
  input [0:0]txpippmsel_in;
  input [4:0]txpippmstepsize_in;
  input [0:0]txpolarity_in;
  input [0:0]txprbsforceerr_in;
  input [3:0]txprbssel_in;
  input [0:0]txusrclk_in;
  input [0:0]txusrclk2_in;
  output [0:0]cplllock_out;
  output [0:0]cpllrefclklost_out;
  output [15:0]dmonitorout_out;
  output [15:0]drpdo_out;
  output [0:0]drprdy_out;
  output [0:0]gthtxn_out;
  output [0:0]gthtxp_out;
  output [0:0]gtpowergood_out;
  output [0:0]rxbyteisaligned_out;
  output [0:0]rxbyterealign_out;
  output [0:0]rxcommadet_out;
  output [15:0]rxctrl0_out;
  output [15:0]rxctrl1_out;
  output [7:0]rxctrl2_out;
  output [7:0]rxctrl3_out;
  output [0:0]rxoutclk_out;
  output [0:0]rxpmaresetdone_out;
  output [0:0]rxprbserr_out;
  output [0:0]rxprbslocked_out;
  output [0:0]rxrecclkout_out;
  output [1:0]txbufstatus_out;
  output [0:0]txoutclk_out;
  output [0:0]txpmaresetdone_out;
endmodule
