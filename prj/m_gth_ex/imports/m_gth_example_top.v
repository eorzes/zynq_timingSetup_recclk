//------------------------------------------------------------------------------
//  (c) Copyright 2013-2018 Xilinx, Inc. All rights reserved.
//
//  This file contains confidential and proprietary information
//  of Xilinx, Inc. and is protected under U.S. and
//  international copyright and other intellectual property
//  laws.
//
//  DISCLAIMER
//  This disclaimer is not a license and does not grant any
//  rights to the materials distributed herewith. Except as
//  otherwise provided in a valid license issued to you by
//  Xilinx, and to the maximum extent permitted by applicable
//  law: (1) THESE MATERIALS ARE MADE AVAILABLE "AS IS" AND
//  WITH ALL FAULTS, AND XILINX HEREBY DISCLAIMS ALL WARRANTIES
//  AND CONDITIONS, EXPRESS, IMPLIED, OR STATUTORY, INCLUDING
//  BUT NOT LIMITED TO WARRANTIES OF MERCHANTABILITY, NON-
//  INFRINGEMENT, OR FITNESS FOR ANY PARTICULAR PURPOSE; and
//  (2) Xilinx shall not be liable (whether in contract or tort,
//  including negligence, or under any other theory of
//  liability) for any loss or damage of any kind or nature
//  related to, arising under or in connection with these
//  materials, including for any direct, or any indirect,
//  special, incidental, or consequential loss or damage
//  (including loss of data, profits, goodwill, or any type of
//  loss or damage suffered as a result of any action brought
//  by a third party) even if such damage or loss was
//  reasonably foreseeable or Xilinx had been advised of the
//  possibility of the same.
//
//  CRITICAL APPLICATIONS
//  Xilinx products are not designed or intended to be fail-
//  safe, or for use in any application requiring fail-safe
//  performance, such as life-support or safety devices or
//  systems, Class III medical devices, nuclear facilities,
//  applications related to the deployment of airbags, or any
//  other applications that could lead to death, personal
//  injury, or severe property or environmental damage
//  (individually and collectively, "Critical
//  Applications"). Customer assumes the sole risk and
//  liability of any use of Xilinx products in Critical
//  Applications, subject only to applicable laws and
//  regulations governing limitations on product liability.
//
//  THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS
//  PART OF THIS FILE AT ALL TIMES.
//------------------------------------------------------------------------------


`timescale 1ps/1ps

// =====================================================================================================================
// This example design top module instantiates the example design wrapper; slices vectored ports for per-channel
// assignment; and instantiates example resources such as buffers, pattern generators, and pattern checkers for core
// demonstration purposes
// =====================================================================================================================

module m_gth_example_top (

  // Differential reference clock inputs
  input  wire mgtrefclk1_x0y2_p,
  input  wire mgtrefclk1_x0y2_n,

  // Differential recovered clock outputs
  output wire rxrecclkout_chx0y12_p,
  output wire rxrecclkout_chx0y12_n,

  // Serial data ports for transceiver channel 0
  input  wire ch0_gthrxn_in,
  input  wire ch0_gthrxp_in,
  output wire ch0_gthtxn_out,
  output wire ch0_gthtxp_out,

  // User-provided ports for reset helper block(s)
  input  wire hb_gtwiz_reset_clk_freerun_in,
  input  wire hb_gtwiz_reset_all_in,

  // PRBS-based link status ports
  input  wire link_down_latched_reset_in,
  output wire link_status_out,
  output reg  link_down_latched_out = 1'b1

);


  // ===================================================================================================================
  // PER-CHANNEL SIGNAL ASSIGNMENTS
  // ===================================================================================================================

  // The core and example design wrapper vectorize ports across all enabled transceiver channel and common instances for
  // simplicity and compactness. This example design top module assigns slices of each vector to individual, per-channel
  // signal vectors for use if desired. Signals which connect to helper blocks are prefixed "hb#", signals which connect
  // to transceiver common primitives are prefixed "cm#", and signals which connect to transceiver channel primitives
  // are prefixed "ch#", where "#" is the sequential resource number.

  //--------------------------------------------------------------------------------------------------------------------
  wire [0:0] gthrxn_int;
  assign gthrxn_int[0:0] = ch0_gthrxn_in;

  //--------------------------------------------------------------------------------------------------------------------
  wire [0:0] gthrxp_int;
  assign gthrxp_int[0:0] = ch0_gthrxp_in;

  //--------------------------------------------------------------------------------------------------------------------
  wire [0:0] gthtxn_int;
  assign ch0_gthtxn_out = gthtxn_int[0:0];

  //--------------------------------------------------------------------------------------------------------------------
  wire [0:0] gthtxp_int;
  assign ch0_gthtxp_out = gthtxp_int[0:0];

  //--------------------------------------------------------------------------------------------------------------------
  wire [0:0] gtwiz_userclk_tx_reset_int;
  wire [0:0] hb0_gtwiz_userclk_tx_reset_int;
  assign gtwiz_userclk_tx_reset_int[0:0] = hb0_gtwiz_userclk_tx_reset_int;

  //--------------------------------------------------------------------------------------------------------------------
  wire [0:0] gtwiz_userclk_tx_srcclk_int;
  wire [0:0] hb0_gtwiz_userclk_tx_srcclk_int;
  assign hb0_gtwiz_userclk_tx_srcclk_int = gtwiz_userclk_tx_srcclk_int[0:0];

  //--------------------------------------------------------------------------------------------------------------------
  wire [0:0] gtwiz_userclk_tx_usrclk_int;
  wire [0:0] hb0_gtwiz_userclk_tx_usrclk_int;
  assign hb0_gtwiz_userclk_tx_usrclk_int = gtwiz_userclk_tx_usrclk_int[0:0];

  //--------------------------------------------------------------------------------------------------------------------
  wire [0:0] gtwiz_userclk_tx_usrclk2_int;
  wire [0:0] hb0_gtwiz_userclk_tx_usrclk2_int;
  assign hb0_gtwiz_userclk_tx_usrclk2_int = gtwiz_userclk_tx_usrclk2_int[0:0];

  //--------------------------------------------------------------------------------------------------------------------
  wire [0:0] gtwiz_userclk_tx_active_int;
  wire [0:0] hb0_gtwiz_userclk_tx_active_int;
  assign hb0_gtwiz_userclk_tx_active_int = gtwiz_userclk_tx_active_int[0:0];

  //--------------------------------------------------------------------------------------------------------------------
  wire [0:0] gtwiz_userclk_rx_reset_int;
  wire [0:0] hb0_gtwiz_userclk_rx_reset_int;
  assign gtwiz_userclk_rx_reset_int[0:0] = hb0_gtwiz_userclk_rx_reset_int;

  //--------------------------------------------------------------------------------------------------------------------
  wire [0:0] gtwiz_userclk_rx_srcclk_int;
  wire [0:0] hb0_gtwiz_userclk_rx_srcclk_int;
  assign hb0_gtwiz_userclk_rx_srcclk_int = gtwiz_userclk_rx_srcclk_int[0:0];

  //--------------------------------------------------------------------------------------------------------------------
  wire [0:0] gtwiz_userclk_rx_usrclk_int;
  wire [0:0] hb0_gtwiz_userclk_rx_usrclk_int;
  assign hb0_gtwiz_userclk_rx_usrclk_int = gtwiz_userclk_rx_usrclk_int[0:0];

  //--------------------------------------------------------------------------------------------------------------------
  wire [0:0] gtwiz_userclk_rx_usrclk2_int;
  wire [0:0] hb0_gtwiz_userclk_rx_usrclk2_int;
  assign hb0_gtwiz_userclk_rx_usrclk2_int = gtwiz_userclk_rx_usrclk2_int[0:0];

  //--------------------------------------------------------------------------------------------------------------------
  wire [0:0] gtwiz_userclk_rx_active_int;
  wire [0:0] hb0_gtwiz_userclk_rx_active_int;
  assign hb0_gtwiz_userclk_rx_active_int = gtwiz_userclk_rx_active_int[0:0];

  //--------------------------------------------------------------------------------------------------------------------
  wire [0:0] gtwiz_buffbypass_rx_reset_int;
  wire [0:0] hb0_gtwiz_buffbypass_rx_reset_int;
  assign gtwiz_buffbypass_rx_reset_int[0:0] = hb0_gtwiz_buffbypass_rx_reset_int;

  //--------------------------------------------------------------------------------------------------------------------
  wire [0:0] gtwiz_buffbypass_rx_start_user_int;
  wire [0:0] hb0_gtwiz_buffbypass_rx_start_user_int = 1'b0;
  assign gtwiz_buffbypass_rx_start_user_int[0:0] = hb0_gtwiz_buffbypass_rx_start_user_int;

  //--------------------------------------------------------------------------------------------------------------------
  wire [0:0] gtwiz_buffbypass_rx_done_int;
  wire [0:0] hb0_gtwiz_buffbypass_rx_done_int;
  assign hb0_gtwiz_buffbypass_rx_done_int = gtwiz_buffbypass_rx_done_int[0:0];

  //--------------------------------------------------------------------------------------------------------------------
  wire [0:0] gtwiz_buffbypass_rx_error_int;
  wire [0:0] hb0_gtwiz_buffbypass_rx_error_int;
  assign hb0_gtwiz_buffbypass_rx_error_int = gtwiz_buffbypass_rx_error_int[0:0];

  //--------------------------------------------------------------------------------------------------------------------
  wire [0:0] gtwiz_reset_clk_freerun_int;
  wire [0:0] hb0_gtwiz_reset_clk_freerun_int = 1'b0;
  assign gtwiz_reset_clk_freerun_int[0:0] = hb0_gtwiz_reset_clk_freerun_int;

  //--------------------------------------------------------------------------------------------------------------------
  wire [0:0] gtwiz_reset_all_int;
  wire [0:0] hb0_gtwiz_reset_all_int = 1'b0;
  assign gtwiz_reset_all_int[0:0] = hb0_gtwiz_reset_all_int;

  //--------------------------------------------------------------------------------------------------------------------
  wire [0:0] gtwiz_reset_tx_pll_and_datapath_int;
  wire [0:0] hb0_gtwiz_reset_tx_pll_and_datapath_int;
  assign gtwiz_reset_tx_pll_and_datapath_int[0:0] = hb0_gtwiz_reset_tx_pll_and_datapath_int;

  //--------------------------------------------------------------------------------------------------------------------
  wire [0:0] gtwiz_reset_tx_datapath_int;
  wire [0:0] hb0_gtwiz_reset_tx_datapath_int;
  assign gtwiz_reset_tx_datapath_int[0:0] = hb0_gtwiz_reset_tx_datapath_int;

  //--------------------------------------------------------------------------------------------------------------------
  wire [0:0] gtwiz_reset_rx_pll_and_datapath_int;
  wire [0:0] hb0_gtwiz_reset_rx_pll_and_datapath_int = 1'b0;
  assign gtwiz_reset_rx_pll_and_datapath_int[0:0] = hb0_gtwiz_reset_rx_pll_and_datapath_int;

  //--------------------------------------------------------------------------------------------------------------------
  wire [0:0] gtwiz_reset_rx_datapath_int;
  wire [0:0] hb0_gtwiz_reset_rx_datapath_int = 1'b0;
  assign gtwiz_reset_rx_datapath_int[0:0] = hb0_gtwiz_reset_rx_datapath_int;

  //--------------------------------------------------------------------------------------------------------------------
  wire [0:0] gtwiz_reset_rx_cdr_stable_int;
  wire [0:0] hb0_gtwiz_reset_rx_cdr_stable_int;
  assign hb0_gtwiz_reset_rx_cdr_stable_int = gtwiz_reset_rx_cdr_stable_int[0:0];

  //--------------------------------------------------------------------------------------------------------------------
  wire [0:0] gtwiz_reset_tx_done_int;
  wire [0:0] hb0_gtwiz_reset_tx_done_int;
  assign hb0_gtwiz_reset_tx_done_int = gtwiz_reset_tx_done_int[0:0];

  //--------------------------------------------------------------------------------------------------------------------
  wire [0:0] gtwiz_reset_rx_done_int;
  wire [0:0] hb0_gtwiz_reset_rx_done_int;
  assign hb0_gtwiz_reset_rx_done_int = gtwiz_reset_rx_done_int[0:0];

  //--------------------------------------------------------------------------------------------------------------------
  wire [39:0] gtwiz_userdata_tx_int;
  wire [39:0] hb0_gtwiz_userdata_tx_int;
  assign gtwiz_userdata_tx_int[39:0] = hb0_gtwiz_userdata_tx_int;

  //--------------------------------------------------------------------------------------------------------------------
  wire [31:0] gtwiz_userdata_rx_int;
  wire [31:0] hb0_gtwiz_userdata_rx_int;
  assign hb0_gtwiz_userdata_rx_int = gtwiz_userdata_rx_int[31:0];

  //--------------------------------------------------------------------------------------------------------------------
  wire [0:0] gtrefclk01_int;
  wire [0:0] cm0_gtrefclk01_int;
  assign gtrefclk01_int[0:0] = cm0_gtrefclk01_int;

  //--------------------------------------------------------------------------------------------------------------------
  wire [0:0] qpll0outclk_int;
  wire [0:0] cm0_qpll0outclk_int;
  assign cm0_qpll0outclk_int = qpll0outclk_int[0:0];

  //--------------------------------------------------------------------------------------------------------------------
  wire [0:0] qpll0outrefclk_int;
  wire [0:0] cm0_qpll0outrefclk_int;
  assign cm0_qpll0outrefclk_int = qpll0outrefclk_int[0:0];

  //--------------------------------------------------------------------------------------------------------------------
  wire [0:0] qpll1outclk_int;
  wire [0:0] cm0_qpll1outclk_int;
  assign cm0_qpll1outclk_int = qpll1outclk_int[0:0];

  //--------------------------------------------------------------------------------------------------------------------
  wire [0:0] qpll1outrefclk_int;
  wire [0:0] cm0_qpll1outrefclk_int;
  assign cm0_qpll1outrefclk_int = qpll1outrefclk_int[0:0];

  //--------------------------------------------------------------------------------------------------------------------
  wire [0:0] cplllockdetclk_int;
  wire [0:0] ch0_cplllockdetclk_int = 1'b0;
  assign cplllockdetclk_int[0:0] = ch0_cplllockdetclk_int;

  //--------------------------------------------------------------------------------------------------------------------
  wire [0:0] dmonitorclk_int;
  wire [0:0] ch0_dmonitorclk_int = 1'b0;
  assign dmonitorclk_int[0:0] = ch0_dmonitorclk_int;

  //--------------------------------------------------------------------------------------------------------------------
  wire [9:0] drpaddr_int;
  wire [9:0] ch0_drpaddr_int = 10'b0000000000;
  assign drpaddr_int[9:0] = ch0_drpaddr_int;

  //--------------------------------------------------------------------------------------------------------------------
  wire [0:0] drpclk_int;
  wire [0:0] ch0_drpclk_int = 1'b0;
  assign drpclk_int[0:0] = ch0_drpclk_int;

  //--------------------------------------------------------------------------------------------------------------------
  wire [15:0] drpdi_int;
  wire [15:0] ch0_drpdi_int = 16'b0000000000000000;
  assign drpdi_int[15:0] = ch0_drpdi_int;

  //--------------------------------------------------------------------------------------------------------------------
  wire [0:0] drpen_int;
  wire [0:0] ch0_drpen_int = 1'b0;
  assign drpen_int[0:0] = ch0_drpen_int;

  //--------------------------------------------------------------------------------------------------------------------
  wire [0:0] drpwe_int;
  wire [0:0] ch0_drpwe_int = 1'b0;
  assign drpwe_int[0:0] = ch0_drpwe_int;

  //--------------------------------------------------------------------------------------------------------------------
  wire [0:0] eyescanreset_int;
  wire [0:0] ch0_eyescanreset_int = 1'b0;
  assign eyescanreset_int[0:0] = ch0_eyescanreset_int;

  //--------------------------------------------------------------------------------------------------------------------
  wire [2:0] loopback_int;
  // This vector is not sliced because it is directly assigned in a debug core instance below

  //--------------------------------------------------------------------------------------------------------------------
  wire [0:0] rx8b10ben_int;
  wire [0:0] ch0_rx8b10ben_int = 1'b1;
  assign rx8b10ben_int[0:0] = ch0_rx8b10ben_int;

  //--------------------------------------------------------------------------------------------------------------------
  wire [0:0] rxcommadeten_int;
  wire [0:0] ch0_rxcommadeten_int = 1'b1;
  assign rxcommadeten_int[0:0] = ch0_rxcommadeten_int;

  //--------------------------------------------------------------------------------------------------------------------
  wire [0:0] rxlpmgchold_int;
  wire [0:0] ch0_rxlpmgchold_int = 1'b0;
  assign rxlpmgchold_int[0:0] = ch0_rxlpmgchold_int;

  //--------------------------------------------------------------------------------------------------------------------
  wire [0:0] rxlpmgcovrden_int;
  wire [0:0] ch0_rxlpmgcovrden_int = 1'b0;
  assign rxlpmgcovrden_int[0:0] = ch0_rxlpmgcovrden_int;

  //--------------------------------------------------------------------------------------------------------------------
  wire [0:0] rxlpmhfhold_int;
  wire [0:0] ch0_rxlpmhfhold_int = 1'b0;
  assign rxlpmhfhold_int[0:0] = ch0_rxlpmhfhold_int;

  //--------------------------------------------------------------------------------------------------------------------
  wire [0:0] rxlpmhfovrden_int;
  wire [0:0] ch0_rxlpmhfovrden_int = 1'b0;
  assign rxlpmhfovrden_int[0:0] = ch0_rxlpmhfovrden_int;

  //--------------------------------------------------------------------------------------------------------------------
  wire [0:0] rxlpmlfhold_int;
  wire [0:0] ch0_rxlpmlfhold_int = 1'b0;
  assign rxlpmlfhold_int[0:0] = ch0_rxlpmlfhold_int;

  //--------------------------------------------------------------------------------------------------------------------
  wire [0:0] rxlpmlfklovrden_int;
  wire [0:0] ch0_rxlpmlfklovrden_int = 1'b0;
  assign rxlpmlfklovrden_int[0:0] = ch0_rxlpmlfklovrden_int;

  //--------------------------------------------------------------------------------------------------------------------
  wire [0:0] rxlpmoshold_int;
  wire [0:0] ch0_rxlpmoshold_int = 1'b0;
  assign rxlpmoshold_int[0:0] = ch0_rxlpmoshold_int;

  //--------------------------------------------------------------------------------------------------------------------
  wire [0:0] rxlpmosovrden_int;
  wire [0:0] ch0_rxlpmosovrden_int = 1'b0;
  assign rxlpmosovrden_int[0:0] = ch0_rxlpmosovrden_int;

  //--------------------------------------------------------------------------------------------------------------------
  wire [0:0] rxmcommaalignen_int;
  wire [0:0] ch0_rxmcommaalignen_int = 1'b1;
  assign rxmcommaalignen_int[0:0] = ch0_rxmcommaalignen_int;

  //--------------------------------------------------------------------------------------------------------------------
  wire [0:0] rxpcommaalignen_int;
  wire [0:0] ch0_rxpcommaalignen_int = 1'b1;
  assign rxpcommaalignen_int[0:0] = ch0_rxpcommaalignen_int;

  //--------------------------------------------------------------------------------------------------------------------
  wire [0:0] rxpolarity_int;
  wire [0:0] ch0_rxpolarity_int = 1'b0;
  assign rxpolarity_int[0:0] = ch0_rxpolarity_int;

  //--------------------------------------------------------------------------------------------------------------------
  wire [0:0] rxprbscntreset_int;
  // This vector is not sliced because it is directly assigned in a debug core instance below

  //--------------------------------------------------------------------------------------------------------------------
  wire [3:0] rxprbssel_int;
  // This vector is not sliced because it is directly assigned in a debug core instance below

  //--------------------------------------------------------------------------------------------------------------------
  wire [0:0] rxslide_int;
  wire [0:0] ch0_rxslide_int = 1'b0;
  assign rxslide_int[0:0] = ch0_rxslide_int;

  //--------------------------------------------------------------------------------------------------------------------
  wire [0:0] txpippmen_int;
  wire [0:0] ch0_txpippmen_int = 1'b0;
  assign txpippmen_int[0:0] = ch0_txpippmen_int;

  //--------------------------------------------------------------------------------------------------------------------
  wire [0:0] txpippmovrden_int;
  wire [0:0] ch0_txpippmovrden_int = 1'b0;
  assign txpippmovrden_int[0:0] = ch0_txpippmovrden_int;

  //--------------------------------------------------------------------------------------------------------------------
  wire [0:0] txpippmpd_int;
  wire [0:0] ch0_txpippmpd_int = 1'b0;
  assign txpippmpd_int[0:0] = ch0_txpippmpd_int;

  //--------------------------------------------------------------------------------------------------------------------
  wire [0:0] txpippmsel_int;
  wire [0:0] ch0_txpippmsel_int = 1'b0;
  assign txpippmsel_int[0:0] = ch0_txpippmsel_int;

  //--------------------------------------------------------------------------------------------------------------------
  wire [4:0] txpippmstepsize_int;
  wire [4:0] ch0_txpippmstepsize_int = 5'b00000;
  assign txpippmstepsize_int[4:0] = ch0_txpippmstepsize_int;

  //--------------------------------------------------------------------------------------------------------------------
  wire [0:0] txpolarity_int;
  wire [0:0] ch0_txpolarity_int = 1'b0;
  assign txpolarity_int[0:0] = ch0_txpolarity_int;

  //--------------------------------------------------------------------------------------------------------------------
  wire [0:0] txprbsforceerr_int;
  // This vector is not sliced because it is directly assigned in a debug core instance below

  //--------------------------------------------------------------------------------------------------------------------
  wire [3:0] txprbssel_int;
  // This vector is not sliced because it is directly assigned in a debug core instance below

  //--------------------------------------------------------------------------------------------------------------------
  wire [0:0] cplllock_int;
  wire [0:0] ch0_cplllock_int;
  assign ch0_cplllock_int = cplllock_int[0:0];

  //--------------------------------------------------------------------------------------------------------------------
  wire [0:0] cpllrefclklost_int;
  wire [0:0] ch0_cpllrefclklost_int;
  assign ch0_cpllrefclklost_int = cpllrefclklost_int[0:0];

  //--------------------------------------------------------------------------------------------------------------------
  wire [15:0] dmonitorout_int;
  wire [15:0] ch0_dmonitorout_int;
  assign ch0_dmonitorout_int = dmonitorout_int[15:0];

  //--------------------------------------------------------------------------------------------------------------------
  wire [15:0] drpdo_int;
  wire [15:0] ch0_drpdo_int;
  assign ch0_drpdo_int = drpdo_int[15:0];

  //--------------------------------------------------------------------------------------------------------------------
  wire [0:0] drprdy_int;
  wire [0:0] ch0_drprdy_int;
  assign ch0_drprdy_int = drprdy_int[0:0];

  //--------------------------------------------------------------------------------------------------------------------
  wire [0:0] gtpowergood_int;
  wire [0:0] ch0_gtpowergood_int;
  assign ch0_gtpowergood_int = gtpowergood_int[0:0];

  //--------------------------------------------------------------------------------------------------------------------
  wire [0:0] rxbyteisaligned_int;
  wire [0:0] ch0_rxbyteisaligned_int;
  assign ch0_rxbyteisaligned_int = rxbyteisaligned_int[0:0];

  //--------------------------------------------------------------------------------------------------------------------
  wire [0:0] rxbyterealign_int;
  wire [0:0] ch0_rxbyterealign_int;
  assign ch0_rxbyterealign_int = rxbyterealign_int[0:0];

  //--------------------------------------------------------------------------------------------------------------------
  wire [0:0] rxcommadet_int;
  wire [0:0] ch0_rxcommadet_int;
  assign ch0_rxcommadet_int = rxcommadet_int[0:0];

  //--------------------------------------------------------------------------------------------------------------------
  wire [15:0] rxctrl0_int;
  wire [15:0] ch0_rxctrl0_int;
  assign ch0_rxctrl0_int = rxctrl0_int[15:0];

  //--------------------------------------------------------------------------------------------------------------------
  wire [15:0] rxctrl1_int;
  wire [15:0] ch0_rxctrl1_int;
  assign ch0_rxctrl1_int = rxctrl1_int[15:0];

  //--------------------------------------------------------------------------------------------------------------------
  wire [7:0] rxctrl2_int;
  wire [7:0] ch0_rxctrl2_int;
  assign ch0_rxctrl2_int = rxctrl2_int[7:0];

  //--------------------------------------------------------------------------------------------------------------------
  wire [7:0] rxctrl3_int;
  wire [7:0] ch0_rxctrl3_int;
  assign ch0_rxctrl3_int = rxctrl3_int[7:0];

  //--------------------------------------------------------------------------------------------------------------------
  wire [0:0] rxpmaresetdone_int;
  wire [0:0] ch0_rxpmaresetdone_int;
  assign ch0_rxpmaresetdone_int = rxpmaresetdone_int[0:0];

  //--------------------------------------------------------------------------------------------------------------------
  wire [0:0] rxprbserr_int;
  wire [0:0] ch0_rxprbserr_int;
  assign ch0_rxprbserr_int = rxprbserr_int[0:0];

  //--------------------------------------------------------------------------------------------------------------------
  wire [0:0] rxprbslocked_int;
  wire [0:0] ch0_rxprbslocked_int;
  assign ch0_rxprbslocked_int = rxprbslocked_int[0:0];

  //--------------------------------------------------------------------------------------------------------------------
  wire [0:0] rxrecclkout_int;
  wire [0:0] ch0_rxrecclkout_int;
  assign ch0_rxrecclkout_int = rxrecclkout_int[0:0];

  //--------------------------------------------------------------------------------------------------------------------
  wire [1:0] txbufstatus_int;
  wire [1:0] ch0_txbufstatus_int;
  assign ch0_txbufstatus_int = txbufstatus_int[1:0];

  //--------------------------------------------------------------------------------------------------------------------
  wire [0:0] txpmaresetdone_int;
  wire [0:0] ch0_txpmaresetdone_int;
  assign ch0_txpmaresetdone_int = txpmaresetdone_int[0:0];


  // ===================================================================================================================
  // BUFFERS
  // ===================================================================================================================

  // Buffer the hb_gtwiz_reset_all_in input and logically combine it with the internal signal from the example
  // initialization block as well as the VIO-sourced reset
  wire hb_gtwiz_reset_all_vio_int;
  wire hb_gtwiz_reset_all_buf_int;
  wire hb_gtwiz_reset_all_init_int;
  wire hb_gtwiz_reset_all_int;

  IBUF ibuf_hb_gtwiz_reset_all_inst (
    .I (hb_gtwiz_reset_all_in),
    .O (hb_gtwiz_reset_all_buf_int)
  );

  assign hb_gtwiz_reset_all_int = hb_gtwiz_reset_all_buf_int || hb_gtwiz_reset_all_init_int || hb_gtwiz_reset_all_vio_int;

  // Globally buffer the free-running input clock
  wire hb_gtwiz_reset_clk_freerun_buf_int;

  BUFG bufg_clk_freerun_inst (
    .I (hb_gtwiz_reset_clk_freerun_in),
    .O (hb_gtwiz_reset_clk_freerun_buf_int)
  );

  // Instantiate a differential reference clock buffer for each reference clock differential pair in this configuration,
  // and assign the single-ended output of each differential reference clock buffer to the appropriate PLL input signal

  // Differential reference clock buffer for MGTREFCLK1_X0Y2
  wire mgtrefclk1_x0y2_int;

  IBUFDS_GTE4 #(
    .REFCLK_EN_TX_PATH  (1'b0),
    .REFCLK_HROW_CK_SEL (2'b00),
    .REFCLK_ICNTL_RX    (2'b00)
  ) IBUFDS_GTE4_MGTREFCLK1_X0Y2_INST (
    .I     (mgtrefclk1_x0y2_p),
    .IB    (mgtrefclk1_x0y2_n),
    .CEB   (1'b0),
    .O     (mgtrefclk1_x0y2_int),
    .ODIV2 ()
  );

  assign cm0_gtrefclk01_int = mgtrefclk1_x0y2_int;

  // Instantiate a differential recovered clock output buffer for each channel which drives out its recovered clock

  // Differential recovered clock buffer for channel X0Y12
  OBUFDS_GTE4 #(
    .REFCLK_EN_TX_PATH (1'b1),
    .REFCLK_ICNTL_TX   (5'b00111)
  ) OBUFDS_GTE4_CHX0Y12_INST (
    .O     (rxrecclkout_chx0y12_p),
    .OB    (rxrecclkout_chx0y12_n),
    .CEB   (1'b0),
    .I     (ch0_rxrecclkout_int)
  );


  // ===================================================================================================================
  // USER CLOCKING RESETS
  // ===================================================================================================================

  // The TX user clocking helper block should be held in reset until the clock source of that block is known to be
  // stable. The following assignment is an example of how that stability can be determined, based on the selected TX
  // user clock source. Replace the assignment with the appropriate signal or logic to achieve that behavior as needed.
  assign hb0_gtwiz_userclk_tx_reset_int = ~(&txpmaresetdone_int);

  // The RX user clocking helper block should be held in reset until the clock source of that block is known to be
  // stable. The following assignment is an example of how that stability can be determined, based on the selected RX
  // user clock source. Replace the assignment with the appropriate signal or logic to achieve that behavior as needed.
  assign hb0_gtwiz_userclk_rx_reset_int = ~(&rxpmaresetdone_int);


  // ===================================================================================================================
  // BUFFER BYPASS CONTROLLER RESETS
  // ===================================================================================================================

  // The RX buffer bypass controller helper block should be held in reset until the RX user clocking network helper
  // block which drives it is active
  (* DONT_TOUCH = "TRUE" *)
  m_gth_example_reset_synchronizer reset_synchronizer_gtwiz_buffbypass_rx_reset_inst (
    .clk_in  (hb0_gtwiz_userclk_rx_usrclk2_int),
    .rst_in  (~hb0_gtwiz_userclk_rx_active_int),
    .rst_out (hb0_gtwiz_buffbypass_rx_reset_int)
  );


  // ===================================================================================================================
  // PRBS STIMULUS, CHECKING, AND LINK MANAGEMENT
  // ===================================================================================================================

  // PRBS stimulus
  // -------------------------------------------------------------------------------------------------------------------

  // PRBS-based data stimulus module for transceiver channel 0
  (* DONT_TOUCH = "TRUE" *)
  m_gth_example_stimulus_raw example_stimulus_inst0 (
    .gtwiz_reset_all_in          (hb_gtwiz_reset_all_int || ~hb0_gtwiz_reset_rx_done_int || ~hb0_gtwiz_buffbypass_rx_done_int),
    .gtwiz_userclk_tx_usrclk2_in (hb0_gtwiz_userclk_tx_usrclk2_int),
    .gtwiz_userclk_tx_active_in  (hb0_gtwiz_userclk_tx_active_int),
    .txdata_out                  (hb0_gtwiz_userdata_tx_int)
  );

  // PRBS checking
  // -------------------------------------------------------------------------------------------------------------------

  // Declare a signal vector of PRBS match indicators, with one indicator bit per transceiver channel
  wire [0:0] prbs_match_int;

  // PRBS-based data checking module for transceiver channel 0
  m_gth_example_checking_8b10b example_checking_inst0 (
    .gtwiz_reset_all_in          (hb_gtwiz_reset_all_int || ~hb0_gtwiz_reset_rx_done_int || ~hb0_gtwiz_buffbypass_rx_done_int),
    .gtwiz_userclk_rx_usrclk2_in (hb0_gtwiz_userclk_rx_usrclk2_int),
    .gtwiz_userclk_rx_active_in  (hb0_gtwiz_userclk_rx_active_int),
    .rxctrl0_in                  (ch0_rxctrl0_int),
    .rxctrl1_in                  (ch0_rxctrl1_int),
    .rxctrl2_in                  (ch0_rxctrl2_int),
    .rxctrl3_in                  (ch0_rxctrl3_int),
    .rxdata_in                   (hb0_gtwiz_userdata_rx_int),
    .prbs_match_out              (prbs_match_int[0])
  );

  // PRBS match and related link management
  // -------------------------------------------------------------------------------------------------------------------

  // Perform a bitwise NAND of all PRBS match indicators, creating a combinatorial indication of any PRBS mismatch
  // across all transceiver channels
  wire prbs_error_any_async = ~(&prbs_match_int);
  wire prbs_error_any_sync;

  // Synchronize the PRBS mismatch indicator the free-running clock domain, using a reset synchronizer with asynchronous
  // reset and synchronous removal
  (* DONT_TOUCH = "TRUE" *)
  m_gth_example_reset_synchronizer reset_synchronizer_prbs_match_all_inst (
    .clk_in (hb_gtwiz_reset_clk_freerun_buf_int),
    .rst_in (prbs_error_any_async),
    .rst_out(prbs_error_any_sync)
  );

  // Implement an example link status state machine using a simple leaky bucket mechanism. The link status indicates
  // the continual PRBS match status to both the top-level observer and the initialization state machine, while being
  // tolerant of occasional bit errors. This is an example and can be modified as necessary.
  localparam ST_LINK_DOWN = 1'b0;
  localparam ST_LINK_UP   = 1'b1;
  reg        sm_link      = ST_LINK_DOWN;
  reg [6:0]  link_ctr     = 7'd0;

  always @(posedge hb_gtwiz_reset_clk_freerun_buf_int) begin
    case (sm_link)
      // The link is considered to be down when the link counter initially has a value less than 67. When the link is
      // down, the counter is incremented on each cycle where all PRBS bits match, but reset whenever any PRBS mismatch
      // occurs. When the link counter reaches 67, transition to the link up state.
      ST_LINK_DOWN: begin
        if (prbs_error_any_sync !== 1'b0) begin
          link_ctr <= 7'd0;
        end
        else begin
          if (link_ctr < 7'd67)
            link_ctr <= link_ctr + 7'd1;
          else
            sm_link <= ST_LINK_UP;
        end
      end

      // When the link is up, the link counter is decreased by 34 whenever any PRBS mismatch occurs, but is increased by
      // only 1 on each cycle where all PRBS bits match, up to its saturation point of 67. If the link counter reaches
      // 0 (including rollover protection), transition to the link down state.
      ST_LINK_UP: begin
        if (prbs_error_any_sync !== 1'b0) begin
          if (link_ctr > 7'd33) begin
            link_ctr <= link_ctr - 7'd34;
            if (link_ctr == 7'd34)
              sm_link  <= ST_LINK_DOWN;
          end
          else begin
            link_ctr <= 7'd0;
            sm_link  <= ST_LINK_DOWN;
          end
        end
        else begin
          if (link_ctr < 7'd67)
            link_ctr <= link_ctr + 7'd1;
        end
      end
    endcase
  end

  // Synchronize the latched link down reset input and the VIO-driven signal into the free-running clock domain
  wire link_down_latched_reset_vio_int;
  wire link_down_latched_reset_sync;

  (* DONT_TOUCH = "TRUE" *)
  m_gth_example_bit_synchronizer bit_synchronizer_link_down_latched_reset_inst (
    .clk_in (hb_gtwiz_reset_clk_freerun_buf_int),
    .i_in   (link_down_latched_reset_in || link_down_latched_reset_vio_int),
    .o_out  (link_down_latched_reset_sync)
  );

  // Reset the latched link down indicator when the synchronized latched link down reset signal is high. Otherwise, set
  // the latched link down indicator upon losing link. This indicator is available for user reference.
  always @(posedge hb_gtwiz_reset_clk_freerun_buf_int) begin
    if (link_down_latched_reset_sync)
      link_down_latched_out <= 1'b0;
    else if (!sm_link)
      link_down_latched_out <= 1'b1;
  end

  // Assign the link status indicator to the top-level two-state output for user reference
  assign link_status_out = sm_link;


  // ===================================================================================================================
  // INITIALIZATION
  // ===================================================================================================================

  // Declare the receiver reset signals that interface to the reset controller helper block. For this configuration,
  // which uses the same PLL type for transmitter and receiver, the "reset RX PLL and datapath" feature is not used.
  wire hb_gtwiz_reset_rx_pll_and_datapath_int = 1'b0;
  wire hb_gtwiz_reset_rx_datapath_int;

  // Declare signals which connect the VIO instance to the initialization module for debug purposes
  wire       init_done_int;
  wire [3:0] init_retry_ctr_int;

  // Combine the receiver reset signals form the initialization module and the VIO to drive the appropriate reset
  // controller helper block reset input
  wire hb_gtwiz_reset_rx_pll_and_datapath_vio_int;
  wire hb_gtwiz_reset_rx_datapath_vio_int;
  wire hb_gtwiz_reset_rx_datapath_init_int;

  assign hb_gtwiz_reset_rx_datapath_int = hb_gtwiz_reset_rx_datapath_init_int || hb_gtwiz_reset_rx_datapath_vio_int;

  // The example initialization module interacts with the reset controller helper block and other example design logic
  // to retry failed reset attempts in order to mitigate bring-up issues such as initially-unavilable reference clocks
  // or data connections. It also resets the receiver in the event of link loss in an attempt to regain link, so please
  // note the possibility that this behavior can have the effect of overriding or disturbing user-provided inputs that
  // destabilize the data stream. It is a demonstration only and can be modified to suit your system needs.
  m_gth_example_init example_init_inst (
    .clk_freerun_in  (hb_gtwiz_reset_clk_freerun_buf_int),
    .reset_all_in    (hb_gtwiz_reset_all_int),
    .tx_init_done_in (gtwiz_reset_tx_done_int),
    .rx_init_done_in (gtwiz_reset_rx_done_int && gtwiz_buffbypass_rx_done_int),
    .rx_data_good_in (sm_link),
    .reset_all_out   (hb_gtwiz_reset_all_init_int),
    .reset_rx_out    (hb_gtwiz_reset_rx_datapath_init_int),
    .init_done_out   (init_done_int),
    .retry_ctr_out   (init_retry_ctr_int)
  );


  // ===================================================================================================================
  // VIO FOR HARDWARE BRING-UP AND DEBUG
  // ===================================================================================================================

  // Synchronize gtpowergood into the free-running clock domain for VIO usage
  wire [0:0] gtpowergood_vio_sync;

  (* DONT_TOUCH = "TRUE" *)
  m_gth_example_bit_synchronizer bit_synchronizer_vio_gtpowergood_0_inst (
    .clk_in (hb_gtwiz_reset_clk_freerun_buf_int),
    .i_in   (gtpowergood_int[0]),
    .o_out  (gtpowergood_vio_sync[0])
  );

  // Synchronize cplllock into the free-running clock domain for VIO usage
  wire [0:0] cplllock_vio_sync;

  (* DONT_TOUCH = "TRUE" *)
  m_gth_example_bit_synchronizer bit_synchronizer_vio_cplllock_0_inst (
    .clk_in (hb_gtwiz_reset_clk_freerun_buf_int),
    .i_in   (cplllock_int[0]),
    .o_out  (cplllock_vio_sync[0])
  );

  // Synchronize txpmaresetdone into the free-running clock domain for VIO usage
  wire [0:0] txpmaresetdone_vio_sync;

  (* DONT_TOUCH = "TRUE" *)
  m_gth_example_bit_synchronizer bit_synchronizer_vio_txpmaresetdone_0_inst (
    .clk_in (hb_gtwiz_reset_clk_freerun_buf_int),
    .i_in   (txpmaresetdone_int[0]),
    .o_out  (txpmaresetdone_vio_sync[0])
  );

  // Synchronize rxpmaresetdone into the free-running clock domain for VIO usage
  wire [0:0] rxpmaresetdone_vio_sync;

  (* DONT_TOUCH = "TRUE" *)
  m_gth_example_bit_synchronizer bit_synchronizer_vio_rxpmaresetdone_0_inst (
    .clk_in (hb_gtwiz_reset_clk_freerun_buf_int),
    .i_in   (rxpmaresetdone_int[0]),
    .o_out  (rxpmaresetdone_vio_sync[0])
  );

  // Synchronize gtwiz_reset_tx_done into the free-running clock domain for VIO usage
  wire [0:0] gtwiz_reset_tx_done_vio_sync;

  (* DONT_TOUCH = "TRUE" *)
  m_gth_example_bit_synchronizer bit_synchronizer_vio_gtwiz_reset_tx_done_0_inst (
    .clk_in (hb_gtwiz_reset_clk_freerun_buf_int),
    .i_in   (gtwiz_reset_tx_done_int[0]),
    .o_out  (gtwiz_reset_tx_done_vio_sync[0])
  );

  // Synchronize gtwiz_reset_rx_done into the free-running clock domain for VIO usage
  wire [0:0] gtwiz_reset_rx_done_vio_sync;

  (* DONT_TOUCH = "TRUE" *)
  m_gth_example_bit_synchronizer bit_synchronizer_vio_gtwiz_reset_rx_done_0_inst (
    .clk_in (hb_gtwiz_reset_clk_freerun_buf_int),
    .i_in   (gtwiz_reset_rx_done_int[0]),
    .o_out  (gtwiz_reset_rx_done_vio_sync[0])
  );

  // Synchronize gtwiz_buffbypass_rx_done into the free-running clock domain for VIO usage
  wire [0:0] gtwiz_buffbypass_rx_done_vio_sync;

  (* DONT_TOUCH = "TRUE" *)
  m_gth_example_bit_synchronizer bit_synchronizer_vio_gtwiz_buffbypass_rx_done_0_inst (
    .clk_in (hb_gtwiz_reset_clk_freerun_buf_int),
    .i_in   (gtwiz_buffbypass_rx_done_int[0]),
    .o_out  (gtwiz_buffbypass_rx_done_vio_sync[0])
  );

  // Synchronize gtwiz_buffbypass_rx_error into the free-running clock domain for VIO usage
  wire [0:0] gtwiz_buffbypass_rx_error_vio_sync;

  (* DONT_TOUCH = "TRUE" *)
  m_gth_example_bit_synchronizer bit_synchronizer_vio_gtwiz_buffbypass_rx_error_0_inst (
    .clk_in (hb_gtwiz_reset_clk_freerun_buf_int),
    .i_in   (gtwiz_buffbypass_rx_error_int[0]),
    .o_out  (gtwiz_buffbypass_rx_error_vio_sync[0])
  );

  // Synchronize rxprbserr into the free-running clock domain for VIO usage
  wire [0:0] rxprbserr_vio_sync;

  (* DONT_TOUCH = "TRUE" *)
  m_gth_example_bit_synchronizer bit_synchronizer_vio_rxprbserr_0_inst (
    .clk_in (hb_gtwiz_reset_clk_freerun_buf_int),
    .i_in   (rxprbserr_int[0]),
    .o_out  (rxprbserr_vio_sync[0])
  );

  // Synchronize rxprbslocked into the free-running clock domain for VIO usage
  wire [0:0] rxprbslocked_vio_sync;

  (* DONT_TOUCH = "TRUE" *)
  m_gth_example_bit_synchronizer bit_synchronizer_vio_rxprbslocked_0_inst (
    .clk_in (hb_gtwiz_reset_clk_freerun_buf_int),
    .i_in   (rxprbslocked_int[0]),
    .o_out  (rxprbslocked_vio_sync[0])
  );

  // Synchronize txprbssel into the TXUSRCLK2 clock domain from VIO usage
  wire [3:0] txprbssel_vio_async;

  (* DONT_TOUCH = "TRUE" *)
  m_gth_example_bit_synchronizer bit_synchronizer_vio_txprbssel_0_inst (
    .clk_in (hb0_gtwiz_userclk_tx_usrclk2_int),
    .i_in   (txprbssel_vio_async[0]),
    .o_out  (txprbssel_int[0])
  );
  (* DONT_TOUCH = "TRUE" *)
  m_gth_example_bit_synchronizer bit_synchronizer_vio_txprbssel_1_inst (
    .clk_in (hb0_gtwiz_userclk_tx_usrclk2_int),
    .i_in   (txprbssel_vio_async[1]),
    .o_out  (txprbssel_int[1])
  );
  (* DONT_TOUCH = "TRUE" *)
  m_gth_example_bit_synchronizer bit_synchronizer_vio_txprbssel_2_inst (
    .clk_in (hb0_gtwiz_userclk_tx_usrclk2_int),
    .i_in   (txprbssel_vio_async[2]),
    .o_out  (txprbssel_int[2])
  );
  (* DONT_TOUCH = "TRUE" *)
  m_gth_example_bit_synchronizer bit_synchronizer_vio_txprbssel_3_inst (
    .clk_in (hb0_gtwiz_userclk_tx_usrclk2_int),
    .i_in   (txprbssel_vio_async[3]),
    .o_out  (txprbssel_int[3])
  );

  // Synchronize rxprbssel into the RXUSRCLK2 clock domain from VIO usage
  wire [3:0] rxprbssel_vio_async;

  (* DONT_TOUCH = "TRUE" *)
  m_gth_example_bit_synchronizer bit_synchronizer_vio_rxprbssel_0_inst (
    .clk_in (hb0_gtwiz_userclk_rx_usrclk2_int),
    .i_in   (rxprbssel_vio_async[0]),
    .o_out  (rxprbssel_int[0])
  );
  (* DONT_TOUCH = "TRUE" *)
  m_gth_example_bit_synchronizer bit_synchronizer_vio_rxprbssel_1_inst (
    .clk_in (hb0_gtwiz_userclk_rx_usrclk2_int),
    .i_in   (rxprbssel_vio_async[1]),
    .o_out  (rxprbssel_int[1])
  );
  (* DONT_TOUCH = "TRUE" *)
  m_gth_example_bit_synchronizer bit_synchronizer_vio_rxprbssel_2_inst (
    .clk_in (hb0_gtwiz_userclk_rx_usrclk2_int),
    .i_in   (rxprbssel_vio_async[2]),
    .o_out  (rxprbssel_int[2])
  );
  (* DONT_TOUCH = "TRUE" *)
  m_gth_example_bit_synchronizer bit_synchronizer_vio_rxprbssel_3_inst (
    .clk_in (hb0_gtwiz_userclk_rx_usrclk2_int),
    .i_in   (rxprbssel_vio_async[3]),
    .o_out  (rxprbssel_int[3])
  );

  // Synchronize txprbsforceerr into the TXUSRCLK2 clock domain from VIO usage
  wire [0:0] txprbsforceerr_vio_async;

  (* DONT_TOUCH = "TRUE" *)
  m_gth_example_bit_synchronizer bit_synchronizer_vio_txprbsforceerr_0_inst (
    .clk_in (hb0_gtwiz_userclk_tx_usrclk2_int),
    .i_in   (txprbsforceerr_vio_async[0]),
    .o_out  (txprbsforceerr_int[0])
  );

  // Synchronize rxprbscntreset into the RXUSRCLK2 clock domain from VIO usage
  wire [0:0] rxprbscntreset_vio_async;

  (* DONT_TOUCH = "TRUE" *)
  m_gth_example_bit_synchronizer bit_synchronizer_vio_rxprbscntreset_0_inst (
    .clk_in (hb0_gtwiz_userclk_rx_usrclk2_int),
    .i_in   (rxprbscntreset_vio_async[0]),
    .o_out  (rxprbscntreset_int[0])
  );

  // Instantiate the VIO IP core for hardware bring-up and debug purposes, connecting relevant debug and analysis
  // signals which have been enabled during Wizard IP customization. This initial set of connected signals is
  // provided as a convenience and example, but more or fewer ports can be used as needed; simply re-customize and
  // re-generate the VIO instance, then connect any exposed signals that are needed. Signals which are synchronous to
  // clocks other than the free-running clock will require synchronization. For usage, refer to Vivado Design Suite
  // User Guide: Programming and Debugging (UG908)
  m_gth_vio_0 m_gth_vio_0_inst (
    .clk (hb_gtwiz_reset_clk_freerun_buf_int)
    ,.probe_in0 (link_status_out)
    ,.probe_in1 (link_down_latched_out)
    ,.probe_in2 (init_done_int)
    ,.probe_in3 (init_retry_ctr_int)
    ,.probe_in4 (gtpowergood_vio_sync)
    ,.probe_in5 (cplllock_vio_sync)
    ,.probe_in6 (txpmaresetdone_vio_sync)
    ,.probe_in7 (rxpmaresetdone_vio_sync)
    ,.probe_in8 (gtwiz_reset_tx_done_vio_sync)
    ,.probe_in9 (gtwiz_reset_rx_done_vio_sync)
    ,.probe_in10 (gtwiz_buffbypass_rx_done_vio_sync)
    ,.probe_in11 (gtwiz_buffbypass_rx_error_vio_sync)
    ,.probe_in12 (rxprbserr_vio_sync)
    ,.probe_in13 (rxprbslocked_vio_sync)
    ,.probe_out0 (hb_gtwiz_reset_all_vio_int)
    ,.probe_out1 (hb0_gtwiz_reset_tx_pll_and_datapath_int)
    ,.probe_out2 (hb0_gtwiz_reset_tx_datapath_int)
    ,.probe_out3 (hb_gtwiz_reset_rx_pll_and_datapath_vio_int)
    ,.probe_out4 (hb_gtwiz_reset_rx_datapath_vio_int)
    ,.probe_out5 (link_down_latched_reset_vio_int)
    ,.probe_out6 (loopback_int)
    ,.probe_out7 (txprbssel_vio_async)
    ,.probe_out8 (rxprbssel_vio_async)
    ,.probe_out9 (txprbsforceerr_vio_async)
    ,.probe_out10 (rxprbscntreset_vio_async)
  );


  // ===================================================================================================================
  // EXAMPLE WRAPPER INSTANCE
  // ===================================================================================================================

  // Instantiate the example design wrapper, mapping its enabled ports to per-channel internal signals and example
  // resources as appropriate
  m_gth_example_wrapper example_wrapper_inst (
    .gthrxn_in                               (gthrxn_int)
   ,.gthrxp_in                               (gthrxp_int)
   ,.gthtxn_out                              (gthtxn_int)
   ,.gthtxp_out                              (gthtxp_int)
   ,.gtwiz_userclk_tx_reset_in               (gtwiz_userclk_tx_reset_int)
   ,.gtwiz_userclk_tx_srcclk_out             (gtwiz_userclk_tx_srcclk_int)
   ,.gtwiz_userclk_tx_usrclk_out             (gtwiz_userclk_tx_usrclk_int)
   ,.gtwiz_userclk_tx_usrclk2_out            (gtwiz_userclk_tx_usrclk2_int)
   ,.gtwiz_userclk_tx_active_out             (gtwiz_userclk_tx_active_int)
   ,.gtwiz_userclk_rx_reset_in               (gtwiz_userclk_rx_reset_int)
   ,.gtwiz_userclk_rx_srcclk_out             (gtwiz_userclk_rx_srcclk_int)
   ,.gtwiz_userclk_rx_usrclk_out             (gtwiz_userclk_rx_usrclk_int)
   ,.gtwiz_userclk_rx_usrclk2_out            (gtwiz_userclk_rx_usrclk2_int)
   ,.gtwiz_userclk_rx_active_out             (gtwiz_userclk_rx_active_int)
   ,.gtwiz_buffbypass_rx_reset_in            (gtwiz_buffbypass_rx_reset_int)
   ,.gtwiz_buffbypass_rx_start_user_in       (gtwiz_buffbypass_rx_start_user_int)
   ,.gtwiz_buffbypass_rx_done_out            (gtwiz_buffbypass_rx_done_int)
   ,.gtwiz_buffbypass_rx_error_out           (gtwiz_buffbypass_rx_error_int)
   ,.gtwiz_reset_clk_freerun_in              ({1{hb_gtwiz_reset_clk_freerun_buf_int}})
   ,.gtwiz_reset_all_in                      ({1{hb_gtwiz_reset_all_int}})
   ,.gtwiz_reset_tx_pll_and_datapath_in      (gtwiz_reset_tx_pll_and_datapath_int)
   ,.gtwiz_reset_tx_datapath_in              (gtwiz_reset_tx_datapath_int)
   ,.gtwiz_reset_rx_pll_and_datapath_in      ({1{hb_gtwiz_reset_rx_pll_and_datapath_int}})
   ,.gtwiz_reset_rx_datapath_in              ({1{hb_gtwiz_reset_rx_datapath_int}})
   ,.gtwiz_reset_rx_cdr_stable_out           (gtwiz_reset_rx_cdr_stable_int)
   ,.gtwiz_reset_tx_done_out                 (gtwiz_reset_tx_done_int)
   ,.gtwiz_reset_rx_done_out                 (gtwiz_reset_rx_done_int)
   ,.gtwiz_userdata_tx_in                    (gtwiz_userdata_tx_int)
   ,.gtwiz_userdata_rx_out                   (gtwiz_userdata_rx_int)
   ,.gtrefclk01_in                           (gtrefclk01_int)
   ,.qpll0outclk_out                         (qpll0outclk_int)
   ,.qpll0outrefclk_out                      (qpll0outrefclk_int)
   ,.qpll1outclk_out                         (qpll1outclk_int)
   ,.qpll1outrefclk_out                      (qpll1outrefclk_int)
   ,.cplllockdetclk_in                       (cplllockdetclk_int)
   ,.dmonitorclk_in                          (dmonitorclk_int)
   ,.drpaddr_in                              (drpaddr_int)
   ,.drpclk_in                               (drpclk_int)
   ,.drpdi_in                                (drpdi_int)
   ,.drpen_in                                (drpen_int)
   ,.drpwe_in                                (drpwe_int)
   ,.eyescanreset_in                         (eyescanreset_int)
   ,.loopback_in                             (loopback_int)
   ,.rx8b10ben_in                            (rx8b10ben_int)
   ,.rxcommadeten_in                         (rxcommadeten_int)
   ,.rxlpmgchold_in                          (rxlpmgchold_int)
   ,.rxlpmgcovrden_in                        (rxlpmgcovrden_int)
   ,.rxlpmhfhold_in                          (rxlpmhfhold_int)
   ,.rxlpmhfovrden_in                        (rxlpmhfovrden_int)
   ,.rxlpmlfhold_in                          (rxlpmlfhold_int)
   ,.rxlpmlfklovrden_in                      (rxlpmlfklovrden_int)
   ,.rxlpmoshold_in                          (rxlpmoshold_int)
   ,.rxlpmosovrden_in                        (rxlpmosovrden_int)
   ,.rxmcommaalignen_in                      (rxmcommaalignen_int)
   ,.rxpcommaalignen_in                      (rxpcommaalignen_int)
   ,.rxpolarity_in                           (rxpolarity_int)
   ,.rxprbscntreset_in                       (rxprbscntreset_int)
   ,.rxprbssel_in                            (rxprbssel_int)
   ,.rxslide_in                              (rxslide_int)
   ,.txpippmen_in                            (txpippmen_int)
   ,.txpippmovrden_in                        (txpippmovrden_int)
   ,.txpippmpd_in                            (txpippmpd_int)
   ,.txpippmsel_in                           (txpippmsel_int)
   ,.txpippmstepsize_in                      (txpippmstepsize_int)
   ,.txpolarity_in                           (txpolarity_int)
   ,.txprbsforceerr_in                       (txprbsforceerr_int)
   ,.txprbssel_in                            (txprbssel_int)
   ,.cplllock_out                            (cplllock_int)
   ,.cpllrefclklost_out                      (cpllrefclklost_int)
   ,.dmonitorout_out                         (dmonitorout_int)
   ,.drpdo_out                               (drpdo_int)
   ,.drprdy_out                              (drprdy_int)
   ,.gtpowergood_out                         (gtpowergood_int)
   ,.rxbyteisaligned_out                     (rxbyteisaligned_int)
   ,.rxbyterealign_out                       (rxbyterealign_int)
   ,.rxcommadet_out                          (rxcommadet_int)
   ,.rxctrl0_out                             (rxctrl0_int)
   ,.rxctrl1_out                             (rxctrl1_int)
   ,.rxctrl2_out                             (rxctrl2_int)
   ,.rxctrl3_out                             (rxctrl3_int)
   ,.rxpmaresetdone_out                      (rxpmaresetdone_int)
   ,.rxprbserr_out                           (rxprbserr_int)
   ,.rxprbslocked_out                        (rxprbslocked_int)
   ,.rxrecclkout_out                         (rxrecclkout_int)
   ,.txbufstatus_out                         (txbufstatus_int)
   ,.txpmaresetdone_out                      (txpmaresetdone_int)
);


endmodule
