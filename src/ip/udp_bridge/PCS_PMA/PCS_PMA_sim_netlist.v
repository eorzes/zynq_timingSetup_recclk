// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2022.1 (win64) Build 3526262 Mon Apr 18 15:48:16 MDT 2022
// Date        : Mon Jun 19 12:28:23 2023
// Host        : PCPHESE71 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               c:/Users/eorzes/cernbox/git/fanout_sma/src/ip/udp_bridge/PCS_PMA/PCS_PMA_sim_netlist.v
// Design      : PCS_PMA
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xczu9eg-ffvb1156-2-e
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* EXAMPLE_SIMULATION = "0" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "gig_ethernet_pcs_pma_v16_2_8,Vivado 2022.1" *) 
(* NotValidForBitStream *)
module PCS_PMA
   (gtrefclk_p,
    gtrefclk_n,
    gtrefclk_out,
    txp,
    txn,
    rxp,
    rxn,
    resetdone,
    userclk_out,
    userclk2_out,
    rxuserclk_out,
    rxuserclk2_out,
    pma_reset_out,
    mmcm_locked_out,
    independent_clock_bufg,
    gmii_txd,
    gmii_tx_en,
    gmii_tx_er,
    gmii_rxd,
    gmii_rx_dv,
    gmii_rx_er,
    gmii_isolate,
    configuration_vector,
    status_vector,
    reset,
    gtpowergood,
    signal_detect);
  input gtrefclk_p;
  input gtrefclk_n;
  output gtrefclk_out;
  output txp;
  output txn;
  input rxp;
  input rxn;
  output resetdone;
  output userclk_out;
  output userclk2_out;
  output rxuserclk_out;
  output rxuserclk2_out;
  output pma_reset_out;
  output mmcm_locked_out;
  input independent_clock_bufg;
  input [7:0]gmii_txd;
  input gmii_tx_en;
  input gmii_tx_er;
  output [7:0]gmii_rxd;
  output gmii_rx_dv;
  output gmii_rx_er;
  output gmii_isolate;
  input [4:0]configuration_vector;
  output [15:0]status_vector;
  input reset;
  output gtpowergood;
  input signal_detect;

  wire \<const0> ;
  wire \<const1> ;
  wire [4:0]configuration_vector;
  wire gmii_isolate;
  wire gmii_rx_dv;
  wire gmii_rx_er;
  wire [7:0]gmii_rxd;
  wire gmii_tx_en;
  wire gmii_tx_er;
  wire [7:0]gmii_txd;
  wire gtpowergood;
  wire gtrefclk_n;
  wire gtrefclk_out;
  wire gtrefclk_p;
  wire independent_clock_bufg;
  wire pma_reset_out;
  wire reset;
  wire resetdone;
  wire rxn;
  wire rxp;
  wire rxuserclk2_out;
  wire rxuserclk_out;
  wire signal_detect;
  wire [6:0]\^status_vector ;
  wire txn;
  wire txp;
  wire userclk2_out;
  wire userclk_out;
  wire NLW_U0_mmcm_locked_out_UNCONNECTED;
  wire [15:7]NLW_U0_status_vector_UNCONNECTED;

  assign mmcm_locked_out = \<const1> ;
  assign status_vector[15] = \<const0> ;
  assign status_vector[14] = \<const0> ;
  assign status_vector[13] = \<const0> ;
  assign status_vector[12] = \<const0> ;
  assign status_vector[11] = \<const0> ;
  assign status_vector[10] = \<const0> ;
  assign status_vector[9] = \<const0> ;
  assign status_vector[8] = \<const0> ;
  assign status_vector[7] = \<const0> ;
  assign status_vector[6:0] = \^status_vector [6:0];
  GND GND
       (.G(\<const0> ));
  (* EXAMPLE_SIMULATION = "0" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  PCS_PMA_support U0
       (.configuration_vector({1'b0,configuration_vector[3:1],1'b0}),
        .gmii_isolate(gmii_isolate),
        .gmii_rx_dv(gmii_rx_dv),
        .gmii_rx_er(gmii_rx_er),
        .gmii_rxd(gmii_rxd),
        .gmii_tx_en(gmii_tx_en),
        .gmii_tx_er(gmii_tx_er),
        .gmii_txd(gmii_txd),
        .gtpowergood(gtpowergood),
        .gtrefclk_n(gtrefclk_n),
        .gtrefclk_out(gtrefclk_out),
        .gtrefclk_p(gtrefclk_p),
        .independent_clock_bufg(independent_clock_bufg),
        .mmcm_locked_out(NLW_U0_mmcm_locked_out_UNCONNECTED),
        .pma_reset_out(pma_reset_out),
        .reset(reset),
        .resetdone(resetdone),
        .rxn(rxn),
        .rxp(rxp),
        .rxuserclk2_out(rxuserclk2_out),
        .rxuserclk_out(rxuserclk_out),
        .signal_detect(signal_detect),
        .status_vector({NLW_U0_status_vector_UNCONNECTED[15:7],\^status_vector }),
        .txn(txn),
        .txp(txp),
        .userclk2_out(userclk2_out),
        .userclk_out(userclk_out));
  VCC VCC
       (.P(\<const1> ));
endmodule

module PCS_PMA_block
   (gmii_rxd,
    gmii_rx_dv,
    gmii_rx_er,
    gmii_isolate,
    status_vector,
    resetdone,
    txn,
    txp,
    gtpowergood,
    rxoutclk_out,
    txoutclk_out,
    pma_reset_out,
    signal_detect,
    userclk2,
    gmii_txd,
    gmii_tx_en,
    gmii_tx_er,
    configuration_vector,
    independent_clock_bufg,
    rxn,
    rxp,
    gtrefclk_out,
    CLK,
    lopt,
    lopt_1,
    lopt_2,
    lopt_3,
    lopt_4,
    lopt_5);
  output [7:0]gmii_rxd;
  output gmii_rx_dv;
  output gmii_rx_er;
  output gmii_isolate;
  output [6:0]status_vector;
  output resetdone;
  output txn;
  output txp;
  output gtpowergood;
  output [0:0]rxoutclk_out;
  output [0:0]txoutclk_out;
  input pma_reset_out;
  input signal_detect;
  input userclk2;
  input [7:0]gmii_txd;
  input gmii_tx_en;
  input gmii_tx_er;
  input [2:0]configuration_vector;
  input independent_clock_bufg;
  input rxn;
  input rxp;
  input gtrefclk_out;
  input CLK;
  input lopt;
  input lopt_1;
  output lopt_2;
  output lopt_3;
  output lopt_4;
  output lopt_5;

  wire CLK;
  wire [2:0]configuration_vector;
  wire enablealign;
  wire gmii_isolate;
  wire gmii_rx_dv;
  wire gmii_rx_er;
  wire [7:0]gmii_rxd;
  wire gmii_tx_en;
  wire gmii_tx_er;
  wire [7:0]gmii_txd;
  wire gtpowergood;
  wire gtrefclk_out;
  wire independent_clock_bufg;
  wire lopt;
  wire lopt_1;
  wire lopt_2;
  wire lopt_3;
  wire lopt_4;
  wire lopt_5;
  wire mgt_rx_reset;
  wire mgt_tx_reset;
  wire pma_reset_out;
  wire powerdown;
  wire resetdone;
  wire resetdone_i;
  wire rxbuferr;
  wire rxchariscomma;
  wire rxcharisk;
  wire [1:0]rxclkcorcnt;
  wire [7:0]rxdata;
  wire rxdisperr;
  wire rxn;
  wire rxnotintable;
  wire [0:0]rxoutclk_out;
  wire rxp;
  wire signal_detect;
  wire [6:0]status_vector;
  wire txbuferr;
  wire txchardispmode;
  wire txchardispval;
  wire txcharisk;
  wire [7:0]txdata;
  wire txn;
  wire [0:0]txoutclk_out;
  wire txp;
  wire userclk2;
  wire NLW_PCS_PMA_core_an_enable_UNCONNECTED;
  wire NLW_PCS_PMA_core_an_interrupt_UNCONNECTED;
  wire NLW_PCS_PMA_core_drp_den_UNCONNECTED;
  wire NLW_PCS_PMA_core_drp_dwe_UNCONNECTED;
  wire NLW_PCS_PMA_core_drp_req_UNCONNECTED;
  wire NLW_PCS_PMA_core_en_cdet_UNCONNECTED;
  wire NLW_PCS_PMA_core_ewrap_UNCONNECTED;
  wire NLW_PCS_PMA_core_loc_ref_UNCONNECTED;
  wire NLW_PCS_PMA_core_mdio_out_UNCONNECTED;
  wire NLW_PCS_PMA_core_mdio_tri_UNCONNECTED;
  wire NLW_PCS_PMA_core_s_axi_arready_UNCONNECTED;
  wire NLW_PCS_PMA_core_s_axi_awready_UNCONNECTED;
  wire NLW_PCS_PMA_core_s_axi_bvalid_UNCONNECTED;
  wire NLW_PCS_PMA_core_s_axi_rvalid_UNCONNECTED;
  wire NLW_PCS_PMA_core_s_axi_wready_UNCONNECTED;
  wire [9:0]NLW_PCS_PMA_core_drp_daddr_UNCONNECTED;
  wire [15:0]NLW_PCS_PMA_core_drp_di_UNCONNECTED;
  wire [63:0]NLW_PCS_PMA_core_rxphy_correction_timer_UNCONNECTED;
  wire [31:0]NLW_PCS_PMA_core_rxphy_ns_field_UNCONNECTED;
  wire [47:0]NLW_PCS_PMA_core_rxphy_s_field_UNCONNECTED;
  wire [1:0]NLW_PCS_PMA_core_s_axi_bresp_UNCONNECTED;
  wire [31:0]NLW_PCS_PMA_core_s_axi_rdata_UNCONNECTED;
  wire [1:0]NLW_PCS_PMA_core_s_axi_rresp_UNCONNECTED;
  wire [1:0]NLW_PCS_PMA_core_speed_selection_UNCONNECTED;
  wire [15:7]NLW_PCS_PMA_core_status_vector_UNCONNECTED;
  wire [9:0]NLW_PCS_PMA_core_tx_code_group_UNCONNECTED;

  (* B_SHIFTER_ADDR = "10'b1001010000" *) 
  (* C_1588 = "0" *) 
  (* C_2_5G = "FALSE" *) 
  (* C_COMPONENT_NAME = "PCS_PMA" *) 
  (* C_DYNAMIC_SWITCHING = "FALSE" *) 
  (* C_ELABORATION_TRANSIENT_DIR = "BlankString" *) 
  (* C_FAMILY = "zynquplus" *) 
  (* C_HAS_AN = "FALSE" *) 
  (* C_HAS_AXIL = "FALSE" *) 
  (* C_HAS_MDIO = "FALSE" *) 
  (* C_HAS_TEMAC = "TRUE" *) 
  (* C_IS_SGMII = "FALSE" *) 
  (* C_RX_GMII_CLK = "TXOUTCLK" *) 
  (* C_SGMII_FABRIC_BUFFER = "TRUE" *) 
  (* C_SGMII_PHY_MODE = "FALSE" *) 
  (* C_USE_LVDS = "FALSE" *) 
  (* C_USE_TBI = "FALSE" *) 
  (* C_USE_TRANSCEIVER = "TRUE" *) 
  (* GT_RX_BYTE_WIDTH = "1" *) 
  (* KEEP_HIERARCHY = "soft" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  (* is_du_within_envelope = "true" *) 
  PCS_PMA_gig_ethernet_pcs_pma_v16_2_8 PCS_PMA_core
       (.an_adv_config_val(1'b0),
        .an_adv_config_vector({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .an_enable(NLW_PCS_PMA_core_an_enable_UNCONNECTED),
        .an_interrupt(NLW_PCS_PMA_core_an_interrupt_UNCONNECTED),
        .an_restart_config(1'b0),
        .basex_or_sgmii(1'b0),
        .configuration_valid(1'b0),
        .configuration_vector({1'b0,configuration_vector,1'b0}),
        .correction_timer({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .dcm_locked(1'b1),
        .drp_daddr(NLW_PCS_PMA_core_drp_daddr_UNCONNECTED[9:0]),
        .drp_dclk(1'b0),
        .drp_den(NLW_PCS_PMA_core_drp_den_UNCONNECTED),
        .drp_di(NLW_PCS_PMA_core_drp_di_UNCONNECTED[15:0]),
        .drp_do({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .drp_drdy(1'b0),
        .drp_dwe(NLW_PCS_PMA_core_drp_dwe_UNCONNECTED),
        .drp_gnt(1'b0),
        .drp_req(NLW_PCS_PMA_core_drp_req_UNCONNECTED),
        .en_cdet(NLW_PCS_PMA_core_en_cdet_UNCONNECTED),
        .enablealign(enablealign),
        .ewrap(NLW_PCS_PMA_core_ewrap_UNCONNECTED),
        .gmii_isolate(gmii_isolate),
        .gmii_rx_dv(gmii_rx_dv),
        .gmii_rx_er(gmii_rx_er),
        .gmii_rxd(gmii_rxd),
        .gmii_tx_en(gmii_tx_en),
        .gmii_tx_er(gmii_tx_er),
        .gmii_txd(gmii_txd),
        .gtx_clk(1'b0),
        .link_timer_basex({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .link_timer_sgmii({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .link_timer_value({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .loc_ref(NLW_PCS_PMA_core_loc_ref_UNCONNECTED),
        .mdc(1'b0),
        .mdio_in(1'b0),
        .mdio_out(NLW_PCS_PMA_core_mdio_out_UNCONNECTED),
        .mdio_tri(NLW_PCS_PMA_core_mdio_tri_UNCONNECTED),
        .mgt_rx_reset(mgt_rx_reset),
        .mgt_tx_reset(mgt_tx_reset),
        .phyad({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .pma_rx_clk0(1'b0),
        .pma_rx_clk1(1'b0),
        .powerdown(powerdown),
        .reset(pma_reset_out),
        .reset_done(resetdone),
        .rx_code_group0({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .rx_code_group1({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .rx_gt_nominal_latency({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b1,1'b1,1'b0,1'b1,1'b1,1'b0,1'b0,1'b0}),
        .rxbufstatus({rxbuferr,1'b0}),
        .rxchariscomma(rxchariscomma),
        .rxcharisk(rxcharisk),
        .rxclkcorcnt({1'b0,rxclkcorcnt}),
        .rxdata(rxdata),
        .rxdisperr(rxdisperr),
        .rxnotintable(rxnotintable),
        .rxphy_correction_timer(NLW_PCS_PMA_core_rxphy_correction_timer_UNCONNECTED[63:0]),
        .rxphy_ns_field(NLW_PCS_PMA_core_rxphy_ns_field_UNCONNECTED[31:0]),
        .rxphy_s_field(NLW_PCS_PMA_core_rxphy_s_field_UNCONNECTED[47:0]),
        .rxrecclk(1'b0),
        .rxrundisp(1'b0),
        .s_axi_aclk(1'b0),
        .s_axi_araddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arready(NLW_PCS_PMA_core_s_axi_arready_UNCONNECTED),
        .s_axi_arvalid(1'b0),
        .s_axi_awaddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awready(NLW_PCS_PMA_core_s_axi_awready_UNCONNECTED),
        .s_axi_awvalid(1'b0),
        .s_axi_bready(1'b0),
        .s_axi_bresp(NLW_PCS_PMA_core_s_axi_bresp_UNCONNECTED[1:0]),
        .s_axi_bvalid(NLW_PCS_PMA_core_s_axi_bvalid_UNCONNECTED),
        .s_axi_rdata(NLW_PCS_PMA_core_s_axi_rdata_UNCONNECTED[31:0]),
        .s_axi_resetn(1'b0),
        .s_axi_rready(1'b0),
        .s_axi_rresp(NLW_PCS_PMA_core_s_axi_rresp_UNCONNECTED[1:0]),
        .s_axi_rvalid(NLW_PCS_PMA_core_s_axi_rvalid_UNCONNECTED),
        .s_axi_wdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_wready(NLW_PCS_PMA_core_s_axi_wready_UNCONNECTED),
        .s_axi_wvalid(1'b0),
        .signal_detect(signal_detect),
        .speed_is_100(1'b0),
        .speed_is_10_100(1'b0),
        .speed_selection(NLW_PCS_PMA_core_speed_selection_UNCONNECTED[1:0]),
        .status_vector({NLW_PCS_PMA_core_status_vector_UNCONNECTED[15:7],status_vector}),
        .systemtimer_ns_field({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .systemtimer_s_field({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .tx_code_group(NLW_PCS_PMA_core_tx_code_group_UNCONNECTED[9:0]),
        .txbuferr(txbuferr),
        .txchardispmode(txchardispmode),
        .txchardispval(txchardispval),
        .txcharisk(txcharisk),
        .txdata(txdata),
        .userclk(1'b0),
        .userclk2(userclk2));
  PCS_PMA_sync_block sync_block_reset_done
       (.data_in(resetdone_i),
        .resetdone(resetdone),
        .userclk2(userclk2));
  PCS_PMA_transceiver transceiver_inst
       (.CLK(CLK),
        .D(txchardispval),
        .Q(rxclkcorcnt),
        .SR(mgt_rx_reset),
        .data_in(resetdone_i),
        .enablealign(enablealign),
        .gtpowergood(gtpowergood),
        .gtrefclk_out(gtrefclk_out),
        .independent_clock_bufg(independent_clock_bufg),
        .lopt(lopt),
        .lopt_1(lopt_1),
        .lopt_2(lopt_2),
        .lopt_3(lopt_3),
        .lopt_4(lopt_4),
        .lopt_5(lopt_5),
        .mgt_tx_reset(mgt_tx_reset),
        .pma_reset_out(pma_reset_out),
        .powerdown(powerdown),
        .rxbufstatus(rxbuferr),
        .rxchariscomma(rxchariscomma),
        .rxcharisk(rxcharisk),
        .\rxdata_reg[7]_0 (rxdata),
        .rxdisperr(rxdisperr),
        .rxn(rxn),
        .rxnotintable(rxnotintable),
        .rxoutclk_out(rxoutclk_out),
        .rxp(rxp),
        .txbuferr(txbuferr),
        .txchardispmode_reg_reg_0(txchardispmode),
        .txcharisk_reg_reg_0(txcharisk),
        .\txdata_reg_reg[7]_0 (txdata),
        .txn(txn),
        .txoutclk_out(txoutclk_out),
        .txp(txp),
        .userclk2(userclk2));
endmodule

module PCS_PMA_clocking
   (gtrefclk_out,
    userclk2,
    userclk,
    rxuserclk2_out,
    gtrefclk_p,
    gtrefclk_n,
    txoutclk,
    rxoutclk,
    lopt,
    lopt_1,
    lopt_2,
    lopt_3,
    lopt_4,
    lopt_5);
  output gtrefclk_out;
  output userclk2;
  output userclk;
  output rxuserclk2_out;
  input gtrefclk_p;
  input gtrefclk_n;
  input txoutclk;
  input rxoutclk;
  output lopt;
  output lopt_1;
  input lopt_2;
  input lopt_3;
  input lopt_4;
  input lopt_5;

  wire \<const0> ;
  wire \<const1> ;
  wire gtrefclk_n;
  wire gtrefclk_out;
  wire gtrefclk_p;
  wire \^lopt ;
  wire \^lopt_1 ;
  wire \^lopt_2 ;
  wire \^lopt_3 ;
  wire rxoutclk;
  wire rxuserclk2_out;
  wire txoutclk;
  wire userclk;
  wire userclk2;
  wire NLW_ibufds_gtrefclk_ODIV2_UNCONNECTED;

  assign \^lopt  = lopt_2;
  assign \^lopt_1  = lopt_3;
  assign \^lopt_2  = lopt_4;
  assign \^lopt_3  = lopt_5;
  assign lopt = \<const1> ;
  assign lopt_1 = \<const0> ;
  GND GND
       (.G(\<const0> ));
  VCC VCC
       (.P(\<const1> ));
  (* box_type = "PRIMITIVE" *) 
  IBUFDS_GTE4 #(
    .REFCLK_EN_TX_PATH(1'b0),
    .REFCLK_HROW_CK_SEL(2'b00),
    .REFCLK_ICNTL_RX(2'b00)) 
    ibufds_gtrefclk
       (.CEB(1'b0),
        .I(gtrefclk_p),
        .IB(gtrefclk_n),
        .O(gtrefclk_out),
        .ODIV2(NLW_ibufds_gtrefclk_ODIV2_UNCONNECTED));
  (* OPT_MODIFIED = "MLO" *) 
  (* box_type = "PRIMITIVE" *) 
  BUFG_GT #(
    .SIM_DEVICE("ULTRASCALE"),
    .STARTUP_SYNC("FALSE")) 
    rxrecclk_bufg_inst
       (.CE(\^lopt ),
        .CEMASK(1'b1),
        .CLR(\^lopt_1 ),
        .CLRMASK(1'b1),
        .DIV({1'b0,1'b0,1'b0}),
        .I(rxoutclk),
        .O(rxuserclk2_out));
  (* OPT_MODIFIED = "MLO" *) 
  (* box_type = "PRIMITIVE" *) 
  BUFG_GT #(
    .SIM_DEVICE("ULTRASCALE"),
    .STARTUP_SYNC("FALSE")) 
    usrclk2_bufg_inst
       (.CE(\^lopt_2 ),
        .CEMASK(1'b1),
        .CLR(\^lopt_3 ),
        .CLRMASK(1'b1),
        .DIV({1'b0,1'b0,1'b0}),
        .I(txoutclk),
        .O(userclk2));
  (* OPT_MODIFIED = "MLO" *) 
  (* box_type = "PRIMITIVE" *) 
  BUFG_GT #(
    .SIM_DEVICE("ULTRASCALE"),
    .STARTUP_SYNC("FALSE")) 
    usrclk_bufg_inst
       (.CE(\^lopt_2 ),
        .CEMASK(1'b1),
        .CLR(\^lopt_3 ),
        .CLRMASK(1'b1),
        .DIV({1'b0,1'b0,1'b1}),
        .I(txoutclk),
        .O(userclk));
endmodule

(* CHECK_LICENSE_TYPE = "PCS_PMA_gt,PCS_PMA_gt_gtwizard_top,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "PCS_PMA_gt_gtwizard_top,Vivado 2022.1" *) 
module PCS_PMA_gt
   (gtwiz_userclk_tx_reset_in,
    gtwiz_userclk_tx_active_in,
    gtwiz_userclk_rx_active_in,
    gtwiz_reset_clk_freerun_in,
    gtwiz_reset_all_in,
    gtwiz_reset_tx_pll_and_datapath_in,
    gtwiz_reset_tx_datapath_in,
    gtwiz_reset_rx_pll_and_datapath_in,
    gtwiz_reset_rx_datapath_in,
    gtwiz_reset_rx_cdr_stable_out,
    gtwiz_reset_tx_done_out,
    gtwiz_reset_rx_done_out,
    gtwiz_userdata_tx_in,
    gtwiz_userdata_rx_out,
    cpllrefclksel_in,
    drpaddr_in,
    drpclk_in,
    drpdi_in,
    drpen_in,
    drpwe_in,
    eyescanreset_in,
    eyescantrigger_in,
    gthrxn_in,
    gthrxp_in,
    gtrefclk0_in,
    gtrefclk1_in,
    loopback_in,
    pcsrsvdin_in,
    rx8b10ben_in,
    rxbufreset_in,
    rxcdrhold_in,
    rxcommadeten_in,
    rxdfelpmreset_in,
    rxlpmen_in,
    rxmcommaalignen_in,
    rxpcommaalignen_in,
    rxpcsreset_in,
    rxpd_in,
    rxpmareset_in,
    rxpolarity_in,
    rxprbscntreset_in,
    rxprbssel_in,
    rxrate_in,
    rxusrclk_in,
    rxusrclk2_in,
    tx8b10ben_in,
    txctrl0_in,
    txctrl1_in,
    txctrl2_in,
    txdiffctrl_in,
    txelecidle_in,
    txinhibit_in,
    txpcsreset_in,
    txpd_in,
    txpmareset_in,
    txpolarity_in,
    txpostcursor_in,
    txprbsforceerr_in,
    txprbssel_in,
    txprecursor_in,
    txusrclk_in,
    txusrclk2_in,
    cplllock_out,
    dmonitorout_out,
    drpdo_out,
    drprdy_out,
    eyescandataerror_out,
    gthtxn_out,
    gthtxp_out,
    gtpowergood_out,
    rxbufstatus_out,
    rxbyteisaligned_out,
    rxbyterealign_out,
    rxclkcorcnt_out,
    rxcommadet_out,
    rxctrl0_out,
    rxctrl1_out,
    rxctrl2_out,
    rxctrl3_out,
    rxoutclk_out,
    rxpmaresetdone_out,
    rxprbserr_out,
    rxresetdone_out,
    txbufstatus_out,
    txoutclk_out,
    txpmaresetdone_out,
    txprgdivresetdone_out,
    txresetdone_out,
    lopt,
    lopt_1,
    lopt_2,
    lopt_3,
    lopt_4,
    lopt_5);
  input [0:0]gtwiz_userclk_tx_reset_in;
  input [0:0]gtwiz_userclk_tx_active_in;
  input [0:0]gtwiz_userclk_rx_active_in;
  input [0:0]gtwiz_reset_clk_freerun_in;
  input [0:0]gtwiz_reset_all_in;
  input [0:0]gtwiz_reset_tx_pll_and_datapath_in;
  input [0:0]gtwiz_reset_tx_datapath_in;
  input [0:0]gtwiz_reset_rx_pll_and_datapath_in;
  input [0:0]gtwiz_reset_rx_datapath_in;
  output [0:0]gtwiz_reset_rx_cdr_stable_out;
  output [0:0]gtwiz_reset_tx_done_out;
  output [0:0]gtwiz_reset_rx_done_out;
  input [15:0]gtwiz_userdata_tx_in;
  output [15:0]gtwiz_userdata_rx_out;
  input [2:0]cpllrefclksel_in;
  input [9:0]drpaddr_in;
  input [0:0]drpclk_in;
  input [15:0]drpdi_in;
  input [0:0]drpen_in;
  input [0:0]drpwe_in;
  input [0:0]eyescanreset_in;
  input [0:0]eyescantrigger_in;
  input [0:0]gthrxn_in;
  input [0:0]gthrxp_in;
  input [0:0]gtrefclk0_in;
  input [0:0]gtrefclk1_in;
  input [2:0]loopback_in;
  input [15:0]pcsrsvdin_in;
  input [0:0]rx8b10ben_in;
  input [0:0]rxbufreset_in;
  input [0:0]rxcdrhold_in;
  input [0:0]rxcommadeten_in;
  input [0:0]rxdfelpmreset_in;
  input [0:0]rxlpmen_in;
  input [0:0]rxmcommaalignen_in;
  input [0:0]rxpcommaalignen_in;
  input [0:0]rxpcsreset_in;
  input [1:0]rxpd_in;
  input [0:0]rxpmareset_in;
  input [0:0]rxpolarity_in;
  input [0:0]rxprbscntreset_in;
  input [3:0]rxprbssel_in;
  input [2:0]rxrate_in;
  input [0:0]rxusrclk_in;
  input [0:0]rxusrclk2_in;
  input [0:0]tx8b10ben_in;
  input [15:0]txctrl0_in;
  input [15:0]txctrl1_in;
  input [7:0]txctrl2_in;
  input [4:0]txdiffctrl_in;
  input [0:0]txelecidle_in;
  input [0:0]txinhibit_in;
  input [0:0]txpcsreset_in;
  input [1:0]txpd_in;
  input [0:0]txpmareset_in;
  input [0:0]txpolarity_in;
  input [4:0]txpostcursor_in;
  input [0:0]txprbsforceerr_in;
  input [3:0]txprbssel_in;
  input [4:0]txprecursor_in;
  input [0:0]txusrclk_in;
  input [0:0]txusrclk2_in;
  output [0:0]cplllock_out;
  output [15:0]dmonitorout_out;
  output [15:0]drpdo_out;
  output [0:0]drprdy_out;
  output [0:0]eyescandataerror_out;
  output [0:0]gthtxn_out;
  output [0:0]gthtxp_out;
  output [0:0]gtpowergood_out;
  output [2:0]rxbufstatus_out;
  output [0:0]rxbyteisaligned_out;
  output [0:0]rxbyterealign_out;
  output [1:0]rxclkcorcnt_out;
  output [0:0]rxcommadet_out;
  output [15:0]rxctrl0_out;
  output [15:0]rxctrl1_out;
  output [7:0]rxctrl2_out;
  output [7:0]rxctrl3_out;
  output [0:0]rxoutclk_out;
  output [0:0]rxpmaresetdone_out;
  output [0:0]rxprbserr_out;
  output [0:0]rxresetdone_out;
  output [1:0]txbufstatus_out;
  output [0:0]txoutclk_out;
  output [0:0]txpmaresetdone_out;
  output [0:0]txprgdivresetdone_out;
  output [0:0]txresetdone_out;
  input lopt;
  input lopt_1;
  output lopt_2;
  output lopt_3;
  output lopt_4;
  output lopt_5;

  wire \<const0> ;
  wire [0:0]drpclk_in;
  wire [0:0]gthrxn_in;
  wire [0:0]gthrxp_in;
  wire [0:0]gthtxn_out;
  wire [0:0]gthtxp_out;
  wire [0:0]gtpowergood_out;
  wire [0:0]gtrefclk0_in;
  wire [0:0]gtwiz_reset_all_in;
  wire [0:0]gtwiz_reset_rx_datapath_in;
  wire [0:0]gtwiz_reset_rx_done_out;
  wire [0:0]gtwiz_reset_tx_datapath_in;
  wire [0:0]gtwiz_reset_tx_done_out;
  wire [15:0]gtwiz_userdata_rx_out;
  wire [15:0]gtwiz_userdata_tx_in;
  wire lopt;
  wire lopt_1;
  wire lopt_2;
  wire lopt_3;
  wire lopt_4;
  wire lopt_5;
  wire [2:2]\^rxbufstatus_out ;
  wire [1:0]rxclkcorcnt_out;
  wire [1:0]\^rxctrl0_out ;
  wire [1:0]\^rxctrl1_out ;
  wire [1:0]\^rxctrl2_out ;
  wire [1:0]\^rxctrl3_out ;
  wire [0:0]rxmcommaalignen_in;
  wire [0:0]rxoutclk_out;
  wire [1:0]rxpd_in;
  wire [0:0]rxusrclk_in;
  wire [1:1]\^txbufstatus_out ;
  wire [15:0]txctrl0_in;
  wire [15:0]txctrl1_in;
  wire [7:0]txctrl2_in;
  wire [0:0]txelecidle_in;
  wire [0:0]txoutclk_out;
  wire [0:0]NLW_inst_bufgtce_out_UNCONNECTED;
  wire [2:0]NLW_inst_bufgtcemask_out_UNCONNECTED;
  wire [8:0]NLW_inst_bufgtdiv_out_UNCONNECTED;
  wire [0:0]NLW_inst_bufgtreset_out_UNCONNECTED;
  wire [2:0]NLW_inst_bufgtrstmask_out_UNCONNECTED;
  wire [0:0]NLW_inst_cpllfbclklost_out_UNCONNECTED;
  wire [0:0]NLW_inst_cplllock_out_UNCONNECTED;
  wire [0:0]NLW_inst_cpllrefclklost_out_UNCONNECTED;
  wire [15:0]NLW_inst_dmonitorout_out_UNCONNECTED;
  wire [0:0]NLW_inst_dmonitoroutclk_out_UNCONNECTED;
  wire [15:0]NLW_inst_drpdo_common_out_UNCONNECTED;
  wire [15:0]NLW_inst_drpdo_out_UNCONNECTED;
  wire [0:0]NLW_inst_drprdy_common_out_UNCONNECTED;
  wire [0:0]NLW_inst_drprdy_out_UNCONNECTED;
  wire [0:0]NLW_inst_eyescandataerror_out_UNCONNECTED;
  wire [0:0]NLW_inst_gtrefclkmonitor_out_UNCONNECTED;
  wire [0:0]NLW_inst_gtwiz_buffbypass_rx_done_out_UNCONNECTED;
  wire [0:0]NLW_inst_gtwiz_buffbypass_rx_error_out_UNCONNECTED;
  wire [0:0]NLW_inst_gtwiz_buffbypass_tx_done_out_UNCONNECTED;
  wire [0:0]NLW_inst_gtwiz_buffbypass_tx_error_out_UNCONNECTED;
  wire [0:0]NLW_inst_gtwiz_reset_qpll0reset_out_UNCONNECTED;
  wire [0:0]NLW_inst_gtwiz_reset_qpll1reset_out_UNCONNECTED;
  wire [0:0]NLW_inst_gtwiz_reset_rx_cdr_stable_out_UNCONNECTED;
  wire [0:0]NLW_inst_gtwiz_userclk_rx_active_out_UNCONNECTED;
  wire [0:0]NLW_inst_gtwiz_userclk_rx_srcclk_out_UNCONNECTED;
  wire [0:0]NLW_inst_gtwiz_userclk_rx_usrclk2_out_UNCONNECTED;
  wire [0:0]NLW_inst_gtwiz_userclk_rx_usrclk_out_UNCONNECTED;
  wire [0:0]NLW_inst_gtwiz_userclk_tx_active_out_UNCONNECTED;
  wire [0:0]NLW_inst_gtwiz_userclk_tx_srcclk_out_UNCONNECTED;
  wire [0:0]NLW_inst_gtwiz_userclk_tx_usrclk2_out_UNCONNECTED;
  wire [0:0]NLW_inst_gtwiz_userclk_tx_usrclk_out_UNCONNECTED;
  wire [0:0]NLW_inst_gtytxn_out_UNCONNECTED;
  wire [0:0]NLW_inst_gtytxp_out_UNCONNECTED;
  wire [0:0]NLW_inst_pcierategen3_out_UNCONNECTED;
  wire [0:0]NLW_inst_pcierateidle_out_UNCONNECTED;
  wire [1:0]NLW_inst_pcierateqpllpd_out_UNCONNECTED;
  wire [1:0]NLW_inst_pcierateqpllreset_out_UNCONNECTED;
  wire [0:0]NLW_inst_pciesynctxsyncdone_out_UNCONNECTED;
  wire [0:0]NLW_inst_pcieusergen3rdy_out_UNCONNECTED;
  wire [0:0]NLW_inst_pcieuserphystatusrst_out_UNCONNECTED;
  wire [0:0]NLW_inst_pcieuserratestart_out_UNCONNECTED;
  wire [15:0]NLW_inst_pcsrsvdout_out_UNCONNECTED;
  wire [0:0]NLW_inst_phystatus_out_UNCONNECTED;
  wire [15:0]NLW_inst_pinrsrvdas_out_UNCONNECTED;
  wire [7:0]NLW_inst_pmarsvdout0_out_UNCONNECTED;
  wire [7:0]NLW_inst_pmarsvdout1_out_UNCONNECTED;
  wire [0:0]NLW_inst_powerpresent_out_UNCONNECTED;
  wire [0:0]NLW_inst_qpll0fbclklost_out_UNCONNECTED;
  wire [0:0]NLW_inst_qpll0lock_out_UNCONNECTED;
  wire [0:0]NLW_inst_qpll0outclk_out_UNCONNECTED;
  wire [0:0]NLW_inst_qpll0outrefclk_out_UNCONNECTED;
  wire [0:0]NLW_inst_qpll0refclklost_out_UNCONNECTED;
  wire [0:0]NLW_inst_qpll1fbclklost_out_UNCONNECTED;
  wire [0:0]NLW_inst_qpll1lock_out_UNCONNECTED;
  wire [0:0]NLW_inst_qpll1outclk_out_UNCONNECTED;
  wire [0:0]NLW_inst_qpll1outrefclk_out_UNCONNECTED;
  wire [0:0]NLW_inst_qpll1refclklost_out_UNCONNECTED;
  wire [7:0]NLW_inst_qplldmonitor0_out_UNCONNECTED;
  wire [7:0]NLW_inst_qplldmonitor1_out_UNCONNECTED;
  wire [0:0]NLW_inst_refclkoutmonitor0_out_UNCONNECTED;
  wire [0:0]NLW_inst_refclkoutmonitor1_out_UNCONNECTED;
  wire [0:0]NLW_inst_resetexception_out_UNCONNECTED;
  wire [1:0]NLW_inst_rxbufstatus_out_UNCONNECTED;
  wire [0:0]NLW_inst_rxbyteisaligned_out_UNCONNECTED;
  wire [0:0]NLW_inst_rxbyterealign_out_UNCONNECTED;
  wire [0:0]NLW_inst_rxcdrlock_out_UNCONNECTED;
  wire [0:0]NLW_inst_rxcdrphdone_out_UNCONNECTED;
  wire [0:0]NLW_inst_rxchanbondseq_out_UNCONNECTED;
  wire [0:0]NLW_inst_rxchanisaligned_out_UNCONNECTED;
  wire [0:0]NLW_inst_rxchanrealign_out_UNCONNECTED;
  wire [4:0]NLW_inst_rxchbondo_out_UNCONNECTED;
  wire [0:0]NLW_inst_rxckcaldone_out_UNCONNECTED;
  wire [0:0]NLW_inst_rxcominitdet_out_UNCONNECTED;
  wire [0:0]NLW_inst_rxcommadet_out_UNCONNECTED;
  wire [0:0]NLW_inst_rxcomsasdet_out_UNCONNECTED;
  wire [0:0]NLW_inst_rxcomwakedet_out_UNCONNECTED;
  wire [15:2]NLW_inst_rxctrl0_out_UNCONNECTED;
  wire [15:2]NLW_inst_rxctrl1_out_UNCONNECTED;
  wire [7:2]NLW_inst_rxctrl2_out_UNCONNECTED;
  wire [7:2]NLW_inst_rxctrl3_out_UNCONNECTED;
  wire [127:0]NLW_inst_rxdata_out_UNCONNECTED;
  wire [7:0]NLW_inst_rxdataextendrsvd_out_UNCONNECTED;
  wire [1:0]NLW_inst_rxdatavalid_out_UNCONNECTED;
  wire [0:0]NLW_inst_rxdlysresetdone_out_UNCONNECTED;
  wire [0:0]NLW_inst_rxelecidle_out_UNCONNECTED;
  wire [5:0]NLW_inst_rxheader_out_UNCONNECTED;
  wire [1:0]NLW_inst_rxheadervalid_out_UNCONNECTED;
  wire [0:0]NLW_inst_rxlfpstresetdet_out_UNCONNECTED;
  wire [0:0]NLW_inst_rxlfpsu2lpexitdet_out_UNCONNECTED;
  wire [0:0]NLW_inst_rxlfpsu3wakedet_out_UNCONNECTED;
  wire [7:0]NLW_inst_rxmonitorout_out_UNCONNECTED;
  wire [0:0]NLW_inst_rxosintdone_out_UNCONNECTED;
  wire [0:0]NLW_inst_rxosintstarted_out_UNCONNECTED;
  wire [0:0]NLW_inst_rxosintstrobedone_out_UNCONNECTED;
  wire [0:0]NLW_inst_rxosintstrobestarted_out_UNCONNECTED;
  wire [0:0]NLW_inst_rxoutclkfabric_out_UNCONNECTED;
  wire [0:0]NLW_inst_rxoutclkpcs_out_UNCONNECTED;
  wire [0:0]NLW_inst_rxphaligndone_out_UNCONNECTED;
  wire [0:0]NLW_inst_rxphalignerr_out_UNCONNECTED;
  wire [0:0]NLW_inst_rxpmaresetdone_out_UNCONNECTED;
  wire [0:0]NLW_inst_rxprbserr_out_UNCONNECTED;
  wire [0:0]NLW_inst_rxprbslocked_out_UNCONNECTED;
  wire [0:0]NLW_inst_rxprgdivresetdone_out_UNCONNECTED;
  wire [0:0]NLW_inst_rxqpisenn_out_UNCONNECTED;
  wire [0:0]NLW_inst_rxqpisenp_out_UNCONNECTED;
  wire [0:0]NLW_inst_rxratedone_out_UNCONNECTED;
  wire [0:0]NLW_inst_rxrecclk0_sel_out_UNCONNECTED;
  wire [1:0]NLW_inst_rxrecclk0sel_out_UNCONNECTED;
  wire [0:0]NLW_inst_rxrecclk1_sel_out_UNCONNECTED;
  wire [1:0]NLW_inst_rxrecclk1sel_out_UNCONNECTED;
  wire [0:0]NLW_inst_rxrecclkout_out_UNCONNECTED;
  wire [0:0]NLW_inst_rxresetdone_out_UNCONNECTED;
  wire [0:0]NLW_inst_rxsliderdy_out_UNCONNECTED;
  wire [0:0]NLW_inst_rxslipdone_out_UNCONNECTED;
  wire [0:0]NLW_inst_rxslipoutclkrdy_out_UNCONNECTED;
  wire [0:0]NLW_inst_rxslippmardy_out_UNCONNECTED;
  wire [1:0]NLW_inst_rxstartofseq_out_UNCONNECTED;
  wire [2:0]NLW_inst_rxstatus_out_UNCONNECTED;
  wire [0:0]NLW_inst_rxsyncdone_out_UNCONNECTED;
  wire [0:0]NLW_inst_rxsyncout_out_UNCONNECTED;
  wire [0:0]NLW_inst_rxvalid_out_UNCONNECTED;
  wire [3:0]NLW_inst_sdm0finalout_out_UNCONNECTED;
  wire [14:0]NLW_inst_sdm0testdata_out_UNCONNECTED;
  wire [3:0]NLW_inst_sdm1finalout_out_UNCONNECTED;
  wire [14:0]NLW_inst_sdm1testdata_out_UNCONNECTED;
  wire [9:0]NLW_inst_tcongpo_out_UNCONNECTED;
  wire [0:0]NLW_inst_tconrsvdout0_out_UNCONNECTED;
  wire [0:0]NLW_inst_txbufstatus_out_UNCONNECTED;
  wire [0:0]NLW_inst_txcomfinish_out_UNCONNECTED;
  wire [0:0]NLW_inst_txdccdone_out_UNCONNECTED;
  wire [0:0]NLW_inst_txdlysresetdone_out_UNCONNECTED;
  wire [0:0]NLW_inst_txoutclkfabric_out_UNCONNECTED;
  wire [0:0]NLW_inst_txoutclkpcs_out_UNCONNECTED;
  wire [0:0]NLW_inst_txphaligndone_out_UNCONNECTED;
  wire [0:0]NLW_inst_txphinitdone_out_UNCONNECTED;
  wire [0:0]NLW_inst_txpmaresetdone_out_UNCONNECTED;
  wire [0:0]NLW_inst_txprgdivresetdone_out_UNCONNECTED;
  wire [0:0]NLW_inst_txqpisenn_out_UNCONNECTED;
  wire [0:0]NLW_inst_txqpisenp_out_UNCONNECTED;
  wire [0:0]NLW_inst_txratedone_out_UNCONNECTED;
  wire [0:0]NLW_inst_txresetdone_out_UNCONNECTED;
  wire [0:0]NLW_inst_txsyncdone_out_UNCONNECTED;
  wire [0:0]NLW_inst_txsyncout_out_UNCONNECTED;
  wire [0:0]NLW_inst_ubdaddr_out_UNCONNECTED;
  wire [0:0]NLW_inst_ubden_out_UNCONNECTED;
  wire [0:0]NLW_inst_ubdi_out_UNCONNECTED;
  wire [0:0]NLW_inst_ubdwe_out_UNCONNECTED;
  wire [0:0]NLW_inst_ubmdmtdo_out_UNCONNECTED;
  wire [0:0]NLW_inst_ubrsvdout_out_UNCONNECTED;
  wire [0:0]NLW_inst_ubtxuart_out_UNCONNECTED;

  assign cplllock_out[0] = \<const0> ;
  assign dmonitorout_out[15] = \<const0> ;
  assign dmonitorout_out[14] = \<const0> ;
  assign dmonitorout_out[13] = \<const0> ;
  assign dmonitorout_out[12] = \<const0> ;
  assign dmonitorout_out[11] = \<const0> ;
  assign dmonitorout_out[10] = \<const0> ;
  assign dmonitorout_out[9] = \<const0> ;
  assign dmonitorout_out[8] = \<const0> ;
  assign dmonitorout_out[7] = \<const0> ;
  assign dmonitorout_out[6] = \<const0> ;
  assign dmonitorout_out[5] = \<const0> ;
  assign dmonitorout_out[4] = \<const0> ;
  assign dmonitorout_out[3] = \<const0> ;
  assign dmonitorout_out[2] = \<const0> ;
  assign dmonitorout_out[1] = \<const0> ;
  assign dmonitorout_out[0] = \<const0> ;
  assign drpdo_out[15] = \<const0> ;
  assign drpdo_out[14] = \<const0> ;
  assign drpdo_out[13] = \<const0> ;
  assign drpdo_out[12] = \<const0> ;
  assign drpdo_out[11] = \<const0> ;
  assign drpdo_out[10] = \<const0> ;
  assign drpdo_out[9] = \<const0> ;
  assign drpdo_out[8] = \<const0> ;
  assign drpdo_out[7] = \<const0> ;
  assign drpdo_out[6] = \<const0> ;
  assign drpdo_out[5] = \<const0> ;
  assign drpdo_out[4] = \<const0> ;
  assign drpdo_out[3] = \<const0> ;
  assign drpdo_out[2] = \<const0> ;
  assign drpdo_out[1] = \<const0> ;
  assign drpdo_out[0] = \<const0> ;
  assign drprdy_out[0] = \<const0> ;
  assign eyescandataerror_out[0] = \<const0> ;
  assign gtwiz_reset_rx_cdr_stable_out[0] = \<const0> ;
  assign rxbufstatus_out[2] = \^rxbufstatus_out [2];
  assign rxbufstatus_out[1] = \<const0> ;
  assign rxbufstatus_out[0] = \<const0> ;
  assign rxbyteisaligned_out[0] = \<const0> ;
  assign rxbyterealign_out[0] = \<const0> ;
  assign rxcommadet_out[0] = \<const0> ;
  assign rxctrl0_out[15] = \<const0> ;
  assign rxctrl0_out[14] = \<const0> ;
  assign rxctrl0_out[13] = \<const0> ;
  assign rxctrl0_out[12] = \<const0> ;
  assign rxctrl0_out[11] = \<const0> ;
  assign rxctrl0_out[10] = \<const0> ;
  assign rxctrl0_out[9] = \<const0> ;
  assign rxctrl0_out[8] = \<const0> ;
  assign rxctrl0_out[7] = \<const0> ;
  assign rxctrl0_out[6] = \<const0> ;
  assign rxctrl0_out[5] = \<const0> ;
  assign rxctrl0_out[4] = \<const0> ;
  assign rxctrl0_out[3] = \<const0> ;
  assign rxctrl0_out[2] = \<const0> ;
  assign rxctrl0_out[1:0] = \^rxctrl0_out [1:0];
  assign rxctrl1_out[15] = \<const0> ;
  assign rxctrl1_out[14] = \<const0> ;
  assign rxctrl1_out[13] = \<const0> ;
  assign rxctrl1_out[12] = \<const0> ;
  assign rxctrl1_out[11] = \<const0> ;
  assign rxctrl1_out[10] = \<const0> ;
  assign rxctrl1_out[9] = \<const0> ;
  assign rxctrl1_out[8] = \<const0> ;
  assign rxctrl1_out[7] = \<const0> ;
  assign rxctrl1_out[6] = \<const0> ;
  assign rxctrl1_out[5] = \<const0> ;
  assign rxctrl1_out[4] = \<const0> ;
  assign rxctrl1_out[3] = \<const0> ;
  assign rxctrl1_out[2] = \<const0> ;
  assign rxctrl1_out[1:0] = \^rxctrl1_out [1:0];
  assign rxctrl2_out[7] = \<const0> ;
  assign rxctrl2_out[6] = \<const0> ;
  assign rxctrl2_out[5] = \<const0> ;
  assign rxctrl2_out[4] = \<const0> ;
  assign rxctrl2_out[3] = \<const0> ;
  assign rxctrl2_out[2] = \<const0> ;
  assign rxctrl2_out[1:0] = \^rxctrl2_out [1:0];
  assign rxctrl3_out[7] = \<const0> ;
  assign rxctrl3_out[6] = \<const0> ;
  assign rxctrl3_out[5] = \<const0> ;
  assign rxctrl3_out[4] = \<const0> ;
  assign rxctrl3_out[3] = \<const0> ;
  assign rxctrl3_out[2] = \<const0> ;
  assign rxctrl3_out[1:0] = \^rxctrl3_out [1:0];
  assign rxpmaresetdone_out[0] = \<const0> ;
  assign rxprbserr_out[0] = \<const0> ;
  assign rxresetdone_out[0] = \<const0> ;
  assign txbufstatus_out[1] = \^txbufstatus_out [1];
  assign txbufstatus_out[0] = \<const0> ;
  assign txpmaresetdone_out[0] = \<const0> ;
  assign txprgdivresetdone_out[0] = \<const0> ;
  assign txresetdone_out[0] = \<const0> ;
  GND GND
       (.G(\<const0> ));
  (* C_CHANNEL_ENABLE = "192'b000000000000000000000000000000000000000000000000000000000000000000000000000000000010000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000" *) 
  (* C_COMMON_SCALING_FACTOR = "1" *) 
  (* C_CPLL_VCO_FREQUENCY = "2500.000000" *) 
  (* C_ENABLE_COMMON_USRCLK = "0" *) 
  (* C_FORCE_COMMONS = "0" *) 
  (* C_FREERUN_FREQUENCY = "62.500000" *) 
  (* C_GT_REV = "57" *) 
  (* C_GT_TYPE = "2" *) 
  (* C_INCLUDE_CPLL_CAL = "2" *) 
  (* C_LOCATE_COMMON = "0" *) 
  (* C_LOCATE_IN_SYSTEM_IBERT_CORE = "2" *) 
  (* C_LOCATE_RESET_CONTROLLER = "0" *) 
  (* C_LOCATE_RX_BUFFER_BYPASS_CONTROLLER = "0" *) 
  (* C_LOCATE_RX_USER_CLOCKING = "1" *) 
  (* C_LOCATE_TX_BUFFER_BYPASS_CONTROLLER = "0" *) 
  (* C_LOCATE_TX_USER_CLOCKING = "1" *) 
  (* C_LOCATE_USER_DATA_WIDTH_SIZING = "0" *) 
  (* C_PCIE_CORECLK_FREQ = "250" *) 
  (* C_PCIE_ENABLE = "0" *) 
  (* C_RESET_CONTROLLER_INSTANCE_CTRL = "0" *) 
  (* C_RESET_SEQUENCE_INTERVAL = "0" *) 
  (* C_RX_BUFFBYPASS_MODE = "0" *) 
  (* C_RX_BUFFER_BYPASS_INSTANCE_CTRL = "0" *) 
  (* C_RX_BUFFER_MODE = "1" *) 
  (* C_RX_CB_DISP = "8'b00000000" *) 
  (* C_RX_CB_K = "8'b00000000" *) 
  (* C_RX_CB_LEN_SEQ = "1" *) 
  (* C_RX_CB_MAX_LEVEL = "1" *) 
  (* C_RX_CB_NUM_SEQ = "0" *) 
  (* C_RX_CB_VAL = "80'b00000000000000000000000000000000000000000000000000000000000000000000000000000000" *) 
  (* C_RX_CC_DISP = "8'b00000000" *) 
  (* C_RX_CC_ENABLE = "1" *) 
  (* C_RX_CC_K = "8'b00010001" *) 
  (* C_RX_CC_LEN_SEQ = "2" *) 
  (* C_RX_CC_NUM_SEQ = "2" *) 
  (* C_RX_CC_PERIODICITY = "5000" *) 
  (* C_RX_CC_VAL = "80'b00000000000000000000001011010100101111000000000000000000000000010100000010111100" *) 
  (* C_RX_COMMA_M_ENABLE = "1" *) 
  (* C_RX_COMMA_M_VAL = "10'b1010000011" *) 
  (* C_RX_COMMA_P_ENABLE = "1" *) 
  (* C_RX_COMMA_P_VAL = "10'b0101111100" *) 
  (* C_RX_DATA_DECODING = "1" *) 
  (* C_RX_ENABLE = "1" *) 
  (* C_RX_INT_DATA_WIDTH = "20" *) 
  (* C_RX_LINE_RATE = "1.250000" *) 
  (* C_RX_MASTER_CHANNEL_IDX = "109" *) 
  (* C_RX_OUTCLK_BUFG_GT_DIV = "1" *) 
  (* C_RX_OUTCLK_FREQUENCY = "62.500000" *) 
  (* C_RX_OUTCLK_SOURCE = "1" *) 
  (* C_RX_PLL_TYPE = "2" *) 
  (* C_RX_RECCLK_OUTPUT = "192'b000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000" *) 
  (* C_RX_REFCLK_FREQUENCY = "156.250000" *) 
  (* C_RX_SLIDE_MODE = "0" *) 
  (* C_RX_USER_CLOCKING_CONTENTS = "0" *) 
  (* C_RX_USER_CLOCKING_INSTANCE_CTRL = "0" *) 
  (* C_RX_USER_CLOCKING_RATIO_FSRC_FUSRCLK = "1" *) 
  (* C_RX_USER_CLOCKING_RATIO_FUSRCLK_FUSRCLK2 = "1" *) 
  (* C_RX_USER_CLOCKING_SOURCE = "0" *) 
  (* C_RX_USER_DATA_WIDTH = "16" *) 
  (* C_RX_USRCLK2_FREQUENCY = "62.500000" *) 
  (* C_RX_USRCLK_FREQUENCY = "62.500000" *) 
  (* C_SECONDARY_QPLL_ENABLE = "0" *) 
  (* C_SECONDARY_QPLL_REFCLK_FREQUENCY = "257.812500" *) 
  (* C_SIM_CPLL_CAL_BYPASS = "1" *) 
  (* C_TOTAL_NUM_CHANNELS = "1" *) 
  (* C_TOTAL_NUM_COMMONS = "0" *) 
  (* C_TOTAL_NUM_COMMONS_EXAMPLE = "0" *) 
  (* C_TXPROGDIV_FREQ_ENABLE = "1" *) 
  (* C_TXPROGDIV_FREQ_SOURCE = "2" *) 
  (* C_TXPROGDIV_FREQ_VAL = "125.000000" *) 
  (* C_TX_BUFFBYPASS_MODE = "0" *) 
  (* C_TX_BUFFER_BYPASS_INSTANCE_CTRL = "0" *) 
  (* C_TX_BUFFER_MODE = "1" *) 
  (* C_TX_DATA_ENCODING = "1" *) 
  (* C_TX_ENABLE = "1" *) 
  (* C_TX_INT_DATA_WIDTH = "20" *) 
  (* C_TX_LINE_RATE = "1.250000" *) 
  (* C_TX_MASTER_CHANNEL_IDX = "109" *) 
  (* C_TX_OUTCLK_BUFG_GT_DIV = "2" *) 
  (* C_TX_OUTCLK_FREQUENCY = "62.500000" *) 
  (* C_TX_OUTCLK_SOURCE = "4" *) 
  (* C_TX_PLL_TYPE = "2" *) 
  (* C_TX_REFCLK_FREQUENCY = "156.250000" *) 
  (* C_TX_USER_CLOCKING_CONTENTS = "0" *) 
  (* C_TX_USER_CLOCKING_INSTANCE_CTRL = "0" *) 
  (* C_TX_USER_CLOCKING_RATIO_FSRC_FUSRCLK = "1" *) 
  (* C_TX_USER_CLOCKING_RATIO_FUSRCLK_FUSRCLK2 = "1" *) 
  (* C_TX_USER_CLOCKING_SOURCE = "0" *) 
  (* C_TX_USER_DATA_WIDTH = "16" *) 
  (* C_TX_USRCLK2_FREQUENCY = "62.500000" *) 
  (* C_TX_USRCLK_FREQUENCY = "62.500000" *) 
  (* C_USER_GTPOWERGOOD_DELAY_EN = "1" *) 
  PCS_PMA_gt_gtwizard_top inst
       (.bgbypassb_in(1'b1),
        .bgmonitorenb_in(1'b1),
        .bgpdb_in(1'b1),
        .bgrcalovrd_in({1'b1,1'b1,1'b1,1'b1,1'b1}),
        .bgrcalovrdenb_in(1'b1),
        .bufgtce_out(NLW_inst_bufgtce_out_UNCONNECTED[0]),
        .bufgtcemask_out(NLW_inst_bufgtcemask_out_UNCONNECTED[2:0]),
        .bufgtdiv_out(NLW_inst_bufgtdiv_out_UNCONNECTED[8:0]),
        .bufgtreset_out(NLW_inst_bufgtreset_out_UNCONNECTED[0]),
        .bufgtrstmask_out(NLW_inst_bufgtrstmask_out_UNCONNECTED[2:0]),
        .cdrstepdir_in(1'b0),
        .cdrstepsq_in(1'b0),
        .cdrstepsx_in(1'b0),
        .cfgreset_in(1'b0),
        .clkrsvd0_in(1'b0),
        .clkrsvd1_in(1'b0),
        .cpllfbclklost_out(NLW_inst_cpllfbclklost_out_UNCONNECTED[0]),
        .cpllfreqlock_in(1'b0),
        .cplllock_out(NLW_inst_cplllock_out_UNCONNECTED[0]),
        .cplllockdetclk_in(1'b0),
        .cplllocken_in(1'b1),
        .cpllpd_in(1'b0),
        .cpllrefclklost_out(NLW_inst_cpllrefclklost_out_UNCONNECTED[0]),
        .cpllrefclksel_in({1'b0,1'b0,1'b1}),
        .cpllreset_in(1'b0),
        .dmonfiforeset_in(1'b0),
        .dmonitorclk_in(1'b0),
        .dmonitorout_out(NLW_inst_dmonitorout_out_UNCONNECTED[15:0]),
        .dmonitoroutclk_out(NLW_inst_dmonitoroutclk_out_UNCONNECTED[0]),
        .drpaddr_common_in({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .drpaddr_in({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .drpclk_common_in(1'b0),
        .drpclk_in(drpclk_in),
        .drpdi_common_in({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .drpdi_in({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .drpdo_common_out(NLW_inst_drpdo_common_out_UNCONNECTED[15:0]),
        .drpdo_out(NLW_inst_drpdo_out_UNCONNECTED[15:0]),
        .drpen_common_in(1'b0),
        .drpen_in(1'b0),
        .drprdy_common_out(NLW_inst_drprdy_common_out_UNCONNECTED[0]),
        .drprdy_out(NLW_inst_drprdy_out_UNCONNECTED[0]),
        .drprst_in(1'b0),
        .drpwe_common_in(1'b0),
        .drpwe_in(1'b0),
        .elpcaldvorwren_in(1'b0),
        .elpcalpaorwren_in(1'b0),
        .evoddphicaldone_in(1'b0),
        .evoddphicalstart_in(1'b0),
        .evoddphidrden_in(1'b0),
        .evoddphidwren_in(1'b0),
        .evoddphixrden_in(1'b0),
        .evoddphixwren_in(1'b0),
        .eyescandataerror_out(NLW_inst_eyescandataerror_out_UNCONNECTED[0]),
        .eyescanmode_in(1'b0),
        .eyescanreset_in(1'b0),
        .eyescantrigger_in(1'b0),
        .freqos_in(1'b0),
        .gtgrefclk0_in(1'b0),
        .gtgrefclk1_in(1'b0),
        .gtgrefclk_in(1'b0),
        .gthrxn_in(gthrxn_in),
        .gthrxp_in(gthrxp_in),
        .gthtxn_out(gthtxn_out),
        .gthtxp_out(gthtxp_out),
        .gtnorthrefclk00_in(1'b0),
        .gtnorthrefclk01_in(1'b0),
        .gtnorthrefclk0_in(1'b0),
        .gtnorthrefclk10_in(1'b0),
        .gtnorthrefclk11_in(1'b0),
        .gtnorthrefclk1_in(1'b0),
        .gtpowergood_out(gtpowergood_out),
        .gtrefclk00_in(1'b0),
        .gtrefclk01_in(1'b0),
        .gtrefclk0_in(gtrefclk0_in),
        .gtrefclk10_in(1'b0),
        .gtrefclk11_in(1'b0),
        .gtrefclk1_in(1'b0),
        .gtrefclkmonitor_out(NLW_inst_gtrefclkmonitor_out_UNCONNECTED[0]),
        .gtresetsel_in(1'b0),
        .gtrsvd_in({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .gtrxreset_in(1'b0),
        .gtrxresetsel_in(1'b0),
        .gtsouthrefclk00_in(1'b0),
        .gtsouthrefclk01_in(1'b0),
        .gtsouthrefclk0_in(1'b0),
        .gtsouthrefclk10_in(1'b0),
        .gtsouthrefclk11_in(1'b0),
        .gtsouthrefclk1_in(1'b0),
        .gttxreset_in(1'b0),
        .gttxresetsel_in(1'b0),
        .gtwiz_buffbypass_rx_done_out(NLW_inst_gtwiz_buffbypass_rx_done_out_UNCONNECTED[0]),
        .gtwiz_buffbypass_rx_error_out(NLW_inst_gtwiz_buffbypass_rx_error_out_UNCONNECTED[0]),
        .gtwiz_buffbypass_rx_reset_in(1'b0),
        .gtwiz_buffbypass_rx_start_user_in(1'b0),
        .gtwiz_buffbypass_tx_done_out(NLW_inst_gtwiz_buffbypass_tx_done_out_UNCONNECTED[0]),
        .gtwiz_buffbypass_tx_error_out(NLW_inst_gtwiz_buffbypass_tx_error_out_UNCONNECTED[0]),
        .gtwiz_buffbypass_tx_reset_in(1'b0),
        .gtwiz_buffbypass_tx_start_user_in(1'b0),
        .gtwiz_gthe3_cpll_cal_bufg_ce_in(1'b0),
        .gtwiz_gthe3_cpll_cal_cnt_tol_in({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .gtwiz_gthe3_cpll_cal_txoutclk_period_in({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .gtwiz_gthe4_cpll_cal_bufg_ce_in(1'b0),
        .gtwiz_gthe4_cpll_cal_cnt_tol_in({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .gtwiz_gthe4_cpll_cal_txoutclk_period_in({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .gtwiz_gtye4_cpll_cal_bufg_ce_in(1'b0),
        .gtwiz_gtye4_cpll_cal_cnt_tol_in({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .gtwiz_gtye4_cpll_cal_txoutclk_period_in({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .gtwiz_reset_all_in(gtwiz_reset_all_in),
        .gtwiz_reset_clk_freerun_in(1'b0),
        .gtwiz_reset_qpll0lock_in(1'b0),
        .gtwiz_reset_qpll0reset_out(NLW_inst_gtwiz_reset_qpll0reset_out_UNCONNECTED[0]),
        .gtwiz_reset_qpll1lock_in(1'b0),
        .gtwiz_reset_qpll1reset_out(NLW_inst_gtwiz_reset_qpll1reset_out_UNCONNECTED[0]),
        .gtwiz_reset_rx_cdr_stable_out(NLW_inst_gtwiz_reset_rx_cdr_stable_out_UNCONNECTED[0]),
        .gtwiz_reset_rx_datapath_in(gtwiz_reset_rx_datapath_in),
        .gtwiz_reset_rx_done_in(1'b0),
        .gtwiz_reset_rx_done_out(gtwiz_reset_rx_done_out),
        .gtwiz_reset_rx_pll_and_datapath_in(1'b0),
        .gtwiz_reset_tx_datapath_in(gtwiz_reset_tx_datapath_in),
        .gtwiz_reset_tx_done_in(1'b0),
        .gtwiz_reset_tx_done_out(gtwiz_reset_tx_done_out),
        .gtwiz_reset_tx_pll_and_datapath_in(1'b0),
        .gtwiz_userclk_rx_active_in(1'b0),
        .gtwiz_userclk_rx_active_out(NLW_inst_gtwiz_userclk_rx_active_out_UNCONNECTED[0]),
        .gtwiz_userclk_rx_reset_in(1'b0),
        .gtwiz_userclk_rx_srcclk_out(NLW_inst_gtwiz_userclk_rx_srcclk_out_UNCONNECTED[0]),
        .gtwiz_userclk_rx_usrclk2_out(NLW_inst_gtwiz_userclk_rx_usrclk2_out_UNCONNECTED[0]),
        .gtwiz_userclk_rx_usrclk_out(NLW_inst_gtwiz_userclk_rx_usrclk_out_UNCONNECTED[0]),
        .gtwiz_userclk_tx_active_in(1'b1),
        .gtwiz_userclk_tx_active_out(NLW_inst_gtwiz_userclk_tx_active_out_UNCONNECTED[0]),
        .gtwiz_userclk_tx_reset_in(1'b0),
        .gtwiz_userclk_tx_srcclk_out(NLW_inst_gtwiz_userclk_tx_srcclk_out_UNCONNECTED[0]),
        .gtwiz_userclk_tx_usrclk2_out(NLW_inst_gtwiz_userclk_tx_usrclk2_out_UNCONNECTED[0]),
        .gtwiz_userclk_tx_usrclk_out(NLW_inst_gtwiz_userclk_tx_usrclk_out_UNCONNECTED[0]),
        .gtwiz_userdata_rx_out(gtwiz_userdata_rx_out),
        .gtwiz_userdata_tx_in(gtwiz_userdata_tx_in),
        .gtyrxn_in(1'b0),
        .gtyrxp_in(1'b0),
        .gtytxn_out(NLW_inst_gtytxn_out_UNCONNECTED[0]),
        .gtytxp_out(NLW_inst_gtytxp_out_UNCONNECTED[0]),
        .incpctrl_in(1'b0),
        .loopback_in({1'b0,1'b0,1'b0}),
        .looprsvd_in(1'b0),
        .lopt(lopt),
        .lopt_1(lopt_1),
        .lopt_2(lopt_2),
        .lopt_3(lopt_3),
        .lopt_4(lopt_4),
        .lopt_5(lopt_5),
        .lpbkrxtxseren_in(1'b0),
        .lpbktxrxseren_in(1'b0),
        .pcieeqrxeqadaptdone_in(1'b0),
        .pcierategen3_out(NLW_inst_pcierategen3_out_UNCONNECTED[0]),
        .pcierateidle_out(NLW_inst_pcierateidle_out_UNCONNECTED[0]),
        .pcierateqpll0_in({1'b0,1'b0,1'b0}),
        .pcierateqpll1_in({1'b0,1'b0,1'b0}),
        .pcierateqpllpd_out(NLW_inst_pcierateqpllpd_out_UNCONNECTED[1:0]),
        .pcierateqpllreset_out(NLW_inst_pcierateqpllreset_out_UNCONNECTED[1:0]),
        .pcierstidle_in(1'b0),
        .pciersttxsyncstart_in(1'b0),
        .pciesynctxsyncdone_out(NLW_inst_pciesynctxsyncdone_out_UNCONNECTED[0]),
        .pcieusergen3rdy_out(NLW_inst_pcieusergen3rdy_out_UNCONNECTED[0]),
        .pcieuserphystatusrst_out(NLW_inst_pcieuserphystatusrst_out_UNCONNECTED[0]),
        .pcieuserratedone_in(1'b0),
        .pcieuserratestart_out(NLW_inst_pcieuserratestart_out_UNCONNECTED[0]),
        .pcsrsvdin2_in(1'b0),
        .pcsrsvdin_in({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .pcsrsvdout_out(NLW_inst_pcsrsvdout_out_UNCONNECTED[15:0]),
        .phystatus_out(NLW_inst_phystatus_out_UNCONNECTED[0]),
        .pinrsrvdas_out(NLW_inst_pinrsrvdas_out_UNCONNECTED[15:0]),
        .pmarsvd0_in({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .pmarsvd1_in({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .pmarsvdin_in(1'b0),
        .pmarsvdout0_out(NLW_inst_pmarsvdout0_out_UNCONNECTED[7:0]),
        .pmarsvdout1_out(NLW_inst_pmarsvdout1_out_UNCONNECTED[7:0]),
        .powerpresent_out(NLW_inst_powerpresent_out_UNCONNECTED[0]),
        .qpll0clk_in(1'b0),
        .qpll0clkrsvd0_in(1'b0),
        .qpll0clkrsvd1_in(1'b0),
        .qpll0fbclklost_out(NLW_inst_qpll0fbclklost_out_UNCONNECTED[0]),
        .qpll0fbdiv_in({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .qpll0freqlock_in(1'b0),
        .qpll0lock_out(NLW_inst_qpll0lock_out_UNCONNECTED[0]),
        .qpll0lockdetclk_in(1'b0),
        .qpll0locken_in(1'b0),
        .qpll0outclk_out(NLW_inst_qpll0outclk_out_UNCONNECTED[0]),
        .qpll0outrefclk_out(NLW_inst_qpll0outrefclk_out_UNCONNECTED[0]),
        .qpll0pd_in(1'b1),
        .qpll0refclk_in(1'b0),
        .qpll0refclklost_out(NLW_inst_qpll0refclklost_out_UNCONNECTED[0]),
        .qpll0refclksel_in({1'b0,1'b0,1'b1}),
        .qpll0reset_in(1'b1),
        .qpll1clk_in(1'b0),
        .qpll1clkrsvd0_in(1'b0),
        .qpll1clkrsvd1_in(1'b0),
        .qpll1fbclklost_out(NLW_inst_qpll1fbclklost_out_UNCONNECTED[0]),
        .qpll1fbdiv_in({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .qpll1freqlock_in(1'b0),
        .qpll1lock_out(NLW_inst_qpll1lock_out_UNCONNECTED[0]),
        .qpll1lockdetclk_in(1'b0),
        .qpll1locken_in(1'b0),
        .qpll1outclk_out(NLW_inst_qpll1outclk_out_UNCONNECTED[0]),
        .qpll1outrefclk_out(NLW_inst_qpll1outrefclk_out_UNCONNECTED[0]),
        .qpll1pd_in(1'b1),
        .qpll1refclk_in(1'b0),
        .qpll1refclklost_out(NLW_inst_qpll1refclklost_out_UNCONNECTED[0]),
        .qpll1refclksel_in({1'b0,1'b0,1'b1}),
        .qpll1reset_in(1'b1),
        .qplldmonitor0_out(NLW_inst_qplldmonitor0_out_UNCONNECTED[7:0]),
        .qplldmonitor1_out(NLW_inst_qplldmonitor1_out_UNCONNECTED[7:0]),
        .qpllrsvd1_in({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .qpllrsvd2_in({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .qpllrsvd3_in({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .qpllrsvd4_in({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .rcalenb_in(1'b1),
        .refclkoutmonitor0_out(NLW_inst_refclkoutmonitor0_out_UNCONNECTED[0]),
        .refclkoutmonitor1_out(NLW_inst_refclkoutmonitor1_out_UNCONNECTED[0]),
        .resetexception_out(NLW_inst_resetexception_out_UNCONNECTED[0]),
        .resetovrd_in(1'b0),
        .rstclkentx_in(1'b0),
        .rx8b10ben_in(1'b1),
        .rxafecfoken_in(1'b1),
        .rxbufreset_in(1'b0),
        .rxbufstatus_out({\^rxbufstatus_out ,NLW_inst_rxbufstatus_out_UNCONNECTED[1:0]}),
        .rxbyteisaligned_out(NLW_inst_rxbyteisaligned_out_UNCONNECTED[0]),
        .rxbyterealign_out(NLW_inst_rxbyterealign_out_UNCONNECTED[0]),
        .rxcdrfreqreset_in(1'b0),
        .rxcdrhold_in(1'b0),
        .rxcdrlock_out(NLW_inst_rxcdrlock_out_UNCONNECTED[0]),
        .rxcdrovrden_in(1'b0),
        .rxcdrphdone_out(NLW_inst_rxcdrphdone_out_UNCONNECTED[0]),
        .rxcdrreset_in(1'b0),
        .rxcdrresetrsv_in(1'b0),
        .rxchanbondseq_out(NLW_inst_rxchanbondseq_out_UNCONNECTED[0]),
        .rxchanisaligned_out(NLW_inst_rxchanisaligned_out_UNCONNECTED[0]),
        .rxchanrealign_out(NLW_inst_rxchanrealign_out_UNCONNECTED[0]),
        .rxchbonden_in(1'b0),
        .rxchbondi_in({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .rxchbondlevel_in({1'b0,1'b0,1'b0}),
        .rxchbondmaster_in(1'b0),
        .rxchbondo_out(NLW_inst_rxchbondo_out_UNCONNECTED[4:0]),
        .rxchbondslave_in(1'b0),
        .rxckcaldone_out(NLW_inst_rxckcaldone_out_UNCONNECTED[0]),
        .rxckcalreset_in(1'b0),
        .rxckcalstart_in({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .rxclkcorcnt_out(rxclkcorcnt_out),
        .rxcominitdet_out(NLW_inst_rxcominitdet_out_UNCONNECTED[0]),
        .rxcommadet_out(NLW_inst_rxcommadet_out_UNCONNECTED[0]),
        .rxcommadeten_in(1'b1),
        .rxcomsasdet_out(NLW_inst_rxcomsasdet_out_UNCONNECTED[0]),
        .rxcomwakedet_out(NLW_inst_rxcomwakedet_out_UNCONNECTED[0]),
        .rxctrl0_out({NLW_inst_rxctrl0_out_UNCONNECTED[15:2],\^rxctrl0_out }),
        .rxctrl1_out({NLW_inst_rxctrl1_out_UNCONNECTED[15:2],\^rxctrl1_out }),
        .rxctrl2_out({NLW_inst_rxctrl2_out_UNCONNECTED[7:2],\^rxctrl2_out }),
        .rxctrl3_out({NLW_inst_rxctrl3_out_UNCONNECTED[7:2],\^rxctrl3_out }),
        .rxdata_out(NLW_inst_rxdata_out_UNCONNECTED[127:0]),
        .rxdataextendrsvd_out(NLW_inst_rxdataextendrsvd_out_UNCONNECTED[7:0]),
        .rxdatavalid_out(NLW_inst_rxdatavalid_out_UNCONNECTED[1:0]),
        .rxdccforcestart_in(1'b0),
        .rxdfeagcctrl_in({1'b0,1'b1}),
        .rxdfeagchold_in(1'b0),
        .rxdfeagcovrden_in(1'b0),
        .rxdfecfokfcnum_in({1'b1,1'b1,1'b0,1'b1}),
        .rxdfecfokfen_in(1'b0),
        .rxdfecfokfpulse_in(1'b0),
        .rxdfecfokhold_in(1'b0),
        .rxdfecfokovren_in(1'b0),
        .rxdfekhhold_in(1'b0),
        .rxdfekhovrden_in(1'b0),
        .rxdfelfhold_in(1'b0),
        .rxdfelfovrden_in(1'b0),
        .rxdfelpmreset_in(1'b0),
        .rxdfetap10hold_in(1'b0),
        .rxdfetap10ovrden_in(1'b0),
        .rxdfetap11hold_in(1'b0),
        .rxdfetap11ovrden_in(1'b0),
        .rxdfetap12hold_in(1'b0),
        .rxdfetap12ovrden_in(1'b0),
        .rxdfetap13hold_in(1'b0),
        .rxdfetap13ovrden_in(1'b0),
        .rxdfetap14hold_in(1'b0),
        .rxdfetap14ovrden_in(1'b0),
        .rxdfetap15hold_in(1'b0),
        .rxdfetap15ovrden_in(1'b0),
        .rxdfetap2hold_in(1'b0),
        .rxdfetap2ovrden_in(1'b0),
        .rxdfetap3hold_in(1'b0),
        .rxdfetap3ovrden_in(1'b0),
        .rxdfetap4hold_in(1'b0),
        .rxdfetap4ovrden_in(1'b0),
        .rxdfetap5hold_in(1'b0),
        .rxdfetap5ovrden_in(1'b0),
        .rxdfetap6hold_in(1'b0),
        .rxdfetap6ovrden_in(1'b0),
        .rxdfetap7hold_in(1'b0),
        .rxdfetap7ovrden_in(1'b0),
        .rxdfetap8hold_in(1'b0),
        .rxdfetap8ovrden_in(1'b0),
        .rxdfetap9hold_in(1'b0),
        .rxdfetap9ovrden_in(1'b0),
        .rxdfeuthold_in(1'b0),
        .rxdfeutovrden_in(1'b0),
        .rxdfevphold_in(1'b0),
        .rxdfevpovrden_in(1'b0),
        .rxdfevsen_in(1'b0),
        .rxdfexyden_in(1'b1),
        .rxdlybypass_in(1'b1),
        .rxdlyen_in(1'b0),
        .rxdlyovrden_in(1'b0),
        .rxdlysreset_in(1'b0),
        .rxdlysresetdone_out(NLW_inst_rxdlysresetdone_out_UNCONNECTED[0]),
        .rxelecidle_out(NLW_inst_rxelecidle_out_UNCONNECTED[0]),
        .rxelecidlemode_in({1'b1,1'b1}),
        .rxeqtraining_in(1'b0),
        .rxgearboxslip_in(1'b0),
        .rxheader_out(NLW_inst_rxheader_out_UNCONNECTED[5:0]),
        .rxheadervalid_out(NLW_inst_rxheadervalid_out_UNCONNECTED[1:0]),
        .rxlatclk_in(1'b0),
        .rxlfpstresetdet_out(NLW_inst_rxlfpstresetdet_out_UNCONNECTED[0]),
        .rxlfpsu2lpexitdet_out(NLW_inst_rxlfpsu2lpexitdet_out_UNCONNECTED[0]),
        .rxlfpsu3wakedet_out(NLW_inst_rxlfpsu3wakedet_out_UNCONNECTED[0]),
        .rxlpmen_in(1'b1),
        .rxlpmgchold_in(1'b0),
        .rxlpmgcovrden_in(1'b0),
        .rxlpmhfhold_in(1'b0),
        .rxlpmhfovrden_in(1'b0),
        .rxlpmlfhold_in(1'b0),
        .rxlpmlfklovrden_in(1'b0),
        .rxlpmoshold_in(1'b0),
        .rxlpmosovrden_in(1'b0),
        .rxmcommaalignen_in(rxmcommaalignen_in),
        .rxmonitorout_out(NLW_inst_rxmonitorout_out_UNCONNECTED[7:0]),
        .rxmonitorsel_in({1'b0,1'b0}),
        .rxoobreset_in(1'b0),
        .rxoscalreset_in(1'b0),
        .rxoshold_in(1'b0),
        .rxosintcfg_in(1'b0),
        .rxosintdone_out(NLW_inst_rxosintdone_out_UNCONNECTED[0]),
        .rxosinten_in(1'b0),
        .rxosinthold_in(1'b0),
        .rxosintovrden_in(1'b0),
        .rxosintstarted_out(NLW_inst_rxosintstarted_out_UNCONNECTED[0]),
        .rxosintstrobe_in(1'b0),
        .rxosintstrobedone_out(NLW_inst_rxosintstrobedone_out_UNCONNECTED[0]),
        .rxosintstrobestarted_out(NLW_inst_rxosintstrobestarted_out_UNCONNECTED[0]),
        .rxosinttestovrden_in(1'b0),
        .rxosovrden_in(1'b0),
        .rxoutclk_out(rxoutclk_out),
        .rxoutclkfabric_out(NLW_inst_rxoutclkfabric_out_UNCONNECTED[0]),
        .rxoutclkpcs_out(NLW_inst_rxoutclkpcs_out_UNCONNECTED[0]),
        .rxoutclksel_in({1'b0,1'b1,1'b0}),
        .rxpcommaalignen_in(1'b0),
        .rxpcsreset_in(1'b0),
        .rxpd_in({rxpd_in[1],1'b0}),
        .rxphalign_in(1'b0),
        .rxphaligndone_out(NLW_inst_rxphaligndone_out_UNCONNECTED[0]),
        .rxphalignen_in(1'b0),
        .rxphalignerr_out(NLW_inst_rxphalignerr_out_UNCONNECTED[0]),
        .rxphdlypd_in(1'b1),
        .rxphdlyreset_in(1'b0),
        .rxphovrden_in(1'b0),
        .rxpllclksel_in({1'b0,1'b0}),
        .rxpmareset_in(1'b0),
        .rxpmaresetdone_out(NLW_inst_rxpmaresetdone_out_UNCONNECTED[0]),
        .rxpolarity_in(1'b0),
        .rxprbscntreset_in(1'b0),
        .rxprbserr_out(NLW_inst_rxprbserr_out_UNCONNECTED[0]),
        .rxprbslocked_out(NLW_inst_rxprbslocked_out_UNCONNECTED[0]),
        .rxprbssel_in({1'b0,1'b0,1'b0,1'b0}),
        .rxprgdivresetdone_out(NLW_inst_rxprgdivresetdone_out_UNCONNECTED[0]),
        .rxprogdivreset_in(1'b0),
        .rxqpien_in(1'b0),
        .rxqpisenn_out(NLW_inst_rxqpisenn_out_UNCONNECTED[0]),
        .rxqpisenp_out(NLW_inst_rxqpisenp_out_UNCONNECTED[0]),
        .rxrate_in({1'b0,1'b0,1'b0}),
        .rxratedone_out(NLW_inst_rxratedone_out_UNCONNECTED[0]),
        .rxratemode_in(1'b0),
        .rxrecclk0_sel_out(NLW_inst_rxrecclk0_sel_out_UNCONNECTED[0]),
        .rxrecclk0sel_out(NLW_inst_rxrecclk0sel_out_UNCONNECTED[1:0]),
        .rxrecclk1_sel_out(NLW_inst_rxrecclk1_sel_out_UNCONNECTED[0]),
        .rxrecclk1sel_out(NLW_inst_rxrecclk1sel_out_UNCONNECTED[1:0]),
        .rxrecclkout_out(NLW_inst_rxrecclkout_out_UNCONNECTED[0]),
        .rxresetdone_out(NLW_inst_rxresetdone_out_UNCONNECTED[0]),
        .rxslide_in(1'b0),
        .rxsliderdy_out(NLW_inst_rxsliderdy_out_UNCONNECTED[0]),
        .rxslipdone_out(NLW_inst_rxslipdone_out_UNCONNECTED[0]),
        .rxslipoutclk_in(1'b0),
        .rxslipoutclkrdy_out(NLW_inst_rxslipoutclkrdy_out_UNCONNECTED[0]),
        .rxslippma_in(1'b0),
        .rxslippmardy_out(NLW_inst_rxslippmardy_out_UNCONNECTED[0]),
        .rxstartofseq_out(NLW_inst_rxstartofseq_out_UNCONNECTED[1:0]),
        .rxstatus_out(NLW_inst_rxstatus_out_UNCONNECTED[2:0]),
        .rxsyncallin_in(1'b0),
        .rxsyncdone_out(NLW_inst_rxsyncdone_out_UNCONNECTED[0]),
        .rxsyncin_in(1'b0),
        .rxsyncmode_in(1'b0),
        .rxsyncout_out(NLW_inst_rxsyncout_out_UNCONNECTED[0]),
        .rxsysclksel_in({1'b0,1'b0}),
        .rxtermination_in(1'b0),
        .rxuserrdy_in(1'b1),
        .rxusrclk2_in(1'b0),
        .rxusrclk_in(rxusrclk_in),
        .rxvalid_out(NLW_inst_rxvalid_out_UNCONNECTED[0]),
        .sdm0data_in({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .sdm0finalout_out(NLW_inst_sdm0finalout_out_UNCONNECTED[3:0]),
        .sdm0reset_in(1'b0),
        .sdm0testdata_out(NLW_inst_sdm0testdata_out_UNCONNECTED[14:0]),
        .sdm0toggle_in(1'b0),
        .sdm0width_in({1'b0,1'b0}),
        .sdm1data_in({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .sdm1finalout_out(NLW_inst_sdm1finalout_out_UNCONNECTED[3:0]),
        .sdm1reset_in(1'b0),
        .sdm1testdata_out(NLW_inst_sdm1testdata_out_UNCONNECTED[14:0]),
        .sdm1toggle_in(1'b0),
        .sdm1width_in({1'b0,1'b0}),
        .sigvalidclk_in(1'b0),
        .tcongpi_in({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .tcongpo_out(NLW_inst_tcongpo_out_UNCONNECTED[9:0]),
        .tconpowerup_in(1'b0),
        .tconreset_in({1'b0,1'b0}),
        .tconrsvdin1_in({1'b0,1'b0}),
        .tconrsvdout0_out(NLW_inst_tconrsvdout0_out_UNCONNECTED[0]),
        .tstin_in({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .tx8b10bbypass_in({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .tx8b10ben_in(1'b1),
        .txbufdiffctrl_in(1'b0),
        .txbufstatus_out({\^txbufstatus_out ,NLW_inst_txbufstatus_out_UNCONNECTED[0]}),
        .txcomfinish_out(NLW_inst_txcomfinish_out_UNCONNECTED[0]),
        .txcominit_in(1'b0),
        .txcomsas_in(1'b0),
        .txcomwake_in(1'b0),
        .txctrl0_in({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,txctrl0_in[1:0]}),
        .txctrl1_in({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,txctrl1_in[1:0]}),
        .txctrl2_in({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,txctrl2_in[1:0]}),
        .txdata_in({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .txdataextendrsvd_in({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .txdccdone_out(NLW_inst_txdccdone_out_UNCONNECTED[0]),
        .txdccforcestart_in(1'b0),
        .txdccreset_in(1'b0),
        .txdeemph_in({1'b0,1'b0}),
        .txdetectrx_in(1'b0),
        .txdiffctrl_in({1'b1,1'b1,1'b0,1'b0,1'b0}),
        .txdiffpd_in(1'b0),
        .txdlybypass_in(1'b1),
        .txdlyen_in(1'b0),
        .txdlyhold_in(1'b0),
        .txdlyovrden_in(1'b0),
        .txdlysreset_in(1'b0),
        .txdlysresetdone_out(NLW_inst_txdlysresetdone_out_UNCONNECTED[0]),
        .txdlyupdown_in(1'b0),
        .txelecidle_in(txelecidle_in),
        .txelforcestart_in(1'b0),
        .txheader_in({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .txinhibit_in(1'b0),
        .txlatclk_in(1'b0),
        .txlfpstreset_in(1'b0),
        .txlfpsu2lpexit_in(1'b0),
        .txlfpsu3wake_in(1'b0),
        .txmaincursor_in({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .txmargin_in({1'b0,1'b0,1'b0}),
        .txmuxdcdexhold_in(1'b0),
        .txmuxdcdorwren_in(1'b0),
        .txoneszeros_in(1'b0),
        .txoutclk_out(txoutclk_out),
        .txoutclkfabric_out(NLW_inst_txoutclkfabric_out_UNCONNECTED[0]),
        .txoutclkpcs_out(NLW_inst_txoutclkpcs_out_UNCONNECTED[0]),
        .txoutclksel_in({1'b1,1'b0,1'b1}),
        .txpcsreset_in(1'b0),
        .txpd_in({1'b0,1'b0}),
        .txpdelecidlemode_in(1'b0),
        .txphalign_in(1'b0),
        .txphaligndone_out(NLW_inst_txphaligndone_out_UNCONNECTED[0]),
        .txphalignen_in(1'b0),
        .txphdlypd_in(1'b1),
        .txphdlyreset_in(1'b0),
        .txphdlytstclk_in(1'b0),
        .txphinit_in(1'b0),
        .txphinitdone_out(NLW_inst_txphinitdone_out_UNCONNECTED[0]),
        .txphovrden_in(1'b0),
        .txpippmen_in(1'b0),
        .txpippmovrden_in(1'b0),
        .txpippmpd_in(1'b0),
        .txpippmsel_in(1'b0),
        .txpippmstepsize_in({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .txpisopd_in(1'b0),
        .txpllclksel_in({1'b0,1'b0}),
        .txpmareset_in(1'b0),
        .txpmaresetdone_out(NLW_inst_txpmaresetdone_out_UNCONNECTED[0]),
        .txpolarity_in(1'b0),
        .txpostcursor_in({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .txpostcursorinv_in(1'b0),
        .txprbsforceerr_in(1'b0),
        .txprbssel_in({1'b0,1'b0,1'b0,1'b0}),
        .txprecursor_in({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .txprecursorinv_in(1'b0),
        .txprgdivresetdone_out(NLW_inst_txprgdivresetdone_out_UNCONNECTED[0]),
        .txprogdivreset_in(1'b0),
        .txqpibiasen_in(1'b0),
        .txqpisenn_out(NLW_inst_txqpisenn_out_UNCONNECTED[0]),
        .txqpisenp_out(NLW_inst_txqpisenp_out_UNCONNECTED[0]),
        .txqpistrongpdown_in(1'b0),
        .txqpiweakpup_in(1'b0),
        .txrate_in({1'b0,1'b0,1'b0}),
        .txratedone_out(NLW_inst_txratedone_out_UNCONNECTED[0]),
        .txratemode_in(1'b0),
        .txresetdone_out(NLW_inst_txresetdone_out_UNCONNECTED[0]),
        .txsequence_in({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .txswing_in(1'b0),
        .txsyncallin_in(1'b0),
        .txsyncdone_out(NLW_inst_txsyncdone_out_UNCONNECTED[0]),
        .txsyncin_in(1'b0),
        .txsyncmode_in(1'b0),
        .txsyncout_out(NLW_inst_txsyncout_out_UNCONNECTED[0]),
        .txsysclksel_in({1'b0,1'b0}),
        .txuserrdy_in(1'b1),
        .txusrclk2_in(1'b0),
        .txusrclk_in(1'b0),
        .ubcfgstreamen_in(1'b0),
        .ubdaddr_out(NLW_inst_ubdaddr_out_UNCONNECTED[0]),
        .ubden_out(NLW_inst_ubden_out_UNCONNECTED[0]),
        .ubdi_out(NLW_inst_ubdi_out_UNCONNECTED[0]),
        .ubdo_in(1'b0),
        .ubdrdy_in(1'b0),
        .ubdwe_out(NLW_inst_ubdwe_out_UNCONNECTED[0]),
        .ubenable_in(1'b0),
        .ubgpi_in(1'b0),
        .ubintr_in(1'b0),
        .ubiolmbrst_in(1'b0),
        .ubmbrst_in(1'b0),
        .ubmdmcapture_in(1'b0),
        .ubmdmdbgrst_in(1'b0),
        .ubmdmdbgupdate_in(1'b0),
        .ubmdmregen_in(1'b0),
        .ubmdmshift_in(1'b0),
        .ubmdmsysrst_in(1'b0),
        .ubmdmtck_in(1'b0),
        .ubmdmtdi_in(1'b0),
        .ubmdmtdo_out(NLW_inst_ubmdmtdo_out_UNCONNECTED[0]),
        .ubrsvdout_out(NLW_inst_ubrsvdout_out_UNCONNECTED[0]),
        .ubtxuart_out(NLW_inst_ubtxuart_out_UNCONNECTED[0]));
endmodule

module PCS_PMA_gt_gthe4_channel_wrapper
   (in0,
    \gen_gtwizard_gthe4.drprdy_int ,
    gthtxn_out,
    gthtxp_out,
    \gen_gtwizard_gthe4.gtpowergood_int ,
    rxcdrlock_out,
    rxoutclk_out,
    rxoutclkpcs_out,
    gtwiz_userclk_rx_active_out,
    rxresetdone_out,
    txoutclk_out,
    \gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST ,
    txresetdone_out,
    gtwiz_userdata_rx_out,
    D,
    rxctrl0_out,
    rxctrl1_out,
    rxclkcorcnt_out,
    txbufstatus_out,
    rxbufstatus_out,
    rxctrl2_out,
    rxctrl3_out,
    \gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_0 ,
    \gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_1 ,
    \gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_2 ,
    drpclk_in,
    DEN_O,
    DWE_O,
    gthrxn_in,
    gthrxp_in,
    gtrefclk0_in,
    \gen_gtwizard_gthe4.delay_pwrgood_gtrxreset_int ,
    \gen_gtwizard_gthe4.gttxreset_int ,
    rxmcommaalignen_in,
    \gen_gtwizard_gthe4.rxprogdivreset_int ,
    RXRATE,
    \gen_gtwizard_gthe4.rxuserrdy_int ,
    rxusrclk_in,
    txelecidle_in,
    \gen_gtwizard_gthe4.txprogdivreset_ch_int ,
    \gen_gtwizard_gthe4.txuserrdy_int ,
    gtwiz_userdata_tx_in,
    Q,
    txctrl0_in,
    txctrl1_in,
    RXPD,
    \gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_3 ,
    txctrl2_in,
    \gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_4 ,
    lopt,
    lopt_1,
    lopt_2,
    lopt_3,
    lopt_4,
    lopt_5);
  output in0;
  output \gen_gtwizard_gthe4.drprdy_int ;
  output [0:0]gthtxn_out;
  output [0:0]gthtxp_out;
  output \gen_gtwizard_gthe4.gtpowergood_int ;
  output [0:0]rxcdrlock_out;
  output [0:0]rxoutclk_out;
  output [0:0]rxoutclkpcs_out;
  output [0:0]gtwiz_userclk_rx_active_out;
  output [0:0]rxresetdone_out;
  output [0:0]txoutclk_out;
  output \gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST ;
  output [0:0]txresetdone_out;
  output [15:0]gtwiz_userdata_rx_out;
  output [15:0]D;
  output [1:0]rxctrl0_out;
  output [1:0]rxctrl1_out;
  output [1:0]rxclkcorcnt_out;
  output [0:0]txbufstatus_out;
  output [0:0]rxbufstatus_out;
  output [1:0]rxctrl2_out;
  output [1:0]rxctrl3_out;
  output \gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_0 ;
  input \gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_1 ;
  input \gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_2 ;
  input [0:0]drpclk_in;
  input DEN_O;
  input DWE_O;
  input [0:0]gthrxn_in;
  input [0:0]gthrxp_in;
  input [0:0]gtrefclk0_in;
  input \gen_gtwizard_gthe4.delay_pwrgood_gtrxreset_int ;
  input \gen_gtwizard_gthe4.gttxreset_int ;
  input [0:0]rxmcommaalignen_in;
  input \gen_gtwizard_gthe4.rxprogdivreset_int ;
  input [0:0]RXRATE;
  input \gen_gtwizard_gthe4.rxuserrdy_int ;
  input [0:0]rxusrclk_in;
  input [0:0]txelecidle_in;
  input \gen_gtwizard_gthe4.txprogdivreset_ch_int ;
  input \gen_gtwizard_gthe4.txuserrdy_int ;
  input [15:0]gtwiz_userdata_tx_in;
  input [15:0]Q;
  input [1:0]txctrl0_in;
  input [1:0]txctrl1_in;
  input [0:0]RXPD;
  input [2:0]\gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_3 ;
  input [1:0]txctrl2_in;
  input [6:0]\gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_4 ;
  input lopt;
  input lopt_1;
  output lopt_2;
  output lopt_3;
  output lopt_4;
  output lopt_5;

  wire [15:0]D;
  wire DEN_O;
  wire DWE_O;
  wire [15:0]Q;
  wire [0:0]RXPD;
  wire [0:0]RXRATE;
  wire [0:0]drpclk_in;
  wire \gen_gtwizard_gthe4.delay_pwrgood_gtrxreset_int ;
  wire \gen_gtwizard_gthe4.drprdy_int ;
  wire \gen_gtwizard_gthe4.gtpowergood_int ;
  wire \gen_gtwizard_gthe4.gttxreset_int ;
  wire \gen_gtwizard_gthe4.rxprogdivreset_int ;
  wire \gen_gtwizard_gthe4.rxuserrdy_int ;
  wire \gen_gtwizard_gthe4.txprogdivreset_ch_int ;
  wire \gen_gtwizard_gthe4.txuserrdy_int ;
  wire \gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST ;
  wire \gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_0 ;
  wire \gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_1 ;
  wire \gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_2 ;
  wire [2:0]\gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_3 ;
  wire [6:0]\gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_4 ;
  wire [0:0]gthrxn_in;
  wire [0:0]gthrxp_in;
  wire [0:0]gthtxn_out;
  wire [0:0]gthtxp_out;
  wire [0:0]gtrefclk0_in;
  wire [0:0]gtwiz_userclk_rx_active_out;
  wire [15:0]gtwiz_userdata_rx_out;
  wire [15:0]gtwiz_userdata_tx_in;
  wire in0;
  wire lopt;
  wire lopt_1;
  wire lopt_2;
  wire lopt_3;
  wire lopt_4;
  wire lopt_5;
  wire [0:0]rxbufstatus_out;
  wire [0:0]rxcdrlock_out;
  wire [1:0]rxclkcorcnt_out;
  wire [1:0]rxctrl0_out;
  wire [1:0]rxctrl1_out;
  wire [1:0]rxctrl2_out;
  wire [1:0]rxctrl3_out;
  wire [0:0]rxmcommaalignen_in;
  wire [0:0]rxoutclk_out;
  wire [0:0]rxoutclkpcs_out;
  wire [0:0]rxresetdone_out;
  wire [0:0]rxusrclk_in;
  wire [0:0]txbufstatus_out;
  wire [1:0]txctrl0_in;
  wire [1:0]txctrl1_in;
  wire [1:0]txctrl2_in;
  wire [0:0]txelecidle_in;
  wire [0:0]txoutclk_out;
  wire [0:0]txresetdone_out;

  PCS_PMA_gtwizard_ultrascale_v1_7_13_gthe4_channel channel_inst
       (.D(D),
        .DEN_O(DEN_O),
        .DWE_O(DWE_O),
        .Q(Q),
        .RXPD(RXPD),
        .RXRATE(RXRATE),
        .drpclk_in(drpclk_in),
        .\gen_gtwizard_gthe4.delay_pwrgood_gtrxreset_int (\gen_gtwizard_gthe4.delay_pwrgood_gtrxreset_int ),
        .\gen_gtwizard_gthe4.drprdy_int (\gen_gtwizard_gthe4.drprdy_int ),
        .\gen_gtwizard_gthe4.gtpowergood_int (\gen_gtwizard_gthe4.gtpowergood_int ),
        .\gen_gtwizard_gthe4.gttxreset_int (\gen_gtwizard_gthe4.gttxreset_int ),
        .\gen_gtwizard_gthe4.rxprogdivreset_int (\gen_gtwizard_gthe4.rxprogdivreset_int ),
        .\gen_gtwizard_gthe4.rxuserrdy_int (\gen_gtwizard_gthe4.rxuserrdy_int ),
        .\gen_gtwizard_gthe4.txprogdivreset_ch_int (\gen_gtwizard_gthe4.txprogdivreset_ch_int ),
        .\gen_gtwizard_gthe4.txuserrdy_int (\gen_gtwizard_gthe4.txuserrdy_int ),
        .\gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_0 (\gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST ),
        .\gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_1 (\gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_0 ),
        .\gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_2 (\gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_1 ),
        .\gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_3 (\gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_2 ),
        .\gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_4 (\gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_3 ),
        .\gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_5 (\gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_4 ),
        .gthrxn_in(gthrxn_in),
        .gthrxp_in(gthrxp_in),
        .gthtxn_out(gthtxn_out),
        .gthtxp_out(gthtxp_out),
        .gtrefclk0_in(gtrefclk0_in),
        .gtwiz_userclk_rx_active_out(gtwiz_userclk_rx_active_out),
        .gtwiz_userdata_rx_out(gtwiz_userdata_rx_out),
        .gtwiz_userdata_tx_in(gtwiz_userdata_tx_in),
        .in0(in0),
        .lopt(lopt),
        .lopt_1(lopt_1),
        .lopt_2(lopt_2),
        .lopt_3(lopt_3),
        .lopt_4(lopt_4),
        .lopt_5(lopt_5),
        .rxbufstatus_out(rxbufstatus_out),
        .rxcdrlock_out(rxcdrlock_out),
        .rxclkcorcnt_out(rxclkcorcnt_out),
        .rxctrl0_out(rxctrl0_out),
        .rxctrl1_out(rxctrl1_out),
        .rxctrl2_out(rxctrl2_out),
        .rxctrl3_out(rxctrl3_out),
        .rxmcommaalignen_in(rxmcommaalignen_in),
        .rxoutclk_out(rxoutclk_out),
        .rxoutclkpcs_out(rxoutclkpcs_out),
        .rxresetdone_out(rxresetdone_out),
        .rxusrclk_in(rxusrclk_in),
        .txbufstatus_out(txbufstatus_out),
        .txctrl0_in(txctrl0_in),
        .txctrl1_in(txctrl1_in),
        .txctrl2_in(txctrl2_in),
        .txelecidle_in(txelecidle_in),
        .txoutclk_out(txoutclk_out),
        .txresetdone_out(txresetdone_out));
endmodule

module PCS_PMA_gt_gtwizard_gthe4
   (gtpowergood_out,
    gthtxn_out,
    gthtxp_out,
    rxoutclk_out,
    txoutclk_out,
    gtwiz_userdata_rx_out,
    rxctrl0_out,
    rxctrl1_out,
    rxclkcorcnt_out,
    txbufstatus_out,
    rxbufstatus_out,
    rxctrl2_out,
    rxctrl3_out,
    gtwiz_reset_tx_done_out,
    gtwiz_reset_rx_done_out,
    rxpd_in,
    drpclk_in,
    gthrxn_in,
    gthrxp_in,
    gtrefclk0_in,
    rxmcommaalignen_in,
    rxusrclk_in,
    txelecidle_in,
    gtwiz_userdata_tx_in,
    txctrl0_in,
    txctrl1_in,
    txctrl2_in,
    gtwiz_reset_all_in,
    gtwiz_reset_tx_datapath_in,
    gtwiz_reset_rx_datapath_in,
    lopt,
    lopt_1,
    lopt_2,
    lopt_3,
    lopt_4,
    lopt_5);
  output [0:0]gtpowergood_out;
  output [0:0]gthtxn_out;
  output [0:0]gthtxp_out;
  output [0:0]rxoutclk_out;
  output [0:0]txoutclk_out;
  output [15:0]gtwiz_userdata_rx_out;
  output [1:0]rxctrl0_out;
  output [1:0]rxctrl1_out;
  output [1:0]rxclkcorcnt_out;
  output [0:0]txbufstatus_out;
  output [0:0]rxbufstatus_out;
  output [1:0]rxctrl2_out;
  output [1:0]rxctrl3_out;
  output [0:0]gtwiz_reset_tx_done_out;
  output [0:0]gtwiz_reset_rx_done_out;
  input [0:0]rxpd_in;
  input [0:0]drpclk_in;
  input [0:0]gthrxn_in;
  input [0:0]gthrxp_in;
  input [0:0]gtrefclk0_in;
  input [0:0]rxmcommaalignen_in;
  input [0:0]rxusrclk_in;
  input [0:0]txelecidle_in;
  input [15:0]gtwiz_userdata_tx_in;
  input [1:0]txctrl0_in;
  input [1:0]txctrl1_in;
  input [1:0]txctrl2_in;
  input [0:0]gtwiz_reset_all_in;
  input [0:0]gtwiz_reset_tx_datapath_in;
  input [0:0]gtwiz_reset_rx_datapath_in;
  input lopt;
  input lopt_1;
  output lopt_2;
  output lopt_3;
  output lopt_4;
  output lopt_5;

  wire [0:0]drpclk_in;
  wire \gen_gtwizard_gthe4.cplllock_ch_int ;
  wire \gen_gtwizard_gthe4.delay_pwrgood_gtrxreset_int ;
  wire [15:0]\gen_gtwizard_gthe4.drpdo_int ;
  wire \gen_gtwizard_gthe4.drpen_ch_int ;
  wire \gen_gtwizard_gthe4.drprdy_int ;
  wire \gen_gtwizard_gthe4.drpwe_ch_int ;
  wire \gen_gtwizard_gthe4.gen_channel_container[27].gen_enabled_channel.gthe4_channel_wrapper_inst_n_12 ;
  wire \gen_gtwizard_gthe4.gen_channel_container[27].gen_enabled_channel.gthe4_channel_wrapper_inst_n_5 ;
  wire \gen_gtwizard_gthe4.gen_channel_container[27].gen_enabled_channel.gthe4_channel_wrapper_inst_n_57 ;
  wire \gen_gtwizard_gthe4.gen_channel_container[27].gen_enabled_channel.gthe4_channel_wrapper_inst_n_7 ;
  wire \gen_gtwizard_gthe4.gen_channel_container[27].gen_enabled_channel.gthe4_channel_wrapper_inst_n_8 ;
  wire \gen_gtwizard_gthe4.gen_channel_container[27].gen_enabled_channel.gthe4_channel_wrapper_inst_n_9 ;
  wire \gen_gtwizard_gthe4.gen_cpll_cal_gthe4.cpll_cal_reset_int ;
  wire [7:1]\gen_gtwizard_gthe4.gen_cpll_cal_gthe4.drpaddr_cpll_cal_int ;
  wire [15:0]\gen_gtwizard_gthe4.gen_cpll_cal_gthe4.drpdi_cpll_cal_int ;
  wire \gen_gtwizard_gthe4.gen_cpll_cal_gthe4.gen_cpll_cal_inst[0].gen_inst_cpll_cal.gtwizard_ultrascale_v1_7_13_gthe4_cpll_cal_inst_n_1 ;
  wire \gen_gtwizard_gthe4.gen_cpll_cal_gthe4.gen_cpll_cal_inst[0].gen_inst_cpll_cal.gtwizard_ultrascale_v1_7_13_gthe4_cpll_cal_inst_n_2 ;
  wire \gen_gtwizard_gthe4.gen_cpll_cal_gthe4.gen_cpll_cal_inst[0].gen_inst_cpll_cal.gtwizard_ultrascale_v1_7_13_gthe4_cpll_cal_inst_n_3 ;
  wire [2:0]\gen_gtwizard_gthe4.gen_cpll_cal_gthe4.txoutclksel_cpll_cal_int ;
  wire \gen_gtwizard_gthe4.gen_pwrgood_delay_inst[0].delay_powergood_inst_n_1 ;
  wire \gen_gtwizard_gthe4.gen_reset_controller_internal.gen_single_instance.rxresetdone_sync ;
  wire \gen_gtwizard_gthe4.gen_reset_controller_internal.gen_single_instance.txresetdone_sync ;
  wire \gen_gtwizard_gthe4.gtpowergood_int ;
  wire \gen_gtwizard_gthe4.gttxreset_int ;
  wire \gen_gtwizard_gthe4.rxprogdivreset_int ;
  wire \gen_gtwizard_gthe4.rxratemode_ch_int ;
  wire \gen_gtwizard_gthe4.rxuserrdy_int ;
  wire \gen_gtwizard_gthe4.txprgdivresetdone_int ;
  wire \gen_gtwizard_gthe4.txprogdivreset_ch_int ;
  wire \gen_gtwizard_gthe4.txprogdivreset_int ;
  wire \gen_gtwizard_gthe4.txuserrdy_int ;
  wire [0:0]gthrxn_in;
  wire [0:0]gthrxp_in;
  wire [0:0]gthtxn_out;
  wire [0:0]gthtxp_out;
  wire [0:0]gtpowergood_out;
  wire [0:0]gtrefclk0_in;
  wire [0:0]gtwiz_reset_all_in;
  wire [0:0]gtwiz_reset_rx_datapath_in;
  wire [0:0]gtwiz_reset_rx_done_out;
  wire [0:0]gtwiz_reset_tx_datapath_in;
  wire [0:0]gtwiz_reset_tx_done_out;
  wire [15:0]gtwiz_userdata_rx_out;
  wire [15:0]gtwiz_userdata_tx_in;
  wire lopt;
  wire lopt_1;
  wire lopt_2;
  wire lopt_3;
  wire lopt_4;
  wire lopt_5;
  wire rst_in0;
  wire [0:0]rxbufstatus_out;
  wire [1:0]rxclkcorcnt_out;
  wire [1:0]rxctrl0_out;
  wire [1:0]rxctrl1_out;
  wire [1:0]rxctrl2_out;
  wire [1:0]rxctrl3_out;
  wire [0:0]rxmcommaalignen_in;
  wire [0:0]rxoutclk_out;
  wire [0:0]rxpd_in;
  wire [0:0]rxusrclk_in;
  wire [0:0]txbufstatus_out;
  wire [1:0]txctrl0_in;
  wire [1:0]txctrl1_in;
  wire [1:0]txctrl2_in;
  wire [0:0]txelecidle_in;
  wire [0:0]txoutclk_out;

  PCS_PMA_gt_gthe4_channel_wrapper \gen_gtwizard_gthe4.gen_channel_container[27].gen_enabled_channel.gthe4_channel_wrapper_inst 
       (.D(\gen_gtwizard_gthe4.drpdo_int ),
        .DEN_O(\gen_gtwizard_gthe4.drpen_ch_int ),
        .DWE_O(\gen_gtwizard_gthe4.drpwe_ch_int ),
        .Q(\gen_gtwizard_gthe4.gen_cpll_cal_gthe4.drpdi_cpll_cal_int ),
        .RXPD(\gen_gtwizard_gthe4.gen_pwrgood_delay_inst[0].delay_powergood_inst_n_1 ),
        .RXRATE(\gen_gtwizard_gthe4.rxratemode_ch_int ),
        .drpclk_in(drpclk_in),
        .\gen_gtwizard_gthe4.delay_pwrgood_gtrxreset_int (\gen_gtwizard_gthe4.delay_pwrgood_gtrxreset_int ),
        .\gen_gtwizard_gthe4.drprdy_int (\gen_gtwizard_gthe4.drprdy_int ),
        .\gen_gtwizard_gthe4.gtpowergood_int (\gen_gtwizard_gthe4.gtpowergood_int ),
        .\gen_gtwizard_gthe4.gttxreset_int (\gen_gtwizard_gthe4.gttxreset_int ),
        .\gen_gtwizard_gthe4.rxprogdivreset_int (\gen_gtwizard_gthe4.rxprogdivreset_int ),
        .\gen_gtwizard_gthe4.rxuserrdy_int (\gen_gtwizard_gthe4.rxuserrdy_int ),
        .\gen_gtwizard_gthe4.txprogdivreset_ch_int (\gen_gtwizard_gthe4.txprogdivreset_ch_int ),
        .\gen_gtwizard_gthe4.txuserrdy_int (\gen_gtwizard_gthe4.txuserrdy_int ),
        .\gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST (\gen_gtwizard_gthe4.txprgdivresetdone_int ),
        .\gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_0 (\gen_gtwizard_gthe4.gen_channel_container[27].gen_enabled_channel.gthe4_channel_wrapper_inst_n_57 ),
        .\gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_1 (\gen_gtwizard_gthe4.gen_cpll_cal_gthe4.gen_cpll_cal_inst[0].gen_inst_cpll_cal.gtwizard_ultrascale_v1_7_13_gthe4_cpll_cal_inst_n_1 ),
        .\gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_2 (\gen_gtwizard_gthe4.gen_cpll_cal_gthe4.gen_cpll_cal_inst[0].gen_inst_cpll_cal.gtwizard_ultrascale_v1_7_13_gthe4_cpll_cal_inst_n_2 ),
        .\gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_3 (\gen_gtwizard_gthe4.gen_cpll_cal_gthe4.txoutclksel_cpll_cal_int ),
        .\gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_4 (\gen_gtwizard_gthe4.gen_cpll_cal_gthe4.drpaddr_cpll_cal_int ),
        .gthrxn_in(gthrxn_in),
        .gthrxp_in(gthrxp_in),
        .gthtxn_out(gthtxn_out),
        .gthtxp_out(gthtxp_out),
        .gtrefclk0_in(gtrefclk0_in),
        .gtwiz_userclk_rx_active_out(\gen_gtwizard_gthe4.gen_channel_container[27].gen_enabled_channel.gthe4_channel_wrapper_inst_n_8 ),
        .gtwiz_userdata_rx_out(gtwiz_userdata_rx_out),
        .gtwiz_userdata_tx_in(gtwiz_userdata_tx_in),
        .in0(\gen_gtwizard_gthe4.cplllock_ch_int ),
        .lopt(lopt),
        .lopt_1(lopt_1),
        .lopt_2(lopt_2),
        .lopt_3(lopt_3),
        .lopt_4(lopt_4),
        .lopt_5(lopt_5),
        .rxbufstatus_out(rxbufstatus_out),
        .rxcdrlock_out(\gen_gtwizard_gthe4.gen_channel_container[27].gen_enabled_channel.gthe4_channel_wrapper_inst_n_5 ),
        .rxclkcorcnt_out(rxclkcorcnt_out),
        .rxctrl0_out(rxctrl0_out),
        .rxctrl1_out(rxctrl1_out),
        .rxctrl2_out(rxctrl2_out),
        .rxctrl3_out(rxctrl3_out),
        .rxmcommaalignen_in(rxmcommaalignen_in),
        .rxoutclk_out(rxoutclk_out),
        .rxoutclkpcs_out(\gen_gtwizard_gthe4.gen_channel_container[27].gen_enabled_channel.gthe4_channel_wrapper_inst_n_7 ),
        .rxresetdone_out(\gen_gtwizard_gthe4.gen_channel_container[27].gen_enabled_channel.gthe4_channel_wrapper_inst_n_9 ),
        .rxusrclk_in(rxusrclk_in),
        .txbufstatus_out(txbufstatus_out),
        .txctrl0_in(txctrl0_in),
        .txctrl1_in(txctrl1_in),
        .txctrl2_in(txctrl2_in),
        .txelecidle_in(txelecidle_in),
        .txoutclk_out(txoutclk_out),
        .txresetdone_out(\gen_gtwizard_gthe4.gen_channel_container[27].gen_enabled_channel.gthe4_channel_wrapper_inst_n_12 ));
  PCS_PMA_gtwizard_ultrascale_v1_7_13_gthe4_cpll_cal \gen_gtwizard_gthe4.gen_cpll_cal_gthe4.gen_cpll_cal_inst[0].gen_inst_cpll_cal.gtwizard_ultrascale_v1_7_13_gthe4_cpll_cal_inst 
       (.DADDR_O(\gen_gtwizard_gthe4.gen_cpll_cal_gthe4.drpaddr_cpll_cal_int ),
        .DEN_O(\gen_gtwizard_gthe4.drpen_ch_int ),
        .DI_O(\gen_gtwizard_gthe4.gen_cpll_cal_gthe4.drpdi_cpll_cal_int ),
        .DO_I(\gen_gtwizard_gthe4.drpdo_int ),
        .DWE_O(\gen_gtwizard_gthe4.drpwe_ch_int ),
        .Q(\gen_gtwizard_gthe4.gen_cpll_cal_gthe4.txoutclksel_cpll_cal_int ),
        .RESET_IN(\gen_gtwizard_gthe4.gen_cpll_cal_gthe4.cpll_cal_reset_int ),
        .USER_CPLLLOCK_OUT_reg(\gen_gtwizard_gthe4.gen_cpll_cal_gthe4.gen_cpll_cal_inst[0].gen_inst_cpll_cal.gtwizard_ultrascale_v1_7_13_gthe4_cpll_cal_inst_n_3 ),
        .cpllpd_int_reg(\gen_gtwizard_gthe4.gen_cpll_cal_gthe4.gen_cpll_cal_inst[0].gen_inst_cpll_cal.gtwizard_ultrascale_v1_7_13_gthe4_cpll_cal_inst_n_1 ),
        .cpllreset_int_reg(\gen_gtwizard_gthe4.gen_cpll_cal_gthe4.gen_cpll_cal_inst[0].gen_inst_cpll_cal.gtwizard_ultrascale_v1_7_13_gthe4_cpll_cal_inst_n_2 ),
        .drpclk_in(drpclk_in),
        .\gen_gtwizard_gthe4.drprdy_int (\gen_gtwizard_gthe4.drprdy_int ),
        .\gen_gtwizard_gthe4.txprogdivreset_ch_int (\gen_gtwizard_gthe4.txprogdivreset_ch_int ),
        .i_in_meta_reg(\gen_gtwizard_gthe4.txprogdivreset_int ),
        .i_in_meta_reg_0(\gen_gtwizard_gthe4.txprgdivresetdone_int ),
        .in0(\gen_gtwizard_gthe4.cplllock_ch_int ),
        .lopt(lopt_4),
        .lopt_1(lopt_5),
        .rst_in0(rst_in0),
        .txoutclk_out(txoutclk_out));
  PCS_PMA_gtwizard_ultrascale_v1_7_13_gthe4_delay_powergood \gen_gtwizard_gthe4.gen_pwrgood_delay_inst[0].delay_powergood_inst 
       (.RXPD(\gen_gtwizard_gthe4.gen_pwrgood_delay_inst[0].delay_powergood_inst_n_1 ),
        .RXRATE(\gen_gtwizard_gthe4.rxratemode_ch_int ),
        .\gen_powergood_delay.intclk_rrst_n_r_reg[4]_0 (\gen_gtwizard_gthe4.gen_channel_container[27].gen_enabled_channel.gthe4_channel_wrapper_inst_n_57 ),
        .out(gtpowergood_out),
        .rxoutclkpcs_out(\gen_gtwizard_gthe4.gen_channel_container[27].gen_enabled_channel.gthe4_channel_wrapper_inst_n_7 ),
        .rxpd_in(rxpd_in));
  PCS_PMA_gtwizard_ultrascale_v1_7_13_bit_synchronizer \gen_gtwizard_gthe4.gen_reset_controller_internal.gen_single_instance.gen_ch_xrd[0].bit_synchronizer_rxresetdone_inst 
       (.drpclk_in(drpclk_in),
        .\gen_gtwizard_gthe4.gen_reset_controller_internal.gen_single_instance.rxresetdone_sync (\gen_gtwizard_gthe4.gen_reset_controller_internal.gen_single_instance.rxresetdone_sync ),
        .rxresetdone_out(\gen_gtwizard_gthe4.gen_channel_container[27].gen_enabled_channel.gthe4_channel_wrapper_inst_n_9 ));
  PCS_PMA_gtwizard_ultrascale_v1_7_13_bit_synchronizer_0 \gen_gtwizard_gthe4.gen_reset_controller_internal.gen_single_instance.gen_ch_xrd[0].bit_synchronizer_txresetdone_inst 
       (.drpclk_in(drpclk_in),
        .\gen_gtwizard_gthe4.gen_reset_controller_internal.gen_single_instance.txresetdone_sync (\gen_gtwizard_gthe4.gen_reset_controller_internal.gen_single_instance.txresetdone_sync ),
        .txresetdone_out(\gen_gtwizard_gthe4.gen_channel_container[27].gen_enabled_channel.gthe4_channel_wrapper_inst_n_12 ));
  PCS_PMA_gtwizard_ultrascale_v1_7_13_gtwiz_reset \gen_gtwizard_gthe4.gen_reset_controller_internal.gen_single_instance.gtwiz_reset_inst 
       (.RESET_IN(\gen_gtwizard_gthe4.gen_cpll_cal_gthe4.cpll_cal_reset_int ),
        .drpclk_in(drpclk_in),
        .\gen_gtwizard_gthe4.delay_pwrgood_gtrxreset_int (\gen_gtwizard_gthe4.delay_pwrgood_gtrxreset_int ),
        .\gen_gtwizard_gthe4.gen_reset_controller_internal.gen_single_instance.rxresetdone_sync (\gen_gtwizard_gthe4.gen_reset_controller_internal.gen_single_instance.rxresetdone_sync ),
        .\gen_gtwizard_gthe4.gen_reset_controller_internal.gen_single_instance.txresetdone_sync (\gen_gtwizard_gthe4.gen_reset_controller_internal.gen_single_instance.txresetdone_sync ),
        .\gen_gtwizard_gthe4.gtpowergood_int (\gen_gtwizard_gthe4.gtpowergood_int ),
        .\gen_gtwizard_gthe4.gttxreset_int (\gen_gtwizard_gthe4.gttxreset_int ),
        .\gen_gtwizard_gthe4.rxprogdivreset_int (\gen_gtwizard_gthe4.rxprogdivreset_int ),
        .\gen_gtwizard_gthe4.rxuserrdy_int (\gen_gtwizard_gthe4.rxuserrdy_int ),
        .\gen_gtwizard_gthe4.txuserrdy_int (\gen_gtwizard_gthe4.txuserrdy_int ),
        .gtpowergood_out(gtpowergood_out),
        .gtwiz_reset_all_in(gtwiz_reset_all_in),
        .gtwiz_reset_rx_datapath_in(gtwiz_reset_rx_datapath_in),
        .gtwiz_reset_rx_done_out(gtwiz_reset_rx_done_out),
        .gtwiz_reset_tx_datapath_in(gtwiz_reset_tx_datapath_in),
        .gtwiz_reset_tx_done_out(gtwiz_reset_tx_done_out),
        .gtwiz_userclk_rx_active_out(\gen_gtwizard_gthe4.gen_channel_container[27].gen_enabled_channel.gthe4_channel_wrapper_inst_n_8 ),
        .i_in_meta_reg(\gen_gtwizard_gthe4.gen_cpll_cal_gthe4.gen_cpll_cal_inst[0].gen_inst_cpll_cal.gtwizard_ultrascale_v1_7_13_gthe4_cpll_cal_inst_n_3 ),
        .rst_in0(rst_in0),
        .rst_in_out_reg(\gen_gtwizard_gthe4.txprogdivreset_int ),
        .rxcdrlock_out(\gen_gtwizard_gthe4.gen_channel_container[27].gen_enabled_channel.gthe4_channel_wrapper_inst_n_5 ),
        .rxusrclk_in(rxusrclk_in));
endmodule

(* C_CHANNEL_ENABLE = "192'b000000000000000000000000000000000000000000000000000000000000000000000000000000000010000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000" *) (* C_COMMON_SCALING_FACTOR = "1" *) (* C_CPLL_VCO_FREQUENCY = "2500.000000" *) 
(* C_ENABLE_COMMON_USRCLK = "0" *) (* C_FORCE_COMMONS = "0" *) (* C_FREERUN_FREQUENCY = "62.500000" *) 
(* C_GT_REV = "57" *) (* C_GT_TYPE = "2" *) (* C_INCLUDE_CPLL_CAL = "2" *) 
(* C_LOCATE_COMMON = "0" *) (* C_LOCATE_IN_SYSTEM_IBERT_CORE = "2" *) (* C_LOCATE_RESET_CONTROLLER = "0" *) 
(* C_LOCATE_RX_BUFFER_BYPASS_CONTROLLER = "0" *) (* C_LOCATE_RX_USER_CLOCKING = "1" *) (* C_LOCATE_TX_BUFFER_BYPASS_CONTROLLER = "0" *) 
(* C_LOCATE_TX_USER_CLOCKING = "1" *) (* C_LOCATE_USER_DATA_WIDTH_SIZING = "0" *) (* C_PCIE_CORECLK_FREQ = "250" *) 
(* C_PCIE_ENABLE = "0" *) (* C_RESET_CONTROLLER_INSTANCE_CTRL = "0" *) (* C_RESET_SEQUENCE_INTERVAL = "0" *) 
(* C_RX_BUFFBYPASS_MODE = "0" *) (* C_RX_BUFFER_BYPASS_INSTANCE_CTRL = "0" *) (* C_RX_BUFFER_MODE = "1" *) 
(* C_RX_CB_DISP = "8'b00000000" *) (* C_RX_CB_K = "8'b00000000" *) (* C_RX_CB_LEN_SEQ = "1" *) 
(* C_RX_CB_MAX_LEVEL = "1" *) (* C_RX_CB_NUM_SEQ = "0" *) (* C_RX_CB_VAL = "80'b00000000000000000000000000000000000000000000000000000000000000000000000000000000" *) 
(* C_RX_CC_DISP = "8'b00000000" *) (* C_RX_CC_ENABLE = "1" *) (* C_RX_CC_K = "8'b00010001" *) 
(* C_RX_CC_LEN_SEQ = "2" *) (* C_RX_CC_NUM_SEQ = "2" *) (* C_RX_CC_PERIODICITY = "5000" *) 
(* C_RX_CC_VAL = "80'b00000000000000000000001011010100101111000000000000000000000000010100000010111100" *) (* C_RX_COMMA_M_ENABLE = "1" *) (* C_RX_COMMA_M_VAL = "10'b1010000011" *) 
(* C_RX_COMMA_P_ENABLE = "1" *) (* C_RX_COMMA_P_VAL = "10'b0101111100" *) (* C_RX_DATA_DECODING = "1" *) 
(* C_RX_ENABLE = "1" *) (* C_RX_INT_DATA_WIDTH = "20" *) (* C_RX_LINE_RATE = "1.250000" *) 
(* C_RX_MASTER_CHANNEL_IDX = "109" *) (* C_RX_OUTCLK_BUFG_GT_DIV = "1" *) (* C_RX_OUTCLK_FREQUENCY = "62.500000" *) 
(* C_RX_OUTCLK_SOURCE = "1" *) (* C_RX_PLL_TYPE = "2" *) (* C_RX_RECCLK_OUTPUT = "192'b000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000" *) 
(* C_RX_REFCLK_FREQUENCY = "156.250000" *) (* C_RX_SLIDE_MODE = "0" *) (* C_RX_USER_CLOCKING_CONTENTS = "0" *) 
(* C_RX_USER_CLOCKING_INSTANCE_CTRL = "0" *) (* C_RX_USER_CLOCKING_RATIO_FSRC_FUSRCLK = "1" *) (* C_RX_USER_CLOCKING_RATIO_FUSRCLK_FUSRCLK2 = "1" *) 
(* C_RX_USER_CLOCKING_SOURCE = "0" *) (* C_RX_USER_DATA_WIDTH = "16" *) (* C_RX_USRCLK2_FREQUENCY = "62.500000" *) 
(* C_RX_USRCLK_FREQUENCY = "62.500000" *) (* C_SECONDARY_QPLL_ENABLE = "0" *) (* C_SECONDARY_QPLL_REFCLK_FREQUENCY = "257.812500" *) 
(* C_SIM_CPLL_CAL_BYPASS = "1" *) (* C_TOTAL_NUM_CHANNELS = "1" *) (* C_TOTAL_NUM_COMMONS = "0" *) 
(* C_TOTAL_NUM_COMMONS_EXAMPLE = "0" *) (* C_TXPROGDIV_FREQ_ENABLE = "1" *) (* C_TXPROGDIV_FREQ_SOURCE = "2" *) 
(* C_TXPROGDIV_FREQ_VAL = "125.000000" *) (* C_TX_BUFFBYPASS_MODE = "0" *) (* C_TX_BUFFER_BYPASS_INSTANCE_CTRL = "0" *) 
(* C_TX_BUFFER_MODE = "1" *) (* C_TX_DATA_ENCODING = "1" *) (* C_TX_ENABLE = "1" *) 
(* C_TX_INT_DATA_WIDTH = "20" *) (* C_TX_LINE_RATE = "1.250000" *) (* C_TX_MASTER_CHANNEL_IDX = "109" *) 
(* C_TX_OUTCLK_BUFG_GT_DIV = "2" *) (* C_TX_OUTCLK_FREQUENCY = "62.500000" *) (* C_TX_OUTCLK_SOURCE = "4" *) 
(* C_TX_PLL_TYPE = "2" *) (* C_TX_REFCLK_FREQUENCY = "156.250000" *) (* C_TX_USER_CLOCKING_CONTENTS = "0" *) 
(* C_TX_USER_CLOCKING_INSTANCE_CTRL = "0" *) (* C_TX_USER_CLOCKING_RATIO_FSRC_FUSRCLK = "1" *) (* C_TX_USER_CLOCKING_RATIO_FUSRCLK_FUSRCLK2 = "1" *) 
(* C_TX_USER_CLOCKING_SOURCE = "0" *) (* C_TX_USER_DATA_WIDTH = "16" *) (* C_TX_USRCLK2_FREQUENCY = "62.500000" *) 
(* C_TX_USRCLK_FREQUENCY = "62.500000" *) (* C_USER_GTPOWERGOOD_DELAY_EN = "1" *) 
module PCS_PMA_gt_gtwizard_top
   (gtwiz_userclk_tx_reset_in,
    gtwiz_userclk_tx_active_in,
    gtwiz_userclk_tx_srcclk_out,
    gtwiz_userclk_tx_usrclk_out,
    gtwiz_userclk_tx_usrclk2_out,
    gtwiz_userclk_tx_active_out,
    gtwiz_userclk_rx_reset_in,
    gtwiz_userclk_rx_active_in,
    gtwiz_userclk_rx_srcclk_out,
    gtwiz_userclk_rx_usrclk_out,
    gtwiz_userclk_rx_usrclk2_out,
    gtwiz_userclk_rx_active_out,
    gtwiz_buffbypass_tx_reset_in,
    gtwiz_buffbypass_tx_start_user_in,
    gtwiz_buffbypass_tx_done_out,
    gtwiz_buffbypass_tx_error_out,
    gtwiz_buffbypass_rx_reset_in,
    gtwiz_buffbypass_rx_start_user_in,
    gtwiz_buffbypass_rx_done_out,
    gtwiz_buffbypass_rx_error_out,
    gtwiz_reset_clk_freerun_in,
    gtwiz_reset_all_in,
    gtwiz_reset_tx_pll_and_datapath_in,
    gtwiz_reset_tx_datapath_in,
    gtwiz_reset_rx_pll_and_datapath_in,
    gtwiz_reset_rx_datapath_in,
    gtwiz_reset_tx_done_in,
    gtwiz_reset_rx_done_in,
    gtwiz_reset_qpll0lock_in,
    gtwiz_reset_qpll1lock_in,
    gtwiz_reset_rx_cdr_stable_out,
    gtwiz_reset_tx_done_out,
    gtwiz_reset_rx_done_out,
    gtwiz_reset_qpll0reset_out,
    gtwiz_reset_qpll1reset_out,
    gtwiz_gthe3_cpll_cal_txoutclk_period_in,
    gtwiz_gthe3_cpll_cal_cnt_tol_in,
    gtwiz_gthe3_cpll_cal_bufg_ce_in,
    gtwiz_gthe4_cpll_cal_txoutclk_period_in,
    gtwiz_gthe4_cpll_cal_cnt_tol_in,
    gtwiz_gthe4_cpll_cal_bufg_ce_in,
    gtwiz_gtye4_cpll_cal_txoutclk_period_in,
    gtwiz_gtye4_cpll_cal_cnt_tol_in,
    gtwiz_gtye4_cpll_cal_bufg_ce_in,
    gtwiz_userdata_tx_in,
    gtwiz_userdata_rx_out,
    bgbypassb_in,
    bgmonitorenb_in,
    bgpdb_in,
    bgrcalovrd_in,
    bgrcalovrdenb_in,
    drpaddr_common_in,
    drpclk_common_in,
    drpdi_common_in,
    drpen_common_in,
    drpwe_common_in,
    gtgrefclk0_in,
    gtgrefclk1_in,
    gtnorthrefclk00_in,
    gtnorthrefclk01_in,
    gtnorthrefclk10_in,
    gtnorthrefclk11_in,
    gtrefclk00_in,
    gtrefclk01_in,
    gtrefclk10_in,
    gtrefclk11_in,
    gtsouthrefclk00_in,
    gtsouthrefclk01_in,
    gtsouthrefclk10_in,
    gtsouthrefclk11_in,
    pcierateqpll0_in,
    pcierateqpll1_in,
    pmarsvd0_in,
    pmarsvd1_in,
    qpll0clkrsvd0_in,
    qpll0clkrsvd1_in,
    qpll0fbdiv_in,
    qpll0lockdetclk_in,
    qpll0locken_in,
    qpll0pd_in,
    qpll0refclksel_in,
    qpll0reset_in,
    qpll1clkrsvd0_in,
    qpll1clkrsvd1_in,
    qpll1fbdiv_in,
    qpll1lockdetclk_in,
    qpll1locken_in,
    qpll1pd_in,
    qpll1refclksel_in,
    qpll1reset_in,
    qpllrsvd1_in,
    qpllrsvd2_in,
    qpllrsvd3_in,
    qpllrsvd4_in,
    rcalenb_in,
    sdm0data_in,
    sdm0reset_in,
    sdm0toggle_in,
    sdm0width_in,
    sdm1data_in,
    sdm1reset_in,
    sdm1toggle_in,
    sdm1width_in,
    tcongpi_in,
    tconpowerup_in,
    tconreset_in,
    tconrsvdin1_in,
    ubcfgstreamen_in,
    ubdo_in,
    ubdrdy_in,
    ubenable_in,
    ubgpi_in,
    ubintr_in,
    ubiolmbrst_in,
    ubmbrst_in,
    ubmdmcapture_in,
    ubmdmdbgrst_in,
    ubmdmdbgupdate_in,
    ubmdmregen_in,
    ubmdmshift_in,
    ubmdmsysrst_in,
    ubmdmtck_in,
    ubmdmtdi_in,
    drpdo_common_out,
    drprdy_common_out,
    pmarsvdout0_out,
    pmarsvdout1_out,
    qpll0fbclklost_out,
    qpll0lock_out,
    qpll0outclk_out,
    qpll0outrefclk_out,
    qpll0refclklost_out,
    qpll1fbclklost_out,
    qpll1lock_out,
    qpll1outclk_out,
    qpll1outrefclk_out,
    qpll1refclklost_out,
    qplldmonitor0_out,
    qplldmonitor1_out,
    refclkoutmonitor0_out,
    refclkoutmonitor1_out,
    rxrecclk0_sel_out,
    rxrecclk1_sel_out,
    rxrecclk0sel_out,
    rxrecclk1sel_out,
    sdm0finalout_out,
    sdm0testdata_out,
    sdm1finalout_out,
    sdm1testdata_out,
    tcongpo_out,
    tconrsvdout0_out,
    ubdaddr_out,
    ubden_out,
    ubdi_out,
    ubdwe_out,
    ubmdmtdo_out,
    ubrsvdout_out,
    ubtxuart_out,
    cdrstepdir_in,
    cdrstepsq_in,
    cdrstepsx_in,
    cfgreset_in,
    clkrsvd0_in,
    clkrsvd1_in,
    cpllfreqlock_in,
    cplllockdetclk_in,
    cplllocken_in,
    cpllpd_in,
    cpllrefclksel_in,
    cpllreset_in,
    dmonfiforeset_in,
    dmonitorclk_in,
    drpaddr_in,
    drpclk_in,
    drpdi_in,
    drpen_in,
    drprst_in,
    drpwe_in,
    elpcaldvorwren_in,
    elpcalpaorwren_in,
    evoddphicaldone_in,
    evoddphicalstart_in,
    evoddphidrden_in,
    evoddphidwren_in,
    evoddphixrden_in,
    evoddphixwren_in,
    eyescanmode_in,
    eyescanreset_in,
    eyescantrigger_in,
    freqos_in,
    gtgrefclk_in,
    gthrxn_in,
    gthrxp_in,
    gtnorthrefclk0_in,
    gtnorthrefclk1_in,
    gtrefclk0_in,
    gtrefclk1_in,
    gtresetsel_in,
    gtrsvd_in,
    gtrxreset_in,
    gtrxresetsel_in,
    gtsouthrefclk0_in,
    gtsouthrefclk1_in,
    gttxreset_in,
    gttxresetsel_in,
    incpctrl_in,
    gtyrxn_in,
    gtyrxp_in,
    loopback_in,
    looprsvd_in,
    lpbkrxtxseren_in,
    lpbktxrxseren_in,
    pcieeqrxeqadaptdone_in,
    pcierstidle_in,
    pciersttxsyncstart_in,
    pcieuserratedone_in,
    pcsrsvdin_in,
    pcsrsvdin2_in,
    pmarsvdin_in,
    qpll0clk_in,
    qpll0freqlock_in,
    qpll0refclk_in,
    qpll1clk_in,
    qpll1freqlock_in,
    qpll1refclk_in,
    resetovrd_in,
    rstclkentx_in,
    rx8b10ben_in,
    rxafecfoken_in,
    rxbufreset_in,
    rxcdrfreqreset_in,
    rxcdrhold_in,
    rxcdrovrden_in,
    rxcdrreset_in,
    rxcdrresetrsv_in,
    rxchbonden_in,
    rxchbondi_in,
    rxchbondlevel_in,
    rxchbondmaster_in,
    rxchbondslave_in,
    rxckcalreset_in,
    rxckcalstart_in,
    rxcommadeten_in,
    rxdfeagcctrl_in,
    rxdccforcestart_in,
    rxdfeagchold_in,
    rxdfeagcovrden_in,
    rxdfecfokfcnum_in,
    rxdfecfokfen_in,
    rxdfecfokfpulse_in,
    rxdfecfokhold_in,
    rxdfecfokovren_in,
    rxdfekhhold_in,
    rxdfekhovrden_in,
    rxdfelfhold_in,
    rxdfelfovrden_in,
    rxdfelpmreset_in,
    rxdfetap10hold_in,
    rxdfetap10ovrden_in,
    rxdfetap11hold_in,
    rxdfetap11ovrden_in,
    rxdfetap12hold_in,
    rxdfetap12ovrden_in,
    rxdfetap13hold_in,
    rxdfetap13ovrden_in,
    rxdfetap14hold_in,
    rxdfetap14ovrden_in,
    rxdfetap15hold_in,
    rxdfetap15ovrden_in,
    rxdfetap2hold_in,
    rxdfetap2ovrden_in,
    rxdfetap3hold_in,
    rxdfetap3ovrden_in,
    rxdfetap4hold_in,
    rxdfetap4ovrden_in,
    rxdfetap5hold_in,
    rxdfetap5ovrden_in,
    rxdfetap6hold_in,
    rxdfetap6ovrden_in,
    rxdfetap7hold_in,
    rxdfetap7ovrden_in,
    rxdfetap8hold_in,
    rxdfetap8ovrden_in,
    rxdfetap9hold_in,
    rxdfetap9ovrden_in,
    rxdfeuthold_in,
    rxdfeutovrden_in,
    rxdfevphold_in,
    rxdfevpovrden_in,
    rxdfevsen_in,
    rxdfexyden_in,
    rxdlybypass_in,
    rxdlyen_in,
    rxdlyovrden_in,
    rxdlysreset_in,
    rxelecidlemode_in,
    rxeqtraining_in,
    rxgearboxslip_in,
    rxlatclk_in,
    rxlpmen_in,
    rxlpmgchold_in,
    rxlpmgcovrden_in,
    rxlpmhfhold_in,
    rxlpmhfovrden_in,
    rxlpmlfhold_in,
    rxlpmlfklovrden_in,
    rxlpmoshold_in,
    rxlpmosovrden_in,
    rxmcommaalignen_in,
    rxmonitorsel_in,
    rxoobreset_in,
    rxoscalreset_in,
    rxoshold_in,
    rxosintcfg_in,
    rxosinten_in,
    rxosinthold_in,
    rxosintovrden_in,
    rxosintstrobe_in,
    rxosinttestovrden_in,
    rxosovrden_in,
    rxoutclksel_in,
    rxpcommaalignen_in,
    rxpcsreset_in,
    rxpd_in,
    rxphalign_in,
    rxphalignen_in,
    rxphdlypd_in,
    rxphdlyreset_in,
    rxphovrden_in,
    rxpllclksel_in,
    rxpmareset_in,
    rxpolarity_in,
    rxprbscntreset_in,
    rxprbssel_in,
    rxprogdivreset_in,
    rxqpien_in,
    rxrate_in,
    rxratemode_in,
    rxslide_in,
    rxslipoutclk_in,
    rxslippma_in,
    rxsyncallin_in,
    rxsyncin_in,
    rxsyncmode_in,
    rxsysclksel_in,
    rxtermination_in,
    rxuserrdy_in,
    rxusrclk_in,
    rxusrclk2_in,
    sigvalidclk_in,
    tstin_in,
    tx8b10bbypass_in,
    tx8b10ben_in,
    txbufdiffctrl_in,
    txcominit_in,
    txcomsas_in,
    txcomwake_in,
    txctrl0_in,
    txctrl1_in,
    txctrl2_in,
    txdata_in,
    txdataextendrsvd_in,
    txdccforcestart_in,
    txdccreset_in,
    txdeemph_in,
    txdetectrx_in,
    txdiffctrl_in,
    txdiffpd_in,
    txdlybypass_in,
    txdlyen_in,
    txdlyhold_in,
    txdlyovrden_in,
    txdlysreset_in,
    txdlyupdown_in,
    txelecidle_in,
    txelforcestart_in,
    txheader_in,
    txinhibit_in,
    txlatclk_in,
    txlfpstreset_in,
    txlfpsu2lpexit_in,
    txlfpsu3wake_in,
    txmaincursor_in,
    txmargin_in,
    txmuxdcdexhold_in,
    txmuxdcdorwren_in,
    txoneszeros_in,
    txoutclksel_in,
    txpcsreset_in,
    txpd_in,
    txpdelecidlemode_in,
    txphalign_in,
    txphalignen_in,
    txphdlypd_in,
    txphdlyreset_in,
    txphdlytstclk_in,
    txphinit_in,
    txphovrden_in,
    txpippmen_in,
    txpippmovrden_in,
    txpippmpd_in,
    txpippmsel_in,
    txpippmstepsize_in,
    txpisopd_in,
    txpllclksel_in,
    txpmareset_in,
    txpolarity_in,
    txpostcursor_in,
    txpostcursorinv_in,
    txprbsforceerr_in,
    txprbssel_in,
    txprecursor_in,
    txprecursorinv_in,
    txprogdivreset_in,
    txqpibiasen_in,
    txqpistrongpdown_in,
    txqpiweakpup_in,
    txrate_in,
    txratemode_in,
    txsequence_in,
    txswing_in,
    txsyncallin_in,
    txsyncin_in,
    txsyncmode_in,
    txsysclksel_in,
    txuserrdy_in,
    txusrclk_in,
    txusrclk2_in,
    bufgtce_out,
    bufgtcemask_out,
    bufgtdiv_out,
    bufgtreset_out,
    bufgtrstmask_out,
    cpllfbclklost_out,
    cplllock_out,
    cpllrefclklost_out,
    dmonitorout_out,
    dmonitoroutclk_out,
    drpdo_out,
    drprdy_out,
    eyescandataerror_out,
    gthtxn_out,
    gthtxp_out,
    gtpowergood_out,
    gtrefclkmonitor_out,
    gtytxn_out,
    gtytxp_out,
    pcierategen3_out,
    pcierateidle_out,
    pcierateqpllpd_out,
    pcierateqpllreset_out,
    pciesynctxsyncdone_out,
    pcieusergen3rdy_out,
    pcieuserphystatusrst_out,
    pcieuserratestart_out,
    pcsrsvdout_out,
    phystatus_out,
    pinrsrvdas_out,
    powerpresent_out,
    resetexception_out,
    rxbufstatus_out,
    rxbyteisaligned_out,
    rxbyterealign_out,
    rxcdrlock_out,
    rxcdrphdone_out,
    rxchanbondseq_out,
    rxchanisaligned_out,
    rxchanrealign_out,
    rxchbondo_out,
    rxckcaldone_out,
    rxclkcorcnt_out,
    rxcominitdet_out,
    rxcommadet_out,
    rxcomsasdet_out,
    rxcomwakedet_out,
    rxctrl0_out,
    rxctrl1_out,
    rxctrl2_out,
    rxctrl3_out,
    rxdata_out,
    rxdataextendrsvd_out,
    rxdatavalid_out,
    rxdlysresetdone_out,
    rxelecidle_out,
    rxheader_out,
    rxheadervalid_out,
    rxlfpstresetdet_out,
    rxlfpsu2lpexitdet_out,
    rxlfpsu3wakedet_out,
    rxmonitorout_out,
    rxosintdone_out,
    rxosintstarted_out,
    rxosintstrobedone_out,
    rxosintstrobestarted_out,
    rxoutclk_out,
    rxoutclkfabric_out,
    rxoutclkpcs_out,
    rxphaligndone_out,
    rxphalignerr_out,
    rxpmaresetdone_out,
    rxprbserr_out,
    rxprbslocked_out,
    rxprgdivresetdone_out,
    rxqpisenn_out,
    rxqpisenp_out,
    rxratedone_out,
    rxrecclkout_out,
    rxresetdone_out,
    rxsliderdy_out,
    rxslipdone_out,
    rxslipoutclkrdy_out,
    rxslippmardy_out,
    rxstartofseq_out,
    rxstatus_out,
    rxsyncdone_out,
    rxsyncout_out,
    rxvalid_out,
    txbufstatus_out,
    txcomfinish_out,
    txdccdone_out,
    txdlysresetdone_out,
    txoutclk_out,
    txoutclkfabric_out,
    txoutclkpcs_out,
    txphaligndone_out,
    txphinitdone_out,
    txpmaresetdone_out,
    txprgdivresetdone_out,
    txqpisenn_out,
    txqpisenp_out,
    txratedone_out,
    txresetdone_out,
    txsyncdone_out,
    txsyncout_out,
    lopt,
    lopt_1,
    lopt_2,
    lopt_3,
    lopt_4,
    lopt_5);
  input [0:0]gtwiz_userclk_tx_reset_in;
  input [0:0]gtwiz_userclk_tx_active_in;
  output [0:0]gtwiz_userclk_tx_srcclk_out;
  output [0:0]gtwiz_userclk_tx_usrclk_out;
  output [0:0]gtwiz_userclk_tx_usrclk2_out;
  output [0:0]gtwiz_userclk_tx_active_out;
  input [0:0]gtwiz_userclk_rx_reset_in;
  input [0:0]gtwiz_userclk_rx_active_in;
  output [0:0]gtwiz_userclk_rx_srcclk_out;
  output [0:0]gtwiz_userclk_rx_usrclk_out;
  output [0:0]gtwiz_userclk_rx_usrclk2_out;
  output [0:0]gtwiz_userclk_rx_active_out;
  input [0:0]gtwiz_buffbypass_tx_reset_in;
  input [0:0]gtwiz_buffbypass_tx_start_user_in;
  output [0:0]gtwiz_buffbypass_tx_done_out;
  output [0:0]gtwiz_buffbypass_tx_error_out;
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
  input [0:0]gtwiz_reset_tx_done_in;
  input [0:0]gtwiz_reset_rx_done_in;
  input [0:0]gtwiz_reset_qpll0lock_in;
  input [0:0]gtwiz_reset_qpll1lock_in;
  output [0:0]gtwiz_reset_rx_cdr_stable_out;
  output [0:0]gtwiz_reset_tx_done_out;
  output [0:0]gtwiz_reset_rx_done_out;
  output [0:0]gtwiz_reset_qpll0reset_out;
  output [0:0]gtwiz_reset_qpll1reset_out;
  input [17:0]gtwiz_gthe3_cpll_cal_txoutclk_period_in;
  input [17:0]gtwiz_gthe3_cpll_cal_cnt_tol_in;
  input [0:0]gtwiz_gthe3_cpll_cal_bufg_ce_in;
  input [17:0]gtwiz_gthe4_cpll_cal_txoutclk_period_in;
  input [17:0]gtwiz_gthe4_cpll_cal_cnt_tol_in;
  input [0:0]gtwiz_gthe4_cpll_cal_bufg_ce_in;
  input [17:0]gtwiz_gtye4_cpll_cal_txoutclk_period_in;
  input [17:0]gtwiz_gtye4_cpll_cal_cnt_tol_in;
  input [0:0]gtwiz_gtye4_cpll_cal_bufg_ce_in;
  input [15:0]gtwiz_userdata_tx_in;
  output [15:0]gtwiz_userdata_rx_out;
  input [0:0]bgbypassb_in;
  input [0:0]bgmonitorenb_in;
  input [0:0]bgpdb_in;
  input [4:0]bgrcalovrd_in;
  input [0:0]bgrcalovrdenb_in;
  input [15:0]drpaddr_common_in;
  input [0:0]drpclk_common_in;
  input [15:0]drpdi_common_in;
  input [0:0]drpen_common_in;
  input [0:0]drpwe_common_in;
  input [0:0]gtgrefclk0_in;
  input [0:0]gtgrefclk1_in;
  input [0:0]gtnorthrefclk00_in;
  input [0:0]gtnorthrefclk01_in;
  input [0:0]gtnorthrefclk10_in;
  input [0:0]gtnorthrefclk11_in;
  input [0:0]gtrefclk00_in;
  input [0:0]gtrefclk01_in;
  input [0:0]gtrefclk10_in;
  input [0:0]gtrefclk11_in;
  input [0:0]gtsouthrefclk00_in;
  input [0:0]gtsouthrefclk01_in;
  input [0:0]gtsouthrefclk10_in;
  input [0:0]gtsouthrefclk11_in;
  input [2:0]pcierateqpll0_in;
  input [2:0]pcierateqpll1_in;
  input [7:0]pmarsvd0_in;
  input [7:0]pmarsvd1_in;
  input [0:0]qpll0clkrsvd0_in;
  input [0:0]qpll0clkrsvd1_in;
  input [7:0]qpll0fbdiv_in;
  input [0:0]qpll0lockdetclk_in;
  input [0:0]qpll0locken_in;
  input [0:0]qpll0pd_in;
  input [2:0]qpll0refclksel_in;
  input [0:0]qpll0reset_in;
  input [0:0]qpll1clkrsvd0_in;
  input [0:0]qpll1clkrsvd1_in;
  input [7:0]qpll1fbdiv_in;
  input [0:0]qpll1lockdetclk_in;
  input [0:0]qpll1locken_in;
  input [0:0]qpll1pd_in;
  input [2:0]qpll1refclksel_in;
  input [0:0]qpll1reset_in;
  input [7:0]qpllrsvd1_in;
  input [4:0]qpllrsvd2_in;
  input [4:0]qpllrsvd3_in;
  input [7:0]qpllrsvd4_in;
  input [0:0]rcalenb_in;
  input [24:0]sdm0data_in;
  input [0:0]sdm0reset_in;
  input [0:0]sdm0toggle_in;
  input [1:0]sdm0width_in;
  input [24:0]sdm1data_in;
  input [0:0]sdm1reset_in;
  input [0:0]sdm1toggle_in;
  input [1:0]sdm1width_in;
  input [9:0]tcongpi_in;
  input [0:0]tconpowerup_in;
  input [1:0]tconreset_in;
  input [1:0]tconrsvdin1_in;
  input [0:0]ubcfgstreamen_in;
  input [0:0]ubdo_in;
  input [0:0]ubdrdy_in;
  input [0:0]ubenable_in;
  input [0:0]ubgpi_in;
  input [0:0]ubintr_in;
  input [0:0]ubiolmbrst_in;
  input [0:0]ubmbrst_in;
  input [0:0]ubmdmcapture_in;
  input [0:0]ubmdmdbgrst_in;
  input [0:0]ubmdmdbgupdate_in;
  input [0:0]ubmdmregen_in;
  input [0:0]ubmdmshift_in;
  input [0:0]ubmdmsysrst_in;
  input [0:0]ubmdmtck_in;
  input [0:0]ubmdmtdi_in;
  output [15:0]drpdo_common_out;
  output [0:0]drprdy_common_out;
  output [7:0]pmarsvdout0_out;
  output [7:0]pmarsvdout1_out;
  output [0:0]qpll0fbclklost_out;
  output [0:0]qpll0lock_out;
  output [0:0]qpll0outclk_out;
  output [0:0]qpll0outrefclk_out;
  output [0:0]qpll0refclklost_out;
  output [0:0]qpll1fbclklost_out;
  output [0:0]qpll1lock_out;
  output [0:0]qpll1outclk_out;
  output [0:0]qpll1outrefclk_out;
  output [0:0]qpll1refclklost_out;
  output [7:0]qplldmonitor0_out;
  output [7:0]qplldmonitor1_out;
  output [0:0]refclkoutmonitor0_out;
  output [0:0]refclkoutmonitor1_out;
  output [0:0]rxrecclk0_sel_out;
  output [0:0]rxrecclk1_sel_out;
  output [1:0]rxrecclk0sel_out;
  output [1:0]rxrecclk1sel_out;
  output [3:0]sdm0finalout_out;
  output [14:0]sdm0testdata_out;
  output [3:0]sdm1finalout_out;
  output [14:0]sdm1testdata_out;
  output [9:0]tcongpo_out;
  output [0:0]tconrsvdout0_out;
  output [0:0]ubdaddr_out;
  output [0:0]ubden_out;
  output [0:0]ubdi_out;
  output [0:0]ubdwe_out;
  output [0:0]ubmdmtdo_out;
  output [0:0]ubrsvdout_out;
  output [0:0]ubtxuart_out;
  input [0:0]cdrstepdir_in;
  input [0:0]cdrstepsq_in;
  input [0:0]cdrstepsx_in;
  input [0:0]cfgreset_in;
  input [0:0]clkrsvd0_in;
  input [0:0]clkrsvd1_in;
  input [0:0]cpllfreqlock_in;
  input [0:0]cplllockdetclk_in;
  input [0:0]cplllocken_in;
  input [0:0]cpllpd_in;
  input [2:0]cpllrefclksel_in;
  input [0:0]cpllreset_in;
  input [0:0]dmonfiforeset_in;
  input [0:0]dmonitorclk_in;
  input [9:0]drpaddr_in;
  input [0:0]drpclk_in;
  input [15:0]drpdi_in;
  input [0:0]drpen_in;
  input [0:0]drprst_in;
  input [0:0]drpwe_in;
  input [0:0]elpcaldvorwren_in;
  input [0:0]elpcalpaorwren_in;
  input [0:0]evoddphicaldone_in;
  input [0:0]evoddphicalstart_in;
  input [0:0]evoddphidrden_in;
  input [0:0]evoddphidwren_in;
  input [0:0]evoddphixrden_in;
  input [0:0]evoddphixwren_in;
  input [0:0]eyescanmode_in;
  input [0:0]eyescanreset_in;
  input [0:0]eyescantrigger_in;
  input [0:0]freqos_in;
  input [0:0]gtgrefclk_in;
  input [0:0]gthrxn_in;
  input [0:0]gthrxp_in;
  input [0:0]gtnorthrefclk0_in;
  input [0:0]gtnorthrefclk1_in;
  input [0:0]gtrefclk0_in;
  input [0:0]gtrefclk1_in;
  input [0:0]gtresetsel_in;
  input [15:0]gtrsvd_in;
  input [0:0]gtrxreset_in;
  input [0:0]gtrxresetsel_in;
  input [0:0]gtsouthrefclk0_in;
  input [0:0]gtsouthrefclk1_in;
  input [0:0]gttxreset_in;
  input [0:0]gttxresetsel_in;
  input [0:0]incpctrl_in;
  input [0:0]gtyrxn_in;
  input [0:0]gtyrxp_in;
  input [2:0]loopback_in;
  input [0:0]looprsvd_in;
  input [0:0]lpbkrxtxseren_in;
  input [0:0]lpbktxrxseren_in;
  input [0:0]pcieeqrxeqadaptdone_in;
  input [0:0]pcierstidle_in;
  input [0:0]pciersttxsyncstart_in;
  input [0:0]pcieuserratedone_in;
  input [15:0]pcsrsvdin_in;
  input [0:0]pcsrsvdin2_in;
  input [0:0]pmarsvdin_in;
  input [0:0]qpll0clk_in;
  input [0:0]qpll0freqlock_in;
  input [0:0]qpll0refclk_in;
  input [0:0]qpll1clk_in;
  input [0:0]qpll1freqlock_in;
  input [0:0]qpll1refclk_in;
  input [0:0]resetovrd_in;
  input [0:0]rstclkentx_in;
  input [0:0]rx8b10ben_in;
  input [0:0]rxafecfoken_in;
  input [0:0]rxbufreset_in;
  input [0:0]rxcdrfreqreset_in;
  input [0:0]rxcdrhold_in;
  input [0:0]rxcdrovrden_in;
  input [0:0]rxcdrreset_in;
  input [0:0]rxcdrresetrsv_in;
  input [0:0]rxchbonden_in;
  input [4:0]rxchbondi_in;
  input [2:0]rxchbondlevel_in;
  input [0:0]rxchbondmaster_in;
  input [0:0]rxchbondslave_in;
  input [0:0]rxckcalreset_in;
  input [6:0]rxckcalstart_in;
  input [0:0]rxcommadeten_in;
  input [1:0]rxdfeagcctrl_in;
  input [0:0]rxdccforcestart_in;
  input [0:0]rxdfeagchold_in;
  input [0:0]rxdfeagcovrden_in;
  input [3:0]rxdfecfokfcnum_in;
  input [0:0]rxdfecfokfen_in;
  input [0:0]rxdfecfokfpulse_in;
  input [0:0]rxdfecfokhold_in;
  input [0:0]rxdfecfokovren_in;
  input [0:0]rxdfekhhold_in;
  input [0:0]rxdfekhovrden_in;
  input [0:0]rxdfelfhold_in;
  input [0:0]rxdfelfovrden_in;
  input [0:0]rxdfelpmreset_in;
  input [0:0]rxdfetap10hold_in;
  input [0:0]rxdfetap10ovrden_in;
  input [0:0]rxdfetap11hold_in;
  input [0:0]rxdfetap11ovrden_in;
  input [0:0]rxdfetap12hold_in;
  input [0:0]rxdfetap12ovrden_in;
  input [0:0]rxdfetap13hold_in;
  input [0:0]rxdfetap13ovrden_in;
  input [0:0]rxdfetap14hold_in;
  input [0:0]rxdfetap14ovrden_in;
  input [0:0]rxdfetap15hold_in;
  input [0:0]rxdfetap15ovrden_in;
  input [0:0]rxdfetap2hold_in;
  input [0:0]rxdfetap2ovrden_in;
  input [0:0]rxdfetap3hold_in;
  input [0:0]rxdfetap3ovrden_in;
  input [0:0]rxdfetap4hold_in;
  input [0:0]rxdfetap4ovrden_in;
  input [0:0]rxdfetap5hold_in;
  input [0:0]rxdfetap5ovrden_in;
  input [0:0]rxdfetap6hold_in;
  input [0:0]rxdfetap6ovrden_in;
  input [0:0]rxdfetap7hold_in;
  input [0:0]rxdfetap7ovrden_in;
  input [0:0]rxdfetap8hold_in;
  input [0:0]rxdfetap8ovrden_in;
  input [0:0]rxdfetap9hold_in;
  input [0:0]rxdfetap9ovrden_in;
  input [0:0]rxdfeuthold_in;
  input [0:0]rxdfeutovrden_in;
  input [0:0]rxdfevphold_in;
  input [0:0]rxdfevpovrden_in;
  input [0:0]rxdfevsen_in;
  input [0:0]rxdfexyden_in;
  input [0:0]rxdlybypass_in;
  input [0:0]rxdlyen_in;
  input [0:0]rxdlyovrden_in;
  input [0:0]rxdlysreset_in;
  input [1:0]rxelecidlemode_in;
  input [0:0]rxeqtraining_in;
  input [0:0]rxgearboxslip_in;
  input [0:0]rxlatclk_in;
  input [0:0]rxlpmen_in;
  input [0:0]rxlpmgchold_in;
  input [0:0]rxlpmgcovrden_in;
  input [0:0]rxlpmhfhold_in;
  input [0:0]rxlpmhfovrden_in;
  input [0:0]rxlpmlfhold_in;
  input [0:0]rxlpmlfklovrden_in;
  input [0:0]rxlpmoshold_in;
  input [0:0]rxlpmosovrden_in;
  input [0:0]rxmcommaalignen_in;
  input [1:0]rxmonitorsel_in;
  input [0:0]rxoobreset_in;
  input [0:0]rxoscalreset_in;
  input [0:0]rxoshold_in;
  input [0:0]rxosintcfg_in;
  input [0:0]rxosinten_in;
  input [0:0]rxosinthold_in;
  input [0:0]rxosintovrden_in;
  input [0:0]rxosintstrobe_in;
  input [0:0]rxosinttestovrden_in;
  input [0:0]rxosovrden_in;
  input [2:0]rxoutclksel_in;
  input [0:0]rxpcommaalignen_in;
  input [0:0]rxpcsreset_in;
  input [1:0]rxpd_in;
  input [0:0]rxphalign_in;
  input [0:0]rxphalignen_in;
  input [0:0]rxphdlypd_in;
  input [0:0]rxphdlyreset_in;
  input [0:0]rxphovrden_in;
  input [1:0]rxpllclksel_in;
  input [0:0]rxpmareset_in;
  input [0:0]rxpolarity_in;
  input [0:0]rxprbscntreset_in;
  input [3:0]rxprbssel_in;
  input [0:0]rxprogdivreset_in;
  input [0:0]rxqpien_in;
  input [2:0]rxrate_in;
  input [0:0]rxratemode_in;
  input [0:0]rxslide_in;
  input [0:0]rxslipoutclk_in;
  input [0:0]rxslippma_in;
  input [0:0]rxsyncallin_in;
  input [0:0]rxsyncin_in;
  input [0:0]rxsyncmode_in;
  input [1:0]rxsysclksel_in;
  input [0:0]rxtermination_in;
  input [0:0]rxuserrdy_in;
  input [0:0]rxusrclk_in;
  input [0:0]rxusrclk2_in;
  input [0:0]sigvalidclk_in;
  input [19:0]tstin_in;
  input [7:0]tx8b10bbypass_in;
  input [0:0]tx8b10ben_in;
  input [0:0]txbufdiffctrl_in;
  input [0:0]txcominit_in;
  input [0:0]txcomsas_in;
  input [0:0]txcomwake_in;
  input [15:0]txctrl0_in;
  input [15:0]txctrl1_in;
  input [7:0]txctrl2_in;
  input [127:0]txdata_in;
  input [7:0]txdataextendrsvd_in;
  input [0:0]txdccforcestart_in;
  input [0:0]txdccreset_in;
  input [1:0]txdeemph_in;
  input [0:0]txdetectrx_in;
  input [4:0]txdiffctrl_in;
  input [0:0]txdiffpd_in;
  input [0:0]txdlybypass_in;
  input [0:0]txdlyen_in;
  input [0:0]txdlyhold_in;
  input [0:0]txdlyovrden_in;
  input [0:0]txdlysreset_in;
  input [0:0]txdlyupdown_in;
  input [0:0]txelecidle_in;
  input [0:0]txelforcestart_in;
  input [5:0]txheader_in;
  input [0:0]txinhibit_in;
  input [0:0]txlatclk_in;
  input [0:0]txlfpstreset_in;
  input [0:0]txlfpsu2lpexit_in;
  input [0:0]txlfpsu3wake_in;
  input [6:0]txmaincursor_in;
  input [2:0]txmargin_in;
  input [0:0]txmuxdcdexhold_in;
  input [0:0]txmuxdcdorwren_in;
  input [0:0]txoneszeros_in;
  input [2:0]txoutclksel_in;
  input [0:0]txpcsreset_in;
  input [1:0]txpd_in;
  input [0:0]txpdelecidlemode_in;
  input [0:0]txphalign_in;
  input [0:0]txphalignen_in;
  input [0:0]txphdlypd_in;
  input [0:0]txphdlyreset_in;
  input [0:0]txphdlytstclk_in;
  input [0:0]txphinit_in;
  input [0:0]txphovrden_in;
  input [0:0]txpippmen_in;
  input [0:0]txpippmovrden_in;
  input [0:0]txpippmpd_in;
  input [0:0]txpippmsel_in;
  input [4:0]txpippmstepsize_in;
  input [0:0]txpisopd_in;
  input [1:0]txpllclksel_in;
  input [0:0]txpmareset_in;
  input [0:0]txpolarity_in;
  input [4:0]txpostcursor_in;
  input [0:0]txpostcursorinv_in;
  input [0:0]txprbsforceerr_in;
  input [3:0]txprbssel_in;
  input [4:0]txprecursor_in;
  input [0:0]txprecursorinv_in;
  input [0:0]txprogdivreset_in;
  input [0:0]txqpibiasen_in;
  input [0:0]txqpistrongpdown_in;
  input [0:0]txqpiweakpup_in;
  input [2:0]txrate_in;
  input [0:0]txratemode_in;
  input [6:0]txsequence_in;
  input [0:0]txswing_in;
  input [0:0]txsyncallin_in;
  input [0:0]txsyncin_in;
  input [0:0]txsyncmode_in;
  input [1:0]txsysclksel_in;
  input [0:0]txuserrdy_in;
  input [0:0]txusrclk_in;
  input [0:0]txusrclk2_in;
  output [0:0]bufgtce_out;
  output [2:0]bufgtcemask_out;
  output [8:0]bufgtdiv_out;
  output [0:0]bufgtreset_out;
  output [2:0]bufgtrstmask_out;
  output [0:0]cpllfbclklost_out;
  output [0:0]cplllock_out;
  output [0:0]cpllrefclklost_out;
  output [15:0]dmonitorout_out;
  output [0:0]dmonitoroutclk_out;
  output [15:0]drpdo_out;
  output [0:0]drprdy_out;
  output [0:0]eyescandataerror_out;
  output [0:0]gthtxn_out;
  output [0:0]gthtxp_out;
  output [0:0]gtpowergood_out;
  output [0:0]gtrefclkmonitor_out;
  output [0:0]gtytxn_out;
  output [0:0]gtytxp_out;
  output [0:0]pcierategen3_out;
  output [0:0]pcierateidle_out;
  output [1:0]pcierateqpllpd_out;
  output [1:0]pcierateqpllreset_out;
  output [0:0]pciesynctxsyncdone_out;
  output [0:0]pcieusergen3rdy_out;
  output [0:0]pcieuserphystatusrst_out;
  output [0:0]pcieuserratestart_out;
  output [15:0]pcsrsvdout_out;
  output [0:0]phystatus_out;
  output [15:0]pinrsrvdas_out;
  output [0:0]powerpresent_out;
  output [0:0]resetexception_out;
  output [2:0]rxbufstatus_out;
  output [0:0]rxbyteisaligned_out;
  output [0:0]rxbyterealign_out;
  output [0:0]rxcdrlock_out;
  output [0:0]rxcdrphdone_out;
  output [0:0]rxchanbondseq_out;
  output [0:0]rxchanisaligned_out;
  output [0:0]rxchanrealign_out;
  output [4:0]rxchbondo_out;
  output [0:0]rxckcaldone_out;
  output [1:0]rxclkcorcnt_out;
  output [0:0]rxcominitdet_out;
  output [0:0]rxcommadet_out;
  output [0:0]rxcomsasdet_out;
  output [0:0]rxcomwakedet_out;
  output [15:0]rxctrl0_out;
  output [15:0]rxctrl1_out;
  output [7:0]rxctrl2_out;
  output [7:0]rxctrl3_out;
  output [127:0]rxdata_out;
  output [7:0]rxdataextendrsvd_out;
  output [1:0]rxdatavalid_out;
  output [0:0]rxdlysresetdone_out;
  output [0:0]rxelecidle_out;
  output [5:0]rxheader_out;
  output [1:0]rxheadervalid_out;
  output [0:0]rxlfpstresetdet_out;
  output [0:0]rxlfpsu2lpexitdet_out;
  output [0:0]rxlfpsu3wakedet_out;
  output [7:0]rxmonitorout_out;
  output [0:0]rxosintdone_out;
  output [0:0]rxosintstarted_out;
  output [0:0]rxosintstrobedone_out;
  output [0:0]rxosintstrobestarted_out;
  output [0:0]rxoutclk_out;
  output [0:0]rxoutclkfabric_out;
  output [0:0]rxoutclkpcs_out;
  output [0:0]rxphaligndone_out;
  output [0:0]rxphalignerr_out;
  output [0:0]rxpmaresetdone_out;
  output [0:0]rxprbserr_out;
  output [0:0]rxprbslocked_out;
  output [0:0]rxprgdivresetdone_out;
  output [0:0]rxqpisenn_out;
  output [0:0]rxqpisenp_out;
  output [0:0]rxratedone_out;
  output [0:0]rxrecclkout_out;
  output [0:0]rxresetdone_out;
  output [0:0]rxsliderdy_out;
  output [0:0]rxslipdone_out;
  output [0:0]rxslipoutclkrdy_out;
  output [0:0]rxslippmardy_out;
  output [1:0]rxstartofseq_out;
  output [2:0]rxstatus_out;
  output [0:0]rxsyncdone_out;
  output [0:0]rxsyncout_out;
  output [0:0]rxvalid_out;
  output [1:0]txbufstatus_out;
  output [0:0]txcomfinish_out;
  output [0:0]txdccdone_out;
  output [0:0]txdlysresetdone_out;
  output [0:0]txoutclk_out;
  output [0:0]txoutclkfabric_out;
  output [0:0]txoutclkpcs_out;
  output [0:0]txphaligndone_out;
  output [0:0]txphinitdone_out;
  output [0:0]txpmaresetdone_out;
  output [0:0]txprgdivresetdone_out;
  output [0:0]txqpisenn_out;
  output [0:0]txqpisenp_out;
  output [0:0]txratedone_out;
  output [0:0]txresetdone_out;
  output [0:0]txsyncdone_out;
  output [0:0]txsyncout_out;
  input lopt;
  input lopt_1;
  output lopt_2;
  output lopt_3;
  output lopt_4;
  output lopt_5;

  wire \<const0> ;
  wire [0:0]drpclk_in;
  wire [0:0]gthrxn_in;
  wire [0:0]gthrxp_in;
  wire [0:0]gthtxn_out;
  wire [0:0]gthtxp_out;
  wire [0:0]gtpowergood_out;
  wire [0:0]gtrefclk0_in;
  wire [0:0]gtwiz_reset_all_in;
  wire [0:0]gtwiz_reset_rx_datapath_in;
  wire [0:0]gtwiz_reset_rx_done_out;
  wire [0:0]gtwiz_reset_tx_datapath_in;
  wire [0:0]gtwiz_reset_tx_done_out;
  wire [15:0]gtwiz_userdata_rx_out;
  wire [15:0]gtwiz_userdata_tx_in;
  wire lopt;
  wire lopt_1;
  wire lopt_2;
  wire lopt_3;
  wire lopt_4;
  wire lopt_5;
  wire [2:2]\^rxbufstatus_out ;
  wire [1:0]rxclkcorcnt_out;
  wire [1:0]\^rxctrl0_out ;
  wire [1:0]\^rxctrl1_out ;
  wire [1:0]\^rxctrl2_out ;
  wire [1:0]\^rxctrl3_out ;
  wire [0:0]rxmcommaalignen_in;
  wire [0:0]rxoutclk_out;
  wire [1:0]rxpd_in;
  wire [0:0]rxusrclk_in;
  wire [1:1]\^txbufstatus_out ;
  wire [15:0]txctrl0_in;
  wire [15:0]txctrl1_in;
  wire [7:0]txctrl2_in;
  wire [0:0]txelecidle_in;
  wire [0:0]txoutclk_out;

  assign bufgtce_out[0] = \<const0> ;
  assign bufgtcemask_out[2] = \<const0> ;
  assign bufgtcemask_out[1] = \<const0> ;
  assign bufgtcemask_out[0] = \<const0> ;
  assign bufgtdiv_out[8] = \<const0> ;
  assign bufgtdiv_out[7] = \<const0> ;
  assign bufgtdiv_out[6] = \<const0> ;
  assign bufgtdiv_out[5] = \<const0> ;
  assign bufgtdiv_out[4] = \<const0> ;
  assign bufgtdiv_out[3] = \<const0> ;
  assign bufgtdiv_out[2] = \<const0> ;
  assign bufgtdiv_out[1] = \<const0> ;
  assign bufgtdiv_out[0] = \<const0> ;
  assign bufgtreset_out[0] = \<const0> ;
  assign bufgtrstmask_out[2] = \<const0> ;
  assign bufgtrstmask_out[1] = \<const0> ;
  assign bufgtrstmask_out[0] = \<const0> ;
  assign cpllfbclklost_out[0] = \<const0> ;
  assign cplllock_out[0] = \<const0> ;
  assign cpllrefclklost_out[0] = \<const0> ;
  assign dmonitorout_out[15] = \<const0> ;
  assign dmonitorout_out[14] = \<const0> ;
  assign dmonitorout_out[13] = \<const0> ;
  assign dmonitorout_out[12] = \<const0> ;
  assign dmonitorout_out[11] = \<const0> ;
  assign dmonitorout_out[10] = \<const0> ;
  assign dmonitorout_out[9] = \<const0> ;
  assign dmonitorout_out[8] = \<const0> ;
  assign dmonitorout_out[7] = \<const0> ;
  assign dmonitorout_out[6] = \<const0> ;
  assign dmonitorout_out[5] = \<const0> ;
  assign dmonitorout_out[4] = \<const0> ;
  assign dmonitorout_out[3] = \<const0> ;
  assign dmonitorout_out[2] = \<const0> ;
  assign dmonitorout_out[1] = \<const0> ;
  assign dmonitorout_out[0] = \<const0> ;
  assign dmonitoroutclk_out[0] = \<const0> ;
  assign drpdo_common_out[15] = \<const0> ;
  assign drpdo_common_out[14] = \<const0> ;
  assign drpdo_common_out[13] = \<const0> ;
  assign drpdo_common_out[12] = \<const0> ;
  assign drpdo_common_out[11] = \<const0> ;
  assign drpdo_common_out[10] = \<const0> ;
  assign drpdo_common_out[9] = \<const0> ;
  assign drpdo_common_out[8] = \<const0> ;
  assign drpdo_common_out[7] = \<const0> ;
  assign drpdo_common_out[6] = \<const0> ;
  assign drpdo_common_out[5] = \<const0> ;
  assign drpdo_common_out[4] = \<const0> ;
  assign drpdo_common_out[3] = \<const0> ;
  assign drpdo_common_out[2] = \<const0> ;
  assign drpdo_common_out[1] = \<const0> ;
  assign drpdo_common_out[0] = \<const0> ;
  assign drpdo_out[15] = \<const0> ;
  assign drpdo_out[14] = \<const0> ;
  assign drpdo_out[13] = \<const0> ;
  assign drpdo_out[12] = \<const0> ;
  assign drpdo_out[11] = \<const0> ;
  assign drpdo_out[10] = \<const0> ;
  assign drpdo_out[9] = \<const0> ;
  assign drpdo_out[8] = \<const0> ;
  assign drpdo_out[7] = \<const0> ;
  assign drpdo_out[6] = \<const0> ;
  assign drpdo_out[5] = \<const0> ;
  assign drpdo_out[4] = \<const0> ;
  assign drpdo_out[3] = \<const0> ;
  assign drpdo_out[2] = \<const0> ;
  assign drpdo_out[1] = \<const0> ;
  assign drpdo_out[0] = \<const0> ;
  assign drprdy_common_out[0] = \<const0> ;
  assign drprdy_out[0] = \<const0> ;
  assign eyescandataerror_out[0] = \<const0> ;
  assign gtrefclkmonitor_out[0] = \<const0> ;
  assign gtwiz_buffbypass_rx_done_out[0] = \<const0> ;
  assign gtwiz_buffbypass_rx_error_out[0] = \<const0> ;
  assign gtwiz_buffbypass_tx_done_out[0] = \<const0> ;
  assign gtwiz_buffbypass_tx_error_out[0] = \<const0> ;
  assign gtwiz_reset_qpll0reset_out[0] = \<const0> ;
  assign gtwiz_reset_qpll1reset_out[0] = \<const0> ;
  assign gtwiz_reset_rx_cdr_stable_out[0] = \<const0> ;
  assign gtwiz_userclk_rx_active_out[0] = \<const0> ;
  assign gtwiz_userclk_rx_srcclk_out[0] = \<const0> ;
  assign gtwiz_userclk_rx_usrclk2_out[0] = \<const0> ;
  assign gtwiz_userclk_rx_usrclk_out[0] = \<const0> ;
  assign gtwiz_userclk_tx_active_out[0] = \<const0> ;
  assign gtwiz_userclk_tx_srcclk_out[0] = \<const0> ;
  assign gtwiz_userclk_tx_usrclk2_out[0] = \<const0> ;
  assign gtwiz_userclk_tx_usrclk_out[0] = \<const0> ;
  assign gtytxn_out[0] = \<const0> ;
  assign gtytxp_out[0] = \<const0> ;
  assign pcierategen3_out[0] = \<const0> ;
  assign pcierateidle_out[0] = \<const0> ;
  assign pcierateqpllpd_out[1] = \<const0> ;
  assign pcierateqpllpd_out[0] = \<const0> ;
  assign pcierateqpllreset_out[1] = \<const0> ;
  assign pcierateqpllreset_out[0] = \<const0> ;
  assign pciesynctxsyncdone_out[0] = \<const0> ;
  assign pcieusergen3rdy_out[0] = \<const0> ;
  assign pcieuserphystatusrst_out[0] = \<const0> ;
  assign pcieuserratestart_out[0] = \<const0> ;
  assign pcsrsvdout_out[15] = \<const0> ;
  assign pcsrsvdout_out[14] = \<const0> ;
  assign pcsrsvdout_out[13] = \<const0> ;
  assign pcsrsvdout_out[12] = \<const0> ;
  assign pcsrsvdout_out[11] = \<const0> ;
  assign pcsrsvdout_out[10] = \<const0> ;
  assign pcsrsvdout_out[9] = \<const0> ;
  assign pcsrsvdout_out[8] = \<const0> ;
  assign pcsrsvdout_out[7] = \<const0> ;
  assign pcsrsvdout_out[6] = \<const0> ;
  assign pcsrsvdout_out[5] = \<const0> ;
  assign pcsrsvdout_out[4] = \<const0> ;
  assign pcsrsvdout_out[3] = \<const0> ;
  assign pcsrsvdout_out[2] = \<const0> ;
  assign pcsrsvdout_out[1] = \<const0> ;
  assign pcsrsvdout_out[0] = \<const0> ;
  assign phystatus_out[0] = \<const0> ;
  assign pinrsrvdas_out[15] = \<const0> ;
  assign pinrsrvdas_out[14] = \<const0> ;
  assign pinrsrvdas_out[13] = \<const0> ;
  assign pinrsrvdas_out[12] = \<const0> ;
  assign pinrsrvdas_out[11] = \<const0> ;
  assign pinrsrvdas_out[10] = \<const0> ;
  assign pinrsrvdas_out[9] = \<const0> ;
  assign pinrsrvdas_out[8] = \<const0> ;
  assign pinrsrvdas_out[7] = \<const0> ;
  assign pinrsrvdas_out[6] = \<const0> ;
  assign pinrsrvdas_out[5] = \<const0> ;
  assign pinrsrvdas_out[4] = \<const0> ;
  assign pinrsrvdas_out[3] = \<const0> ;
  assign pinrsrvdas_out[2] = \<const0> ;
  assign pinrsrvdas_out[1] = \<const0> ;
  assign pinrsrvdas_out[0] = \<const0> ;
  assign pmarsvdout0_out[7] = \<const0> ;
  assign pmarsvdout0_out[6] = \<const0> ;
  assign pmarsvdout0_out[5] = \<const0> ;
  assign pmarsvdout0_out[4] = \<const0> ;
  assign pmarsvdout0_out[3] = \<const0> ;
  assign pmarsvdout0_out[2] = \<const0> ;
  assign pmarsvdout0_out[1] = \<const0> ;
  assign pmarsvdout0_out[0] = \<const0> ;
  assign pmarsvdout1_out[7] = \<const0> ;
  assign pmarsvdout1_out[6] = \<const0> ;
  assign pmarsvdout1_out[5] = \<const0> ;
  assign pmarsvdout1_out[4] = \<const0> ;
  assign pmarsvdout1_out[3] = \<const0> ;
  assign pmarsvdout1_out[2] = \<const0> ;
  assign pmarsvdout1_out[1] = \<const0> ;
  assign pmarsvdout1_out[0] = \<const0> ;
  assign powerpresent_out[0] = \<const0> ;
  assign qpll0fbclklost_out[0] = \<const0> ;
  assign qpll0lock_out[0] = \<const0> ;
  assign qpll0outclk_out[0] = \<const0> ;
  assign qpll0outrefclk_out[0] = \<const0> ;
  assign qpll0refclklost_out[0] = \<const0> ;
  assign qpll1fbclklost_out[0] = \<const0> ;
  assign qpll1lock_out[0] = \<const0> ;
  assign qpll1outclk_out[0] = \<const0> ;
  assign qpll1outrefclk_out[0] = \<const0> ;
  assign qpll1refclklost_out[0] = \<const0> ;
  assign qplldmonitor0_out[7] = \<const0> ;
  assign qplldmonitor0_out[6] = \<const0> ;
  assign qplldmonitor0_out[5] = \<const0> ;
  assign qplldmonitor0_out[4] = \<const0> ;
  assign qplldmonitor0_out[3] = \<const0> ;
  assign qplldmonitor0_out[2] = \<const0> ;
  assign qplldmonitor0_out[1] = \<const0> ;
  assign qplldmonitor0_out[0] = \<const0> ;
  assign qplldmonitor1_out[7] = \<const0> ;
  assign qplldmonitor1_out[6] = \<const0> ;
  assign qplldmonitor1_out[5] = \<const0> ;
  assign qplldmonitor1_out[4] = \<const0> ;
  assign qplldmonitor1_out[3] = \<const0> ;
  assign qplldmonitor1_out[2] = \<const0> ;
  assign qplldmonitor1_out[1] = \<const0> ;
  assign qplldmonitor1_out[0] = \<const0> ;
  assign refclkoutmonitor0_out[0] = \<const0> ;
  assign refclkoutmonitor1_out[0] = \<const0> ;
  assign resetexception_out[0] = \<const0> ;
  assign rxbufstatus_out[2] = \^rxbufstatus_out [2];
  assign rxbufstatus_out[1] = \<const0> ;
  assign rxbufstatus_out[0] = \<const0> ;
  assign rxbyteisaligned_out[0] = \<const0> ;
  assign rxbyterealign_out[0] = \<const0> ;
  assign rxcdrlock_out[0] = \<const0> ;
  assign rxcdrphdone_out[0] = \<const0> ;
  assign rxchanbondseq_out[0] = \<const0> ;
  assign rxchanisaligned_out[0] = \<const0> ;
  assign rxchanrealign_out[0] = \<const0> ;
  assign rxchbondo_out[4] = \<const0> ;
  assign rxchbondo_out[3] = \<const0> ;
  assign rxchbondo_out[2] = \<const0> ;
  assign rxchbondo_out[1] = \<const0> ;
  assign rxchbondo_out[0] = \<const0> ;
  assign rxckcaldone_out[0] = \<const0> ;
  assign rxcominitdet_out[0] = \<const0> ;
  assign rxcommadet_out[0] = \<const0> ;
  assign rxcomsasdet_out[0] = \<const0> ;
  assign rxcomwakedet_out[0] = \<const0> ;
  assign rxctrl0_out[15] = \<const0> ;
  assign rxctrl0_out[14] = \<const0> ;
  assign rxctrl0_out[13] = \<const0> ;
  assign rxctrl0_out[12] = \<const0> ;
  assign rxctrl0_out[11] = \<const0> ;
  assign rxctrl0_out[10] = \<const0> ;
  assign rxctrl0_out[9] = \<const0> ;
  assign rxctrl0_out[8] = \<const0> ;
  assign rxctrl0_out[7] = \<const0> ;
  assign rxctrl0_out[6] = \<const0> ;
  assign rxctrl0_out[5] = \<const0> ;
  assign rxctrl0_out[4] = \<const0> ;
  assign rxctrl0_out[3] = \<const0> ;
  assign rxctrl0_out[2] = \<const0> ;
  assign rxctrl0_out[1:0] = \^rxctrl0_out [1:0];
  assign rxctrl1_out[15] = \<const0> ;
  assign rxctrl1_out[14] = \<const0> ;
  assign rxctrl1_out[13] = \<const0> ;
  assign rxctrl1_out[12] = \<const0> ;
  assign rxctrl1_out[11] = \<const0> ;
  assign rxctrl1_out[10] = \<const0> ;
  assign rxctrl1_out[9] = \<const0> ;
  assign rxctrl1_out[8] = \<const0> ;
  assign rxctrl1_out[7] = \<const0> ;
  assign rxctrl1_out[6] = \<const0> ;
  assign rxctrl1_out[5] = \<const0> ;
  assign rxctrl1_out[4] = \<const0> ;
  assign rxctrl1_out[3] = \<const0> ;
  assign rxctrl1_out[2] = \<const0> ;
  assign rxctrl1_out[1:0] = \^rxctrl1_out [1:0];
  assign rxctrl2_out[7] = \<const0> ;
  assign rxctrl2_out[6] = \<const0> ;
  assign rxctrl2_out[5] = \<const0> ;
  assign rxctrl2_out[4] = \<const0> ;
  assign rxctrl2_out[3] = \<const0> ;
  assign rxctrl2_out[2] = \<const0> ;
  assign rxctrl2_out[1:0] = \^rxctrl2_out [1:0];
  assign rxctrl3_out[7] = \<const0> ;
  assign rxctrl3_out[6] = \<const0> ;
  assign rxctrl3_out[5] = \<const0> ;
  assign rxctrl3_out[4] = \<const0> ;
  assign rxctrl3_out[3] = \<const0> ;
  assign rxctrl3_out[2] = \<const0> ;
  assign rxctrl3_out[1:0] = \^rxctrl3_out [1:0];
  assign rxdata_out[127] = \<const0> ;
  assign rxdata_out[126] = \<const0> ;
  assign rxdata_out[125] = \<const0> ;
  assign rxdata_out[124] = \<const0> ;
  assign rxdata_out[123] = \<const0> ;
  assign rxdata_out[122] = \<const0> ;
  assign rxdata_out[121] = \<const0> ;
  assign rxdata_out[120] = \<const0> ;
  assign rxdata_out[119] = \<const0> ;
  assign rxdata_out[118] = \<const0> ;
  assign rxdata_out[117] = \<const0> ;
  assign rxdata_out[116] = \<const0> ;
  assign rxdata_out[115] = \<const0> ;
  assign rxdata_out[114] = \<const0> ;
  assign rxdata_out[113] = \<const0> ;
  assign rxdata_out[112] = \<const0> ;
  assign rxdata_out[111] = \<const0> ;
  assign rxdata_out[110] = \<const0> ;
  assign rxdata_out[109] = \<const0> ;
  assign rxdata_out[108] = \<const0> ;
  assign rxdata_out[107] = \<const0> ;
  assign rxdata_out[106] = \<const0> ;
  assign rxdata_out[105] = \<const0> ;
  assign rxdata_out[104] = \<const0> ;
  assign rxdata_out[103] = \<const0> ;
  assign rxdata_out[102] = \<const0> ;
  assign rxdata_out[101] = \<const0> ;
  assign rxdata_out[100] = \<const0> ;
  assign rxdata_out[99] = \<const0> ;
  assign rxdata_out[98] = \<const0> ;
  assign rxdata_out[97] = \<const0> ;
  assign rxdata_out[96] = \<const0> ;
  assign rxdata_out[95] = \<const0> ;
  assign rxdata_out[94] = \<const0> ;
  assign rxdata_out[93] = \<const0> ;
  assign rxdata_out[92] = \<const0> ;
  assign rxdata_out[91] = \<const0> ;
  assign rxdata_out[90] = \<const0> ;
  assign rxdata_out[89] = \<const0> ;
  assign rxdata_out[88] = \<const0> ;
  assign rxdata_out[87] = \<const0> ;
  assign rxdata_out[86] = \<const0> ;
  assign rxdata_out[85] = \<const0> ;
  assign rxdata_out[84] = \<const0> ;
  assign rxdata_out[83] = \<const0> ;
  assign rxdata_out[82] = \<const0> ;
  assign rxdata_out[81] = \<const0> ;
  assign rxdata_out[80] = \<const0> ;
  assign rxdata_out[79] = \<const0> ;
  assign rxdata_out[78] = \<const0> ;
  assign rxdata_out[77] = \<const0> ;
  assign rxdata_out[76] = \<const0> ;
  assign rxdata_out[75] = \<const0> ;
  assign rxdata_out[74] = \<const0> ;
  assign rxdata_out[73] = \<const0> ;
  assign rxdata_out[72] = \<const0> ;
  assign rxdata_out[71] = \<const0> ;
  assign rxdata_out[70] = \<const0> ;
  assign rxdata_out[69] = \<const0> ;
  assign rxdata_out[68] = \<const0> ;
  assign rxdata_out[67] = \<const0> ;
  assign rxdata_out[66] = \<const0> ;
  assign rxdata_out[65] = \<const0> ;
  assign rxdata_out[64] = \<const0> ;
  assign rxdata_out[63] = \<const0> ;
  assign rxdata_out[62] = \<const0> ;
  assign rxdata_out[61] = \<const0> ;
  assign rxdata_out[60] = \<const0> ;
  assign rxdata_out[59] = \<const0> ;
  assign rxdata_out[58] = \<const0> ;
  assign rxdata_out[57] = \<const0> ;
  assign rxdata_out[56] = \<const0> ;
  assign rxdata_out[55] = \<const0> ;
  assign rxdata_out[54] = \<const0> ;
  assign rxdata_out[53] = \<const0> ;
  assign rxdata_out[52] = \<const0> ;
  assign rxdata_out[51] = \<const0> ;
  assign rxdata_out[50] = \<const0> ;
  assign rxdata_out[49] = \<const0> ;
  assign rxdata_out[48] = \<const0> ;
  assign rxdata_out[47] = \<const0> ;
  assign rxdata_out[46] = \<const0> ;
  assign rxdata_out[45] = \<const0> ;
  assign rxdata_out[44] = \<const0> ;
  assign rxdata_out[43] = \<const0> ;
  assign rxdata_out[42] = \<const0> ;
  assign rxdata_out[41] = \<const0> ;
  assign rxdata_out[40] = \<const0> ;
  assign rxdata_out[39] = \<const0> ;
  assign rxdata_out[38] = \<const0> ;
  assign rxdata_out[37] = \<const0> ;
  assign rxdata_out[36] = \<const0> ;
  assign rxdata_out[35] = \<const0> ;
  assign rxdata_out[34] = \<const0> ;
  assign rxdata_out[33] = \<const0> ;
  assign rxdata_out[32] = \<const0> ;
  assign rxdata_out[31] = \<const0> ;
  assign rxdata_out[30] = \<const0> ;
  assign rxdata_out[29] = \<const0> ;
  assign rxdata_out[28] = \<const0> ;
  assign rxdata_out[27] = \<const0> ;
  assign rxdata_out[26] = \<const0> ;
  assign rxdata_out[25] = \<const0> ;
  assign rxdata_out[24] = \<const0> ;
  assign rxdata_out[23] = \<const0> ;
  assign rxdata_out[22] = \<const0> ;
  assign rxdata_out[21] = \<const0> ;
  assign rxdata_out[20] = \<const0> ;
  assign rxdata_out[19] = \<const0> ;
  assign rxdata_out[18] = \<const0> ;
  assign rxdata_out[17] = \<const0> ;
  assign rxdata_out[16] = \<const0> ;
  assign rxdata_out[15] = \<const0> ;
  assign rxdata_out[14] = \<const0> ;
  assign rxdata_out[13] = \<const0> ;
  assign rxdata_out[12] = \<const0> ;
  assign rxdata_out[11] = \<const0> ;
  assign rxdata_out[10] = \<const0> ;
  assign rxdata_out[9] = \<const0> ;
  assign rxdata_out[8] = \<const0> ;
  assign rxdata_out[7] = \<const0> ;
  assign rxdata_out[6] = \<const0> ;
  assign rxdata_out[5] = \<const0> ;
  assign rxdata_out[4] = \<const0> ;
  assign rxdata_out[3] = \<const0> ;
  assign rxdata_out[2] = \<const0> ;
  assign rxdata_out[1] = \<const0> ;
  assign rxdata_out[0] = \<const0> ;
  assign rxdataextendrsvd_out[7] = \<const0> ;
  assign rxdataextendrsvd_out[6] = \<const0> ;
  assign rxdataextendrsvd_out[5] = \<const0> ;
  assign rxdataextendrsvd_out[4] = \<const0> ;
  assign rxdataextendrsvd_out[3] = \<const0> ;
  assign rxdataextendrsvd_out[2] = \<const0> ;
  assign rxdataextendrsvd_out[1] = \<const0> ;
  assign rxdataextendrsvd_out[0] = \<const0> ;
  assign rxdatavalid_out[1] = \<const0> ;
  assign rxdatavalid_out[0] = \<const0> ;
  assign rxdlysresetdone_out[0] = \<const0> ;
  assign rxelecidle_out[0] = \<const0> ;
  assign rxheader_out[5] = \<const0> ;
  assign rxheader_out[4] = \<const0> ;
  assign rxheader_out[3] = \<const0> ;
  assign rxheader_out[2] = \<const0> ;
  assign rxheader_out[1] = \<const0> ;
  assign rxheader_out[0] = \<const0> ;
  assign rxheadervalid_out[1] = \<const0> ;
  assign rxheadervalid_out[0] = \<const0> ;
  assign rxlfpstresetdet_out[0] = \<const0> ;
  assign rxlfpsu2lpexitdet_out[0] = \<const0> ;
  assign rxlfpsu3wakedet_out[0] = \<const0> ;
  assign rxmonitorout_out[7] = \<const0> ;
  assign rxmonitorout_out[6] = \<const0> ;
  assign rxmonitorout_out[5] = \<const0> ;
  assign rxmonitorout_out[4] = \<const0> ;
  assign rxmonitorout_out[3] = \<const0> ;
  assign rxmonitorout_out[2] = \<const0> ;
  assign rxmonitorout_out[1] = \<const0> ;
  assign rxmonitorout_out[0] = \<const0> ;
  assign rxosintdone_out[0] = \<const0> ;
  assign rxosintstarted_out[0] = \<const0> ;
  assign rxosintstrobedone_out[0] = \<const0> ;
  assign rxosintstrobestarted_out[0] = \<const0> ;
  assign rxoutclkfabric_out[0] = \<const0> ;
  assign rxoutclkpcs_out[0] = \<const0> ;
  assign rxphaligndone_out[0] = \<const0> ;
  assign rxphalignerr_out[0] = \<const0> ;
  assign rxpmaresetdone_out[0] = \<const0> ;
  assign rxprbserr_out[0] = \<const0> ;
  assign rxprbslocked_out[0] = \<const0> ;
  assign rxprgdivresetdone_out[0] = \<const0> ;
  assign rxqpisenn_out[0] = \<const0> ;
  assign rxqpisenp_out[0] = \<const0> ;
  assign rxratedone_out[0] = \<const0> ;
  assign rxrecclk0_sel_out[0] = \<const0> ;
  assign rxrecclk0sel_out[1] = \<const0> ;
  assign rxrecclk0sel_out[0] = \<const0> ;
  assign rxrecclk1_sel_out[0] = \<const0> ;
  assign rxrecclk1sel_out[1] = \<const0> ;
  assign rxrecclk1sel_out[0] = \<const0> ;
  assign rxrecclkout_out[0] = \<const0> ;
  assign rxresetdone_out[0] = \<const0> ;
  assign rxsliderdy_out[0] = \<const0> ;
  assign rxslipdone_out[0] = \<const0> ;
  assign rxslipoutclkrdy_out[0] = \<const0> ;
  assign rxslippmardy_out[0] = \<const0> ;
  assign rxstartofseq_out[1] = \<const0> ;
  assign rxstartofseq_out[0] = \<const0> ;
  assign rxstatus_out[2] = \<const0> ;
  assign rxstatus_out[1] = \<const0> ;
  assign rxstatus_out[0] = \<const0> ;
  assign rxsyncdone_out[0] = \<const0> ;
  assign rxsyncout_out[0] = \<const0> ;
  assign rxvalid_out[0] = \<const0> ;
  assign sdm0finalout_out[3] = \<const0> ;
  assign sdm0finalout_out[2] = \<const0> ;
  assign sdm0finalout_out[1] = \<const0> ;
  assign sdm0finalout_out[0] = \<const0> ;
  assign sdm0testdata_out[14] = \<const0> ;
  assign sdm0testdata_out[13] = \<const0> ;
  assign sdm0testdata_out[12] = \<const0> ;
  assign sdm0testdata_out[11] = \<const0> ;
  assign sdm0testdata_out[10] = \<const0> ;
  assign sdm0testdata_out[9] = \<const0> ;
  assign sdm0testdata_out[8] = \<const0> ;
  assign sdm0testdata_out[7] = \<const0> ;
  assign sdm0testdata_out[6] = \<const0> ;
  assign sdm0testdata_out[5] = \<const0> ;
  assign sdm0testdata_out[4] = \<const0> ;
  assign sdm0testdata_out[3] = \<const0> ;
  assign sdm0testdata_out[2] = \<const0> ;
  assign sdm0testdata_out[1] = \<const0> ;
  assign sdm0testdata_out[0] = \<const0> ;
  assign sdm1finalout_out[3] = \<const0> ;
  assign sdm1finalout_out[2] = \<const0> ;
  assign sdm1finalout_out[1] = \<const0> ;
  assign sdm1finalout_out[0] = \<const0> ;
  assign sdm1testdata_out[14] = \<const0> ;
  assign sdm1testdata_out[13] = \<const0> ;
  assign sdm1testdata_out[12] = \<const0> ;
  assign sdm1testdata_out[11] = \<const0> ;
  assign sdm1testdata_out[10] = \<const0> ;
  assign sdm1testdata_out[9] = \<const0> ;
  assign sdm1testdata_out[8] = \<const0> ;
  assign sdm1testdata_out[7] = \<const0> ;
  assign sdm1testdata_out[6] = \<const0> ;
  assign sdm1testdata_out[5] = \<const0> ;
  assign sdm1testdata_out[4] = \<const0> ;
  assign sdm1testdata_out[3] = \<const0> ;
  assign sdm1testdata_out[2] = \<const0> ;
  assign sdm1testdata_out[1] = \<const0> ;
  assign sdm1testdata_out[0] = \<const0> ;
  assign tcongpo_out[9] = \<const0> ;
  assign tcongpo_out[8] = \<const0> ;
  assign tcongpo_out[7] = \<const0> ;
  assign tcongpo_out[6] = \<const0> ;
  assign tcongpo_out[5] = \<const0> ;
  assign tcongpo_out[4] = \<const0> ;
  assign tcongpo_out[3] = \<const0> ;
  assign tcongpo_out[2] = \<const0> ;
  assign tcongpo_out[1] = \<const0> ;
  assign tcongpo_out[0] = \<const0> ;
  assign tconrsvdout0_out[0] = \<const0> ;
  assign txbufstatus_out[1] = \^txbufstatus_out [1];
  assign txbufstatus_out[0] = \<const0> ;
  assign txcomfinish_out[0] = \<const0> ;
  assign txdccdone_out[0] = \<const0> ;
  assign txdlysresetdone_out[0] = \<const0> ;
  assign txoutclkfabric_out[0] = \<const0> ;
  assign txoutclkpcs_out[0] = \<const0> ;
  assign txphaligndone_out[0] = \<const0> ;
  assign txphinitdone_out[0] = \<const0> ;
  assign txpmaresetdone_out[0] = \<const0> ;
  assign txprgdivresetdone_out[0] = \<const0> ;
  assign txqpisenn_out[0] = \<const0> ;
  assign txqpisenp_out[0] = \<const0> ;
  assign txratedone_out[0] = \<const0> ;
  assign txresetdone_out[0] = \<const0> ;
  assign txsyncdone_out[0] = \<const0> ;
  assign txsyncout_out[0] = \<const0> ;
  assign ubdaddr_out[0] = \<const0> ;
  assign ubden_out[0] = \<const0> ;
  assign ubdi_out[0] = \<const0> ;
  assign ubdwe_out[0] = \<const0> ;
  assign ubmdmtdo_out[0] = \<const0> ;
  assign ubrsvdout_out[0] = \<const0> ;
  assign ubtxuart_out[0] = \<const0> ;
  GND GND
       (.G(\<const0> ));
  PCS_PMA_gt_gtwizard_gthe4 \gen_gtwizard_gthe4_top.PCS_PMA_gt_gtwizard_gthe4_inst 
       (.drpclk_in(drpclk_in),
        .gthrxn_in(gthrxn_in),
        .gthrxp_in(gthrxp_in),
        .gthtxn_out(gthtxn_out),
        .gthtxp_out(gthtxp_out),
        .gtpowergood_out(gtpowergood_out),
        .gtrefclk0_in(gtrefclk0_in),
        .gtwiz_reset_all_in(gtwiz_reset_all_in),
        .gtwiz_reset_rx_datapath_in(gtwiz_reset_rx_datapath_in),
        .gtwiz_reset_rx_done_out(gtwiz_reset_rx_done_out),
        .gtwiz_reset_tx_datapath_in(gtwiz_reset_tx_datapath_in),
        .gtwiz_reset_tx_done_out(gtwiz_reset_tx_done_out),
        .gtwiz_userdata_rx_out(gtwiz_userdata_rx_out),
        .gtwiz_userdata_tx_in(gtwiz_userdata_tx_in),
        .lopt(lopt),
        .lopt_1(lopt_1),
        .lopt_2(lopt_2),
        .lopt_3(lopt_3),
        .lopt_4(lopt_4),
        .lopt_5(lopt_5),
        .rxbufstatus_out(\^rxbufstatus_out ),
        .rxclkcorcnt_out(rxclkcorcnt_out),
        .rxctrl0_out(\^rxctrl0_out ),
        .rxctrl1_out(\^rxctrl1_out ),
        .rxctrl2_out(\^rxctrl2_out ),
        .rxctrl3_out(\^rxctrl3_out ),
        .rxmcommaalignen_in(rxmcommaalignen_in),
        .rxoutclk_out(rxoutclk_out),
        .rxpd_in(rxpd_in[1]),
        .rxusrclk_in(rxusrclk_in),
        .txbufstatus_out(\^txbufstatus_out ),
        .txctrl0_in(txctrl0_in[1:0]),
        .txctrl1_in(txctrl1_in[1:0]),
        .txctrl2_in(txctrl2_in[1:0]),
        .txelecidle_in(txelecidle_in),
        .txoutclk_out(txoutclk_out));
endmodule

(* ORIG_REF_NAME = "gtwizard_ultrascale_v1_7_13_bit_synchronizer" *) 
module PCS_PMA_gtwizard_ultrascale_v1_7_13_bit_synchronizer
   (\gen_gtwizard_gthe4.gen_reset_controller_internal.gen_single_instance.rxresetdone_sync ,
    rxresetdone_out,
    drpclk_in);
  output \gen_gtwizard_gthe4.gen_reset_controller_internal.gen_single_instance.rxresetdone_sync ;
  input [0:0]rxresetdone_out;
  input [0:0]drpclk_in;

  wire [0:0]drpclk_in;
  wire \gen_gtwizard_gthe4.gen_reset_controller_internal.gen_single_instance.rxresetdone_sync ;
  (* async_reg = "true" *) wire i_in_meta;
  (* async_reg = "true" *) wire i_in_sync1;
  (* async_reg = "true" *) wire i_in_sync2;
  (* async_reg = "true" *) wire i_in_sync3;
  wire [0:0]rxresetdone_out;

  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    i_in_meta_reg
       (.C(drpclk_in),
        .CE(1'b1),
        .D(rxresetdone_out),
        .Q(i_in_meta),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    i_in_out_reg
       (.C(drpclk_in),
        .CE(1'b1),
        .D(i_in_sync3),
        .Q(\gen_gtwizard_gthe4.gen_reset_controller_internal.gen_single_instance.rxresetdone_sync ),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    i_in_sync1_reg
       (.C(drpclk_in),
        .CE(1'b1),
        .D(i_in_meta),
        .Q(i_in_sync1),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    i_in_sync2_reg
       (.C(drpclk_in),
        .CE(1'b1),
        .D(i_in_sync1),
        .Q(i_in_sync2),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    i_in_sync3_reg
       (.C(drpclk_in),
        .CE(1'b1),
        .D(i_in_sync2),
        .Q(i_in_sync3),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "gtwizard_ultrascale_v1_7_13_bit_synchronizer" *) 
module PCS_PMA_gtwizard_ultrascale_v1_7_13_bit_synchronizer_0
   (\gen_gtwizard_gthe4.gen_reset_controller_internal.gen_single_instance.txresetdone_sync ,
    txresetdone_out,
    drpclk_in);
  output \gen_gtwizard_gthe4.gen_reset_controller_internal.gen_single_instance.txresetdone_sync ;
  input [0:0]txresetdone_out;
  input [0:0]drpclk_in;

  wire [0:0]drpclk_in;
  wire \gen_gtwizard_gthe4.gen_reset_controller_internal.gen_single_instance.txresetdone_sync ;
  (* async_reg = "true" *) wire i_in_meta;
  (* async_reg = "true" *) wire i_in_sync1;
  (* async_reg = "true" *) wire i_in_sync2;
  (* async_reg = "true" *) wire i_in_sync3;
  wire [0:0]txresetdone_out;

  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    i_in_meta_reg
       (.C(drpclk_in),
        .CE(1'b1),
        .D(txresetdone_out),
        .Q(i_in_meta),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    i_in_out_reg
       (.C(drpclk_in),
        .CE(1'b1),
        .D(i_in_sync3),
        .Q(\gen_gtwizard_gthe4.gen_reset_controller_internal.gen_single_instance.txresetdone_sync ),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    i_in_sync1_reg
       (.C(drpclk_in),
        .CE(1'b1),
        .D(i_in_meta),
        .Q(i_in_sync1),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    i_in_sync2_reg
       (.C(drpclk_in),
        .CE(1'b1),
        .D(i_in_sync1),
        .Q(i_in_sync2),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    i_in_sync3_reg
       (.C(drpclk_in),
        .CE(1'b1),
        .D(i_in_sync2),
        .Q(i_in_sync3),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "gtwizard_ultrascale_v1_7_13_bit_synchronizer" *) 
module PCS_PMA_gtwizard_ultrascale_v1_7_13_bit_synchronizer_1
   (E,
    gtpowergood_out,
    drpclk_in,
    \FSM_sequential_sm_reset_all_reg[0] ,
    Q,
    \FSM_sequential_sm_reset_all_reg[0]_0 );
  output [0:0]E;
  input [0:0]gtpowergood_out;
  input [0:0]drpclk_in;
  input \FSM_sequential_sm_reset_all_reg[0] ;
  input [2:0]Q;
  input \FSM_sequential_sm_reset_all_reg[0]_0 ;

  wire [0:0]E;
  wire \FSM_sequential_sm_reset_all_reg[0] ;
  wire \FSM_sequential_sm_reset_all_reg[0]_0 ;
  wire [2:0]Q;
  wire [0:0]drpclk_in;
  wire [0:0]gtpowergood_out;
  wire gtpowergood_sync;
  (* async_reg = "true" *) wire i_in_meta;
  (* async_reg = "true" *) wire i_in_sync1;
  (* async_reg = "true" *) wire i_in_sync2;
  (* async_reg = "true" *) wire i_in_sync3;

  LUT6 #(
    .INIT(64'hAF0FAF00CFFFCFFF)) 
    \FSM_sequential_sm_reset_all[2]_i_1 
       (.I0(gtpowergood_sync),
        .I1(\FSM_sequential_sm_reset_all_reg[0] ),
        .I2(Q[2]),
        .I3(Q[0]),
        .I4(\FSM_sequential_sm_reset_all_reg[0]_0 ),
        .I5(Q[1]),
        .O(E));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    i_in_meta_reg
       (.C(drpclk_in),
        .CE(1'b1),
        .D(gtpowergood_out),
        .Q(i_in_meta),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    i_in_out_reg
       (.C(drpclk_in),
        .CE(1'b1),
        .D(i_in_sync3),
        .Q(gtpowergood_sync),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    i_in_sync1_reg
       (.C(drpclk_in),
        .CE(1'b1),
        .D(i_in_meta),
        .Q(i_in_sync1),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    i_in_sync2_reg
       (.C(drpclk_in),
        .CE(1'b1),
        .D(i_in_sync1),
        .Q(i_in_sync2),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    i_in_sync3_reg
       (.C(drpclk_in),
        .CE(1'b1),
        .D(i_in_sync2),
        .Q(i_in_sync3),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "gtwizard_ultrascale_v1_7_13_bit_synchronizer" *) 
module PCS_PMA_gtwizard_ultrascale_v1_7_13_bit_synchronizer_10
   (i_in_out_reg_0,
    \FSM_sequential_sm_reset_rx_reg[1] ,
    \FSM_sequential_sm_reset_rx_reg[2] ,
    rxcdrlock_out,
    drpclk_in,
    sm_reset_rx_cdr_to_sat,
    Q,
    sm_reset_rx_cdr_to_clr_reg,
    sm_reset_rx_cdr_to_clr,
    gtwiz_reset_rx_any_sync,
    \gen_gtwizard_gthe4.rxprogdivreset_int );
  output i_in_out_reg_0;
  output \FSM_sequential_sm_reset_rx_reg[1] ;
  output \FSM_sequential_sm_reset_rx_reg[2] ;
  input [0:0]rxcdrlock_out;
  input [0:0]drpclk_in;
  input sm_reset_rx_cdr_to_sat;
  input [2:0]Q;
  input sm_reset_rx_cdr_to_clr_reg;
  input sm_reset_rx_cdr_to_clr;
  input gtwiz_reset_rx_any_sync;
  input \gen_gtwizard_gthe4.rxprogdivreset_int ;

  wire \FSM_sequential_sm_reset_rx_reg[1] ;
  wire \FSM_sequential_sm_reset_rx_reg[2] ;
  wire [2:0]Q;
  wire [0:0]drpclk_in;
  wire \gen_gtwizard_gthe4.rxprogdivreset_int ;
  wire gtwiz_reset_rx_any_sync;
  (* async_reg = "true" *) wire i_in_meta;
  wire i_in_out_reg_0;
  (* async_reg = "true" *) wire i_in_sync1;
  (* async_reg = "true" *) wire i_in_sync2;
  (* async_reg = "true" *) wire i_in_sync3;
  wire [0:0]rxcdrlock_out;
  wire sm_reset_rx_cdr_to_clr;
  wire sm_reset_rx_cdr_to_clr0__0;
  wire sm_reset_rx_cdr_to_clr_reg;
  wire sm_reset_rx_cdr_to_sat;

  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    i_in_meta_reg
       (.C(drpclk_in),
        .CE(1'b1),
        .D(rxcdrlock_out),
        .Q(i_in_meta),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    i_in_out_reg
       (.C(drpclk_in),
        .CE(1'b1),
        .D(i_in_sync3),
        .Q(i_in_out_reg_0),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    i_in_sync1_reg
       (.C(drpclk_in),
        .CE(1'b1),
        .D(i_in_meta),
        .Q(i_in_sync1),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    i_in_sync2_reg
       (.C(drpclk_in),
        .CE(1'b1),
        .D(i_in_sync1),
        .Q(i_in_sync2),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    i_in_sync3_reg
       (.C(drpclk_in),
        .CE(1'b1),
        .D(i_in_sync2),
        .Q(i_in_sync3),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hFFFFFFF700000330)) 
    rxprogdivreset_out_i_1
       (.I0(sm_reset_rx_cdr_to_clr0__0),
        .I1(Q[2]),
        .I2(Q[1]),
        .I3(Q[0]),
        .I4(gtwiz_reset_rx_any_sync),
        .I5(\gen_gtwizard_gthe4.rxprogdivreset_int ),
        .O(\FSM_sequential_sm_reset_rx_reg[2] ));
  LUT6 #(
    .INIT(64'hFFFF3FFF02023303)) 
    sm_reset_rx_cdr_to_clr_i_1
       (.I0(sm_reset_rx_cdr_to_clr0__0),
        .I1(Q[1]),
        .I2(Q[0]),
        .I3(sm_reset_rx_cdr_to_clr_reg),
        .I4(Q[2]),
        .I5(sm_reset_rx_cdr_to_clr),
        .O(\FSM_sequential_sm_reset_rx_reg[1] ));
  LUT2 #(
    .INIT(4'hE)) 
    sm_reset_rx_cdr_to_clr_i_2
       (.I0(sm_reset_rx_cdr_to_sat),
        .I1(i_in_out_reg_0),
        .O(sm_reset_rx_cdr_to_clr0__0));
endmodule

(* ORIG_REF_NAME = "gtwizard_ultrascale_v1_7_13_bit_synchronizer" *) 
module PCS_PMA_gtwizard_ultrascale_v1_7_13_bit_synchronizer_19
   (drprst_in_sync,
    drpclk_in);
  output drprst_in_sync;
  input [0:0]drpclk_in;

  wire [0:0]drpclk_in;
  wire drprst_in_sync;
  (* async_reg = "true" *) wire i_in_meta;
  (* async_reg = "true" *) wire i_in_sync1;
  (* async_reg = "true" *) wire i_in_sync2;
  (* async_reg = "true" *) wire i_in_sync3;
  wire n_0_0;

  LUT1 #(
    .INIT(2'h2)) 
    i_0
       (.I0(1'b0),
        .O(n_0_0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    i_in_meta_reg
       (.C(drpclk_in),
        .CE(1'b1),
        .D(n_0_0),
        .Q(i_in_meta),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    i_in_out_reg
       (.C(drpclk_in),
        .CE(1'b1),
        .D(i_in_sync3),
        .Q(drprst_in_sync),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    i_in_sync1_reg
       (.C(drpclk_in),
        .CE(1'b1),
        .D(i_in_meta),
        .Q(i_in_sync1),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    i_in_sync2_reg
       (.C(drpclk_in),
        .CE(1'b1),
        .D(i_in_sync1),
        .Q(i_in_sync2),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    i_in_sync3_reg
       (.C(drpclk_in),
        .CE(1'b1),
        .D(i_in_sync2),
        .Q(i_in_sync3),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "gtwizard_ultrascale_v1_7_13_bit_synchronizer" *) 
module PCS_PMA_gtwizard_ultrascale_v1_7_13_bit_synchronizer_2
   (gtwiz_reset_rx_datapath_dly,
    in0,
    drpclk_in);
  output gtwiz_reset_rx_datapath_dly;
  input in0;
  input [0:0]drpclk_in;

  wire [0:0]drpclk_in;
  wire gtwiz_reset_rx_datapath_dly;
  (* async_reg = "true" *) wire i_in_meta;
  (* async_reg = "true" *) wire i_in_sync1;
  (* async_reg = "true" *) wire i_in_sync2;
  (* async_reg = "true" *) wire i_in_sync3;
  wire in0;

  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    i_in_meta_reg
       (.C(drpclk_in),
        .CE(1'b1),
        .D(in0),
        .Q(i_in_meta),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    i_in_out_reg
       (.C(drpclk_in),
        .CE(1'b1),
        .D(i_in_sync3),
        .Q(gtwiz_reset_rx_datapath_dly),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    i_in_sync1_reg
       (.C(drpclk_in),
        .CE(1'b1),
        .D(i_in_meta),
        .Q(i_in_sync1),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    i_in_sync2_reg
       (.C(drpclk_in),
        .CE(1'b1),
        .D(i_in_sync1),
        .Q(i_in_sync2),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    i_in_sync3_reg
       (.C(drpclk_in),
        .CE(1'b1),
        .D(i_in_sync2),
        .Q(i_in_sync3),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "gtwizard_ultrascale_v1_7_13_bit_synchronizer" *) 
module PCS_PMA_gtwizard_ultrascale_v1_7_13_bit_synchronizer_22
   (i_in_out_reg_0,
    \cpll_cal_state_reg[0] ,
    in0,
    drpclk_in,
    Q,
    cal_on_tx_reset_in_sync,
    USER_CPLLLOCK_OUT_reg);
  output i_in_out_reg_0;
  output \cpll_cal_state_reg[0] ;
  input in0;
  input [0:0]drpclk_in;
  input [1:0]Q;
  input cal_on_tx_reset_in_sync;
  input USER_CPLLLOCK_OUT_reg;

  wire [1:0]Q;
  wire USER_CPLLLOCK_OUT_reg;
  wire cal_on_tx_reset_in_sync;
  wire \cpll_cal_state_reg[0] ;
  wire [0:0]drpclk_in;
  (* async_reg = "true" *) wire i_in_meta;
  wire i_in_out_reg_0;
  (* async_reg = "true" *) wire i_in_sync1;
  (* async_reg = "true" *) wire i_in_sync2;
  (* async_reg = "true" *) wire i_in_sync3;
  wire in0;

  LUT5 #(
    .INIT(32'h00000004)) 
    USER_CPLLLOCK_OUT_i_1
       (.I0(Q[0]),
        .I1(i_in_out_reg_0),
        .I2(cal_on_tx_reset_in_sync),
        .I3(Q[1]),
        .I4(USER_CPLLLOCK_OUT_reg),
        .O(\cpll_cal_state_reg[0] ));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    i_in_meta_reg
       (.C(drpclk_in),
        .CE(1'b1),
        .D(in0),
        .Q(i_in_meta),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    i_in_out_reg
       (.C(drpclk_in),
        .CE(1'b1),
        .D(i_in_sync3),
        .Q(i_in_out_reg_0),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    i_in_sync1_reg
       (.C(drpclk_in),
        .CE(1'b1),
        .D(i_in_meta),
        .Q(i_in_sync1),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    i_in_sync2_reg
       (.C(drpclk_in),
        .CE(1'b1),
        .D(i_in_sync1),
        .Q(i_in_sync2),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    i_in_sync3_reg
       (.C(drpclk_in),
        .CE(1'b1),
        .D(i_in_sync2),
        .Q(i_in_sync3),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "gtwizard_ultrascale_v1_7_13_bit_synchronizer" *) 
module PCS_PMA_gtwizard_ultrascale_v1_7_13_bit_synchronizer_23
   (D,
    drpclk_in,
    txoutclksel_int,
    \non_pcie_txoutclksel.GTHE4_TXOUTCLKSEL_OUT_reg[0] );
  output [0:0]D;
  input [0:0]drpclk_in;
  input [0:0]txoutclksel_int;
  input \non_pcie_txoutclksel.GTHE4_TXOUTCLKSEL_OUT_reg[0] ;

  wire [0:0]D;
  wire [0:0]drpclk_in;
  (* async_reg = "true" *) wire i_in_meta;
  (* async_reg = "true" *) wire i_in_sync1;
  (* async_reg = "true" *) wire i_in_sync2;
  (* async_reg = "true" *) wire i_in_sync3;
  wire n_0_0;
  wire \non_pcie_txoutclksel.GTHE4_TXOUTCLKSEL_OUT_reg[0] ;
  wire [0:0]txoutclksel_int;
  wire [0:0]user_txoutclksel_sync;

  LUT1 #(
    .INIT(2'h2)) 
    i_0
       (.I0(1'b1),
        .O(n_0_0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    i_in_meta_reg
       (.C(drpclk_in),
        .CE(1'b1),
        .D(n_0_0),
        .Q(i_in_meta),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    i_in_out_reg
       (.C(drpclk_in),
        .CE(1'b1),
        .D(i_in_sync3),
        .Q(user_txoutclksel_sync),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    i_in_sync1_reg
       (.C(drpclk_in),
        .CE(1'b1),
        .D(i_in_meta),
        .Q(i_in_sync1),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    i_in_sync2_reg
       (.C(drpclk_in),
        .CE(1'b1),
        .D(i_in_sync1),
        .Q(i_in_sync2),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    i_in_sync3_reg
       (.C(drpclk_in),
        .CE(1'b1),
        .D(i_in_sync2),
        .Q(i_in_sync3),
        .R(1'b0));
  LUT3 #(
    .INIT(8'hB8)) 
    \non_pcie_txoutclksel.GTHE4_TXOUTCLKSEL_OUT[0]_i_1 
       (.I0(txoutclksel_int),
        .I1(\non_pcie_txoutclksel.GTHE4_TXOUTCLKSEL_OUT_reg[0] ),
        .I2(user_txoutclksel_sync),
        .O(D));
endmodule

(* ORIG_REF_NAME = "gtwizard_ultrascale_v1_7_13_bit_synchronizer" *) 
module PCS_PMA_gtwizard_ultrascale_v1_7_13_bit_synchronizer_24
   (D,
    drpclk_in,
    \non_pcie_txoutclksel.GTHE4_TXOUTCLKSEL_OUT_reg[1] );
  output [0:0]D;
  input [0:0]drpclk_in;
  input \non_pcie_txoutclksel.GTHE4_TXOUTCLKSEL_OUT_reg[1] ;

  wire [0:0]D;
  wire [0:0]drpclk_in;
  (* async_reg = "true" *) wire i_in_meta;
  (* async_reg = "true" *) wire i_in_sync1;
  (* async_reg = "true" *) wire i_in_sync2;
  (* async_reg = "true" *) wire i_in_sync3;
  wire n_0_0;
  wire \non_pcie_txoutclksel.GTHE4_TXOUTCLKSEL_OUT_reg[1] ;
  wire [1:1]user_txoutclksel_sync;

  LUT1 #(
    .INIT(2'h2)) 
    i_0
       (.I0(1'b0),
        .O(n_0_0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    i_in_meta_reg
       (.C(drpclk_in),
        .CE(1'b1),
        .D(n_0_0),
        .Q(i_in_meta),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    i_in_out_reg
       (.C(drpclk_in),
        .CE(1'b1),
        .D(i_in_sync3),
        .Q(user_txoutclksel_sync),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    i_in_sync1_reg
       (.C(drpclk_in),
        .CE(1'b1),
        .D(i_in_meta),
        .Q(i_in_sync1),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    i_in_sync2_reg
       (.C(drpclk_in),
        .CE(1'b1),
        .D(i_in_sync1),
        .Q(i_in_sync2),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    i_in_sync3_reg
       (.C(drpclk_in),
        .CE(1'b1),
        .D(i_in_sync2),
        .Q(i_in_sync3),
        .R(1'b0));
  LUT2 #(
    .INIT(4'h2)) 
    \non_pcie_txoutclksel.GTHE4_TXOUTCLKSEL_OUT[1]_i_1 
       (.I0(user_txoutclksel_sync),
        .I1(\non_pcie_txoutclksel.GTHE4_TXOUTCLKSEL_OUT_reg[1] ),
        .O(D));
endmodule

(* ORIG_REF_NAME = "gtwizard_ultrascale_v1_7_13_bit_synchronizer" *) 
module PCS_PMA_gtwizard_ultrascale_v1_7_13_bit_synchronizer_25
   (D,
    drpclk_in,
    txoutclksel_int,
    \non_pcie_txoutclksel.GTHE4_TXOUTCLKSEL_OUT_reg[2] );
  output [0:0]D;
  input [0:0]drpclk_in;
  input [0:0]txoutclksel_int;
  input \non_pcie_txoutclksel.GTHE4_TXOUTCLKSEL_OUT_reg[2] ;

  wire [0:0]D;
  wire [0:0]drpclk_in;
  (* async_reg = "true" *) wire i_in_meta;
  (* async_reg = "true" *) wire i_in_sync1;
  (* async_reg = "true" *) wire i_in_sync2;
  (* async_reg = "true" *) wire i_in_sync3;
  wire n_0_0;
  wire \non_pcie_txoutclksel.GTHE4_TXOUTCLKSEL_OUT_reg[2] ;
  wire [0:0]txoutclksel_int;
  wire [2:2]user_txoutclksel_sync;

  LUT1 #(
    .INIT(2'h2)) 
    i_0
       (.I0(1'b1),
        .O(n_0_0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    i_in_meta_reg
       (.C(drpclk_in),
        .CE(1'b1),
        .D(n_0_0),
        .Q(i_in_meta),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    i_in_out_reg
       (.C(drpclk_in),
        .CE(1'b1),
        .D(i_in_sync3),
        .Q(user_txoutclksel_sync),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    i_in_sync1_reg
       (.C(drpclk_in),
        .CE(1'b1),
        .D(i_in_meta),
        .Q(i_in_sync1),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    i_in_sync2_reg
       (.C(drpclk_in),
        .CE(1'b1),
        .D(i_in_sync1),
        .Q(i_in_sync2),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    i_in_sync3_reg
       (.C(drpclk_in),
        .CE(1'b1),
        .D(i_in_sync2),
        .Q(i_in_sync3),
        .R(1'b0));
  LUT3 #(
    .INIT(8'hB8)) 
    \non_pcie_txoutclksel.GTHE4_TXOUTCLKSEL_OUT[2]_i_1 
       (.I0(txoutclksel_int),
        .I1(\non_pcie_txoutclksel.GTHE4_TXOUTCLKSEL_OUT_reg[2] ),
        .I2(user_txoutclksel_sync),
        .O(D));
endmodule

(* ORIG_REF_NAME = "gtwizard_ultrascale_v1_7_13_bit_synchronizer" *) 
module PCS_PMA_gtwizard_ultrascale_v1_7_13_bit_synchronizer_26
   (\cpll_cal_state_reg[14] ,
    D,
    i_in_meta_reg_0,
    drpclk_in,
    Q,
    cal_on_tx_reset_in_sync,
    freq_counter_rst_reg,
    freq_counter_rst_reg_0,
    \cpll_cal_state_reg[19] ,
    freq_counter_rst_reg_1,
    \cpll_cal_state_reg[20] ,
    cal_fail_store__0);
  output \cpll_cal_state_reg[14] ;
  output [4:0]D;
  input i_in_meta_reg_0;
  input [0:0]drpclk_in;
  input [8:0]Q;
  input cal_on_tx_reset_in_sync;
  input freq_counter_rst_reg;
  input freq_counter_rst_reg_0;
  input \cpll_cal_state_reg[19] ;
  input freq_counter_rst_reg_1;
  input \cpll_cal_state_reg[20] ;
  input cal_fail_store__0;

  wire [4:0]D;
  wire [8:0]Q;
  wire cal_fail_store__0;
  wire cal_on_tx_reset_in_sync;
  wire \cpll_cal_state_reg[14] ;
  wire \cpll_cal_state_reg[19] ;
  wire \cpll_cal_state_reg[20] ;
  wire [0:0]drpclk_in;
  wire freq_counter_rst_i_2_n_0;
  wire freq_counter_rst_reg;
  wire freq_counter_rst_reg_0;
  wire freq_counter_rst_reg_1;
  wire gthe4_txprgdivresetdone_sync;
  (* async_reg = "true" *) wire i_in_meta;
  wire i_in_meta_reg_0;
  (* async_reg = "true" *) wire i_in_sync1;
  (* async_reg = "true" *) wire i_in_sync2;
  (* async_reg = "true" *) wire i_in_sync3;

  LUT4 #(
    .INIT(16'h4F44)) 
    \cpll_cal_state[19]_i_1 
       (.I0(gthe4_txprgdivresetdone_sync),
        .I1(Q[3]),
        .I2(\cpll_cal_state_reg[19] ),
        .I3(Q[2]),
        .O(D[0]));
  LUT4 #(
    .INIT(16'h8F88)) 
    \cpll_cal_state[20]_i_1 
       (.I0(Q[3]),
        .I1(gthe4_txprgdivresetdone_sync),
        .I2(\cpll_cal_state_reg[20] ),
        .I3(Q[4]),
        .O(D[1]));
  LUT4 #(
    .INIT(16'h4F44)) 
    \cpll_cal_state[29]_i_1 
       (.I0(gthe4_txprgdivresetdone_sync),
        .I1(Q[6]),
        .I2(\cpll_cal_state_reg[19] ),
        .I3(Q[5]),
        .O(D[2]));
  (* SOFT_HLUTNM = "soft_lutpair63" *) 
  LUT4 #(
    .INIT(16'hEAAA)) 
    \cpll_cal_state[30]_i_1 
       (.I0(Q[7]),
        .I1(gthe4_txprgdivresetdone_sync),
        .I2(Q[6]),
        .I3(cal_fail_store__0),
        .O(D[3]));
  (* SOFT_HLUTNM = "soft_lutpair63" *) 
  LUT4 #(
    .INIT(16'hAAEA)) 
    \cpll_cal_state[31]_i_1 
       (.I0(Q[8]),
        .I1(gthe4_txprgdivresetdone_sync),
        .I2(Q[6]),
        .I3(cal_fail_store__0),
        .O(D[4]));
  LUT6 #(
    .INIT(64'hFFFFFEFE00303232)) 
    freq_counter_rst_i_1
       (.I0(Q[0]),
        .I1(cal_on_tx_reset_in_sync),
        .I2(Q[1]),
        .I3(freq_counter_rst_reg),
        .I4(freq_counter_rst_i_2_n_0),
        .I5(freq_counter_rst_reg_0),
        .O(\cpll_cal_state_reg[14] ));
  LUT4 #(
    .INIT(16'h0BBB)) 
    freq_counter_rst_i_2
       (.I0(freq_counter_rst_reg_1),
        .I1(Q[0]),
        .I2(Q[3]),
        .I3(gthe4_txprgdivresetdone_sync),
        .O(freq_counter_rst_i_2_n_0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    i_in_meta_reg
       (.C(drpclk_in),
        .CE(1'b1),
        .D(i_in_meta_reg_0),
        .Q(i_in_meta),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    i_in_out_reg
       (.C(drpclk_in),
        .CE(1'b1),
        .D(i_in_sync3),
        .Q(gthe4_txprgdivresetdone_sync),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    i_in_sync1_reg
       (.C(drpclk_in),
        .CE(1'b1),
        .D(i_in_meta),
        .Q(i_in_sync1),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    i_in_sync2_reg
       (.C(drpclk_in),
        .CE(1'b1),
        .D(i_in_sync1),
        .Q(i_in_sync2),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    i_in_sync3_reg
       (.C(drpclk_in),
        .CE(1'b1),
        .D(i_in_sync2),
        .Q(i_in_sync3),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "gtwizard_ultrascale_v1_7_13_bit_synchronizer" *) 
module PCS_PMA_gtwizard_ultrascale_v1_7_13_bit_synchronizer_27
   (txprogdivreset_int_reg,
    i_in_meta_reg_0,
    drpclk_in,
    txprogdivreset_int,
    \non_pcie_txoutclksel.GTHE4_TXPROGDIVRESET_OUT_reg );
  output txprogdivreset_int_reg;
  input i_in_meta_reg_0;
  input [0:0]drpclk_in;
  input txprogdivreset_int;
  input \non_pcie_txoutclksel.GTHE4_TXPROGDIVRESET_OUT_reg ;

  wire [0:0]drpclk_in;
  (* async_reg = "true" *) wire i_in_meta;
  wire i_in_meta_reg_0;
  (* async_reg = "true" *) wire i_in_sync1;
  (* async_reg = "true" *) wire i_in_sync2;
  (* async_reg = "true" *) wire i_in_sync3;
  wire \non_pcie_txoutclksel.GTHE4_TXPROGDIVRESET_OUT_reg ;
  wire txprogdivreset_int;
  wire txprogdivreset_int_reg;
  wire user_txprogdivreset_sync;

  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    i_in_meta_reg
       (.C(drpclk_in),
        .CE(1'b1),
        .D(i_in_meta_reg_0),
        .Q(i_in_meta),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    i_in_out_reg
       (.C(drpclk_in),
        .CE(1'b1),
        .D(i_in_sync3),
        .Q(user_txprogdivreset_sync),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    i_in_sync1_reg
       (.C(drpclk_in),
        .CE(1'b1),
        .D(i_in_meta),
        .Q(i_in_sync1),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    i_in_sync2_reg
       (.C(drpclk_in),
        .CE(1'b1),
        .D(i_in_sync1),
        .Q(i_in_sync2),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    i_in_sync3_reg
       (.C(drpclk_in),
        .CE(1'b1),
        .D(i_in_sync2),
        .Q(i_in_sync3),
        .R(1'b0));
  LUT3 #(
    .INIT(8'hB8)) 
    \non_pcie_txoutclksel.GTHE4_TXPROGDIVRESET_OUT_i_1 
       (.I0(txprogdivreset_int),
        .I1(\non_pcie_txoutclksel.GTHE4_TXPROGDIVRESET_OUT_reg ),
        .I2(user_txprogdivreset_sync),
        .O(txprogdivreset_int_reg));
endmodule

(* ORIG_REF_NAME = "gtwizard_ultrascale_v1_7_13_bit_synchronizer" *) 
module PCS_PMA_gtwizard_ultrascale_v1_7_13_bit_synchronizer_3
   (D,
    sm_reset_rx_pll_timer_sat_reg,
    in0,
    drpclk_in,
    Q,
    p_0_in11_out__0,
    sm_reset_rx_pll_timer_sat,
    \FSM_sequential_sm_reset_rx[2]_i_3 ,
    gtwiz_reset_rx_datapath_dly);
  output [1:0]D;
  output sm_reset_rx_pll_timer_sat_reg;
  input in0;
  input [0:0]drpclk_in;
  input [2:0]Q;
  input p_0_in11_out__0;
  input sm_reset_rx_pll_timer_sat;
  input \FSM_sequential_sm_reset_rx[2]_i_3 ;
  input gtwiz_reset_rx_datapath_dly;

  wire [1:0]D;
  wire \FSM_sequential_sm_reset_rx[2]_i_3 ;
  wire [2:0]Q;
  wire [0:0]drpclk_in;
  wire gtwiz_reset_rx_datapath_dly;
  wire gtwiz_reset_rx_pll_and_datapath_dly;
  (* async_reg = "true" *) wire i_in_meta;
  (* async_reg = "true" *) wire i_in_sync1;
  (* async_reg = "true" *) wire i_in_sync2;
  (* async_reg = "true" *) wire i_in_sync3;
  wire in0;
  wire p_0_in11_out__0;
  wire sm_reset_rx_pll_timer_sat;
  wire sm_reset_rx_pll_timer_sat_reg;

  (* SOFT_HLUTNM = "soft_lutpair88" *) 
  LUT5 #(
    .INIT(32'hDD769976)) 
    \FSM_sequential_sm_reset_rx[0]_i_1 
       (.I0(Q[0]),
        .I1(Q[2]),
        .I2(gtwiz_reset_rx_pll_and_datapath_dly),
        .I3(Q[1]),
        .I4(p_0_in11_out__0),
        .O(D[0]));
  (* SOFT_HLUTNM = "soft_lutpair88" *) 
  LUT5 #(
    .INIT(32'h00FFF511)) 
    \FSM_sequential_sm_reset_rx[1]_i_1 
       (.I0(Q[2]),
        .I1(gtwiz_reset_rx_pll_and_datapath_dly),
        .I2(p_0_in11_out__0),
        .I3(Q[1]),
        .I4(Q[0]),
        .O(D[1]));
  LUT5 #(
    .INIT(32'h2F2F2F20)) 
    \FSM_sequential_sm_reset_rx[2]_i_5 
       (.I0(sm_reset_rx_pll_timer_sat),
        .I1(\FSM_sequential_sm_reset_rx[2]_i_3 ),
        .I2(Q[0]),
        .I3(gtwiz_reset_rx_pll_and_datapath_dly),
        .I4(gtwiz_reset_rx_datapath_dly),
        .O(sm_reset_rx_pll_timer_sat_reg));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    i_in_meta_reg
       (.C(drpclk_in),
        .CE(1'b1),
        .D(in0),
        .Q(i_in_meta),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    i_in_out_reg
       (.C(drpclk_in),
        .CE(1'b1),
        .D(i_in_sync3),
        .Q(gtwiz_reset_rx_pll_and_datapath_dly),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    i_in_sync1_reg
       (.C(drpclk_in),
        .CE(1'b1),
        .D(i_in_meta),
        .Q(i_in_sync1),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    i_in_sync2_reg
       (.C(drpclk_in),
        .CE(1'b1),
        .D(i_in_sync1),
        .Q(i_in_sync2),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    i_in_sync3_reg
       (.C(drpclk_in),
        .CE(1'b1),
        .D(i_in_sync2),
        .Q(i_in_sync3),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "gtwizard_ultrascale_v1_7_13_bit_synchronizer" *) 
module PCS_PMA_gtwizard_ultrascale_v1_7_13_bit_synchronizer_4
   (gtwiz_reset_tx_datapath_dly,
    in0,
    drpclk_in);
  output gtwiz_reset_tx_datapath_dly;
  input in0;
  input [0:0]drpclk_in;

  wire [0:0]drpclk_in;
  wire gtwiz_reset_tx_datapath_dly;
  (* async_reg = "true" *) wire i_in_meta;
  (* async_reg = "true" *) wire i_in_sync1;
  (* async_reg = "true" *) wire i_in_sync2;
  (* async_reg = "true" *) wire i_in_sync3;
  wire in0;

  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    i_in_meta_reg
       (.C(drpclk_in),
        .CE(1'b1),
        .D(in0),
        .Q(i_in_meta),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    i_in_out_reg
       (.C(drpclk_in),
        .CE(1'b1),
        .D(i_in_sync3),
        .Q(gtwiz_reset_tx_datapath_dly),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    i_in_sync1_reg
       (.C(drpclk_in),
        .CE(1'b1),
        .D(i_in_meta),
        .Q(i_in_sync1),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    i_in_sync2_reg
       (.C(drpclk_in),
        .CE(1'b1),
        .D(i_in_sync1),
        .Q(i_in_sync2),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    i_in_sync3_reg
       (.C(drpclk_in),
        .CE(1'b1),
        .D(i_in_sync2),
        .Q(i_in_sync3),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "gtwizard_ultrascale_v1_7_13_bit_synchronizer" *) 
module PCS_PMA_gtwizard_ultrascale_v1_7_13_bit_synchronizer_5
   (sm_reset_tx_pll_timer_sat_reg,
    D,
    in0,
    drpclk_in,
    sm_reset_tx_pll_timer_sat,
    \FSM_sequential_sm_reset_tx[2]_i_3 ,
    Q,
    gtwiz_reset_tx_datapath_dly);
  output sm_reset_tx_pll_timer_sat_reg;
  output [1:0]D;
  input in0;
  input [0:0]drpclk_in;
  input sm_reset_tx_pll_timer_sat;
  input \FSM_sequential_sm_reset_tx[2]_i_3 ;
  input [2:0]Q;
  input gtwiz_reset_tx_datapath_dly;

  wire [1:0]D;
  wire \FSM_sequential_sm_reset_tx[2]_i_3 ;
  wire [2:0]Q;
  wire [0:0]drpclk_in;
  wire gtwiz_reset_tx_datapath_dly;
  wire gtwiz_reset_tx_pll_and_datapath_dly;
  (* async_reg = "true" *) wire i_in_meta;
  (* async_reg = "true" *) wire i_in_sync1;
  (* async_reg = "true" *) wire i_in_sync2;
  (* async_reg = "true" *) wire i_in_sync3;
  wire in0;
  wire sm_reset_tx_pll_timer_sat;
  wire sm_reset_tx_pll_timer_sat_reg;

  (* SOFT_HLUTNM = "soft_lutpair89" *) 
  LUT4 #(
    .INIT(16'h0F3E)) 
    \FSM_sequential_sm_reset_tx[0]_i_1 
       (.I0(gtwiz_reset_tx_pll_and_datapath_dly),
        .I1(Q[2]),
        .I2(Q[0]),
        .I3(Q[1]),
        .O(D[0]));
  (* SOFT_HLUTNM = "soft_lutpair89" *) 
  LUT4 #(
    .INIT(16'h55AB)) 
    \FSM_sequential_sm_reset_tx[1]_i_1 
       (.I0(Q[0]),
        .I1(gtwiz_reset_tx_pll_and_datapath_dly),
        .I2(Q[2]),
        .I3(Q[1]),
        .O(D[1]));
  LUT5 #(
    .INIT(32'h2F2F2F20)) 
    \FSM_sequential_sm_reset_tx[2]_i_6 
       (.I0(sm_reset_tx_pll_timer_sat),
        .I1(\FSM_sequential_sm_reset_tx[2]_i_3 ),
        .I2(Q[0]),
        .I3(gtwiz_reset_tx_pll_and_datapath_dly),
        .I4(gtwiz_reset_tx_datapath_dly),
        .O(sm_reset_tx_pll_timer_sat_reg));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    i_in_meta_reg
       (.C(drpclk_in),
        .CE(1'b1),
        .D(in0),
        .Q(i_in_meta),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    i_in_out_reg
       (.C(drpclk_in),
        .CE(1'b1),
        .D(i_in_sync3),
        .Q(gtwiz_reset_tx_pll_and_datapath_dly),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    i_in_sync1_reg
       (.C(drpclk_in),
        .CE(1'b1),
        .D(i_in_meta),
        .Q(i_in_sync1),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    i_in_sync2_reg
       (.C(drpclk_in),
        .CE(1'b1),
        .D(i_in_sync1),
        .Q(i_in_sync2),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    i_in_sync3_reg
       (.C(drpclk_in),
        .CE(1'b1),
        .D(i_in_sync2),
        .Q(i_in_sync3),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "gtwizard_ultrascale_v1_7_13_bit_synchronizer" *) 
module PCS_PMA_gtwizard_ultrascale_v1_7_13_bit_synchronizer_6
   (\FSM_sequential_sm_reset_rx_reg[1] ,
    \FSM_sequential_sm_reset_rx_reg[0] ,
    \FSM_sequential_sm_reset_rx_reg[0]_0 ,
    gtwiz_userclk_rx_active_out,
    drpclk_in,
    p_0_in11_out__0,
    Q,
    sm_reset_rx_cdr_to_sat,
    \FSM_sequential_sm_reset_rx_reg[0]_1 ,
    \gen_gtwizard_gthe4.gen_reset_controller_internal.gen_single_instance.rxresetdone_sync ,
    sm_reset_rx_timer_clr_reg,
    sm_reset_rx_timer_sat,
    sm_reset_rx_timer_clr_reg_0,
    gtwiz_reset_rx_any_sync,
    \gen_gtwizard_gthe4.rxuserrdy_int );
  output \FSM_sequential_sm_reset_rx_reg[1] ;
  output \FSM_sequential_sm_reset_rx_reg[0] ;
  output \FSM_sequential_sm_reset_rx_reg[0]_0 ;
  input [0:0]gtwiz_userclk_rx_active_out;
  input [0:0]drpclk_in;
  input p_0_in11_out__0;
  input [2:0]Q;
  input sm_reset_rx_cdr_to_sat;
  input \FSM_sequential_sm_reset_rx_reg[0]_1 ;
  input \gen_gtwizard_gthe4.gen_reset_controller_internal.gen_single_instance.rxresetdone_sync ;
  input sm_reset_rx_timer_clr_reg;
  input sm_reset_rx_timer_sat;
  input sm_reset_rx_timer_clr_reg_0;
  input gtwiz_reset_rx_any_sync;
  input \gen_gtwizard_gthe4.rxuserrdy_int ;

  wire \FSM_sequential_sm_reset_rx_reg[0] ;
  wire \FSM_sequential_sm_reset_rx_reg[0]_0 ;
  wire \FSM_sequential_sm_reset_rx_reg[0]_1 ;
  wire \FSM_sequential_sm_reset_rx_reg[1] ;
  wire [2:0]Q;
  wire [0:0]drpclk_in;
  wire \gen_gtwizard_gthe4.gen_reset_controller_internal.gen_single_instance.rxresetdone_sync ;
  wire \gen_gtwizard_gthe4.rxuserrdy_int ;
  wire gtwiz_reset_rx_any_sync;
  wire gtwiz_reset_userclk_rx_active_sync;
  wire [0:0]gtwiz_userclk_rx_active_out;
  (* async_reg = "true" *) wire i_in_meta;
  (* async_reg = "true" *) wire i_in_sync1;
  (* async_reg = "true" *) wire i_in_sync2;
  (* async_reg = "true" *) wire i_in_sync3;
  wire p_0_in11_out__0;
  wire sm_reset_rx_cdr_to_sat;
  wire sm_reset_rx_timer_clr0__0;
  wire sm_reset_rx_timer_clr_i_2_n_0;
  wire sm_reset_rx_timer_clr_reg;
  wire sm_reset_rx_timer_clr_reg_0;
  wire sm_reset_rx_timer_sat;

  LUT6 #(
    .INIT(64'h30BB30BB30BB3088)) 
    \FSM_sequential_sm_reset_rx[2]_i_4 
       (.I0(p_0_in11_out__0),
        .I1(Q[1]),
        .I2(sm_reset_rx_timer_clr0__0),
        .I3(Q[0]),
        .I4(sm_reset_rx_cdr_to_sat),
        .I5(\FSM_sequential_sm_reset_rx_reg[0]_1 ),
        .O(\FSM_sequential_sm_reset_rx_reg[1] ));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    i_in_meta_reg
       (.C(drpclk_in),
        .CE(1'b1),
        .D(gtwiz_userclk_rx_active_out),
        .Q(i_in_meta),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    i_in_out_reg
       (.C(drpclk_in),
        .CE(1'b1),
        .D(i_in_sync3),
        .Q(gtwiz_reset_userclk_rx_active_sync),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    i_in_sync1_reg
       (.C(drpclk_in),
        .CE(1'b1),
        .D(i_in_meta),
        .Q(i_in_sync1),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    i_in_sync2_reg
       (.C(drpclk_in),
        .CE(1'b1),
        .D(i_in_sync1),
        .Q(i_in_sync2),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    i_in_sync3_reg
       (.C(drpclk_in),
        .CE(1'b1),
        .D(i_in_sync2),
        .Q(i_in_sync3),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hFFFFEDED00000800)) 
    rxuserrdy_out_i_1
       (.I0(Q[0]),
        .I1(Q[2]),
        .I2(Q[1]),
        .I3(sm_reset_rx_timer_clr0__0),
        .I4(gtwiz_reset_rx_any_sync),
        .I5(\gen_gtwizard_gthe4.rxuserrdy_int ),
        .O(\FSM_sequential_sm_reset_rx_reg[0]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair90" *) 
  LUT3 #(
    .INIT(8'h40)) 
    rxuserrdy_out_i_2
       (.I0(sm_reset_rx_timer_clr_reg),
        .I1(sm_reset_rx_timer_sat),
        .I2(gtwiz_reset_userclk_rx_active_sync),
        .O(sm_reset_rx_timer_clr0__0));
  LUT6 #(
    .INIT(64'hFAAFCCFF0AA0CC0F)) 
    sm_reset_rx_timer_clr_i_1
       (.I0(sm_reset_rx_timer_clr_i_2_n_0),
        .I1(sm_reset_rx_timer_clr_reg_0),
        .I2(Q[0]),
        .I3(Q[1]),
        .I4(Q[2]),
        .I5(sm_reset_rx_timer_clr_reg),
        .O(\FSM_sequential_sm_reset_rx_reg[0] ));
  (* SOFT_HLUTNM = "soft_lutpair90" *) 
  LUT5 #(
    .INIT(32'h0B000800)) 
    sm_reset_rx_timer_clr_i_2
       (.I0(\gen_gtwizard_gthe4.gen_reset_controller_internal.gen_single_instance.rxresetdone_sync ),
        .I1(Q[1]),
        .I2(sm_reset_rx_timer_clr_reg),
        .I3(sm_reset_rx_timer_sat),
        .I4(gtwiz_reset_userclk_rx_active_sync),
        .O(sm_reset_rx_timer_clr_i_2_n_0));
endmodule

(* ORIG_REF_NAME = "gtwizard_ultrascale_v1_7_13_bit_synchronizer" *) 
module PCS_PMA_gtwizard_ultrascale_v1_7_13_bit_synchronizer_7
   (sm_reset_tx_timer_clr0__0,
    \FSM_sequential_sm_reset_tx_reg[1] ,
    \FSM_sequential_sm_reset_tx_reg[2] ,
    drpclk_in,
    \gen_gtwizard_gthe4.gen_reset_controller_internal.gen_single_instance.txresetdone_sync ,
    Q,
    sm_reset_tx_timer_clr013_out__0,
    sm_reset_tx_timer_clr_reg,
    sm_reset_tx_timer_sat,
    sm_reset_tx_timer_clr_reg_0,
    gtwiz_reset_tx_any_sync,
    \gen_gtwizard_gthe4.txuserrdy_int );
  output sm_reset_tx_timer_clr0__0;
  output \FSM_sequential_sm_reset_tx_reg[1] ;
  output \FSM_sequential_sm_reset_tx_reg[2] ;
  input [0:0]drpclk_in;
  input \gen_gtwizard_gthe4.gen_reset_controller_internal.gen_single_instance.txresetdone_sync ;
  input [2:0]Q;
  input sm_reset_tx_timer_clr013_out__0;
  input sm_reset_tx_timer_clr_reg;
  input sm_reset_tx_timer_sat;
  input sm_reset_tx_timer_clr_reg_0;
  input gtwiz_reset_tx_any_sync;
  input \gen_gtwizard_gthe4.txuserrdy_int ;

  wire \FSM_sequential_sm_reset_tx_reg[1] ;
  wire \FSM_sequential_sm_reset_tx_reg[2] ;
  wire [2:0]Q;
  wire [0:0]drpclk_in;
  wire \gen_gtwizard_gthe4.gen_reset_controller_internal.gen_single_instance.txresetdone_sync ;
  wire \gen_gtwizard_gthe4.txuserrdy_int ;
  wire gtwiz_reset_tx_any_sync;
  wire gtwiz_reset_userclk_tx_active_sync;
  (* async_reg = "true" *) wire i_in_meta;
  (* async_reg = "true" *) wire i_in_sync1;
  (* async_reg = "true" *) wire i_in_sync2;
  (* async_reg = "true" *) wire i_in_sync3;
  wire n_0_0;
  wire sm_reset_tx_timer_clr013_out__0;
  wire sm_reset_tx_timer_clr0__0;
  wire sm_reset_tx_timer_clr_i_2_n_0;
  wire sm_reset_tx_timer_clr_reg;
  wire sm_reset_tx_timer_clr_reg_0;
  wire sm_reset_tx_timer_sat;

  LUT3 #(
    .INIT(8'h40)) 
    \FSM_sequential_sm_reset_tx[2]_i_5 
       (.I0(sm_reset_tx_timer_clr_reg),
        .I1(sm_reset_tx_timer_sat),
        .I2(gtwiz_reset_userclk_tx_active_sync),
        .O(sm_reset_tx_timer_clr0__0));
  LUT1 #(
    .INIT(2'h2)) 
    i_0
       (.I0(1'b1),
        .O(n_0_0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    i_in_meta_reg
       (.C(drpclk_in),
        .CE(1'b1),
        .D(n_0_0),
        .Q(i_in_meta),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    i_in_out_reg
       (.C(drpclk_in),
        .CE(1'b1),
        .D(i_in_sync3),
        .Q(gtwiz_reset_userclk_tx_active_sync),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    i_in_sync1_reg
       (.C(drpclk_in),
        .CE(1'b1),
        .D(i_in_meta),
        .Q(i_in_sync1),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    i_in_sync2_reg
       (.C(drpclk_in),
        .CE(1'b1),
        .D(i_in_sync1),
        .Q(i_in_sync2),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    i_in_sync3_reg
       (.C(drpclk_in),
        .CE(1'b1),
        .D(i_in_sync2),
        .Q(i_in_sync3),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hFACFFACF0AC00ACF)) 
    sm_reset_tx_timer_clr_i_1
       (.I0(sm_reset_tx_timer_clr_i_2_n_0),
        .I1(sm_reset_tx_timer_clr_reg_0),
        .I2(Q[1]),
        .I3(Q[2]),
        .I4(Q[0]),
        .I5(sm_reset_tx_timer_clr_reg),
        .O(\FSM_sequential_sm_reset_tx_reg[1] ));
  LUT6 #(
    .INIT(64'hBABF00008A800000)) 
    sm_reset_tx_timer_clr_i_2
       (.I0(\gen_gtwizard_gthe4.gen_reset_controller_internal.gen_single_instance.txresetdone_sync ),
        .I1(Q[0]),
        .I2(Q[2]),
        .I3(Q[1]),
        .I4(sm_reset_tx_timer_clr013_out__0),
        .I5(gtwiz_reset_userclk_tx_active_sync),
        .O(sm_reset_tx_timer_clr_i_2_n_0));
  LUT6 #(
    .INIT(64'hFFFFFCCF00000008)) 
    txuserrdy_out_i_1
       (.I0(sm_reset_tx_timer_clr0__0),
        .I1(Q[2]),
        .I2(Q[1]),
        .I3(Q[0]),
        .I4(gtwiz_reset_tx_any_sync),
        .I5(\gen_gtwizard_gthe4.txuserrdy_int ),
        .O(\FSM_sequential_sm_reset_tx_reg[2] ));
endmodule

(* ORIG_REF_NAME = "gtwizard_ultrascale_v1_7_13_bit_synchronizer" *) 
module PCS_PMA_gtwizard_ultrascale_v1_7_13_bit_synchronizer_8
   (E,
    i_in_out_reg_0,
    \FSM_sequential_sm_reset_rx_reg[1] ,
    \FSM_sequential_sm_reset_rx_reg[2] ,
    \FSM_sequential_sm_reset_rx_reg[1]_0 ,
    i_in_meta_reg_0,
    drpclk_in,
    Q,
    \FSM_sequential_sm_reset_rx_reg[0] ,
    sm_reset_rx_timer_sat,
    \FSM_sequential_sm_reset_rx_reg[0]_0 ,
    \FSM_sequential_sm_reset_rx_reg[0]_1 ,
    p_0_in11_out__0,
    gtwiz_reset_rx_done_int_reg,
    gtwiz_reset_rx_any_sync,
    \gen_gtwizard_gthe4.gtrxreset_int );
  output [0:0]E;
  output i_in_out_reg_0;
  output \FSM_sequential_sm_reset_rx_reg[1] ;
  output \FSM_sequential_sm_reset_rx_reg[2] ;
  output \FSM_sequential_sm_reset_rx_reg[1]_0 ;
  input i_in_meta_reg_0;
  input [0:0]drpclk_in;
  input [2:0]Q;
  input \FSM_sequential_sm_reset_rx_reg[0] ;
  input sm_reset_rx_timer_sat;
  input \FSM_sequential_sm_reset_rx_reg[0]_0 ;
  input \FSM_sequential_sm_reset_rx_reg[0]_1 ;
  input p_0_in11_out__0;
  input gtwiz_reset_rx_done_int_reg;
  input gtwiz_reset_rx_any_sync;
  input \gen_gtwizard_gthe4.gtrxreset_int ;

  wire [0:0]E;
  wire \FSM_sequential_sm_reset_rx[2]_i_3_n_0 ;
  wire \FSM_sequential_sm_reset_rx_reg[0] ;
  wire \FSM_sequential_sm_reset_rx_reg[0]_0 ;
  wire \FSM_sequential_sm_reset_rx_reg[0]_1 ;
  wire \FSM_sequential_sm_reset_rx_reg[1] ;
  wire \FSM_sequential_sm_reset_rx_reg[1]_0 ;
  wire \FSM_sequential_sm_reset_rx_reg[2] ;
  wire [2:0]Q;
  wire [0:0]drpclk_in;
  wire \gen_gtwizard_gthe4.gtrxreset_int ;
  wire gtwiz_reset_rx_any_sync;
  wire gtwiz_reset_rx_done_int_reg;
  (* async_reg = "true" *) wire i_in_meta;
  wire i_in_meta_reg_0;
  wire i_in_out_reg_0;
  (* async_reg = "true" *) wire i_in_sync1;
  (* async_reg = "true" *) wire i_in_sync2;
  (* async_reg = "true" *) wire i_in_sync3;
  wire p_0_in11_out__0;
  wire plllock_rx_sync;
  wire sm_reset_rx_timer_sat;

  LUT6 #(
    .INIT(64'h00B0FFFF00B00000)) 
    \FSM_sequential_sm_reset_rx[2]_i_3 
       (.I0(plllock_rx_sync),
        .I1(Q[0]),
        .I2(sm_reset_rx_timer_sat),
        .I3(\FSM_sequential_sm_reset_rx_reg[0]_0 ),
        .I4(Q[1]),
        .I5(\FSM_sequential_sm_reset_rx_reg[0]_1 ),
        .O(\FSM_sequential_sm_reset_rx[2]_i_3_n_0 ));
  MUXF7 \FSM_sequential_sm_reset_rx_reg[2]_i_1 
       (.I0(\FSM_sequential_sm_reset_rx[2]_i_3_n_0 ),
        .I1(\FSM_sequential_sm_reset_rx_reg[0] ),
        .O(E),
        .S(Q[2]));
  LUT6 #(
    .INIT(64'hFFFFFF7F0000003E)) 
    gtrxreset_out_i_1
       (.I0(\FSM_sequential_sm_reset_rx_reg[1] ),
        .I1(Q[1]),
        .I2(Q[0]),
        .I3(Q[2]),
        .I4(gtwiz_reset_rx_any_sync),
        .I5(\gen_gtwizard_gthe4.gtrxreset_int ),
        .O(\FSM_sequential_sm_reset_rx_reg[1]_0 ));
  LUT6 #(
    .INIT(64'hFFFF77FF00800080)) 
    gtwiz_reset_rx_done_int_i_1
       (.I0(Q[2]),
        .I1(Q[1]),
        .I2(p_0_in11_out__0),
        .I3(Q[0]),
        .I4(plllock_rx_sync),
        .I5(gtwiz_reset_rx_done_int_reg),
        .O(\FSM_sequential_sm_reset_rx_reg[2] ));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    i_in_meta_reg
       (.C(drpclk_in),
        .CE(1'b1),
        .D(i_in_meta_reg_0),
        .Q(i_in_meta),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    i_in_out_reg
       (.C(drpclk_in),
        .CE(1'b1),
        .D(i_in_sync3),
        .Q(plllock_rx_sync),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    i_in_sync1_reg
       (.C(drpclk_in),
        .CE(1'b1),
        .D(i_in_meta),
        .Q(i_in_sync1),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    i_in_sync2_reg
       (.C(drpclk_in),
        .CE(1'b1),
        .D(i_in_sync1),
        .Q(i_in_sync2),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    i_in_sync3_reg
       (.C(drpclk_in),
        .CE(1'b1),
        .D(i_in_sync2),
        .Q(i_in_sync3),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair91" *) 
  LUT4 #(
    .INIT(16'h0080)) 
    sm_reset_rx_cdr_to_clr_i_3
       (.I0(Q[1]),
        .I1(plllock_rx_sync),
        .I2(sm_reset_rx_timer_sat),
        .I3(\FSM_sequential_sm_reset_rx_reg[0]_0 ),
        .O(\FSM_sequential_sm_reset_rx_reg[1] ));
  (* SOFT_HLUTNM = "soft_lutpair91" *) 
  LUT4 #(
    .INIT(16'h00B0)) 
    sm_reset_rx_timer_clr_i_3
       (.I0(plllock_rx_sync),
        .I1(Q[0]),
        .I2(sm_reset_rx_timer_sat),
        .I3(\FSM_sequential_sm_reset_rx_reg[0]_0 ),
        .O(i_in_out_reg_0));
endmodule

(* ORIG_REF_NAME = "gtwizard_ultrascale_v1_7_13_bit_synchronizer" *) 
module PCS_PMA_gtwizard_ultrascale_v1_7_13_bit_synchronizer_9
   (E,
    i_in_out_reg_0,
    \FSM_sequential_sm_reset_tx_reg[0] ,
    \FSM_sequential_sm_reset_tx_reg[1] ,
    i_in_meta_reg_0,
    drpclk_in,
    Q,
    gtwiz_reset_tx_done_int0__0,
    sm_reset_tx_timer_clr0__0,
    sm_reset_tx_timer_sat,
    \FSM_sequential_sm_reset_tx_reg[0]_0 ,
    \FSM_sequential_sm_reset_tx_reg[0]_1 ,
    gtwiz_reset_tx_done_int_reg,
    gtwiz_reset_tx_any_sync,
    \gen_gtwizard_gthe4.gttxreset_int );
  output [0:0]E;
  output i_in_out_reg_0;
  output \FSM_sequential_sm_reset_tx_reg[0] ;
  output \FSM_sequential_sm_reset_tx_reg[1] ;
  input i_in_meta_reg_0;
  input [0:0]drpclk_in;
  input [2:0]Q;
  input gtwiz_reset_tx_done_int0__0;
  input sm_reset_tx_timer_clr0__0;
  input sm_reset_tx_timer_sat;
  input \FSM_sequential_sm_reset_tx_reg[0]_0 ;
  input \FSM_sequential_sm_reset_tx_reg[0]_1 ;
  input gtwiz_reset_tx_done_int_reg;
  input gtwiz_reset_tx_any_sync;
  input \gen_gtwizard_gthe4.gttxreset_int ;

  wire [0:0]E;
  wire \FSM_sequential_sm_reset_tx[2]_i_3_n_0 ;
  wire \FSM_sequential_sm_reset_tx_reg[0] ;
  wire \FSM_sequential_sm_reset_tx_reg[0]_0 ;
  wire \FSM_sequential_sm_reset_tx_reg[0]_1 ;
  wire \FSM_sequential_sm_reset_tx_reg[1] ;
  wire [2:0]Q;
  wire [0:0]drpclk_in;
  wire \gen_gtwizard_gthe4.gttxreset_int ;
  wire gtwiz_reset_tx_any_sync;
  wire gtwiz_reset_tx_done_int0__0;
  wire gtwiz_reset_tx_done_int_reg;
  (* async_reg = "true" *) wire i_in_meta;
  wire i_in_meta_reg_0;
  wire i_in_out_reg_0;
  (* async_reg = "true" *) wire i_in_sync1;
  (* async_reg = "true" *) wire i_in_sync2;
  (* async_reg = "true" *) wire i_in_sync3;
  wire plllock_tx_sync;
  wire sm_reset_tx_timer_clr012_out__0;
  wire sm_reset_tx_timer_clr0__0;
  wire sm_reset_tx_timer_sat;

  LUT6 #(
    .INIT(64'h3A0A3A3A3A0A0A0A)) 
    \FSM_sequential_sm_reset_tx[2]_i_1 
       (.I0(\FSM_sequential_sm_reset_tx[2]_i_3_n_0 ),
        .I1(Q[1]),
        .I2(Q[2]),
        .I3(gtwiz_reset_tx_done_int0__0),
        .I4(Q[0]),
        .I5(sm_reset_tx_timer_clr0__0),
        .O(E));
  LUT6 #(
    .INIT(64'h00B0FFFF00B00000)) 
    \FSM_sequential_sm_reset_tx[2]_i_3 
       (.I0(plllock_tx_sync),
        .I1(Q[0]),
        .I2(sm_reset_tx_timer_sat),
        .I3(\FSM_sequential_sm_reset_tx_reg[0]_0 ),
        .I4(Q[1]),
        .I5(\FSM_sequential_sm_reset_tx_reg[0]_1 ),
        .O(\FSM_sequential_sm_reset_tx[2]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFF7F0000003C)) 
    gttxreset_out_i_1
       (.I0(sm_reset_tx_timer_clr012_out__0),
        .I1(Q[1]),
        .I2(Q[0]),
        .I3(Q[2]),
        .I4(gtwiz_reset_tx_any_sync),
        .I5(\gen_gtwizard_gthe4.gttxreset_int ),
        .O(\FSM_sequential_sm_reset_tx_reg[1] ));
  (* SOFT_HLUTNM = "soft_lutpair92" *) 
  LUT3 #(
    .INIT(8'h40)) 
    gttxreset_out_i_2
       (.I0(\FSM_sequential_sm_reset_tx_reg[0]_0 ),
        .I1(sm_reset_tx_timer_sat),
        .I2(plllock_tx_sync),
        .O(sm_reset_tx_timer_clr012_out__0));
  LUT6 #(
    .INIT(64'hFFCFFFFF00008080)) 
    gtwiz_reset_tx_done_int_i_1
       (.I0(gtwiz_reset_tx_done_int0__0),
        .I1(Q[0]),
        .I2(Q[2]),
        .I3(plllock_tx_sync),
        .I4(Q[1]),
        .I5(gtwiz_reset_tx_done_int_reg),
        .O(\FSM_sequential_sm_reset_tx_reg[0] ));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    i_in_meta_reg
       (.C(drpclk_in),
        .CE(1'b1),
        .D(i_in_meta_reg_0),
        .Q(i_in_meta),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    i_in_out_reg
       (.C(drpclk_in),
        .CE(1'b1),
        .D(i_in_sync3),
        .Q(plllock_tx_sync),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    i_in_sync1_reg
       (.C(drpclk_in),
        .CE(1'b1),
        .D(i_in_meta),
        .Q(i_in_sync1),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    i_in_sync2_reg
       (.C(drpclk_in),
        .CE(1'b1),
        .D(i_in_sync1),
        .Q(i_in_sync2),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    i_in_sync3_reg
       (.C(drpclk_in),
        .CE(1'b1),
        .D(i_in_sync2),
        .Q(i_in_sync3),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair92" *) 
  LUT4 #(
    .INIT(16'h00B0)) 
    sm_reset_tx_timer_clr_i_3
       (.I0(plllock_tx_sync),
        .I1(Q[0]),
        .I2(sm_reset_tx_timer_sat),
        .I3(\FSM_sequential_sm_reset_tx_reg[0]_0 ),
        .O(i_in_out_reg_0));
endmodule

(* ORIG_REF_NAME = "gtwizard_ultrascale_v1_7_13_gte4_drp_arb" *) 
module PCS_PMA_gtwizard_ultrascale_v1_7_13_gte4_drp_arb
   (Q,
    cal_on_tx_drdy,
    DEN_O,
    DWE_O,
    DADDR_O,
    DI_O,
    drprst_in_sync,
    drpclk_in,
    DO_I,
    cal_on_tx_drpen_out,
    \addr_i_reg[27]_0 ,
    \data_i_reg[47]_0 ,
    cal_on_tx_drpwe_out,
    \gen_gtwizard_gthe4.drprdy_int );
  output [15:0]Q;
  output cal_on_tx_drdy;
  output DEN_O;
  output DWE_O;
  output [6:0]DADDR_O;
  output [15:0]DI_O;
  input drprst_in_sync;
  input [0:0]drpclk_in;
  input [15:0]DO_I;
  input cal_on_tx_drpen_out;
  input [6:0]\addr_i_reg[27]_0 ;
  input [15:0]\data_i_reg[47]_0 ;
  input cal_on_tx_drpwe_out;
  input \gen_gtwizard_gthe4.drprdy_int ;

  wire CEB2;
  wire [6:0]DADDR_O;
  wire \DADDR_O[7]_i_1_n_0 ;
  wire DEN_O;
  wire DEN_O_i_1_n_0;
  wire DEN_O_i_2_n_0;
  wire [15:0]DI_O;
  wire \DI_O[15]_i_1_n_0 ;
  wire [15:0]DO_I;
  wire [47:32]DO_USR_O0;
  wire \DO_USR_O[47]_i_1_n_0 ;
  wire \DRDY_USR_O[2]_i_1_n_0 ;
  wire \DRDY_USR_O[2]_i_2_n_0 ;
  wire DWE_O;
  wire [15:0]Q;
  wire [27:21]addr_i;
  wire [6:0]\addr_i_reg[27]_0 ;
  wire [3:0]arb_state;
  wire cal_on_tx_drdy;
  wire cal_on_tx_drpen_out;
  wire cal_on_tx_drpwe_out;
  wire [7:1]daddr;
  wire [7:1]daddr0;
  wire [47:32]data_i;
  wire [15:0]\data_i_reg[47]_0 ;
  wire di;
  wire \di[0]_i_1_n_0 ;
  wire \di[10]_i_1_n_0 ;
  wire \di[11]_i_1_n_0 ;
  wire \di[12]_i_1_n_0 ;
  wire \di[13]_i_1_n_0 ;
  wire \di[14]_i_1_n_0 ;
  wire \di[15]_i_1_n_0 ;
  wire \di[1]_i_1_n_0 ;
  wire \di[2]_i_1_n_0 ;
  wire \di[3]_i_1_n_0 ;
  wire \di[4]_i_1_n_0 ;
  wire \di[5]_i_1_n_0 ;
  wire \di[6]_i_1_n_0 ;
  wire \di[7]_i_1_n_0 ;
  wire \di[8]_i_1_n_0 ;
  wire \di[9]_i_1_n_0 ;
  wire \di_reg_n_0_[0] ;
  wire \di_reg_n_0_[10] ;
  wire \di_reg_n_0_[11] ;
  wire \di_reg_n_0_[12] ;
  wire \di_reg_n_0_[13] ;
  wire \di_reg_n_0_[14] ;
  wire \di_reg_n_0_[15] ;
  wire \di_reg_n_0_[1] ;
  wire \di_reg_n_0_[2] ;
  wire \di_reg_n_0_[3] ;
  wire \di_reg_n_0_[4] ;
  wire \di_reg_n_0_[5] ;
  wire \di_reg_n_0_[6] ;
  wire \di_reg_n_0_[7] ;
  wire \di_reg_n_0_[8] ;
  wire \di_reg_n_0_[9] ;
  wire done_i_1_n_0;
  wire done_i_2_n_0;
  wire done_i_3_n_0;
  wire done_reg_n_0;
  wire [6:0]drp_state;
  wire \drp_state[0]_i_2_n_0 ;
  wire \drp_state[1]_i_2_n_0 ;
  wire \drp_state[4]_i_2_n_0 ;
  wire \drp_state[5]_i_2_n_0 ;
  wire \drp_state[6]_i_2_n_0 ;
  wire \drp_state[6]_i_3_n_0 ;
  wire \drp_state[6]_i_4_n_0 ;
  wire \drp_state_reg_n_0_[0] ;
  wire \drp_state_reg_n_0_[1] ;
  wire \drp_state_reg_n_0_[2] ;
  wire \drp_state_reg_n_0_[4] ;
  wire \drp_state_reg_n_0_[5] ;
  wire \drp_state_reg_n_0_[6] ;
  wire [0:0]drpclk_in;
  wire drprst_in_sync;
  wire [2:2]en;
  wire \en[2]_i_2_n_0 ;
  wire \gen_gtwizard_gthe4.drprdy_int ;
  wire \idx[0]_i_1_n_0 ;
  wire \idx[1]_i_2_n_0 ;
  wire \idx_reg_n_0_[0] ;
  wire \idx_reg_n_0_[1] ;
  wire [3:0]p_0_in;
  wire rd;
  wire rd_i_1_n_0;
  wire rd_reg_n_0;
  wire [7:0]timeout_cntr;
  wire \timeout_cntr[5]_i_2_n_0 ;
  wire \timeout_cntr[7]_i_1_n_0 ;
  wire \timeout_cntr[7]_i_3_n_0 ;
  wire \timeout_cntr[7]_i_4_n_0 ;
  wire \timeout_cntr_reg_n_0_[0] ;
  wire \timeout_cntr_reg_n_0_[1] ;
  wire \timeout_cntr_reg_n_0_[2] ;
  wire \timeout_cntr_reg_n_0_[3] ;
  wire \timeout_cntr_reg_n_0_[4] ;
  wire \timeout_cntr_reg_n_0_[5] ;
  wire \timeout_cntr_reg_n_0_[6] ;
  wire \timeout_cntr_reg_n_0_[7] ;
  wire [2:2]we;
  wire \we[2]_i_1_n_0 ;
  wire \we_reg_n_0_[2] ;
  wire wr;
  wire wr_reg_n_0;

  LUT6 #(
    .INIT(64'h0000000100010000)) 
    \DADDR_O[7]_i_1 
       (.I0(\drp_state_reg_n_0_[2] ),
        .I1(\drp_state_reg_n_0_[5] ),
        .I2(\drp_state_reg_n_0_[0] ),
        .I3(\drp_state_reg_n_0_[6] ),
        .I4(\drp_state_reg_n_0_[4] ),
        .I5(\drp_state_reg_n_0_[1] ),
        .O(\DADDR_O[7]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \DADDR_O_reg[1] 
       (.C(drpclk_in),
        .CE(\DADDR_O[7]_i_1_n_0 ),
        .D(daddr[1]),
        .Q(DADDR_O[0]),
        .R(drprst_in_sync));
  FDRE #(
    .INIT(1'b0)) 
    \DADDR_O_reg[2] 
       (.C(drpclk_in),
        .CE(\DADDR_O[7]_i_1_n_0 ),
        .D(daddr[2]),
        .Q(DADDR_O[1]),
        .R(drprst_in_sync));
  FDRE #(
    .INIT(1'b0)) 
    \DADDR_O_reg[3] 
       (.C(drpclk_in),
        .CE(\DADDR_O[7]_i_1_n_0 ),
        .D(daddr[3]),
        .Q(DADDR_O[2]),
        .R(drprst_in_sync));
  FDRE #(
    .INIT(1'b0)) 
    \DADDR_O_reg[4] 
       (.C(drpclk_in),
        .CE(\DADDR_O[7]_i_1_n_0 ),
        .D(daddr[4]),
        .Q(DADDR_O[3]),
        .R(drprst_in_sync));
  FDRE #(
    .INIT(1'b0)) 
    \DADDR_O_reg[5] 
       (.C(drpclk_in),
        .CE(\DADDR_O[7]_i_1_n_0 ),
        .D(daddr[5]),
        .Q(DADDR_O[4]),
        .R(drprst_in_sync));
  FDRE #(
    .INIT(1'b0)) 
    \DADDR_O_reg[6] 
       (.C(drpclk_in),
        .CE(\DADDR_O[7]_i_1_n_0 ),
        .D(daddr[6]),
        .Q(DADDR_O[5]),
        .R(drprst_in_sync));
  FDRE #(
    .INIT(1'b0)) 
    \DADDR_O_reg[7] 
       (.C(drpclk_in),
        .CE(\DADDR_O[7]_i_1_n_0 ),
        .D(daddr[7]),
        .Q(DADDR_O[6]),
        .R(drprst_in_sync));
  LUT6 #(
    .INIT(64'h0000000000000116)) 
    DEN_O_i_1
       (.I0(\drp_state_reg_n_0_[4] ),
        .I1(\drp_state_reg_n_0_[1] ),
        .I2(\drp_state_reg_n_0_[5] ),
        .I3(\drp_state_reg_n_0_[2] ),
        .I4(\drp_state_reg_n_0_[6] ),
        .I5(\drp_state_reg_n_0_[0] ),
        .O(DEN_O_i_1_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    DEN_O_i_2
       (.I0(\drp_state_reg_n_0_[5] ),
        .I1(\drp_state_reg_n_0_[2] ),
        .O(DEN_O_i_2_n_0));
  FDRE #(
    .INIT(1'b0)) 
    DEN_O_reg
       (.C(drpclk_in),
        .CE(DEN_O_i_1_n_0),
        .D(DEN_O_i_2_n_0),
        .Q(DEN_O),
        .R(drprst_in_sync));
  LUT6 #(
    .INIT(64'h0000000000000004)) 
    \DI_O[15]_i_1 
       (.I0(\drp_state_reg_n_0_[1] ),
        .I1(\drp_state_reg_n_0_[4] ),
        .I2(\drp_state_reg_n_0_[2] ),
        .I3(\drp_state_reg_n_0_[5] ),
        .I4(\drp_state_reg_n_0_[0] ),
        .I5(\drp_state_reg_n_0_[6] ),
        .O(\DI_O[15]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \DI_O_reg[0] 
       (.C(drpclk_in),
        .CE(\DI_O[15]_i_1_n_0 ),
        .D(\di_reg_n_0_[0] ),
        .Q(DI_O[0]),
        .R(drprst_in_sync));
  FDRE #(
    .INIT(1'b0)) 
    \DI_O_reg[10] 
       (.C(drpclk_in),
        .CE(\DI_O[15]_i_1_n_0 ),
        .D(\di_reg_n_0_[10] ),
        .Q(DI_O[10]),
        .R(drprst_in_sync));
  FDRE #(
    .INIT(1'b0)) 
    \DI_O_reg[11] 
       (.C(drpclk_in),
        .CE(\DI_O[15]_i_1_n_0 ),
        .D(\di_reg_n_0_[11] ),
        .Q(DI_O[11]),
        .R(drprst_in_sync));
  FDRE #(
    .INIT(1'b0)) 
    \DI_O_reg[12] 
       (.C(drpclk_in),
        .CE(\DI_O[15]_i_1_n_0 ),
        .D(\di_reg_n_0_[12] ),
        .Q(DI_O[12]),
        .R(drprst_in_sync));
  FDRE #(
    .INIT(1'b0)) 
    \DI_O_reg[13] 
       (.C(drpclk_in),
        .CE(\DI_O[15]_i_1_n_0 ),
        .D(\di_reg_n_0_[13] ),
        .Q(DI_O[13]),
        .R(drprst_in_sync));
  FDRE #(
    .INIT(1'b0)) 
    \DI_O_reg[14] 
       (.C(drpclk_in),
        .CE(\DI_O[15]_i_1_n_0 ),
        .D(\di_reg_n_0_[14] ),
        .Q(DI_O[14]),
        .R(drprst_in_sync));
  FDRE #(
    .INIT(1'b0)) 
    \DI_O_reg[15] 
       (.C(drpclk_in),
        .CE(\DI_O[15]_i_1_n_0 ),
        .D(\di_reg_n_0_[15] ),
        .Q(DI_O[15]),
        .R(drprst_in_sync));
  FDRE #(
    .INIT(1'b0)) 
    \DI_O_reg[1] 
       (.C(drpclk_in),
        .CE(\DI_O[15]_i_1_n_0 ),
        .D(\di_reg_n_0_[1] ),
        .Q(DI_O[1]),
        .R(drprst_in_sync));
  FDRE #(
    .INIT(1'b0)) 
    \DI_O_reg[2] 
       (.C(drpclk_in),
        .CE(\DI_O[15]_i_1_n_0 ),
        .D(\di_reg_n_0_[2] ),
        .Q(DI_O[2]),
        .R(drprst_in_sync));
  FDRE #(
    .INIT(1'b0)) 
    \DI_O_reg[3] 
       (.C(drpclk_in),
        .CE(\DI_O[15]_i_1_n_0 ),
        .D(\di_reg_n_0_[3] ),
        .Q(DI_O[3]),
        .R(drprst_in_sync));
  FDRE #(
    .INIT(1'b0)) 
    \DI_O_reg[4] 
       (.C(drpclk_in),
        .CE(\DI_O[15]_i_1_n_0 ),
        .D(\di_reg_n_0_[4] ),
        .Q(DI_O[4]),
        .R(drprst_in_sync));
  FDRE #(
    .INIT(1'b0)) 
    \DI_O_reg[5] 
       (.C(drpclk_in),
        .CE(\DI_O[15]_i_1_n_0 ),
        .D(\di_reg_n_0_[5] ),
        .Q(DI_O[5]),
        .R(drprst_in_sync));
  FDRE #(
    .INIT(1'b0)) 
    \DI_O_reg[6] 
       (.C(drpclk_in),
        .CE(\DI_O[15]_i_1_n_0 ),
        .D(\di_reg_n_0_[6] ),
        .Q(DI_O[6]),
        .R(drprst_in_sync));
  FDRE #(
    .INIT(1'b0)) 
    \DI_O_reg[7] 
       (.C(drpclk_in),
        .CE(\DI_O[15]_i_1_n_0 ),
        .D(\di_reg_n_0_[7] ),
        .Q(DI_O[7]),
        .R(drprst_in_sync));
  FDRE #(
    .INIT(1'b0)) 
    \DI_O_reg[8] 
       (.C(drpclk_in),
        .CE(\DI_O[15]_i_1_n_0 ),
        .D(\di_reg_n_0_[8] ),
        .Q(DI_O[8]),
        .R(drprst_in_sync));
  FDRE #(
    .INIT(1'b0)) 
    \DI_O_reg[9] 
       (.C(drpclk_in),
        .CE(\DI_O[15]_i_1_n_0 ),
        .D(\di_reg_n_0_[9] ),
        .Q(DI_O[9]),
        .R(drprst_in_sync));
  LUT6 #(
    .INIT(64'h0000001000000000)) 
    \DO_USR_O[47]_i_1 
       (.I0(arb_state[0]),
        .I1(arb_state[3]),
        .I2(arb_state[2]),
        .I3(arb_state[1]),
        .I4(\idx_reg_n_0_[0] ),
        .I5(\idx_reg_n_0_[1] ),
        .O(\DO_USR_O[47]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \DO_USR_O_reg[32] 
       (.C(drpclk_in),
        .CE(\DO_USR_O[47]_i_1_n_0 ),
        .D(DO_USR_O0[32]),
        .Q(Q[0]),
        .R(drprst_in_sync));
  FDRE #(
    .INIT(1'b0)) 
    \DO_USR_O_reg[33] 
       (.C(drpclk_in),
        .CE(\DO_USR_O[47]_i_1_n_0 ),
        .D(DO_USR_O0[33]),
        .Q(Q[1]),
        .R(drprst_in_sync));
  FDRE #(
    .INIT(1'b0)) 
    \DO_USR_O_reg[34] 
       (.C(drpclk_in),
        .CE(\DO_USR_O[47]_i_1_n_0 ),
        .D(DO_USR_O0[34]),
        .Q(Q[2]),
        .R(drprst_in_sync));
  FDRE #(
    .INIT(1'b0)) 
    \DO_USR_O_reg[35] 
       (.C(drpclk_in),
        .CE(\DO_USR_O[47]_i_1_n_0 ),
        .D(DO_USR_O0[35]),
        .Q(Q[3]),
        .R(drprst_in_sync));
  FDRE #(
    .INIT(1'b0)) 
    \DO_USR_O_reg[36] 
       (.C(drpclk_in),
        .CE(\DO_USR_O[47]_i_1_n_0 ),
        .D(DO_USR_O0[36]),
        .Q(Q[4]),
        .R(drprst_in_sync));
  FDRE #(
    .INIT(1'b0)) 
    \DO_USR_O_reg[37] 
       (.C(drpclk_in),
        .CE(\DO_USR_O[47]_i_1_n_0 ),
        .D(DO_USR_O0[37]),
        .Q(Q[5]),
        .R(drprst_in_sync));
  FDRE #(
    .INIT(1'b0)) 
    \DO_USR_O_reg[38] 
       (.C(drpclk_in),
        .CE(\DO_USR_O[47]_i_1_n_0 ),
        .D(DO_USR_O0[38]),
        .Q(Q[6]),
        .R(drprst_in_sync));
  FDRE #(
    .INIT(1'b0)) 
    \DO_USR_O_reg[39] 
       (.C(drpclk_in),
        .CE(\DO_USR_O[47]_i_1_n_0 ),
        .D(DO_USR_O0[39]),
        .Q(Q[7]),
        .R(drprst_in_sync));
  FDRE #(
    .INIT(1'b0)) 
    \DO_USR_O_reg[40] 
       (.C(drpclk_in),
        .CE(\DO_USR_O[47]_i_1_n_0 ),
        .D(DO_USR_O0[40]),
        .Q(Q[8]),
        .R(drprst_in_sync));
  FDRE #(
    .INIT(1'b0)) 
    \DO_USR_O_reg[41] 
       (.C(drpclk_in),
        .CE(\DO_USR_O[47]_i_1_n_0 ),
        .D(DO_USR_O0[41]),
        .Q(Q[9]),
        .R(drprst_in_sync));
  FDRE #(
    .INIT(1'b0)) 
    \DO_USR_O_reg[42] 
       (.C(drpclk_in),
        .CE(\DO_USR_O[47]_i_1_n_0 ),
        .D(DO_USR_O0[42]),
        .Q(Q[10]),
        .R(drprst_in_sync));
  FDRE #(
    .INIT(1'b0)) 
    \DO_USR_O_reg[43] 
       (.C(drpclk_in),
        .CE(\DO_USR_O[47]_i_1_n_0 ),
        .D(DO_USR_O0[43]),
        .Q(Q[11]),
        .R(drprst_in_sync));
  FDRE #(
    .INIT(1'b0)) 
    \DO_USR_O_reg[44] 
       (.C(drpclk_in),
        .CE(\DO_USR_O[47]_i_1_n_0 ),
        .D(DO_USR_O0[44]),
        .Q(Q[12]),
        .R(drprst_in_sync));
  FDRE #(
    .INIT(1'b0)) 
    \DO_USR_O_reg[45] 
       (.C(drpclk_in),
        .CE(\DO_USR_O[47]_i_1_n_0 ),
        .D(DO_USR_O0[45]),
        .Q(Q[13]),
        .R(drprst_in_sync));
  FDRE #(
    .INIT(1'b0)) 
    \DO_USR_O_reg[46] 
       (.C(drpclk_in),
        .CE(\DO_USR_O[47]_i_1_n_0 ),
        .D(DO_USR_O0[46]),
        .Q(Q[14]),
        .R(drprst_in_sync));
  FDRE #(
    .INIT(1'b0)) 
    \DO_USR_O_reg[47] 
       (.C(drpclk_in),
        .CE(\DO_USR_O[47]_i_1_n_0 ),
        .D(DO_USR_O0[47]),
        .Q(Q[15]),
        .R(drprst_in_sync));
  LUT6 #(
    .INIT(64'hFFFFFDFF00000020)) 
    \DRDY_USR_O[2]_i_1 
       (.I0(\DRDY_USR_O[2]_i_2_n_0 ),
        .I1(arb_state[1]),
        .I2(arb_state[2]),
        .I3(arb_state[3]),
        .I4(arb_state[0]),
        .I5(cal_on_tx_drdy),
        .O(\DRDY_USR_O[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair46" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \DRDY_USR_O[2]_i_2 
       (.I0(\idx_reg_n_0_[1] ),
        .I1(\idx_reg_n_0_[0] ),
        .O(\DRDY_USR_O[2]_i_2_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \DRDY_USR_O_reg[2] 
       (.C(drpclk_in),
        .CE(1'b1),
        .D(\DRDY_USR_O[2]_i_1_n_0 ),
        .Q(cal_on_tx_drdy),
        .R(drprst_in_sync));
  FDRE #(
    .INIT(1'b0)) 
    DWE_O_reg
       (.C(drpclk_in),
        .CE(DEN_O_i_1_n_0),
        .D(\drp_state_reg_n_0_[4] ),
        .Q(DWE_O),
        .R(drprst_in_sync));
  FDRE #(
    .INIT(1'b0)) 
    \addr_i_reg[21] 
       (.C(drpclk_in),
        .CE(cal_on_tx_drpen_out),
        .D(\addr_i_reg[27]_0 [0]),
        .Q(addr_i[21]),
        .R(drprst_in_sync));
  FDRE #(
    .INIT(1'b0)) 
    \addr_i_reg[22] 
       (.C(drpclk_in),
        .CE(cal_on_tx_drpen_out),
        .D(\addr_i_reg[27]_0 [1]),
        .Q(addr_i[22]),
        .R(drprst_in_sync));
  FDRE #(
    .INIT(1'b0)) 
    \addr_i_reg[23] 
       (.C(drpclk_in),
        .CE(cal_on_tx_drpen_out),
        .D(\addr_i_reg[27]_0 [2]),
        .Q(addr_i[23]),
        .R(drprst_in_sync));
  FDRE #(
    .INIT(1'b0)) 
    \addr_i_reg[24] 
       (.C(drpclk_in),
        .CE(cal_on_tx_drpen_out),
        .D(\addr_i_reg[27]_0 [3]),
        .Q(addr_i[24]),
        .R(drprst_in_sync));
  FDRE #(
    .INIT(1'b0)) 
    \addr_i_reg[25] 
       (.C(drpclk_in),
        .CE(cal_on_tx_drpen_out),
        .D(\addr_i_reg[27]_0 [4]),
        .Q(addr_i[25]),
        .R(drprst_in_sync));
  FDRE #(
    .INIT(1'b0)) 
    \addr_i_reg[26] 
       (.C(drpclk_in),
        .CE(cal_on_tx_drpen_out),
        .D(\addr_i_reg[27]_0 [5]),
        .Q(addr_i[26]),
        .R(drprst_in_sync));
  FDRE #(
    .INIT(1'b0)) 
    \addr_i_reg[27] 
       (.C(drpclk_in),
        .CE(cal_on_tx_drpen_out),
        .D(\addr_i_reg[27]_0 [6]),
        .Q(addr_i[27]),
        .R(drprst_in_sync));
  LUT4 #(
    .INIT(16'hFEEB)) 
    \arb_state[0]_i_1 
       (.I0(arb_state[3]),
        .I1(arb_state[0]),
        .I2(arb_state[1]),
        .I3(arb_state[2]),
        .O(p_0_in[0]));
  LUT6 #(
    .INIT(64'hFFFFFFFF00010000)) 
    \arb_state[1]_i_1 
       (.I0(arb_state[0]),
        .I1(arb_state[3]),
        .I2(done_reg_n_0),
        .I3(arb_state[2]),
        .I4(arb_state[1]),
        .I5(di),
        .O(p_0_in[1]));
  LUT5 #(
    .INIT(32'h00000008)) 
    \arb_state[2]_i_1 
       (.I0(arb_state[1]),
        .I1(done_reg_n_0),
        .I2(arb_state[2]),
        .I3(arb_state[3]),
        .I4(arb_state[0]),
        .O(p_0_in[2]));
  LUT6 #(
    .INIT(64'h00000000000F0700)) 
    \arb_state[3]_i_1 
       (.I0(en),
        .I1(\idx_reg_n_0_[1] ),
        .I2(arb_state[3]),
        .I3(arb_state[0]),
        .I4(arb_state[2]),
        .I5(arb_state[1]),
        .O(p_0_in[3]));
  (* FSM_ENCODED_STATES = "ARB_START:0001,ARB_INC:1000,ARB_WAIT:0010,ARB_REPORT:0100" *) 
  FDSE #(
    .INIT(1'b1)) 
    \arb_state_reg[0] 
       (.C(drpclk_in),
        .CE(1'b1),
        .D(p_0_in[0]),
        .Q(arb_state[0]),
        .S(drprst_in_sync));
  (* FSM_ENCODED_STATES = "ARB_START:0001,ARB_INC:1000,ARB_WAIT:0010,ARB_REPORT:0100" *) 
  FDRE #(
    .INIT(1'b0)) 
    \arb_state_reg[1] 
       (.C(drpclk_in),
        .CE(1'b1),
        .D(p_0_in[1]),
        .Q(arb_state[1]),
        .R(drprst_in_sync));
  (* FSM_ENCODED_STATES = "ARB_START:0001,ARB_INC:1000,ARB_WAIT:0010,ARB_REPORT:0100" *) 
  FDRE #(
    .INIT(1'b0)) 
    \arb_state_reg[2] 
       (.C(drpclk_in),
        .CE(1'b1),
        .D(p_0_in[2]),
        .Q(arb_state[2]),
        .R(drprst_in_sync));
  (* FSM_ENCODED_STATES = "ARB_START:0001,ARB_INC:1000,ARB_WAIT:0010,ARB_REPORT:0100" *) 
  FDRE #(
    .INIT(1'b0)) 
    \arb_state_reg[3] 
       (.C(drpclk_in),
        .CE(1'b1),
        .D(p_0_in[3]),
        .Q(arb_state[3]),
        .R(drprst_in_sync));
  (* SOFT_HLUTNM = "soft_lutpair58" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \daddr[1]_i_1 
       (.I0(addr_i[21]),
        .I1(\idx_reg_n_0_[0] ),
        .O(daddr0[1]));
  (* SOFT_HLUTNM = "soft_lutpair58" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \daddr[2]_i_1 
       (.I0(addr_i[22]),
        .I1(\idx_reg_n_0_[0] ),
        .O(daddr0[2]));
  (* SOFT_HLUTNM = "soft_lutpair57" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \daddr[3]_i_1 
       (.I0(addr_i[23]),
        .I1(\idx_reg_n_0_[0] ),
        .O(daddr0[3]));
  (* SOFT_HLUTNM = "soft_lutpair57" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \daddr[4]_i_1 
       (.I0(addr_i[24]),
        .I1(\idx_reg_n_0_[0] ),
        .O(daddr0[4]));
  (* SOFT_HLUTNM = "soft_lutpair56" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \daddr[5]_i_1 
       (.I0(addr_i[25]),
        .I1(\idx_reg_n_0_[0] ),
        .O(daddr0[5]));
  (* SOFT_HLUTNM = "soft_lutpair56" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \daddr[6]_i_1 
       (.I0(addr_i[26]),
        .I1(\idx_reg_n_0_[0] ),
        .O(daddr0[6]));
  LUT6 #(
    .INIT(64'h0010000000000000)) 
    \daddr[7]_i_1 
       (.I0(arb_state[1]),
        .I1(arb_state[2]),
        .I2(arb_state[0]),
        .I3(arb_state[3]),
        .I4(\idx_reg_n_0_[1] ),
        .I5(en),
        .O(di));
  (* SOFT_HLUTNM = "soft_lutpair55" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \daddr[7]_i_2 
       (.I0(addr_i[27]),
        .I1(\idx_reg_n_0_[0] ),
        .O(daddr0[7]));
  FDRE #(
    .INIT(1'b0)) 
    \daddr_reg[1] 
       (.C(drpclk_in),
        .CE(di),
        .D(daddr0[1]),
        .Q(daddr[1]),
        .R(drprst_in_sync));
  FDRE #(
    .INIT(1'b0)) 
    \daddr_reg[2] 
       (.C(drpclk_in),
        .CE(di),
        .D(daddr0[2]),
        .Q(daddr[2]),
        .R(drprst_in_sync));
  FDRE #(
    .INIT(1'b0)) 
    \daddr_reg[3] 
       (.C(drpclk_in),
        .CE(di),
        .D(daddr0[3]),
        .Q(daddr[3]),
        .R(drprst_in_sync));
  FDRE #(
    .INIT(1'b0)) 
    \daddr_reg[4] 
       (.C(drpclk_in),
        .CE(di),
        .D(daddr0[4]),
        .Q(daddr[4]),
        .R(drprst_in_sync));
  FDRE #(
    .INIT(1'b0)) 
    \daddr_reg[5] 
       (.C(drpclk_in),
        .CE(di),
        .D(daddr0[5]),
        .Q(daddr[5]),
        .R(drprst_in_sync));
  FDRE #(
    .INIT(1'b0)) 
    \daddr_reg[6] 
       (.C(drpclk_in),
        .CE(di),
        .D(daddr0[6]),
        .Q(daddr[6]),
        .R(drprst_in_sync));
  FDRE #(
    .INIT(1'b0)) 
    \daddr_reg[7] 
       (.C(drpclk_in),
        .CE(di),
        .D(daddr0[7]),
        .Q(daddr[7]),
        .R(drprst_in_sync));
  FDRE #(
    .INIT(1'b0)) 
    \data_i_reg[32] 
       (.C(drpclk_in),
        .CE(cal_on_tx_drpen_out),
        .D(\data_i_reg[47]_0 [0]),
        .Q(data_i[32]),
        .R(drprst_in_sync));
  FDRE #(
    .INIT(1'b0)) 
    \data_i_reg[33] 
       (.C(drpclk_in),
        .CE(cal_on_tx_drpen_out),
        .D(\data_i_reg[47]_0 [1]),
        .Q(data_i[33]),
        .R(drprst_in_sync));
  FDRE #(
    .INIT(1'b0)) 
    \data_i_reg[34] 
       (.C(drpclk_in),
        .CE(cal_on_tx_drpen_out),
        .D(\data_i_reg[47]_0 [2]),
        .Q(data_i[34]),
        .R(drprst_in_sync));
  FDRE #(
    .INIT(1'b0)) 
    \data_i_reg[35] 
       (.C(drpclk_in),
        .CE(cal_on_tx_drpen_out),
        .D(\data_i_reg[47]_0 [3]),
        .Q(data_i[35]),
        .R(drprst_in_sync));
  FDRE #(
    .INIT(1'b0)) 
    \data_i_reg[36] 
       (.C(drpclk_in),
        .CE(cal_on_tx_drpen_out),
        .D(\data_i_reg[47]_0 [4]),
        .Q(data_i[36]),
        .R(drprst_in_sync));
  FDRE #(
    .INIT(1'b0)) 
    \data_i_reg[37] 
       (.C(drpclk_in),
        .CE(cal_on_tx_drpen_out),
        .D(\data_i_reg[47]_0 [5]),
        .Q(data_i[37]),
        .R(drprst_in_sync));
  FDRE #(
    .INIT(1'b0)) 
    \data_i_reg[38] 
       (.C(drpclk_in),
        .CE(cal_on_tx_drpen_out),
        .D(\data_i_reg[47]_0 [6]),
        .Q(data_i[38]),
        .R(drprst_in_sync));
  FDRE #(
    .INIT(1'b0)) 
    \data_i_reg[39] 
       (.C(drpclk_in),
        .CE(cal_on_tx_drpen_out),
        .D(\data_i_reg[47]_0 [7]),
        .Q(data_i[39]),
        .R(drprst_in_sync));
  FDRE #(
    .INIT(1'b0)) 
    \data_i_reg[40] 
       (.C(drpclk_in),
        .CE(cal_on_tx_drpen_out),
        .D(\data_i_reg[47]_0 [8]),
        .Q(data_i[40]),
        .R(drprst_in_sync));
  FDRE #(
    .INIT(1'b0)) 
    \data_i_reg[41] 
       (.C(drpclk_in),
        .CE(cal_on_tx_drpen_out),
        .D(\data_i_reg[47]_0 [9]),
        .Q(data_i[41]),
        .R(drprst_in_sync));
  FDRE #(
    .INIT(1'b0)) 
    \data_i_reg[42] 
       (.C(drpclk_in),
        .CE(cal_on_tx_drpen_out),
        .D(\data_i_reg[47]_0 [10]),
        .Q(data_i[42]),
        .R(drprst_in_sync));
  FDRE #(
    .INIT(1'b0)) 
    \data_i_reg[43] 
       (.C(drpclk_in),
        .CE(cal_on_tx_drpen_out),
        .D(\data_i_reg[47]_0 [11]),
        .Q(data_i[43]),
        .R(drprst_in_sync));
  FDRE #(
    .INIT(1'b0)) 
    \data_i_reg[44] 
       (.C(drpclk_in),
        .CE(cal_on_tx_drpen_out),
        .D(\data_i_reg[47]_0 [12]),
        .Q(data_i[44]),
        .R(drprst_in_sync));
  FDRE #(
    .INIT(1'b0)) 
    \data_i_reg[45] 
       (.C(drpclk_in),
        .CE(cal_on_tx_drpen_out),
        .D(\data_i_reg[47]_0 [13]),
        .Q(data_i[45]),
        .R(drprst_in_sync));
  FDRE #(
    .INIT(1'b0)) 
    \data_i_reg[46] 
       (.C(drpclk_in),
        .CE(cal_on_tx_drpen_out),
        .D(\data_i_reg[47]_0 [14]),
        .Q(data_i[46]),
        .R(drprst_in_sync));
  FDRE #(
    .INIT(1'b0)) 
    \data_i_reg[47] 
       (.C(drpclk_in),
        .CE(cal_on_tx_drpen_out),
        .D(\data_i_reg[47]_0 [15]),
        .Q(data_i[47]),
        .R(drprst_in_sync));
  (* SOFT_HLUTNM = "soft_lutpair54" *) 
  LUT2 #(
    .INIT(4'h4)) 
    \di[0]_i_1 
       (.I0(\idx_reg_n_0_[0] ),
        .I1(data_i[32]),
        .O(\di[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair49" *) 
  LUT2 #(
    .INIT(4'h4)) 
    \di[10]_i_1 
       (.I0(\idx_reg_n_0_[0] ),
        .I1(data_i[42]),
        .O(\di[10]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair49" *) 
  LUT2 #(
    .INIT(4'h4)) 
    \di[11]_i_1 
       (.I0(\idx_reg_n_0_[0] ),
        .I1(data_i[43]),
        .O(\di[11]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair48" *) 
  LUT2 #(
    .INIT(4'h4)) 
    \di[12]_i_1 
       (.I0(\idx_reg_n_0_[0] ),
        .I1(data_i[44]),
        .O(\di[12]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair48" *) 
  LUT2 #(
    .INIT(4'h4)) 
    \di[13]_i_1 
       (.I0(\idx_reg_n_0_[0] ),
        .I1(data_i[45]),
        .O(\di[13]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair47" *) 
  LUT2 #(
    .INIT(4'h4)) 
    \di[14]_i_1 
       (.I0(\idx_reg_n_0_[0] ),
        .I1(data_i[46]),
        .O(\di[14]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair47" *) 
  LUT2 #(
    .INIT(4'h4)) 
    \di[15]_i_1 
       (.I0(\idx_reg_n_0_[0] ),
        .I1(data_i[47]),
        .O(\di[15]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair54" *) 
  LUT2 #(
    .INIT(4'h4)) 
    \di[1]_i_1 
       (.I0(\idx_reg_n_0_[0] ),
        .I1(data_i[33]),
        .O(\di[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair53" *) 
  LUT2 #(
    .INIT(4'h4)) 
    \di[2]_i_1 
       (.I0(\idx_reg_n_0_[0] ),
        .I1(data_i[34]),
        .O(\di[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair53" *) 
  LUT2 #(
    .INIT(4'h4)) 
    \di[3]_i_1 
       (.I0(\idx_reg_n_0_[0] ),
        .I1(data_i[35]),
        .O(\di[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair52" *) 
  LUT2 #(
    .INIT(4'h4)) 
    \di[4]_i_1 
       (.I0(\idx_reg_n_0_[0] ),
        .I1(data_i[36]),
        .O(\di[4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair52" *) 
  LUT2 #(
    .INIT(4'h4)) 
    \di[5]_i_1 
       (.I0(\idx_reg_n_0_[0] ),
        .I1(data_i[37]),
        .O(\di[5]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair51" *) 
  LUT2 #(
    .INIT(4'h4)) 
    \di[6]_i_1 
       (.I0(\idx_reg_n_0_[0] ),
        .I1(data_i[38]),
        .O(\di[6]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair51" *) 
  LUT2 #(
    .INIT(4'h4)) 
    \di[7]_i_1 
       (.I0(\idx_reg_n_0_[0] ),
        .I1(data_i[39]),
        .O(\di[7]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair50" *) 
  LUT2 #(
    .INIT(4'h4)) 
    \di[8]_i_1 
       (.I0(\idx_reg_n_0_[0] ),
        .I1(data_i[40]),
        .O(\di[8]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair50" *) 
  LUT2 #(
    .INIT(4'h4)) 
    \di[9]_i_1 
       (.I0(\idx_reg_n_0_[0] ),
        .I1(data_i[41]),
        .O(\di[9]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \di_reg[0] 
       (.C(drpclk_in),
        .CE(di),
        .D(\di[0]_i_1_n_0 ),
        .Q(\di_reg_n_0_[0] ),
        .R(drprst_in_sync));
  FDRE #(
    .INIT(1'b0)) 
    \di_reg[10] 
       (.C(drpclk_in),
        .CE(di),
        .D(\di[10]_i_1_n_0 ),
        .Q(\di_reg_n_0_[10] ),
        .R(drprst_in_sync));
  FDRE #(
    .INIT(1'b0)) 
    \di_reg[11] 
       (.C(drpclk_in),
        .CE(di),
        .D(\di[11]_i_1_n_0 ),
        .Q(\di_reg_n_0_[11] ),
        .R(drprst_in_sync));
  FDRE #(
    .INIT(1'b0)) 
    \di_reg[12] 
       (.C(drpclk_in),
        .CE(di),
        .D(\di[12]_i_1_n_0 ),
        .Q(\di_reg_n_0_[12] ),
        .R(drprst_in_sync));
  FDRE #(
    .INIT(1'b0)) 
    \di_reg[13] 
       (.C(drpclk_in),
        .CE(di),
        .D(\di[13]_i_1_n_0 ),
        .Q(\di_reg_n_0_[13] ),
        .R(drprst_in_sync));
  FDRE #(
    .INIT(1'b0)) 
    \di_reg[14] 
       (.C(drpclk_in),
        .CE(di),
        .D(\di[14]_i_1_n_0 ),
        .Q(\di_reg_n_0_[14] ),
        .R(drprst_in_sync));
  FDRE #(
    .INIT(1'b0)) 
    \di_reg[15] 
       (.C(drpclk_in),
        .CE(di),
        .D(\di[15]_i_1_n_0 ),
        .Q(\di_reg_n_0_[15] ),
        .R(drprst_in_sync));
  FDRE #(
    .INIT(1'b0)) 
    \di_reg[1] 
       (.C(drpclk_in),
        .CE(di),
        .D(\di[1]_i_1_n_0 ),
        .Q(\di_reg_n_0_[1] ),
        .R(drprst_in_sync));
  FDRE #(
    .INIT(1'b0)) 
    \di_reg[2] 
       (.C(drpclk_in),
        .CE(di),
        .D(\di[2]_i_1_n_0 ),
        .Q(\di_reg_n_0_[2] ),
        .R(drprst_in_sync));
  FDRE #(
    .INIT(1'b0)) 
    \di_reg[3] 
       (.C(drpclk_in),
        .CE(di),
        .D(\di[3]_i_1_n_0 ),
        .Q(\di_reg_n_0_[3] ),
        .R(drprst_in_sync));
  FDRE #(
    .INIT(1'b0)) 
    \di_reg[4] 
       (.C(drpclk_in),
        .CE(di),
        .D(\di[4]_i_1_n_0 ),
        .Q(\di_reg_n_0_[4] ),
        .R(drprst_in_sync));
  FDRE #(
    .INIT(1'b0)) 
    \di_reg[5] 
       (.C(drpclk_in),
        .CE(di),
        .D(\di[5]_i_1_n_0 ),
        .Q(\di_reg_n_0_[5] ),
        .R(drprst_in_sync));
  FDRE #(
    .INIT(1'b0)) 
    \di_reg[6] 
       (.C(drpclk_in),
        .CE(di),
        .D(\di[6]_i_1_n_0 ),
        .Q(\di_reg_n_0_[6] ),
        .R(drprst_in_sync));
  FDRE #(
    .INIT(1'b0)) 
    \di_reg[7] 
       (.C(drpclk_in),
        .CE(di),
        .D(\di[7]_i_1_n_0 ),
        .Q(\di_reg_n_0_[7] ),
        .R(drprst_in_sync));
  FDRE #(
    .INIT(1'b0)) 
    \di_reg[8] 
       (.C(drpclk_in),
        .CE(di),
        .D(\di[8]_i_1_n_0 ),
        .Q(\di_reg_n_0_[8] ),
        .R(drprst_in_sync));
  FDRE #(
    .INIT(1'b0)) 
    \di_reg[9] 
       (.C(drpclk_in),
        .CE(di),
        .D(\di[9]_i_1_n_0 ),
        .Q(\di_reg_n_0_[9] ),
        .R(drprst_in_sync));
  FDRE #(
    .INIT(1'b0)) 
    \do_r_reg[0] 
       (.C(drpclk_in),
        .CE(drp_state[6]),
        .D(DO_I[0]),
        .Q(DO_USR_O0[32]),
        .R(drprst_in_sync));
  FDRE #(
    .INIT(1'b0)) 
    \do_r_reg[10] 
       (.C(drpclk_in),
        .CE(drp_state[6]),
        .D(DO_I[10]),
        .Q(DO_USR_O0[42]),
        .R(drprst_in_sync));
  FDRE #(
    .INIT(1'b0)) 
    \do_r_reg[11] 
       (.C(drpclk_in),
        .CE(drp_state[6]),
        .D(DO_I[11]),
        .Q(DO_USR_O0[43]),
        .R(drprst_in_sync));
  FDRE #(
    .INIT(1'b0)) 
    \do_r_reg[12] 
       (.C(drpclk_in),
        .CE(drp_state[6]),
        .D(DO_I[12]),
        .Q(DO_USR_O0[44]),
        .R(drprst_in_sync));
  FDRE #(
    .INIT(1'b0)) 
    \do_r_reg[13] 
       (.C(drpclk_in),
        .CE(drp_state[6]),
        .D(DO_I[13]),
        .Q(DO_USR_O0[45]),
        .R(drprst_in_sync));
  FDRE #(
    .INIT(1'b0)) 
    \do_r_reg[14] 
       (.C(drpclk_in),
        .CE(drp_state[6]),
        .D(DO_I[14]),
        .Q(DO_USR_O0[46]),
        .R(drprst_in_sync));
  FDRE #(
    .INIT(1'b0)) 
    \do_r_reg[15] 
       (.C(drpclk_in),
        .CE(drp_state[6]),
        .D(DO_I[15]),
        .Q(DO_USR_O0[47]),
        .R(drprst_in_sync));
  FDRE #(
    .INIT(1'b0)) 
    \do_r_reg[1] 
       (.C(drpclk_in),
        .CE(drp_state[6]),
        .D(DO_I[1]),
        .Q(DO_USR_O0[33]),
        .R(drprst_in_sync));
  FDRE #(
    .INIT(1'b0)) 
    \do_r_reg[2] 
       (.C(drpclk_in),
        .CE(drp_state[6]),
        .D(DO_I[2]),
        .Q(DO_USR_O0[34]),
        .R(drprst_in_sync));
  FDRE #(
    .INIT(1'b0)) 
    \do_r_reg[3] 
       (.C(drpclk_in),
        .CE(drp_state[6]),
        .D(DO_I[3]),
        .Q(DO_USR_O0[35]),
        .R(drprst_in_sync));
  FDRE #(
    .INIT(1'b0)) 
    \do_r_reg[4] 
       (.C(drpclk_in),
        .CE(drp_state[6]),
        .D(DO_I[4]),
        .Q(DO_USR_O0[36]),
        .R(drprst_in_sync));
  FDRE #(
    .INIT(1'b0)) 
    \do_r_reg[5] 
       (.C(drpclk_in),
        .CE(drp_state[6]),
        .D(DO_I[5]),
        .Q(DO_USR_O0[37]),
        .R(drprst_in_sync));
  FDRE #(
    .INIT(1'b0)) 
    \do_r_reg[6] 
       (.C(drpclk_in),
        .CE(drp_state[6]),
        .D(DO_I[6]),
        .Q(DO_USR_O0[38]),
        .R(drprst_in_sync));
  FDRE #(
    .INIT(1'b0)) 
    \do_r_reg[7] 
       (.C(drpclk_in),
        .CE(drp_state[6]),
        .D(DO_I[7]),
        .Q(DO_USR_O0[39]),
        .R(drprst_in_sync));
  FDRE #(
    .INIT(1'b0)) 
    \do_r_reg[8] 
       (.C(drpclk_in),
        .CE(drp_state[6]),
        .D(DO_I[8]),
        .Q(DO_USR_O0[40]),
        .R(drprst_in_sync));
  FDRE #(
    .INIT(1'b0)) 
    \do_r_reg[9] 
       (.C(drpclk_in),
        .CE(drp_state[6]),
        .D(DO_I[9]),
        .Q(DO_USR_O0[41]),
        .R(drprst_in_sync));
  LUT5 #(
    .INIT(32'hAAABAAA8)) 
    done_i_1
       (.I0(done_i_2_n_0),
        .I1(drp_state[6]),
        .I2(\DADDR_O[7]_i_1_n_0 ),
        .I3(done_i_3_n_0),
        .I4(done_reg_n_0),
        .O(done_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair41" *) 
  LUT4 #(
    .INIT(16'h0100)) 
    done_i_2
       (.I0(\drp_state_reg_n_0_[6] ),
        .I1(\drp_state_reg_n_0_[1] ),
        .I2(\drp_state_reg_n_0_[4] ),
        .I3(\drp_state[6]_i_3_n_0 ),
        .O(done_i_2_n_0));
  LUT6 #(
    .INIT(64'h0000000000000004)) 
    done_i_3
       (.I0(\drp_state_reg_n_0_[0] ),
        .I1(\drp_state_reg_n_0_[6] ),
        .I2(\drp_state_reg_n_0_[2] ),
        .I3(\drp_state_reg_n_0_[5] ),
        .I4(\drp_state_reg_n_0_[1] ),
        .I5(\drp_state_reg_n_0_[4] ),
        .O(done_i_3_n_0));
  FDRE #(
    .INIT(1'b0)) 
    done_reg
       (.C(drpclk_in),
        .CE(1'b1),
        .D(done_i_1_n_0),
        .Q(done_reg_n_0),
        .R(drprst_in_sync));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFEFEF8)) 
    \drp_state[0]_i_1 
       (.I0(\drp_state_reg_n_0_[4] ),
        .I1(\drp_state_reg_n_0_[1] ),
        .I2(\drp_state_reg_n_0_[6] ),
        .I3(\drp_state_reg_n_0_[2] ),
        .I4(\drp_state_reg_n_0_[5] ),
        .I5(\drp_state[0]_i_2_n_0 ),
        .O(drp_state[0]));
  LUT6 #(
    .INIT(64'hF0F0F0F0F0F0F01F)) 
    \drp_state[0]_i_2 
       (.I0(wr_reg_n_0),
        .I1(rd_reg_n_0),
        .I2(\drp_state_reg_n_0_[0] ),
        .I3(\drp_state_reg_n_0_[4] ),
        .I4(\drp_state_reg_n_0_[1] ),
        .I5(\drp_state[1]_i_2_n_0 ),
        .O(\drp_state[0]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000008)) 
    \drp_state[1]_i_1 
       (.I0(rd_reg_n_0),
        .I1(\drp_state_reg_n_0_[0] ),
        .I2(\drp_state_reg_n_0_[6] ),
        .I3(\drp_state[1]_i_2_n_0 ),
        .I4(\drp_state_reg_n_0_[1] ),
        .I5(\drp_state_reg_n_0_[4] ),
        .O(drp_state[1]));
  (* SOFT_HLUTNM = "soft_lutpair45" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \drp_state[1]_i_2 
       (.I0(\drp_state_reg_n_0_[2] ),
        .I1(\drp_state_reg_n_0_[5] ),
        .O(\drp_state[1]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h00000000000C0400)) 
    \drp_state[2]_i_1 
       (.I0(\drp_state[6]_i_3_n_0 ),
        .I1(\drp_state[5]_i_2_n_0 ),
        .I2(\drp_state_reg_n_0_[5] ),
        .I3(\drp_state_reg_n_0_[2] ),
        .I4(\drp_state_reg_n_0_[1] ),
        .I5(\drp_state_reg_n_0_[4] ),
        .O(drp_state[2]));
  (* SOFT_HLUTNM = "soft_lutpair39" *) 
  LUT5 #(
    .INIT(32'h00000020)) 
    \drp_state[4]_i_1 
       (.I0(\drp_state_reg_n_0_[0] ),
        .I1(\drp_state_reg_n_0_[6] ),
        .I2(wr_reg_n_0),
        .I3(rd_reg_n_0),
        .I4(\drp_state[4]_i_2_n_0 ),
        .O(drp_state[4]));
  (* SOFT_HLUTNM = "soft_lutpair42" *) 
  LUT4 #(
    .INIT(16'hFFFE)) 
    \drp_state[4]_i_2 
       (.I0(\drp_state_reg_n_0_[4] ),
        .I1(\drp_state_reg_n_0_[1] ),
        .I2(\drp_state_reg_n_0_[5] ),
        .I3(\drp_state_reg_n_0_[2] ),
        .O(\drp_state[4]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h00000000000C0040)) 
    \drp_state[5]_i_1 
       (.I0(\drp_state[6]_i_3_n_0 ),
        .I1(\drp_state[5]_i_2_n_0 ),
        .I2(\drp_state_reg_n_0_[5] ),
        .I3(\drp_state_reg_n_0_[2] ),
        .I4(\drp_state_reg_n_0_[4] ),
        .I5(\drp_state_reg_n_0_[1] ),
        .O(drp_state[5]));
  (* SOFT_HLUTNM = "soft_lutpair39" *) 
  LUT2 #(
    .INIT(4'h1)) 
    \drp_state[5]_i_2 
       (.I0(\drp_state_reg_n_0_[0] ),
        .I1(\drp_state_reg_n_0_[6] ),
        .O(\drp_state[5]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000000600000000)) 
    \drp_state[6]_i_1 
       (.I0(\drp_state_reg_n_0_[2] ),
        .I1(\drp_state_reg_n_0_[5] ),
        .I2(\drp_state_reg_n_0_[6] ),
        .I3(\drp_state_reg_n_0_[0] ),
        .I4(\drp_state[6]_i_2_n_0 ),
        .I5(\drp_state[6]_i_3_n_0 ),
        .O(drp_state[6]));
  (* SOFT_HLUTNM = "soft_lutpair41" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \drp_state[6]_i_2 
       (.I0(\drp_state_reg_n_0_[1] ),
        .I1(\drp_state_reg_n_0_[4] ),
        .O(\drp_state[6]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF80000000)) 
    \drp_state[6]_i_3 
       (.I0(\drp_state[6]_i_4_n_0 ),
        .I1(\timeout_cntr_reg_n_0_[7] ),
        .I2(\timeout_cntr_reg_n_0_[6] ),
        .I3(\timeout_cntr_reg_n_0_[0] ),
        .I4(\timeout_cntr_reg_n_0_[1] ),
        .I5(\gen_gtwizard_gthe4.drprdy_int ),
        .O(\drp_state[6]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'h8000)) 
    \drp_state[6]_i_4 
       (.I0(\timeout_cntr_reg_n_0_[3] ),
        .I1(\timeout_cntr_reg_n_0_[2] ),
        .I2(\timeout_cntr_reg_n_0_[5] ),
        .I3(\timeout_cntr_reg_n_0_[4] ),
        .O(\drp_state[6]_i_4_n_0 ));
  FDSE #(
    .INIT(1'b1)) 
    \drp_state_reg[0] 
       (.C(drpclk_in),
        .CE(1'b1),
        .D(drp_state[0]),
        .Q(\drp_state_reg_n_0_[0] ),
        .S(drprst_in_sync));
  FDRE #(
    .INIT(1'b0)) 
    \drp_state_reg[1] 
       (.C(drpclk_in),
        .CE(1'b1),
        .D(drp_state[1]),
        .Q(\drp_state_reg_n_0_[1] ),
        .R(drprst_in_sync));
  FDRE #(
    .INIT(1'b0)) 
    \drp_state_reg[2] 
       (.C(drpclk_in),
        .CE(1'b1),
        .D(drp_state[2]),
        .Q(\drp_state_reg_n_0_[2] ),
        .R(drprst_in_sync));
  FDRE #(
    .INIT(1'b0)) 
    \drp_state_reg[4] 
       (.C(drpclk_in),
        .CE(1'b1),
        .D(drp_state[4]),
        .Q(\drp_state_reg_n_0_[4] ),
        .R(drprst_in_sync));
  FDRE #(
    .INIT(1'b0)) 
    \drp_state_reg[5] 
       (.C(drpclk_in),
        .CE(1'b1),
        .D(drp_state[5]),
        .Q(\drp_state_reg_n_0_[5] ),
        .R(drprst_in_sync));
  FDRE #(
    .INIT(1'b0)) 
    \drp_state_reg[6] 
       (.C(drpclk_in),
        .CE(1'b1),
        .D(drp_state[6]),
        .Q(\drp_state_reg_n_0_[6] ),
        .R(drprst_in_sync));
  LUT4 #(
    .INIT(16'hAEAA)) 
    \en[2]_i_1 
       (.I0(cal_on_tx_drpen_out),
        .I1(\idx_reg_n_0_[1] ),
        .I2(\idx_reg_n_0_[0] ),
        .I3(done_reg_n_0),
        .O(we));
  (* SOFT_HLUTNM = "soft_lutpair43" *) 
  LUT4 #(
    .INIT(16'hDF00)) 
    \en[2]_i_2 
       (.I0(\idx_reg_n_0_[1] ),
        .I1(\idx_reg_n_0_[0] ),
        .I2(done_reg_n_0),
        .I3(cal_on_tx_drpen_out),
        .O(\en[2]_i_2_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \en_reg[2] 
       (.C(drpclk_in),
        .CE(we),
        .D(\en[2]_i_2_n_0 ),
        .Q(en),
        .R(drprst_in_sync));
  (* SOFT_HLUTNM = "soft_lutpair55" *) 
  LUT2 #(
    .INIT(4'h1)) 
    \idx[0]_i_1 
       (.I0(\idx_reg_n_0_[1] ),
        .I1(\idx_reg_n_0_[0] ),
        .O(\idx[0]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h0004)) 
    \idx[1]_i_1 
       (.I0(arb_state[0]),
        .I1(arb_state[3]),
        .I2(arb_state[2]),
        .I3(arb_state[1]),
        .O(CEB2));
  (* SOFT_HLUTNM = "soft_lutpair46" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \idx[1]_i_2 
       (.I0(\idx_reg_n_0_[0] ),
        .I1(\idx_reg_n_0_[1] ),
        .O(\idx[1]_i_2_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \idx_reg[0] 
       (.C(drpclk_in),
        .CE(CEB2),
        .D(\idx[0]_i_1_n_0 ),
        .Q(\idx_reg_n_0_[0] ),
        .R(drprst_in_sync));
  FDRE #(
    .INIT(1'b0)) 
    \idx_reg[1] 
       (.C(drpclk_in),
        .CE(CEB2),
        .D(\idx[1]_i_2_n_0 ),
        .Q(\idx_reg_n_0_[1] ),
        .R(drprst_in_sync));
  (* SOFT_HLUTNM = "soft_lutpair44" *) 
  LUT4 #(
    .INIT(16'h1000)) 
    rd_i_1
       (.I0(arb_state[1]),
        .I1(\we_reg_n_0_[2] ),
        .I2(\idx_reg_n_0_[1] ),
        .I3(en),
        .O(rd_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    rd_reg
       (.C(drpclk_in),
        .CE(rd),
        .D(rd_i_1_n_0),
        .Q(rd_reg_n_0),
        .R(drprst_in_sync));
  (* SOFT_HLUTNM = "soft_lutpair45" *) 
  LUT3 #(
    .INIT(8'h0E)) 
    \timeout_cntr[0]_i_1 
       (.I0(\drp_state_reg_n_0_[5] ),
        .I1(\drp_state_reg_n_0_[2] ),
        .I2(\timeout_cntr_reg_n_0_[0] ),
        .O(timeout_cntr[0]));
  (* SOFT_HLUTNM = "soft_lutpair40" *) 
  LUT4 #(
    .INIT(16'h0EE0)) 
    \timeout_cntr[1]_i_1 
       (.I0(\drp_state_reg_n_0_[2] ),
        .I1(\drp_state_reg_n_0_[5] ),
        .I2(\timeout_cntr_reg_n_0_[0] ),
        .I3(\timeout_cntr_reg_n_0_[1] ),
        .O(timeout_cntr[1]));
  (* SOFT_HLUTNM = "soft_lutpair40" *) 
  LUT5 #(
    .INIT(32'h77708880)) 
    \timeout_cntr[2]_i_1 
       (.I0(\timeout_cntr_reg_n_0_[1] ),
        .I1(\timeout_cntr_reg_n_0_[0] ),
        .I2(\drp_state_reg_n_0_[5] ),
        .I3(\drp_state_reg_n_0_[2] ),
        .I4(\timeout_cntr_reg_n_0_[2] ),
        .O(timeout_cntr[2]));
  LUT6 #(
    .INIT(64'h7F7F7F0080808000)) 
    \timeout_cntr[3]_i_1 
       (.I0(\timeout_cntr_reg_n_0_[2] ),
        .I1(\timeout_cntr_reg_n_0_[0] ),
        .I2(\timeout_cntr_reg_n_0_[1] ),
        .I3(\drp_state_reg_n_0_[5] ),
        .I4(\drp_state_reg_n_0_[2] ),
        .I5(\timeout_cntr_reg_n_0_[3] ),
        .O(timeout_cntr[3]));
  LUT6 #(
    .INIT(64'h7FFF000080000000)) 
    \timeout_cntr[4]_i_1 
       (.I0(\timeout_cntr_reg_n_0_[1] ),
        .I1(\timeout_cntr_reg_n_0_[0] ),
        .I2(\timeout_cntr_reg_n_0_[2] ),
        .I3(\timeout_cntr_reg_n_0_[3] ),
        .I4(\drp_state[1]_i_2_n_0 ),
        .I5(\timeout_cntr_reg_n_0_[4] ),
        .O(timeout_cntr[4]));
  LUT6 #(
    .INIT(64'hFF7F000000800000)) 
    \timeout_cntr[5]_i_1 
       (.I0(\timeout_cntr_reg_n_0_[4] ),
        .I1(\timeout_cntr_reg_n_0_[3] ),
        .I2(\timeout_cntr_reg_n_0_[2] ),
        .I3(\timeout_cntr[5]_i_2_n_0 ),
        .I4(\drp_state[1]_i_2_n_0 ),
        .I5(\timeout_cntr_reg_n_0_[5] ),
        .O(timeout_cntr[5]));
  LUT2 #(
    .INIT(4'h7)) 
    \timeout_cntr[5]_i_2 
       (.I0(\timeout_cntr_reg_n_0_[1] ),
        .I1(\timeout_cntr_reg_n_0_[0] ),
        .O(\timeout_cntr[5]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair38" *) 
  LUT4 #(
    .INIT(16'hA854)) 
    \timeout_cntr[6]_i_1 
       (.I0(\timeout_cntr[7]_i_4_n_0 ),
        .I1(\drp_state_reg_n_0_[5] ),
        .I2(\drp_state_reg_n_0_[2] ),
        .I3(\timeout_cntr_reg_n_0_[6] ),
        .O(timeout_cntr[6]));
  LUT5 #(
    .INIT(32'h0000055C)) 
    \timeout_cntr[7]_i_1 
       (.I0(\drp_state[4]_i_2_n_0 ),
        .I1(\timeout_cntr[7]_i_3_n_0 ),
        .I2(\drp_state_reg_n_0_[6] ),
        .I3(\drp_state_reg_n_0_[0] ),
        .I4(drprst_in_sync),
        .O(\timeout_cntr[7]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair38" *) 
  LUT5 #(
    .INIT(32'hE00EE0E0)) 
    \timeout_cntr[7]_i_2 
       (.I0(\drp_state_reg_n_0_[5] ),
        .I1(\drp_state_reg_n_0_[2] ),
        .I2(\timeout_cntr_reg_n_0_[7] ),
        .I3(\timeout_cntr[7]_i_4_n_0 ),
        .I4(\timeout_cntr_reg_n_0_[6] ),
        .O(timeout_cntr[7]));
  (* SOFT_HLUTNM = "soft_lutpair42" *) 
  LUT4 #(
    .INIT(16'h0116)) 
    \timeout_cntr[7]_i_3 
       (.I0(\drp_state_reg_n_0_[2] ),
        .I1(\drp_state_reg_n_0_[5] ),
        .I2(\drp_state_reg_n_0_[1] ),
        .I3(\drp_state_reg_n_0_[4] ),
        .O(\timeout_cntr[7]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h7FFFFFFFFFFFFFFF)) 
    \timeout_cntr[7]_i_4 
       (.I0(\timeout_cntr_reg_n_0_[1] ),
        .I1(\timeout_cntr_reg_n_0_[0] ),
        .I2(\timeout_cntr_reg_n_0_[2] ),
        .I3(\timeout_cntr_reg_n_0_[3] ),
        .I4(\timeout_cntr_reg_n_0_[4] ),
        .I5(\timeout_cntr_reg_n_0_[5] ),
        .O(\timeout_cntr[7]_i_4_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \timeout_cntr_reg[0] 
       (.C(drpclk_in),
        .CE(\timeout_cntr[7]_i_1_n_0 ),
        .D(timeout_cntr[0]),
        .Q(\timeout_cntr_reg_n_0_[0] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \timeout_cntr_reg[1] 
       (.C(drpclk_in),
        .CE(\timeout_cntr[7]_i_1_n_0 ),
        .D(timeout_cntr[1]),
        .Q(\timeout_cntr_reg_n_0_[1] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \timeout_cntr_reg[2] 
       (.C(drpclk_in),
        .CE(\timeout_cntr[7]_i_1_n_0 ),
        .D(timeout_cntr[2]),
        .Q(\timeout_cntr_reg_n_0_[2] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \timeout_cntr_reg[3] 
       (.C(drpclk_in),
        .CE(\timeout_cntr[7]_i_1_n_0 ),
        .D(timeout_cntr[3]),
        .Q(\timeout_cntr_reg_n_0_[3] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \timeout_cntr_reg[4] 
       (.C(drpclk_in),
        .CE(\timeout_cntr[7]_i_1_n_0 ),
        .D(timeout_cntr[4]),
        .Q(\timeout_cntr_reg_n_0_[4] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \timeout_cntr_reg[5] 
       (.C(drpclk_in),
        .CE(\timeout_cntr[7]_i_1_n_0 ),
        .D(timeout_cntr[5]),
        .Q(\timeout_cntr_reg_n_0_[5] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \timeout_cntr_reg[6] 
       (.C(drpclk_in),
        .CE(\timeout_cntr[7]_i_1_n_0 ),
        .D(timeout_cntr[6]),
        .Q(\timeout_cntr_reg_n_0_[6] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \timeout_cntr_reg[7] 
       (.C(drpclk_in),
        .CE(\timeout_cntr[7]_i_1_n_0 ),
        .D(timeout_cntr[7]),
        .Q(\timeout_cntr_reg_n_0_[7] ),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair43" *) 
  LUT4 #(
    .INIT(16'hDF00)) 
    \we[2]_i_1 
       (.I0(\idx_reg_n_0_[1] ),
        .I1(\idx_reg_n_0_[0] ),
        .I2(done_reg_n_0),
        .I3(cal_on_tx_drpwe_out),
        .O(\we[2]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \we_reg[2] 
       (.C(drpclk_in),
        .CE(we),
        .D(\we[2]_i_1_n_0 ),
        .Q(\we_reg_n_0_[2] ),
        .R(drprst_in_sync));
  LUT4 #(
    .INIT(16'h0012)) 
    wr_i_1
       (.I0(arb_state[1]),
        .I1(arb_state[2]),
        .I2(arb_state[0]),
        .I3(arb_state[3]),
        .O(rd));
  (* SOFT_HLUTNM = "soft_lutpair44" *) 
  LUT4 #(
    .INIT(16'h4000)) 
    wr_i_2
       (.I0(arb_state[1]),
        .I1(\we_reg_n_0_[2] ),
        .I2(\idx_reg_n_0_[1] ),
        .I3(en),
        .O(wr));
  FDRE #(
    .INIT(1'b0)) 
    wr_reg
       (.C(drpclk_in),
        .CE(rd),
        .D(wr),
        .Q(wr_reg_n_0),
        .R(drprst_in_sync));
endmodule

(* ORIG_REF_NAME = "gtwizard_ultrascale_v1_7_13_gthe4_channel" *) 
module PCS_PMA_gtwizard_ultrascale_v1_7_13_gthe4_channel
   (in0,
    \gen_gtwizard_gthe4.drprdy_int ,
    gthtxn_out,
    gthtxp_out,
    \gen_gtwizard_gthe4.gtpowergood_int ,
    rxcdrlock_out,
    rxoutclk_out,
    rxoutclkpcs_out,
    gtwiz_userclk_rx_active_out,
    rxresetdone_out,
    txoutclk_out,
    \gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_0 ,
    txresetdone_out,
    gtwiz_userdata_rx_out,
    D,
    rxctrl0_out,
    rxctrl1_out,
    rxclkcorcnt_out,
    txbufstatus_out,
    rxbufstatus_out,
    rxctrl2_out,
    rxctrl3_out,
    \gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_1 ,
    \gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_2 ,
    \gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_3 ,
    drpclk_in,
    DEN_O,
    DWE_O,
    gthrxn_in,
    gthrxp_in,
    gtrefclk0_in,
    \gen_gtwizard_gthe4.delay_pwrgood_gtrxreset_int ,
    \gen_gtwizard_gthe4.gttxreset_int ,
    rxmcommaalignen_in,
    \gen_gtwizard_gthe4.rxprogdivreset_int ,
    RXRATE,
    \gen_gtwizard_gthe4.rxuserrdy_int ,
    rxusrclk_in,
    txelecidle_in,
    \gen_gtwizard_gthe4.txprogdivreset_ch_int ,
    \gen_gtwizard_gthe4.txuserrdy_int ,
    gtwiz_userdata_tx_in,
    Q,
    txctrl0_in,
    txctrl1_in,
    RXPD,
    \gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_4 ,
    txctrl2_in,
    \gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_5 ,
    lopt,
    lopt_1,
    lopt_2,
    lopt_3,
    lopt_4,
    lopt_5);
  output in0;
  output \gen_gtwizard_gthe4.drprdy_int ;
  output [0:0]gthtxn_out;
  output [0:0]gthtxp_out;
  output \gen_gtwizard_gthe4.gtpowergood_int ;
  output [0:0]rxcdrlock_out;
  output [0:0]rxoutclk_out;
  output [0:0]rxoutclkpcs_out;
  output [0:0]gtwiz_userclk_rx_active_out;
  output [0:0]rxresetdone_out;
  output [0:0]txoutclk_out;
  output \gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_0 ;
  output [0:0]txresetdone_out;
  output [15:0]gtwiz_userdata_rx_out;
  output [15:0]D;
  output [1:0]rxctrl0_out;
  output [1:0]rxctrl1_out;
  output [1:0]rxclkcorcnt_out;
  output [0:0]txbufstatus_out;
  output [0:0]rxbufstatus_out;
  output [1:0]rxctrl2_out;
  output [1:0]rxctrl3_out;
  output \gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_1 ;
  input \gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_2 ;
  input \gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_3 ;
  input [0:0]drpclk_in;
  input DEN_O;
  input DWE_O;
  input [0:0]gthrxn_in;
  input [0:0]gthrxp_in;
  input [0:0]gtrefclk0_in;
  input \gen_gtwizard_gthe4.delay_pwrgood_gtrxreset_int ;
  input \gen_gtwizard_gthe4.gttxreset_int ;
  input [0:0]rxmcommaalignen_in;
  input \gen_gtwizard_gthe4.rxprogdivreset_int ;
  input [0:0]RXRATE;
  input \gen_gtwizard_gthe4.rxuserrdy_int ;
  input [0:0]rxusrclk_in;
  input [0:0]txelecidle_in;
  input \gen_gtwizard_gthe4.txprogdivreset_ch_int ;
  input \gen_gtwizard_gthe4.txuserrdy_int ;
  input [15:0]gtwiz_userdata_tx_in;
  input [15:0]Q;
  input [1:0]txctrl0_in;
  input [1:0]txctrl1_in;
  input [0:0]RXPD;
  input [2:0]\gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_4 ;
  input [1:0]txctrl2_in;
  input [6:0]\gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_5 ;
  input lopt;
  input lopt_1;
  output lopt_2;
  output lopt_3;
  output lopt_4;
  output lopt_5;

  wire [15:0]D;
  wire DEN_O;
  wire DWE_O;
  wire [15:0]Q;
  wire [0:0]RXPD;
  wire [0:0]RXRATE;
  wire [0:0]drpclk_in;
  wire \gen_gtwizard_gthe4.delay_pwrgood_gtrxreset_int ;
  wire \gen_gtwizard_gthe4.drprdy_int ;
  wire \gen_gtwizard_gthe4.gtpowergood_int ;
  wire \gen_gtwizard_gthe4.gttxreset_int ;
  wire \gen_gtwizard_gthe4.rxprogdivreset_int ;
  wire \gen_gtwizard_gthe4.rxuserrdy_int ;
  wire \gen_gtwizard_gthe4.txprogdivreset_ch_int ;
  wire \gen_gtwizard_gthe4.txuserrdy_int ;
  wire \gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_0 ;
  wire \gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_1 ;
  wire \gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_2 ;
  wire \gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_3 ;
  wire [2:0]\gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_4 ;
  wire [6:0]\gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_5 ;
  wire \gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_n_0 ;
  wire \gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_n_1 ;
  wire \gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_n_100 ;
  wire \gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_n_101 ;
  wire \gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_n_102 ;
  wire \gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_n_103 ;
  wire \gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_n_104 ;
  wire \gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_n_105 ;
  wire \gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_n_106 ;
  wire \gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_n_107 ;
  wire \gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_n_108 ;
  wire \gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_n_109 ;
  wire \gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_n_11 ;
  wire \gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_n_110 ;
  wire \gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_n_111 ;
  wire \gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_n_112 ;
  wire \gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_n_113 ;
  wire \gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_n_114 ;
  wire \gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_n_115 ;
  wire \gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_n_116 ;
  wire \gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_n_117 ;
  wire \gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_n_118 ;
  wire \gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_n_119 ;
  wire \gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_n_12 ;
  wire \gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_n_120 ;
  wire \gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_n_121 ;
  wire \gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_n_122 ;
  wire \gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_n_123 ;
  wire \gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_n_124 ;
  wire \gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_n_125 ;
  wire \gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_n_126 ;
  wire \gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_n_127 ;
  wire \gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_n_128 ;
  wire \gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_n_129 ;
  wire \gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_n_13 ;
  wire \gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_n_130 ;
  wire \gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_n_131 ;
  wire \gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_n_132 ;
  wire \gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_n_133 ;
  wire \gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_n_134 ;
  wire \gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_n_135 ;
  wire \gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_n_136 ;
  wire \gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_n_137 ;
  wire \gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_n_138 ;
  wire \gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_n_139 ;
  wire \gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_n_14 ;
  wire \gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_n_140 ;
  wire \gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_n_141 ;
  wire \gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_n_142 ;
  wire \gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_n_143 ;
  wire \gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_n_144 ;
  wire \gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_n_145 ;
  wire \gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_n_146 ;
  wire \gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_n_147 ;
  wire \gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_n_148 ;
  wire \gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_n_149 ;
  wire \gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_n_15 ;
  wire \gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_n_150 ;
  wire \gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_n_151 ;
  wire \gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_n_152 ;
  wire \gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_n_153 ;
  wire \gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_n_154 ;
  wire \gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_n_155 ;
  wire \gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_n_156 ;
  wire \gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_n_157 ;
  wire \gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_n_158 ;
  wire \gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_n_159 ;
  wire \gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_n_16 ;
  wire \gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_n_160 ;
  wire \gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_n_161 ;
  wire \gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_n_162 ;
  wire \gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_n_163 ;
  wire \gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_n_164 ;
  wire \gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_n_165 ;
  wire \gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_n_166 ;
  wire \gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_n_167 ;
  wire \gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_n_168 ;
  wire \gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_n_169 ;
  wire \gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_n_17 ;
  wire \gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_n_170 ;
  wire \gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_n_171 ;
  wire \gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_n_172 ;
  wire \gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_n_173 ;
  wire \gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_n_174 ;
  wire \gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_n_175 ;
  wire \gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_n_176 ;
  wire \gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_n_177 ;
  wire \gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_n_178 ;
  wire \gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_n_179 ;
  wire \gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_n_18 ;
  wire \gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_n_180 ;
  wire \gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_n_181 ;
  wire \gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_n_182 ;
  wire \gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_n_183 ;
  wire \gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_n_184 ;
  wire \gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_n_185 ;
  wire \gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_n_186 ;
  wire \gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_n_187 ;
  wire \gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_n_188 ;
  wire \gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_n_189 ;
  wire \gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_n_19 ;
  wire \gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_n_190 ;
  wire \gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_n_2 ;
  wire \gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_n_20 ;
  wire \gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_n_207 ;
  wire \gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_n_208 ;
  wire \gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_n_209 ;
  wire \gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_n_21 ;
  wire \gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_n_210 ;
  wire \gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_n_211 ;
  wire \gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_n_212 ;
  wire \gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_n_213 ;
  wire \gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_n_214 ;
  wire \gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_n_215 ;
  wire \gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_n_216 ;
  wire \gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_n_217 ;
  wire \gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_n_218 ;
  wire \gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_n_219 ;
  wire \gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_n_22 ;
  wire \gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_n_220 ;
  wire \gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_n_221 ;
  wire \gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_n_222 ;
  wire \gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_n_239 ;
  wire \gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_n_24 ;
  wire \gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_n_240 ;
  wire \gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_n_241 ;
  wire \gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_n_242 ;
  wire \gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_n_243 ;
  wire \gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_n_244 ;
  wire \gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_n_245 ;
  wire \gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_n_246 ;
  wire \gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_n_247 ;
  wire \gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_n_248 ;
  wire \gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_n_249 ;
  wire \gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_n_25 ;
  wire \gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_n_250 ;
  wire \gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_n_251 ;
  wire \gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_n_252 ;
  wire \gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_n_253 ;
  wire \gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_n_254 ;
  wire \gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_n_255 ;
  wire \gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_n_256 ;
  wire \gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_n_257 ;
  wire \gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_n_258 ;
  wire \gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_n_259 ;
  wire \gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_n_26 ;
  wire \gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_n_260 ;
  wire \gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_n_261 ;
  wire \gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_n_262 ;
  wire \gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_n_263 ;
  wire \gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_n_264 ;
  wire \gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_n_265 ;
  wire \gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_n_266 ;
  wire \gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_n_267 ;
  wire \gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_n_268 ;
  wire \gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_n_269 ;
  wire \gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_n_27 ;
  wire \gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_n_270 ;
  wire \gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_n_271 ;
  wire \gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_n_272 ;
  wire \gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_n_273 ;
  wire \gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_n_274 ;
  wire \gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_n_275 ;
  wire \gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_n_276 ;
  wire \gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_n_277 ;
  wire \gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_n_278 ;
  wire \gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_n_279 ;
  wire \gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_n_28 ;
  wire \gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_n_280 ;
  wire \gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_n_281 ;
  wire \gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_n_282 ;
  wire \gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_n_283 ;
  wire \gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_n_284 ;
  wire \gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_n_287 ;
  wire \gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_n_288 ;
  wire \gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_n_289 ;
  wire \gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_n_29 ;
  wire \gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_n_290 ;
  wire \gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_n_291 ;
  wire \gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_n_292 ;
  wire \gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_n_293 ;
  wire \gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_n_294 ;
  wire \gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_n_295 ;
  wire \gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_n_296 ;
  wire \gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_n_297 ;
  wire \gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_n_298 ;
  wire \gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_n_299 ;
  wire \gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_n_30 ;
  wire \gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_n_300 ;
  wire \gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_n_303 ;
  wire \gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_n_304 ;
  wire \gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_n_305 ;
  wire \gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_n_306 ;
  wire \gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_n_309 ;
  wire \gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_n_31 ;
  wire \gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_n_310 ;
  wire \gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_n_311 ;
  wire \gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_n_312 ;
  wire \gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_n_313 ;
  wire \gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_n_314 ;
  wire \gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_n_316 ;
  wire \gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_n_317 ;
  wire \gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_n_318 ;
  wire \gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_n_319 ;
  wire \gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_n_32 ;
  wire \gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_n_320 ;
  wire \gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_n_321 ;
  wire \gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_n_322 ;
  wire \gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_n_324 ;
  wire \gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_n_325 ;
  wire \gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_n_326 ;
  wire \gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_n_327 ;
  wire \gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_n_328 ;
  wire \gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_n_329 ;
  wire \gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_n_33 ;
  wire \gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_n_330 ;
  wire \gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_n_331 ;
  wire \gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_n_332 ;
  wire \gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_n_333 ;
  wire \gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_n_334 ;
  wire \gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_n_335 ;
  wire \gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_n_336 ;
  wire \gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_n_337 ;
  wire \gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_n_338 ;
  wire \gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_n_339 ;
  wire \gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_n_34 ;
  wire \gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_n_340 ;
  wire \gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_n_341 ;
  wire \gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_n_342 ;
  wire \gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_n_343 ;
  wire \gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_n_344 ;
  wire \gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_n_345 ;
  wire \gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_n_348 ;
  wire \gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_n_349 ;
  wire \gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_n_35 ;
  wire \gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_n_350 ;
  wire \gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_n_351 ;
  wire \gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_n_352 ;
  wire \gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_n_353 ;
  wire \gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_n_356 ;
  wire \gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_n_357 ;
  wire \gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_n_358 ;
  wire \gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_n_359 ;
  wire \gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_n_36 ;
  wire \gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_n_360 ;
  wire \gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_n_361 ;
  wire \gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_n_362 ;
  wire \gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_n_363 ;
  wire \gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_n_364 ;
  wire \gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_n_365 ;
  wire \gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_n_366 ;
  wire \gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_n_367 ;
  wire \gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_n_368 ;
  wire \gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_n_369 ;
  wire \gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_n_37 ;
  wire \gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_n_370 ;
  wire \gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_n_371 ;
  wire \gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_n_372 ;
  wire \gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_n_373 ;
  wire \gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_n_374 ;
  wire \gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_n_375 ;
  wire \gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_n_376 ;
  wire \gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_n_377 ;
  wire \gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_n_378 ;
  wire \gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_n_379 ;
  wire \gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_n_38 ;
  wire \gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_n_380 ;
  wire \gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_n_39 ;
  wire \gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_n_4 ;
  wire \gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_n_40 ;
  wire \gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_n_41 ;
  wire \gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_n_43 ;
  wire \gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_n_45 ;
  wire \gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_n_46 ;
  wire \gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_n_48 ;
  wire \gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_n_49 ;
  wire \gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_n_5 ;
  wire \gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_n_50 ;
  wire \gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_n_51 ;
  wire \gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_n_52 ;
  wire \gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_n_53 ;
  wire \gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_n_54 ;
  wire \gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_n_56 ;
  wire \gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_n_57 ;
  wire \gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_n_58 ;
  wire \gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_n_59 ;
  wire \gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_n_60 ;
  wire \gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_n_61 ;
  wire \gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_n_62 ;
  wire \gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_n_63 ;
  wire \gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_n_64 ;
  wire \gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_n_65 ;
  wire \gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_n_67 ;
  wire \gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_n_68 ;
  wire \gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_n_69 ;
  wire \gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_n_7 ;
  wire \gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_n_70 ;
  wire \gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_n_71 ;
  wire \gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_n_73 ;
  wire \gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_n_74 ;
  wire \gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_n_75 ;
  wire \gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_n_77 ;
  wire \gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_n_78 ;
  wire \gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_n_79 ;
  wire \gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_n_80 ;
  wire \gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_n_81 ;
  wire \gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_n_82 ;
  wire \gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_n_83 ;
  wire \gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_n_84 ;
  wire \gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_n_85 ;
  wire \gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_n_86 ;
  wire \gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_n_87 ;
  wire \gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_n_88 ;
  wire \gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_n_89 ;
  wire \gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_n_90 ;
  wire \gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_n_91 ;
  wire \gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_n_92 ;
  wire \gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_n_93 ;
  wire \gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_n_94 ;
  wire \gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_n_95 ;
  wire \gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_n_96 ;
  wire \gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_n_97 ;
  wire \gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_n_98 ;
  wire \gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_n_99 ;
  wire [0:0]gthrxn_in;
  wire [0:0]gthrxp_in;
  wire [0:0]gthtxn_out;
  wire [0:0]gthtxp_out;
  wire [0:0]gtrefclk0_in;
  wire [0:0]gtwiz_userclk_rx_active_out;
  wire [15:0]gtwiz_userdata_rx_out;
  wire [15:0]gtwiz_userdata_tx_in;
  wire in0;
  wire lopt;
  wire lopt_1;
  wire [0:0]rxbufstatus_out;
  wire [0:0]rxcdrlock_out;
  wire [1:0]rxclkcorcnt_out;
  wire [1:0]rxctrl0_out;
  wire [1:0]rxctrl1_out;
  wire [1:0]rxctrl2_out;
  wire [1:0]rxctrl3_out;
  wire [0:0]rxmcommaalignen_in;
  wire [0:0]rxoutclk_out;
  wire [0:0]rxoutclkpcs_out;
  wire [0:0]rxresetdone_out;
  wire [0:0]rxusrclk_in;
  wire [0:0]txbufstatus_out;
  wire [1:0]txctrl0_in;
  wire [1:0]txctrl1_in;
  wire [1:0]txctrl2_in;
  wire [0:0]txelecidle_in;
  wire [0:0]txoutclk_out;
  wire [0:0]txresetdone_out;
  wire xlnx_opt_;
  wire xlnx_opt__1;
  wire xlnx_opt__2;
  wire xlnx_opt__3;

  assign lopt_2 = xlnx_opt_;
  assign lopt_3 = xlnx_opt__1;
  assign lopt_4 = xlnx_opt__2;
  assign lopt_5 = xlnx_opt__3;
  (* OPT_MODIFIED = "MLO" *) 
  BUFG_GT_SYNC BUFG_GT_SYNC
       (.CE(lopt),
        .CESYNC(xlnx_opt_),
        .CLK(rxoutclk_out),
        .CLR(lopt_1),
        .CLRSYNC(xlnx_opt__1));
  (* OPT_MODIFIED = "MLO" *) 
  BUFG_GT_SYNC BUFG_GT_SYNC_1
       (.CE(lopt),
        .CESYNC(xlnx_opt__2),
        .CLK(txoutclk_out),
        .CLR(lopt_1),
        .CLRSYNC(xlnx_opt__3));
  LUT1 #(
    .INIT(2'h1)) 
    \gen_powergood_delay.intclk_rrst_n_r[4]_i_2 
       (.I0(\gen_gtwizard_gthe4.gtpowergood_int ),
        .O(\gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_1 ));
  (* box_type = "PRIMITIVE" *) 
  GTHE4_CHANNEL #(
    .ACJTAG_DEBUG_MODE(1'b0),
    .ACJTAG_MODE(1'b0),
    .ACJTAG_RESET(1'b0),
    .ADAPT_CFG0(16'h1000),
    .ADAPT_CFG1(16'hC800),
    .ADAPT_CFG2(16'h0000),
    .ALIGN_COMMA_DOUBLE("FALSE"),
    .ALIGN_COMMA_ENABLE(10'b1111111111),
    .ALIGN_COMMA_WORD(2),
    .ALIGN_MCOMMA_DET("TRUE"),
    .ALIGN_MCOMMA_VALUE(10'b1010000011),
    .ALIGN_PCOMMA_DET("TRUE"),
    .ALIGN_PCOMMA_VALUE(10'b0101111100),
    .A_RXOSCALRESET(1'b0),
    .A_RXPROGDIVRESET(1'b0),
    .A_RXTERMINATION(1'b1),
    .A_TXDIFFCTRL(5'b01100),
    .A_TXPROGDIVRESET(1'b0),
    .CAPBYPASS_FORCE(1'b0),
    .CBCC_DATA_SOURCE_SEL("DECODED"),
    .CDR_SWAP_MODE_EN(1'b0),
    .CFOK_PWRSVE_EN(1'b1),
    .CHAN_BOND_KEEP_ALIGN("FALSE"),
    .CHAN_BOND_MAX_SKEW(1),
    .CHAN_BOND_SEQ_1_1(10'b0000000000),
    .CHAN_BOND_SEQ_1_2(10'b0000000000),
    .CHAN_BOND_SEQ_1_3(10'b0000000000),
    .CHAN_BOND_SEQ_1_4(10'b0000000000),
    .CHAN_BOND_SEQ_1_ENABLE(4'b1111),
    .CHAN_BOND_SEQ_2_1(10'b0000000000),
    .CHAN_BOND_SEQ_2_2(10'b0000000000),
    .CHAN_BOND_SEQ_2_3(10'b0000000000),
    .CHAN_BOND_SEQ_2_4(10'b0000000000),
    .CHAN_BOND_SEQ_2_ENABLE(4'b1111),
    .CHAN_BOND_SEQ_2_USE("FALSE"),
    .CHAN_BOND_SEQ_LEN(1),
    .CH_HSPMUX(16'h3C3C),
    .CKCAL1_CFG_0(16'b1100000011000000),
    .CKCAL1_CFG_1(16'b0101000011000000),
    .CKCAL1_CFG_2(16'b0000000000001010),
    .CKCAL1_CFG_3(16'b0000000000000000),
    .CKCAL2_CFG_0(16'b1100000011000000),
    .CKCAL2_CFG_1(16'b1000000011000000),
    .CKCAL2_CFG_2(16'b0000000000000000),
    .CKCAL2_CFG_3(16'b0000000000000000),
    .CKCAL2_CFG_4(16'b0000000000000000),
    .CKCAL_RSVD0(16'h0080),
    .CKCAL_RSVD1(16'h0400),
    .CLK_CORRECT_USE("TRUE"),
    .CLK_COR_KEEP_IDLE("FALSE"),
    .CLK_COR_MAX_LAT(15),
    .CLK_COR_MIN_LAT(12),
    .CLK_COR_PRECEDENCE("TRUE"),
    .CLK_COR_REPEAT_WAIT(0),
    .CLK_COR_SEQ_1_1(10'b0110111100),
    .CLK_COR_SEQ_1_2(10'b0001010000),
    .CLK_COR_SEQ_1_3(10'b0000000000),
    .CLK_COR_SEQ_1_4(10'b0000000000),
    .CLK_COR_SEQ_1_ENABLE(4'b1111),
    .CLK_COR_SEQ_2_1(10'b0110111100),
    .CLK_COR_SEQ_2_2(10'b0010110101),
    .CLK_COR_SEQ_2_3(10'b0000000000),
    .CLK_COR_SEQ_2_4(10'b0000000000),
    .CLK_COR_SEQ_2_ENABLE(4'b1111),
    .CLK_COR_SEQ_2_USE("TRUE"),
    .CLK_COR_SEQ_LEN(2),
    .CPLL_CFG0(16'h01FA),
    .CPLL_CFG1(16'h0023),
    .CPLL_CFG2(16'h0002),
    .CPLL_CFG3(16'h0000),
    .CPLL_FBDIV(4),
    .CPLL_FBDIV_45(4),
    .CPLL_INIT_CFG0(16'h02B2),
    .CPLL_LOCK_CFG(16'h01E8),
    .CPLL_REFCLK_DIV(1),
    .CTLE3_OCAP_EXT_CTRL(3'b000),
    .CTLE3_OCAP_EXT_EN(1'b0),
    .DDI_CTRL(2'b00),
    .DDI_REALIGN_WAIT(15),
    .DEC_MCOMMA_DETECT("TRUE"),
    .DEC_PCOMMA_DETECT("TRUE"),
    .DEC_VALID_COMMA_ONLY("FALSE"),
    .DELAY_ELEC(1'b0),
    .DMONITOR_CFG0(10'h000),
    .DMONITOR_CFG1(8'h00),
    .ES_CLK_PHASE_SEL(1'b0),
    .ES_CONTROL(6'b000000),
    .ES_ERRDET_EN("FALSE"),
    .ES_EYE_SCAN_EN("FALSE"),
    .ES_HORZ_OFFSET(12'h000),
    .ES_PRESCALE(5'b00000),
    .ES_QUALIFIER0(16'h0000),
    .ES_QUALIFIER1(16'h0000),
    .ES_QUALIFIER2(16'h0000),
    .ES_QUALIFIER3(16'h0000),
    .ES_QUALIFIER4(16'h0000),
    .ES_QUALIFIER5(16'h0000),
    .ES_QUALIFIER6(16'h0000),
    .ES_QUALIFIER7(16'h0000),
    .ES_QUALIFIER8(16'h0000),
    .ES_QUALIFIER9(16'h0000),
    .ES_QUAL_MASK0(16'h0000),
    .ES_QUAL_MASK1(16'h0000),
    .ES_QUAL_MASK2(16'h0000),
    .ES_QUAL_MASK3(16'h0000),
    .ES_QUAL_MASK4(16'h0000),
    .ES_QUAL_MASK5(16'h0000),
    .ES_QUAL_MASK6(16'h0000),
    .ES_QUAL_MASK7(16'h0000),
    .ES_QUAL_MASK8(16'h0000),
    .ES_QUAL_MASK9(16'h0000),
    .ES_SDATA_MASK0(16'h0000),
    .ES_SDATA_MASK1(16'h0000),
    .ES_SDATA_MASK2(16'h0000),
    .ES_SDATA_MASK3(16'h0000),
    .ES_SDATA_MASK4(16'h0000),
    .ES_SDATA_MASK5(16'h0000),
    .ES_SDATA_MASK6(16'h0000),
    .ES_SDATA_MASK7(16'h0000),
    .ES_SDATA_MASK8(16'h0000),
    .ES_SDATA_MASK9(16'h0000),
    .EYE_SCAN_SWAP_EN(1'b0),
    .FTS_DESKEW_SEQ_ENABLE(4'b1111),
    .FTS_LANE_DESKEW_CFG(4'b1111),
    .FTS_LANE_DESKEW_EN("FALSE"),
    .GEARBOX_MODE(5'b00000),
    .ISCAN_CK_PH_SEL2(1'b0),
    .LOCAL_MASTER(1'b1),
    .LPBK_BIAS_CTRL(3'b100),
    .LPBK_EN_RCAL_B(1'b0),
    .LPBK_EXT_RCAL(4'b1000),
    .LPBK_IND_CTRL0(3'b000),
    .LPBK_IND_CTRL1(3'b000),
    .LPBK_IND_CTRL2(3'b000),
    .LPBK_RG_CTRL(4'b1110),
    .OOBDIVCTL(2'b00),
    .OOB_PWRUP(1'b0),
    .PCI3_AUTO_REALIGN("OVR_1K_BLK"),
    .PCI3_PIPE_RX_ELECIDLE(1'b0),
    .PCI3_RX_ASYNC_EBUF_BYPASS(2'b00),
    .PCI3_RX_ELECIDLE_EI2_ENABLE(1'b0),
    .PCI3_RX_ELECIDLE_H2L_COUNT(6'b000000),
    .PCI3_RX_ELECIDLE_H2L_DISABLE(3'b000),
    .PCI3_RX_ELECIDLE_HI_COUNT(6'b000000),
    .PCI3_RX_ELECIDLE_LP4_DISABLE(1'b0),
    .PCI3_RX_FIFO_DISABLE(1'b0),
    .PCIE3_CLK_COR_EMPTY_THRSH(5'b00000),
    .PCIE3_CLK_COR_FULL_THRSH(6'b010000),
    .PCIE3_CLK_COR_MAX_LAT(5'b00100),
    .PCIE3_CLK_COR_MIN_LAT(5'b00000),
    .PCIE3_CLK_COR_THRSH_TIMER(6'b001000),
    .PCIE_BUFG_DIV_CTRL(16'h1000),
    .PCIE_PLL_SEL_MODE_GEN12(2'h0),
    .PCIE_PLL_SEL_MODE_GEN3(2'h3),
    .PCIE_PLL_SEL_MODE_GEN4(2'h2),
    .PCIE_RXPCS_CFG_GEN3(16'h0AA5),
    .PCIE_RXPMA_CFG(16'h280A),
    .PCIE_TXPCS_CFG_GEN3(16'h2CA4),
    .PCIE_TXPMA_CFG(16'h280A),
    .PCS_PCIE_EN("FALSE"),
    .PCS_RSVD0(16'b0000000000000000),
    .PD_TRANS_TIME_FROM_P2(12'h03C),
    .PD_TRANS_TIME_NONE_P2(8'h19),
    .PD_TRANS_TIME_TO_P2(8'h64),
    .PREIQ_FREQ_BST(0),
    .PROCESS_PAR(3'b010),
    .RATE_SW_USE_DRP(1'b1),
    .RCLK_SIPO_DLY_ENB(1'b0),
    .RCLK_SIPO_INV_EN(1'b0),
    .RESET_POWERSAVE_DISABLE(1'b0),
    .RTX_BUF_CML_CTRL(3'b010),
    .RTX_BUF_TERM_CTRL(2'b00),
    .RXBUFRESET_TIME(5'b00011),
    .RXBUF_ADDR_MODE("FULL"),
    .RXBUF_EIDLE_HI_CNT(4'b1000),
    .RXBUF_EIDLE_LO_CNT(4'b0000),
    .RXBUF_EN("TRUE"),
    .RXBUF_RESET_ON_CB_CHANGE("TRUE"),
    .RXBUF_RESET_ON_COMMAALIGN("FALSE"),
    .RXBUF_RESET_ON_EIDLE("FALSE"),
    .RXBUF_RESET_ON_RATE_CHANGE("TRUE"),
    .RXBUF_THRESH_OVFLW(0),
    .RXBUF_THRESH_OVRD("FALSE"),
    .RXBUF_THRESH_UNDFLW(4),
    .RXCDRFREQRESET_TIME(5'b00001),
    .RXCDRPHRESET_TIME(5'b00001),
    .RXCDR_CFG0(16'h0003),
    .RXCDR_CFG0_GEN3(16'h0003),
    .RXCDR_CFG1(16'h0000),
    .RXCDR_CFG1_GEN3(16'h0000),
    .RXCDR_CFG2(16'h0249),
    .RXCDR_CFG2_GEN2(10'h249),
    .RXCDR_CFG2_GEN3(16'h0249),
    .RXCDR_CFG2_GEN4(16'h0164),
    .RXCDR_CFG3(16'h0012),
    .RXCDR_CFG3_GEN2(6'h12),
    .RXCDR_CFG3_GEN3(16'h0012),
    .RXCDR_CFG3_GEN4(16'h0012),
    .RXCDR_CFG4(16'h5CF6),
    .RXCDR_CFG4_GEN3(16'h5CF6),
    .RXCDR_CFG5(16'hB46B),
    .RXCDR_CFG5_GEN3(16'h146B),
    .RXCDR_FR_RESET_ON_EIDLE(1'b0),
    .RXCDR_HOLD_DURING_EIDLE(1'b0),
    .RXCDR_LOCK_CFG0(16'h2201),
    .RXCDR_LOCK_CFG1(16'h9FFF),
    .RXCDR_LOCK_CFG2(16'h77C3),
    .RXCDR_LOCK_CFG3(16'h0001),
    .RXCDR_LOCK_CFG4(16'h0000),
    .RXCDR_PH_RESET_ON_EIDLE(1'b0),
    .RXCFOK_CFG0(16'h0000),
    .RXCFOK_CFG1(16'h8015),
    .RXCFOK_CFG2(16'h02AE),
    .RXCKCAL1_IQ_LOOP_RST_CFG(16'h0004),
    .RXCKCAL1_I_LOOP_RST_CFG(16'h0004),
    .RXCKCAL1_Q_LOOP_RST_CFG(16'h0004),
    .RXCKCAL2_DX_LOOP_RST_CFG(16'h0004),
    .RXCKCAL2_D_LOOP_RST_CFG(16'h0004),
    .RXCKCAL2_S_LOOP_RST_CFG(16'h0004),
    .RXCKCAL2_X_LOOP_RST_CFG(16'h0004),
    .RXDFELPMRESET_TIME(7'b0001111),
    .RXDFELPM_KL_CFG0(16'h0000),
    .RXDFELPM_KL_CFG1(16'hA0E2),
    .RXDFELPM_KL_CFG2(16'h0100),
    .RXDFE_CFG0(16'h0A00),
    .RXDFE_CFG1(16'h0000),
    .RXDFE_GC_CFG0(16'h0000),
    .RXDFE_GC_CFG1(16'h8000),
    .RXDFE_GC_CFG2(16'hFFE0),
    .RXDFE_H2_CFG0(16'h0000),
    .RXDFE_H2_CFG1(16'h0002),
    .RXDFE_H3_CFG0(16'h0000),
    .RXDFE_H3_CFG1(16'h8002),
    .RXDFE_H4_CFG0(16'h0000),
    .RXDFE_H4_CFG1(16'h8002),
    .RXDFE_H5_CFG0(16'h0000),
    .RXDFE_H5_CFG1(16'h8002),
    .RXDFE_H6_CFG0(16'h0000),
    .RXDFE_H6_CFG1(16'h8002),
    .RXDFE_H7_CFG0(16'h0000),
    .RXDFE_H7_CFG1(16'h8002),
    .RXDFE_H8_CFG0(16'h0000),
    .RXDFE_H8_CFG1(16'h8002),
    .RXDFE_H9_CFG0(16'h0000),
    .RXDFE_H9_CFG1(16'h8002),
    .RXDFE_HA_CFG0(16'h0000),
    .RXDFE_HA_CFG1(16'h8002),
    .RXDFE_HB_CFG0(16'h0000),
    .RXDFE_HB_CFG1(16'h8002),
    .RXDFE_HC_CFG0(16'h0000),
    .RXDFE_HC_CFG1(16'h8002),
    .RXDFE_HD_CFG0(16'h0000),
    .RXDFE_HD_CFG1(16'h8002),
    .RXDFE_HE_CFG0(16'h0000),
    .RXDFE_HE_CFG1(16'h8002),
    .RXDFE_HF_CFG0(16'h0000),
    .RXDFE_HF_CFG1(16'h8002),
    .RXDFE_KH_CFG0(16'h0000),
    .RXDFE_KH_CFG1(16'h8000),
    .RXDFE_KH_CFG2(16'h2613),
    .RXDFE_KH_CFG3(16'h411C),
    .RXDFE_OS_CFG0(16'h0000),
    .RXDFE_OS_CFG1(16'h8002),
    .RXDFE_PWR_SAVING(1'b1),
    .RXDFE_UT_CFG0(16'h0000),
    .RXDFE_UT_CFG1(16'h0003),
    .RXDFE_UT_CFG2(16'h0000),
    .RXDFE_VP_CFG0(16'h0000),
    .RXDFE_VP_CFG1(16'h8033),
    .RXDLY_CFG(16'h0010),
    .RXDLY_LCFG(16'h0030),
    .RXELECIDLE_CFG("SIGCFG_4"),
    .RXGBOX_FIFO_INIT_RD_ADDR(4),
    .RXGEARBOX_EN("FALSE"),
    .RXISCANRESET_TIME(5'b00001),
    .RXLPM_CFG(16'h0000),
    .RXLPM_GC_CFG(16'h8000),
    .RXLPM_KH_CFG0(16'h0000),
    .RXLPM_KH_CFG1(16'h0002),
    .RXLPM_OS_CFG0(16'h0000),
    .RXLPM_OS_CFG1(16'h8002),
    .RXOOB_CFG(9'b000000110),
    .RXOOB_CLK_CFG("PMA"),
    .RXOSCALRESET_TIME(5'b00011),
    .RXOUT_DIV(4),
    .RXPCSRESET_TIME(5'b00011),
    .RXPHBEACON_CFG(16'h0000),
    .RXPHDLY_CFG(16'h2070),
    .RXPHSAMP_CFG(16'h2100),
    .RXPHSLIP_CFG(16'h9933),
    .RXPH_MONITOR_SEL(5'b00000),
    .RXPI_AUTO_BW_SEL_BYPASS(1'b0),
    .RXPI_CFG0(16'h1300),
    .RXPI_CFG1(16'b0000000011111101),
    .RXPI_LPM(1'b0),
    .RXPI_SEL_LC(2'b00),
    .RXPI_STARTCODE(2'b00),
    .RXPI_VREFSEL(1'b0),
    .RXPMACLK_SEL("DATA"),
    .RXPMARESET_TIME(5'b00011),
    .RXPRBS_ERR_LOOPBACK(1'b0),
    .RXPRBS_LINKACQ_CNT(15),
    .RXREFCLKDIV2_SEL(1'b0),
    .RXSLIDE_AUTO_WAIT(7),
    .RXSLIDE_MODE("OFF"),
    .RXSYNC_MULTILANE(1'b0),
    .RXSYNC_OVRD(1'b0),
    .RXSYNC_SKIP_DA(1'b1),
    .RX_AFE_CM_EN(1'b0),
    .RX_BIAS_CFG0(16'h1554),
    .RX_BUFFER_CFG(6'b000000),
    .RX_CAPFF_SARC_ENB(1'b0),
    .RX_CLK25_DIV(7),
    .RX_CLKMUX_EN(1'b1),
    .RX_CLK_SLIP_OVRD(5'b00000),
    .RX_CM_BUF_CFG(4'b1010),
    .RX_CM_BUF_PD(1'b0),
    .RX_CM_SEL(3),
    .RX_CM_TRIM(10),
    .RX_CTLE3_LPF(8'b11111111),
    .RX_DATA_WIDTH(20),
    .RX_DDI_SEL(6'b000000),
    .RX_DEFER_RESET_BUF_EN("TRUE"),
    .RX_DEGEN_CTRL(3'b011),
    .RX_DFELPM_CFG0(6),
    .RX_DFELPM_CFG1(1'b1),
    .RX_DFELPM_KLKH_AGC_STUP_EN(1'b1),
    .RX_DFE_AGC_CFG0(2'b10),
    .RX_DFE_AGC_CFG1(4),
    .RX_DFE_KL_LPM_KH_CFG0(1),
    .RX_DFE_KL_LPM_KH_CFG1(4),
    .RX_DFE_KL_LPM_KL_CFG0(2'b01),
    .RX_DFE_KL_LPM_KL_CFG1(4),
    .RX_DFE_LPM_HOLD_DURING_EIDLE(1'b0),
    .RX_DISPERR_SEQ_MATCH("TRUE"),
    .RX_DIV2_MODE_B(1'b0),
    .RX_DIVRESET_TIME(5'b00001),
    .RX_EN_CTLE_RCAL_B(1'b0),
    .RX_EN_HI_LR(1'b1),
    .RX_EXT_RL_CTRL(9'b000000000),
    .RX_EYESCAN_VS_CODE(7'b0000000),
    .RX_EYESCAN_VS_NEG_DIR(1'b0),
    .RX_EYESCAN_VS_RANGE(2'b00),
    .RX_EYESCAN_VS_UT_SIGN(1'b0),
    .RX_FABINT_USRCLK_FLOP(1'b0),
    .RX_INT_DATAWIDTH(0),
    .RX_PMA_POWER_SAVE(1'b0),
    .RX_PMA_RSV0(16'h0000),
    .RX_PROGDIV_CFG(0.000000),
    .RX_PROGDIV_RATE(16'h0001),
    .RX_RESLOAD_CTRL(4'b0000),
    .RX_RESLOAD_OVRD(1'b0),
    .RX_SAMPLE_PERIOD(3'b111),
    .RX_SIG_VALID_DLY(11),
    .RX_SUM_DFETAPREP_EN(1'b0),
    .RX_SUM_IREF_TUNE(4'b0100),
    .RX_SUM_RESLOAD_CTRL(4'b0011),
    .RX_SUM_VCMTUNE(4'b0110),
    .RX_SUM_VCM_OVWR(1'b0),
    .RX_SUM_VREF_TUNE(3'b100),
    .RX_TUNE_AFE_OS(2'b00),
    .RX_VREG_CTRL(3'b101),
    .RX_VREG_PDB(1'b1),
    .RX_WIDEMODE_CDR(2'b00),
    .RX_WIDEMODE_CDR_GEN3(2'b00),
    .RX_WIDEMODE_CDR_GEN4(2'b01),
    .RX_XCLK_SEL("RXDES"),
    .RX_XMODE_SEL(1'b0),
    .SAMPLE_CLK_PHASE(1'b0),
    .SAS_12G_MODE(1'b0),
    .SATA_BURST_SEQ_LEN(4'b1111),
    .SATA_BURST_VAL(3'b100),
    .SATA_CPLL_CFG("VCO_3000MHZ"),
    .SATA_EIDLE_VAL(3'b100),
    .SHOW_REALIGN_COMMA("TRUE"),
    .SIM_DEVICE("ULTRASCALE_PLUS"),
    .SIM_MODE("FAST"),
    .SIM_RECEIVER_DETECT_PASS("TRUE"),
    .SIM_RESET_SPEEDUP("TRUE"),
    .SIM_TX_EIDLE_DRIVE_LEVEL("Z"),
    .SRSTMODE(1'b0),
    .TAPDLY_SET_TX(2'h0),
    .TEMPERATURE_PAR(4'b0010),
    .TERM_RCAL_CFG(15'b100001000010001),
    .TERM_RCAL_OVRD(3'b000),
    .TRANS_TIME_RATE(8'h0E),
    .TST_RSV0(8'h00),
    .TST_RSV1(8'h00),
    .TXBUF_EN("TRUE"),
    .TXBUF_RESET_ON_RATE_CHANGE("TRUE"),
    .TXDLY_CFG(16'h8010),
    .TXDLY_LCFG(16'h0030),
    .TXDRVBIAS_N(4'b1010),
    .TXFIFO_ADDR_CFG("LOW"),
    .TXGBOX_FIFO_INIT_RD_ADDR(4),
    .TXGEARBOX_EN("FALSE"),
    .TXOUT_DIV(4),
    .TXPCSRESET_TIME(5'b00011),
    .TXPHDLY_CFG0(16'h6070),
    .TXPHDLY_CFG1(16'h000F),
    .TXPH_CFG(16'h0723),
    .TXPH_CFG2(16'h0000),
    .TXPH_MONITOR_SEL(5'b00000),
    .TXPI_CFG(16'h03DF),
    .TXPI_CFG0(2'b00),
    .TXPI_CFG1(2'b00),
    .TXPI_CFG2(2'b00),
    .TXPI_CFG3(1'b1),
    .TXPI_CFG4(1'b1),
    .TXPI_CFG5(3'b000),
    .TXPI_GRAY_SEL(1'b0),
    .TXPI_INVSTROBE_SEL(1'b0),
    .TXPI_LPM(1'b0),
    .TXPI_PPM(1'b0),
    .TXPI_PPMCLK_SEL("TXUSRCLK2"),
    .TXPI_PPM_CFG(8'b00000000),
    .TXPI_SYNFREQ_PPM(3'b001),
    .TXPI_VREFSEL(1'b0),
    .TXPMARESET_TIME(5'b00011),
    .TXREFCLKDIV2_SEL(1'b0),
    .TXSYNC_MULTILANE(1'b0),
    .TXSYNC_OVRD(1'b0),
    .TXSYNC_SKIP_DA(1'b0),
    .TX_CLK25_DIV(7),
    .TX_CLKMUX_EN(1'b1),
    .TX_DATA_WIDTH(20),
    .TX_DCC_LOOP_RST_CFG(16'h0004),
    .TX_DEEMPH0(6'b000000),
    .TX_DEEMPH1(6'b000000),
    .TX_DEEMPH2(6'b000000),
    .TX_DEEMPH3(6'b000000),
    .TX_DIVRESET_TIME(5'b00001),
    .TX_DRIVE_MODE("DIRECT"),
    .TX_DRVMUX_CTRL(2),
    .TX_EIDLE_ASSERT_DELAY(3'b100),
    .TX_EIDLE_DEASSERT_DELAY(3'b011),
    .TX_FABINT_USRCLK_FLOP(1'b0),
    .TX_FIFO_BYP_EN(1'b0),
    .TX_IDLE_DATA_ZERO(1'b0),
    .TX_INT_DATAWIDTH(0),
    .TX_LOOPBACK_DRIVE_HIZ("FALSE"),
    .TX_MAINCURSOR_SEL(1'b0),
    .TX_MARGIN_FULL_0(7'b1011111),
    .TX_MARGIN_FULL_1(7'b1011110),
    .TX_MARGIN_FULL_2(7'b1011100),
    .TX_MARGIN_FULL_3(7'b1011010),
    .TX_MARGIN_FULL_4(7'b1011000),
    .TX_MARGIN_LOW_0(7'b1000110),
    .TX_MARGIN_LOW_1(7'b1000101),
    .TX_MARGIN_LOW_2(7'b1000011),
    .TX_MARGIN_LOW_3(7'b1000010),
    .TX_MARGIN_LOW_4(7'b1000000),
    .TX_PHICAL_CFG0(16'h0000),
    .TX_PHICAL_CFG1(16'h7E00),
    .TX_PHICAL_CFG2(16'h0201),
    .TX_PI_BIASSET(0),
    .TX_PI_IBIAS_MID(2'b00),
    .TX_PMADATA_OPT(1'b0),
    .TX_PMA_POWER_SAVE(1'b0),
    .TX_PMA_RSV0(16'h0008),
    .TX_PREDRV_CTRL(2),
    .TX_PROGCLK_SEL("CPLL"),
    .TX_PROGDIV_CFG(20.000000),
    .TX_PROGDIV_RATE(16'h0001),
    .TX_QPI_STATUS_EN(1'b0),
    .TX_RXDETECT_CFG(14'h0032),
    .TX_RXDETECT_REF(4),
    .TX_SAMPLE_PERIOD(3'b111),
    .TX_SARC_LPBK_ENB(1'b0),
    .TX_SW_MEAS(2'b00),
    .TX_VREG_CTRL(3'b000),
    .TX_VREG_PDB(1'b0),
    .TX_VREG_VREFSEL(2'b00),
    .TX_XCLK_SEL("TXOUT"),
    .USB_BOTH_BURST_IDLE(1'b0),
    .USB_BURSTMAX_U3WAKE(7'b1111111),
    .USB_BURSTMIN_U3WAKE(7'b1100011),
    .USB_CLK_COR_EQ_EN(1'b0),
    .USB_EXT_CNTL(1'b1),
    .USB_IDLEMAX_POLLING(10'b1010111011),
    .USB_IDLEMIN_POLLING(10'b0100101011),
    .USB_LFPSPING_BURST(9'b000000101),
    .USB_LFPSPOLLING_BURST(9'b000110001),
    .USB_LFPSPOLLING_IDLE_MS(9'b000000100),
    .USB_LFPSU1EXIT_BURST(9'b000011101),
    .USB_LFPSU2LPEXIT_BURST_MS(9'b001100011),
    .USB_LFPSU3WAKE_BURST_MS(9'b111110011),
    .USB_LFPS_TPERIOD(4'b0011),
    .USB_LFPS_TPERIOD_ACCURATE(1'b1),
    .USB_MODE(1'b0),
    .USB_PCIE_ERR_REP_DIS(1'b0),
    .USB_PING_SATA_MAX_INIT(21),
    .USB_PING_SATA_MIN_INIT(12),
    .USB_POLL_SATA_MAX_BURST(8),
    .USB_POLL_SATA_MIN_BURST(4),
    .USB_RAW_ELEC(1'b0),
    .USB_RXIDLE_P0_CTRL(1'b1),
    .USB_TXIDLE_TUNE_ENABLE(1'b1),
    .USB_U1_SATA_MAX_WAKE(7),
    .USB_U1_SATA_MIN_WAKE(4),
    .USB_U2_SAS_MAX_COM(64),
    .USB_U2_SAS_MIN_COM(36),
    .USE_PCS_CLK_PHASE_SEL(1'b0),
    .Y_ALL_MODE(1'b0)) 
    \gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST 
       (.BUFGTCE(\gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_n_0 ),
        .BUFGTCEMASK({\gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_n_317 ,\gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_n_318 ,\gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_n_319 }),
        .BUFGTDIV({\gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_n_372 ,\gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_n_373 ,\gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_n_374 ,\gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_n_375 ,\gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_n_376 ,\gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_n_377 ,\gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_n_378 ,\gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_n_379 ,\gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_n_380 }),
        .BUFGTRESET(\gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_n_1 ),
        .BUFGTRSTMASK({\gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_n_320 ,\gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_n_321 ,\gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_n_322 }),
        .CDRSTEPDIR(1'b0),
        .CDRSTEPSQ(1'b0),
        .CDRSTEPSX(1'b0),
        .CFGRESET(1'b0),
        .CLKRSVD0(1'b0),
        .CLKRSVD1(1'b0),
        .CPLLFBCLKLOST(\gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_n_2 ),
        .CPLLFREQLOCK(1'b0),
        .CPLLLOCK(in0),
        .CPLLLOCKDETCLK(1'b0),
        .CPLLLOCKEN(1'b1),
        .CPLLPD(\gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_2 ),
        .CPLLREFCLKLOST(\gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_n_4 ),
        .CPLLREFCLKSEL({1'b0,1'b0,1'b1}),
        .CPLLRESET(\gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_3 ),
        .DMONFIFORESET(1'b0),
        .DMONITORCLK(1'b0),
        .DMONITOROUT({\gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_n_207 ,\gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_n_208 ,\gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_n_209 ,\gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_n_210 ,\gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_n_211 ,\gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_n_212 ,\gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_n_213 ,\gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_n_214 ,\gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_n_215 ,\gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_n_216 ,\gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_n_217 ,\gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_n_218 ,\gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_n_219 ,\gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_n_220 ,\gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_n_221 ,\gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_n_222 }),
        .DMONITOROUTCLK(\gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_n_5 ),
        .DRPADDR({1'b0,1'b0,\gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_5 ,\gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_5 [5]}),
        .DRPCLK(drpclk_in),
        .DRPDI(Q),
        .DRPDO(D),
        .DRPEN(DEN_O),
        .DRPRDY(\gen_gtwizard_gthe4.drprdy_int ),
        .DRPRST(1'b0),
        .DRPWE(DWE_O),
        .EYESCANDATAERROR(\gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_n_7 ),
        .EYESCANRESET(1'b0),
        .EYESCANTRIGGER(1'b0),
        .FREQOS(1'b0),
        .GTGREFCLK(1'b0),
        .GTHRXN(gthrxn_in),
        .GTHRXP(gthrxp_in),
        .GTHTXN(gthtxn_out),
        .GTHTXP(gthtxp_out),
        .GTNORTHREFCLK0(1'b0),
        .GTNORTHREFCLK1(1'b0),
        .GTPOWERGOOD(\gen_gtwizard_gthe4.gtpowergood_int ),
        .GTREFCLK0(gtrefclk0_in),
        .GTREFCLK1(1'b0),
        .GTREFCLKMONITOR(\gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_n_11 ),
        .GTRSVD({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .GTRXRESET(\gen_gtwizard_gthe4.delay_pwrgood_gtrxreset_int ),
        .GTRXRESETSEL(1'b0),
        .GTSOUTHREFCLK0(1'b0),
        .GTSOUTHREFCLK1(1'b0),
        .GTTXRESET(\gen_gtwizard_gthe4.gttxreset_int ),
        .GTTXRESETSEL(1'b0),
        .INCPCTRL(1'b0),
        .LOOPBACK({1'b0,1'b0,1'b0}),
        .PCIEEQRXEQADAPTDONE(1'b0),
        .PCIERATEGEN3(\gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_n_12 ),
        .PCIERATEIDLE(\gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_n_13 ),
        .PCIERATEQPLLPD({\gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_n_303 ,\gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_n_304 }),
        .PCIERATEQPLLRESET({\gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_n_305 ,\gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_n_306 }),
        .PCIERSTIDLE(1'b0),
        .PCIERSTTXSYNCSTART(1'b0),
        .PCIESYNCTXSYNCDONE(\gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_n_14 ),
        .PCIEUSERGEN3RDY(\gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_n_15 ),
        .PCIEUSERPHYSTATUSRST(\gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_n_16 ),
        .PCIEUSERRATEDONE(1'b0),
        .PCIEUSERRATESTART(\gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_n_17 ),
        .PCSRSVDIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .PCSRSVDOUT({\gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_n_239 ,\gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_n_240 ,\gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_n_241 ,\gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_n_242 ,\gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_n_243 ,\gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_n_244 ,\gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_n_245 ,\gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_n_246 ,\gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_n_247 ,\gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_n_248 ,\gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_n_249 ,\gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_n_250 ,\gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_n_251 ,\gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_n_252 ,\gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_n_253 ,\gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_n_254 }),
        .PHYSTATUS(\gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_n_18 ),
        .PINRSRVDAS({\gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_n_255 ,\gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_n_256 ,\gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_n_257 ,\gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_n_258 ,\gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_n_259 ,\gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_n_260 ,\gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_n_261 ,\gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_n_262 ,\gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_n_263 ,\gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_n_264 ,\gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_n_265 ,\gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_n_266 ,\gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_n_267 ,\gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_n_268 ,\gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_n_269 ,\gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_n_270 }),
        .POWERPRESENT(\gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_n_19 ),
        .QPLL0CLK(1'b0),
        .QPLL0FREQLOCK(1'b0),
        .QPLL0REFCLK(1'b0),
        .QPLL1CLK(1'b0),
        .QPLL1FREQLOCK(1'b0),
        .QPLL1REFCLK(1'b0),
        .RESETEXCEPTION(\gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_n_20 ),
        .RESETOVRD(1'b0),
        .RX8B10BEN(1'b1),
        .RXAFECFOKEN(1'b1),
        .RXBUFRESET(1'b0),
        .RXBUFSTATUS({rxbufstatus_out,\gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_n_324 ,\gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_n_325 }),
        .RXBYTEISALIGNED(\gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_n_21 ),
        .RXBYTEREALIGN(\gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_n_22 ),
        .RXCDRFREQRESET(1'b0),
        .RXCDRHOLD(1'b0),
        .RXCDRLOCK(rxcdrlock_out),
        .RXCDROVRDEN(1'b0),
        .RXCDRPHDONE(\gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_n_24 ),
        .RXCDRRESET(1'b0),
        .RXCHANBONDSEQ(\gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_n_25 ),
        .RXCHANISALIGNED(\gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_n_26 ),
        .RXCHANREALIGN(\gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_n_27 ),
        .RXCHBONDEN(1'b0),
        .RXCHBONDI({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .RXCHBONDLEVEL({1'b0,1'b0,1'b0}),
        .RXCHBONDMASTER(1'b0),
        .RXCHBONDO({\gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_n_329 ,\gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_n_330 ,\gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_n_331 ,\gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_n_332 ,\gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_n_333 }),
        .RXCHBONDSLAVE(1'b0),
        .RXCKCALDONE(\gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_n_28 ),
        .RXCKCALRESET(1'b0),
        .RXCKCALSTART({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .RXCLKCORCNT(rxclkcorcnt_out),
        .RXCOMINITDET(\gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_n_29 ),
        .RXCOMMADET(\gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_n_30 ),
        .RXCOMMADETEN(1'b1),
        .RXCOMSASDET(\gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_n_31 ),
        .RXCOMWAKEDET(\gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_n_32 ),
        .RXCTRL0({\gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_n_271 ,\gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_n_272 ,\gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_n_273 ,\gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_n_274 ,\gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_n_275 ,\gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_n_276 ,\gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_n_277 ,\gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_n_278 ,\gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_n_279 ,\gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_n_280 ,\gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_n_281 ,\gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_n_282 ,\gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_n_283 ,\gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_n_284 ,rxctrl0_out}),
        .RXCTRL1({\gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_n_287 ,\gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_n_288 ,\gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_n_289 ,\gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_n_290 ,\gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_n_291 ,\gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_n_292 ,\gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_n_293 ,\gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_n_294 ,\gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_n_295 ,\gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_n_296 ,\gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_n_297 ,\gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_n_298 ,\gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_n_299 ,\gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_n_300 ,rxctrl1_out}),
        .RXCTRL2({\gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_n_340 ,\gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_n_341 ,\gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_n_342 ,\gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_n_343 ,\gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_n_344 ,\gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_n_345 ,rxctrl2_out}),
        .RXCTRL3({\gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_n_348 ,\gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_n_349 ,\gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_n_350 ,\gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_n_351 ,\gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_n_352 ,\gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_n_353 ,rxctrl3_out}),
        .RXDATA({\gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_n_79 ,\gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_n_80 ,\gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_n_81 ,\gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_n_82 ,\gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_n_83 ,\gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_n_84 ,\gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_n_85 ,\gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_n_86 ,\gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_n_87 ,\gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_n_88 ,\gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_n_89 ,\gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_n_90 ,\gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_n_91 ,\gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_n_92 ,\gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_n_93 ,\gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_n_94 ,\gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_n_95 ,\gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_n_96 ,\gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_n_97 ,\gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_n_98 ,\gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_n_99 ,\gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_n_100 ,\gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_n_101 ,\gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_n_102 ,\gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_n_103 ,\gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_n_104 ,\gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_n_105 ,\gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_n_106 ,\gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_n_107 ,\gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_n_108 ,\gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_n_109 ,\gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_n_110 ,\gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_n_111 ,\gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_n_112 ,\gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_n_113 ,\gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_n_114 ,\gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_n_115 ,\gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_n_116 ,\gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_n_117 ,\gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_n_118 ,\gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_n_119 ,\gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_n_120 ,\gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_n_121 ,\gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_n_122 ,\gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_n_123 ,\gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_n_124 ,\gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_n_125 ,\gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_n_126 ,\gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_n_127 ,\gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_n_128 ,\gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_n_129 ,\gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_n_130 ,\gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_n_131 ,\gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_n_132 ,\gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_n_133 ,\gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_n_134 ,\gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_n_135 ,\gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_n_136 ,\gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_n_137 ,\gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_n_138 ,\gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_n_139 ,\gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_n_140 ,\gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_n_141 ,\gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_n_142 ,\gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_n_143 ,\gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_n_144 ,\gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_n_145 ,\gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_n_146 ,\gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_n_147 ,\gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_n_148 ,\gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_n_149 ,\gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_n_150 ,\gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_n_151 ,\gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_n_152 ,\gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_n_153 ,\gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_n_154 ,\gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_n_155 ,\gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_n_156 ,\gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_n_157 ,\gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_n_158 ,\gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_n_159 ,\gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_n_160 ,\gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_n_161 ,\gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_n_162 ,\gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_n_163 ,\gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_n_164 ,\gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_n_165 ,\gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_n_166 ,\gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_n_167 ,\gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_n_168 ,\gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_n_169 ,\gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_n_170 ,\gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_n_171 ,\gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_n_172 ,\gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_n_173 ,\gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_n_174 ,\gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_n_175 ,\gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_n_176 ,\gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_n_177 ,\gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_n_178 ,\gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_n_179 ,\gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_n_180 ,\gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_n_181 ,\gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_n_182 ,\gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_n_183 ,\gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_n_184 ,\gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_n_185 ,\gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_n_186 ,\gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_n_187 ,\gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_n_188 ,\gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_n_189 ,\gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_n_190 ,gtwiz_userdata_rx_out}),
        .RXDATAEXTENDRSVD({\gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_n_356 ,\gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_n_357 ,\gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_n_358 ,\gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_n_359 ,\gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_n_360 ,\gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_n_361 ,\gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_n_362 ,\gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_n_363 }),
        .RXDATAVALID({\gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_n_309 ,\gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_n_310 }),
        .RXDFEAGCCTRL({1'b0,1'b1}),
        .RXDFEAGCHOLD(1'b0),
        .RXDFEAGCOVRDEN(1'b0),
        .RXDFECFOKFCNUM({1'b1,1'b1,1'b0,1'b1}),
        .RXDFECFOKFEN(1'b0),
        .RXDFECFOKFPULSE(1'b0),
        .RXDFECFOKHOLD(1'b0),
        .RXDFECFOKOVREN(1'b0),
        .RXDFEKHHOLD(1'b0),
        .RXDFEKHOVRDEN(1'b0),
        .RXDFELFHOLD(1'b0),
        .RXDFELFOVRDEN(1'b0),
        .RXDFELPMRESET(1'b0),
        .RXDFETAP10HOLD(1'b0),
        .RXDFETAP10OVRDEN(1'b0),
        .RXDFETAP11HOLD(1'b0),
        .RXDFETAP11OVRDEN(1'b0),
        .RXDFETAP12HOLD(1'b0),
        .RXDFETAP12OVRDEN(1'b0),
        .RXDFETAP13HOLD(1'b0),
        .RXDFETAP13OVRDEN(1'b0),
        .RXDFETAP14HOLD(1'b0),
        .RXDFETAP14OVRDEN(1'b0),
        .RXDFETAP15HOLD(1'b0),
        .RXDFETAP15OVRDEN(1'b0),
        .RXDFETAP2HOLD(1'b0),
        .RXDFETAP2OVRDEN(1'b0),
        .RXDFETAP3HOLD(1'b0),
        .RXDFETAP3OVRDEN(1'b0),
        .RXDFETAP4HOLD(1'b0),
        .RXDFETAP4OVRDEN(1'b0),
        .RXDFETAP5HOLD(1'b0),
        .RXDFETAP5OVRDEN(1'b0),
        .RXDFETAP6HOLD(1'b0),
        .RXDFETAP6OVRDEN(1'b0),
        .RXDFETAP7HOLD(1'b0),
        .RXDFETAP7OVRDEN(1'b0),
        .RXDFETAP8HOLD(1'b0),
        .RXDFETAP8OVRDEN(1'b0),
        .RXDFETAP9HOLD(1'b0),
        .RXDFETAP9OVRDEN(1'b0),
        .RXDFEUTHOLD(1'b0),
        .RXDFEUTOVRDEN(1'b0),
        .RXDFEVPHOLD(1'b0),
        .RXDFEVPOVRDEN(1'b0),
        .RXDFEXYDEN(1'b1),
        .RXDLYBYPASS(1'b1),
        .RXDLYEN(1'b0),
        .RXDLYOVRDEN(1'b0),
        .RXDLYSRESET(1'b0),
        .RXDLYSRESETDONE(\gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_n_33 ),
        .RXELECIDLE(\gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_n_34 ),
        .RXELECIDLEMODE({1'b1,1'b1}),
        .RXEQTRAINING(1'b0),
        .RXGEARBOXSLIP(1'b0),
        .RXHEADER({\gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_n_334 ,\gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_n_335 ,\gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_n_336 ,\gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_n_337 ,\gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_n_338 ,\gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_n_339 }),
        .RXHEADERVALID({\gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_n_311 ,\gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_n_312 }),
        .RXLATCLK(1'b0),
        .RXLFPSTRESETDET(\gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_n_35 ),
        .RXLFPSU2LPEXITDET(\gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_n_36 ),
        .RXLFPSU3WAKEDET(\gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_n_37 ),
        .RXLPMEN(1'b1),
        .RXLPMGCHOLD(1'b0),
        .RXLPMGCOVRDEN(1'b0),
        .RXLPMHFHOLD(1'b0),
        .RXLPMHFOVRDEN(1'b0),
        .RXLPMLFHOLD(1'b0),
        .RXLPMLFKLOVRDEN(1'b0),
        .RXLPMOSHOLD(1'b0),
        .RXLPMOSOVRDEN(1'b0),
        .RXMCOMMAALIGNEN(rxmcommaalignen_in),
        .RXMONITOROUT({\gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_n_364 ,\gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_n_365 ,\gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_n_366 ,\gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_n_367 ,\gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_n_368 ,\gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_n_369 ,\gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_n_370 ,\gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_n_371 }),
        .RXMONITORSEL({1'b0,1'b0}),
        .RXOOBRESET(1'b0),
        .RXOSCALRESET(1'b0),
        .RXOSHOLD(1'b0),
        .RXOSINTDONE(\gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_n_38 ),
        .RXOSINTSTARTED(\gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_n_39 ),
        .RXOSINTSTROBEDONE(\gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_n_40 ),
        .RXOSINTSTROBESTARTED(\gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_n_41 ),
        .RXOSOVRDEN(1'b0),
        .RXOUTCLK(rxoutclk_out),
        .RXOUTCLKFABRIC(\gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_n_43 ),
        .RXOUTCLKPCS(rxoutclkpcs_out),
        .RXOUTCLKSEL({1'b0,1'b1,1'b0}),
        .RXPCOMMAALIGNEN(rxmcommaalignen_in),
        .RXPCSRESET(1'b0),
        .RXPD({RXPD,RXPD}),
        .RXPHALIGN(1'b0),
        .RXPHALIGNDONE(\gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_n_45 ),
        .RXPHALIGNEN(1'b0),
        .RXPHALIGNERR(\gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_n_46 ),
        .RXPHDLYPD(1'b1),
        .RXPHDLYRESET(1'b0),
        .RXPHOVRDEN(1'b0),
        .RXPLLCLKSEL({1'b0,1'b0}),
        .RXPMARESET(1'b0),
        .RXPMARESETDONE(gtwiz_userclk_rx_active_out),
        .RXPOLARITY(1'b0),
        .RXPRBSCNTRESET(1'b0),
        .RXPRBSERR(\gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_n_48 ),
        .RXPRBSLOCKED(\gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_n_49 ),
        .RXPRBSSEL({1'b0,1'b0,1'b0,1'b0}),
        .RXPRGDIVRESETDONE(\gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_n_50 ),
        .RXPROGDIVRESET(\gen_gtwizard_gthe4.rxprogdivreset_int ),
        .RXQPIEN(1'b0),
        .RXQPISENN(\gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_n_51 ),
        .RXQPISENP(\gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_n_52 ),
        .RXRATE({1'b0,1'b0,RXRATE}),
        .RXRATEDONE(\gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_n_53 ),
        .RXRATEMODE(RXRATE),
        .RXRECCLKOUT(\gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_n_54 ),
        .RXRESETDONE(rxresetdone_out),
        .RXSLIDE(1'b0),
        .RXSLIDERDY(\gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_n_56 ),
        .RXSLIPDONE(\gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_n_57 ),
        .RXSLIPOUTCLK(1'b0),
        .RXSLIPOUTCLKRDY(\gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_n_58 ),
        .RXSLIPPMA(1'b0),
        .RXSLIPPMARDY(\gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_n_59 ),
        .RXSTARTOFSEQ({\gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_n_313 ,\gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_n_314 }),
        .RXSTATUS({\gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_n_326 ,\gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_n_327 ,\gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_n_328 }),
        .RXSYNCALLIN(1'b0),
        .RXSYNCDONE(\gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_n_60 ),
        .RXSYNCIN(1'b0),
        .RXSYNCMODE(1'b0),
        .RXSYNCOUT(\gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_n_61 ),
        .RXSYSCLKSEL({1'b0,1'b0}),
        .RXTERMINATION(1'b0),
        .RXUSERRDY(\gen_gtwizard_gthe4.rxuserrdy_int ),
        .RXUSRCLK(rxusrclk_in),
        .RXUSRCLK2(rxusrclk_in),
        .RXVALID(\gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_n_62 ),
        .SIGVALIDCLK(1'b0),
        .TSTIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .TX8B10BBYPASS({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .TX8B10BEN(1'b1),
        .TXBUFSTATUS({txbufstatus_out,\gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_n_316 }),
        .TXCOMFINISH(\gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_n_63 ),
        .TXCOMINIT(1'b0),
        .TXCOMSAS(1'b0),
        .TXCOMWAKE(1'b0),
        .TXCTRL0({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,txctrl0_in}),
        .TXCTRL1({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,txctrl1_in}),
        .TXCTRL2({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,txctrl2_in}),
        .TXDATA({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,gtwiz_userdata_tx_in}),
        .TXDATAEXTENDRSVD({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .TXDCCDONE(\gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_n_64 ),
        .TXDCCFORCESTART(1'b0),
        .TXDCCRESET(1'b0),
        .TXDEEMPH({1'b0,1'b0}),
        .TXDETECTRX(1'b0),
        .TXDIFFCTRL({1'b1,1'b1,1'b0,1'b0,1'b0}),
        .TXDLYBYPASS(1'b1),
        .TXDLYEN(1'b0),
        .TXDLYHOLD(1'b0),
        .TXDLYOVRDEN(1'b0),
        .TXDLYSRESET(1'b0),
        .TXDLYSRESETDONE(\gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_n_65 ),
        .TXDLYUPDOWN(1'b0),
        .TXELECIDLE(txelecidle_in),
        .TXHEADER({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .TXINHIBIT(1'b0),
        .TXLATCLK(1'b0),
        .TXLFPSTRESET(1'b0),
        .TXLFPSU2LPEXIT(1'b0),
        .TXLFPSU3WAKE(1'b0),
        .TXMAINCURSOR({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .TXMARGIN({1'b0,1'b0,1'b0}),
        .TXMUXDCDEXHOLD(1'b0),
        .TXMUXDCDORWREN(1'b0),
        .TXONESZEROS(1'b0),
        .TXOUTCLK(txoutclk_out),
        .TXOUTCLKFABRIC(\gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_n_67 ),
        .TXOUTCLKPCS(\gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_n_68 ),
        .TXOUTCLKSEL(\gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_4 ),
        .TXPCSRESET(1'b0),
        .TXPD({txelecidle_in,txelecidle_in}),
        .TXPDELECIDLEMODE(1'b0),
        .TXPHALIGN(1'b0),
        .TXPHALIGNDONE(\gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_n_69 ),
        .TXPHALIGNEN(1'b0),
        .TXPHDLYPD(1'b1),
        .TXPHDLYRESET(1'b0),
        .TXPHDLYTSTCLK(1'b0),
        .TXPHINIT(1'b0),
        .TXPHINITDONE(\gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_n_70 ),
        .TXPHOVRDEN(1'b0),
        .TXPIPPMEN(1'b0),
        .TXPIPPMOVRDEN(1'b0),
        .TXPIPPMPD(1'b0),
        .TXPIPPMSEL(1'b0),
        .TXPIPPMSTEPSIZE({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .TXPISOPD(1'b0),
        .TXPLLCLKSEL({1'b0,1'b0}),
        .TXPMARESET(1'b0),
        .TXPMARESETDONE(\gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_n_71 ),
        .TXPOLARITY(1'b0),
        .TXPOSTCURSOR({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .TXPRBSFORCEERR(1'b0),
        .TXPRBSSEL({1'b0,1'b0,1'b0,1'b0}),
        .TXPRECURSOR({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .TXPRGDIVRESETDONE(\gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_0 ),
        .TXPROGDIVRESET(\gen_gtwizard_gthe4.txprogdivreset_ch_int ),
        .TXQPIBIASEN(1'b0),
        .TXQPISENN(\gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_n_73 ),
        .TXQPISENP(\gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_n_74 ),
        .TXQPIWEAKPUP(1'b0),
        .TXRATE({1'b0,1'b0,1'b0}),
        .TXRATEDONE(\gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_n_75 ),
        .TXRATEMODE(1'b0),
        .TXRESETDONE(txresetdone_out),
        .TXSEQUENCE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .TXSWING(1'b0),
        .TXSYNCALLIN(1'b0),
        .TXSYNCDONE(\gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_n_77 ),
        .TXSYNCIN(1'b0),
        .TXSYNCMODE(1'b0),
        .TXSYNCOUT(\gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_n_78 ),
        .TXSYSCLKSEL({1'b0,1'b0}),
        .TXUSERRDY(\gen_gtwizard_gthe4.txuserrdy_int ),
        .TXUSRCLK(rxusrclk_in),
        .TXUSRCLK2(rxusrclk_in));
endmodule

(* ORIG_REF_NAME = "gtwizard_ultrascale_v1_7_13_gthe4_cpll_cal" *) 
module PCS_PMA_gtwizard_ultrascale_v1_7_13_gthe4_cpll_cal
   (\gen_gtwizard_gthe4.txprogdivreset_ch_int ,
    cpllpd_int_reg,
    cpllreset_int_reg,
    USER_CPLLLOCK_OUT_reg,
    rst_in0,
    Q,
    DEN_O,
    DWE_O,
    DADDR_O,
    DI_O,
    in0,
    i_in_meta_reg,
    i_in_meta_reg_0,
    txoutclk_out,
    drpclk_in,
    RESET_IN,
    DO_I,
    \gen_gtwizard_gthe4.drprdy_int ,
    lopt,
    lopt_1);
  output \gen_gtwizard_gthe4.txprogdivreset_ch_int ;
  output cpllpd_int_reg;
  output cpllreset_int_reg;
  output USER_CPLLLOCK_OUT_reg;
  output rst_in0;
  output [2:0]Q;
  output DEN_O;
  output DWE_O;
  output [6:0]DADDR_O;
  output [15:0]DI_O;
  input in0;
  input i_in_meta_reg;
  input i_in_meta_reg_0;
  input [0:0]txoutclk_out;
  input [0:0]drpclk_in;
  input RESET_IN;
  input [15:0]DO_I;
  input \gen_gtwizard_gthe4.drprdy_int ;
  input lopt;
  input lopt_1;

  wire [6:0]DADDR_O;
  wire DEN_O;
  wire [15:0]DI_O;
  wire [15:0]DO_I;
  wire DWE_O;
  wire [2:0]Q;
  wire RESET_IN;
  wire USER_CPLLLOCK_OUT_reg;
  wire [17:1]\U_TXOUTCLK_FREQ_COUNTER/testclk_cnt_reg ;
  wire [15:0]cal_on_tx_dout;
  wire cal_on_tx_drdy;
  wire [7:1]cal_on_tx_drpaddr_out;
  wire [15:0]cal_on_tx_drpdi_out;
  wire cal_on_tx_drpen_out;
  wire cal_on_tx_drpwe_out;
  wire cal_on_tx_reset_in_sync;
  wire cpllpd_int_reg;
  wire cpllreset_int_reg;
  wire [0:0]drpclk_in;
  wire drprst_in_sync;
  wire \gen_gtwizard_gthe4.drprdy_int ;
  wire \gen_gtwizard_gthe4.txprogdivreset_ch_int ;
  wire gtwizard_ultrascale_v1_7_13_gthe4_cpll_cal_tx_i_n_24;
  wire \i_/i_/i__carry__0_n_0 ;
  wire \i_/i_/i__carry__0_n_1 ;
  wire \i_/i_/i__carry__0_n_10 ;
  wire \i_/i_/i__carry__0_n_11 ;
  wire \i_/i_/i__carry__0_n_12 ;
  wire \i_/i_/i__carry__0_n_13 ;
  wire \i_/i_/i__carry__0_n_14 ;
  wire \i_/i_/i__carry__0_n_15 ;
  wire \i_/i_/i__carry__0_n_2 ;
  wire \i_/i_/i__carry__0_n_3 ;
  wire \i_/i_/i__carry__0_n_4 ;
  wire \i_/i_/i__carry__0_n_5 ;
  wire \i_/i_/i__carry__0_n_6 ;
  wire \i_/i_/i__carry__0_n_7 ;
  wire \i_/i_/i__carry__0_n_8 ;
  wire \i_/i_/i__carry__0_n_9 ;
  wire \i_/i_/i__carry__1_n_14 ;
  wire \i_/i_/i__carry__1_n_15 ;
  wire \i_/i_/i__carry__1_n_7 ;
  wire \i_/i_/i__carry_n_0 ;
  wire \i_/i_/i__carry_n_1 ;
  wire \i_/i_/i__carry_n_10 ;
  wire \i_/i_/i__carry_n_11 ;
  wire \i_/i_/i__carry_n_12 ;
  wire \i_/i_/i__carry_n_13 ;
  wire \i_/i_/i__carry_n_14 ;
  wire \i_/i_/i__carry_n_15 ;
  wire \i_/i_/i__carry_n_2 ;
  wire \i_/i_/i__carry_n_3 ;
  wire \i_/i_/i__carry_n_4 ;
  wire \i_/i_/i__carry_n_5 ;
  wire \i_/i_/i__carry_n_6 ;
  wire \i_/i_/i__carry_n_7 ;
  wire \i_/i_/i__carry_n_8 ;
  wire \i_/i_/i__carry_n_9 ;
  wire i_in_meta_reg;
  wire i_in_meta_reg_0;
  wire in0;
  wire lopt;
  wire lopt_1;
  wire rst_in0;
  wire [0:0]txoutclk_out;
  wire [7:1]\NLW_i_/i_/i__carry__1_CO_UNCONNECTED ;
  wire [7:2]\NLW_i_/i_/i__carry__1_O_UNCONNECTED ;

  PCS_PMA_gtwizard_ultrascale_v1_7_13_bit_synchronizer_19 bit_synchronizer_drprst_inst
       (.drpclk_in(drpclk_in),
        .drprst_in_sync(drprst_in_sync));
  PCS_PMA_gtwizard_ultrascale_v1_7_13_gte4_drp_arb gtwizard_ultrascale_v1_7_13_gte4_drp_arb_i
       (.DADDR_O(DADDR_O),
        .DEN_O(DEN_O),
        .DI_O(DI_O),
        .DO_I(DO_I),
        .DWE_O(DWE_O),
        .Q(cal_on_tx_dout),
        .\addr_i_reg[27]_0 (cal_on_tx_drpaddr_out),
        .cal_on_tx_drdy(cal_on_tx_drdy),
        .cal_on_tx_drpen_out(cal_on_tx_drpen_out),
        .cal_on_tx_drpwe_out(cal_on_tx_drpwe_out),
        .\data_i_reg[47]_0 (cal_on_tx_drpdi_out),
        .drpclk_in(drpclk_in),
        .drprst_in_sync(drprst_in_sync),
        .\gen_gtwizard_gthe4.drprdy_int (\gen_gtwizard_gthe4.drprdy_int ));
  PCS_PMA_gtwizard_ultrascale_v1_7_13_gthe4_cpll_cal_tx gtwizard_ultrascale_v1_7_13_gthe4_cpll_cal_tx_i
       (.D(\U_TXOUTCLK_FREQ_COUNTER/testclk_cnt_reg ),
        .O({\i_/i_/i__carry_n_8 ,\i_/i_/i__carry_n_9 ,\i_/i_/i__carry_n_10 ,\i_/i_/i__carry_n_11 ,\i_/i_/i__carry_n_12 ,\i_/i_/i__carry_n_13 ,\i_/i_/i__carry_n_14 ,\i_/i_/i__carry_n_15 }),
        .Q(cal_on_tx_dout),
        .S(gtwizard_ultrascale_v1_7_13_gthe4_cpll_cal_tx_i_n_24),
        .USER_CPLLLOCK_OUT_reg_0(USER_CPLLLOCK_OUT_reg),
        .cal_on_tx_drdy(cal_on_tx_drdy),
        .cal_on_tx_drpen_out(cal_on_tx_drpen_out),
        .cal_on_tx_drpwe_out(cal_on_tx_drpwe_out),
        .cal_on_tx_reset_in_sync(cal_on_tx_reset_in_sync),
        .cpllpd_int_reg_0(cpllpd_int_reg),
        .cpllreset_int_reg_0(cpllreset_int_reg),
        .\daddr_reg[7]_0 (cal_on_tx_drpaddr_out),
        .\di_reg[15]_0 (cal_on_tx_drpdi_out),
        .drpclk_in(drpclk_in),
        .\gen_gtwizard_gthe4.txprogdivreset_ch_int (\gen_gtwizard_gthe4.txprogdivreset_ch_int ),
        .i_in_meta_reg(i_in_meta_reg),
        .i_in_meta_reg_0(i_in_meta_reg_0),
        .in0(in0),
        .lopt(lopt),
        .lopt_1(lopt_1),
        .\non_pcie_txoutclksel.GTHE4_TXOUTCLKSEL_OUT_reg[2]_0 (Q),
        .rst_in0(rst_in0),
        .\testclk_cnt_reg[15] ({\i_/i_/i__carry__0_n_8 ,\i_/i_/i__carry__0_n_9 ,\i_/i_/i__carry__0_n_10 ,\i_/i_/i__carry__0_n_11 ,\i_/i_/i__carry__0_n_12 ,\i_/i_/i__carry__0_n_13 ,\i_/i_/i__carry__0_n_14 ,\i_/i_/i__carry__0_n_15 }),
        .\testclk_cnt_reg[17] ({\i_/i_/i__carry__1_n_14 ,\i_/i_/i__carry__1_n_15 }),
        .txoutclk_out(txoutclk_out));
  (* ADDER_THRESHOLD = "16" *) 
  CARRY8 \i_/i_/i__carry 
       (.CI(1'b0),
        .CI_TOP(1'b0),
        .CO({\i_/i_/i__carry_n_0 ,\i_/i_/i__carry_n_1 ,\i_/i_/i__carry_n_2 ,\i_/i_/i__carry_n_3 ,\i_/i_/i__carry_n_4 ,\i_/i_/i__carry_n_5 ,\i_/i_/i__carry_n_6 ,\i_/i_/i__carry_n_7 }),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b1}),
        .O({\i_/i_/i__carry_n_8 ,\i_/i_/i__carry_n_9 ,\i_/i_/i__carry_n_10 ,\i_/i_/i__carry_n_11 ,\i_/i_/i__carry_n_12 ,\i_/i_/i__carry_n_13 ,\i_/i_/i__carry_n_14 ,\i_/i_/i__carry_n_15 }),
        .S({\U_TXOUTCLK_FREQ_COUNTER/testclk_cnt_reg [7:1],gtwizard_ultrascale_v1_7_13_gthe4_cpll_cal_tx_i_n_24}));
  (* ADDER_THRESHOLD = "16" *) 
  CARRY8 \i_/i_/i__carry__0 
       (.CI(\i_/i_/i__carry_n_0 ),
        .CI_TOP(1'b0),
        .CO({\i_/i_/i__carry__0_n_0 ,\i_/i_/i__carry__0_n_1 ,\i_/i_/i__carry__0_n_2 ,\i_/i_/i__carry__0_n_3 ,\i_/i_/i__carry__0_n_4 ,\i_/i_/i__carry__0_n_5 ,\i_/i_/i__carry__0_n_6 ,\i_/i_/i__carry__0_n_7 }),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .O({\i_/i_/i__carry__0_n_8 ,\i_/i_/i__carry__0_n_9 ,\i_/i_/i__carry__0_n_10 ,\i_/i_/i__carry__0_n_11 ,\i_/i_/i__carry__0_n_12 ,\i_/i_/i__carry__0_n_13 ,\i_/i_/i__carry__0_n_14 ,\i_/i_/i__carry__0_n_15 }),
        .S(\U_TXOUTCLK_FREQ_COUNTER/testclk_cnt_reg [15:8]));
  (* ADDER_THRESHOLD = "16" *) 
  CARRY8 \i_/i_/i__carry__1 
       (.CI(\i_/i_/i__carry__0_n_0 ),
        .CI_TOP(1'b0),
        .CO({\NLW_i_/i_/i__carry__1_CO_UNCONNECTED [7:1],\i_/i_/i__carry__1_n_7 }),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_i_/i_/i__carry__1_O_UNCONNECTED [7:2],\i_/i_/i__carry__1_n_14 ,\i_/i_/i__carry__1_n_15 }),
        .S({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,\U_TXOUTCLK_FREQ_COUNTER/testclk_cnt_reg [17:16]}));
  PCS_PMA_gtwizard_ultrascale_v1_7_13_reset_synchronizer_20 reset_synchronizer_resetin_rx_inst
       (.drpclk_in(drpclk_in));
  PCS_PMA_gtwizard_ultrascale_v1_7_13_reset_synchronizer_21 reset_synchronizer_resetin_tx_inst
       (.RESET_IN(RESET_IN),
        .cal_on_tx_reset_in_sync(cal_on_tx_reset_in_sync),
        .drpclk_in(drpclk_in));
endmodule

(* ORIG_REF_NAME = "gtwizard_ultrascale_v1_7_13_gthe4_cpll_cal_freq_counter" *) 
module PCS_PMA_gtwizard_ultrascale_v1_7_13_gthe4_cpll_cal_freq_counter
   (done_o_reg_0,
    D,
    rst_in_out_reg,
    rst_in_out_reg_0,
    S,
    done_o_reg_1,
    DI,
    \freq_cnt_o_reg[16]_0 ,
    \freq_cnt_o_reg[15]_0 ,
    \freq_cnt_o_reg[14]_0 ,
    \freq_cnt_o_reg[0]_0 ,
    \freq_cnt_o_reg[17]_0 ,
    \freq_cnt_o_reg[16]_1 ,
    drpclk_in,
    \state_reg[1]_0 ,
    txoutclkmon,
    O,
    \testclk_cnt_reg[15]_0 ,
    \testclk_cnt_reg[17]_0 ,
    cal_on_tx_reset_in_sync,
    \repeat_ctr_reg[3] ,
    CO,
    \repeat_ctr_reg[3]_0 ,
    Q,
    cal_fail_store_reg,
    cal_fail_store__0,
    \cpll_cal_state_reg[21] ,
    cal_fail_store_reg_0,
    cal_fail_store_reg_1,
    \cpll_cal_state_reg[13] ,
    \cpll_cal_state_reg[13]_0 ,
    \cpll_cal_state_reg[13]_1 ,
    \cpll_cal_state_reg[13]_2 );
  output done_o_reg_0;
  output [16:0]D;
  output rst_in_out_reg;
  output rst_in_out_reg_0;
  output [0:0]S;
  output [1:0]done_o_reg_1;
  output [4:0]DI;
  output [7:0]\freq_cnt_o_reg[16]_0 ;
  output [4:0]\freq_cnt_o_reg[15]_0 ;
  output [7:0]\freq_cnt_o_reg[14]_0 ;
  output \freq_cnt_o_reg[0]_0 ;
  output [0:0]\freq_cnt_o_reg[17]_0 ;
  output [0:0]\freq_cnt_o_reg[16]_1 ;
  input [0:0]drpclk_in;
  input \state_reg[1]_0 ;
  input txoutclkmon;
  input [7:0]O;
  input [7:0]\testclk_cnt_reg[15]_0 ;
  input [1:0]\testclk_cnt_reg[17]_0 ;
  input cal_on_tx_reset_in_sync;
  input \repeat_ctr_reg[3] ;
  input [0:0]CO;
  input [0:0]\repeat_ctr_reg[3]_0 ;
  input [5:0]Q;
  input cal_fail_store_reg;
  input cal_fail_store__0;
  input [0:0]\cpll_cal_state_reg[21] ;
  input cal_fail_store_reg_0;
  input cal_fail_store_reg_1;
  input \cpll_cal_state_reg[13] ;
  input \cpll_cal_state_reg[13]_0 ;
  input \cpll_cal_state_reg[13]_1 ;
  input \cpll_cal_state_reg[13]_2 ;

  wire [0:0]CO;
  wire [16:0]D;
  wire [4:0]DI;
  wire [7:0]O;
  wire [5:0]Q;
  wire [0:0]S;
  wire cal_fail_store__0;
  wire cal_fail_store_i_2_n_0;
  wire cal_fail_store_i_3_n_0;
  wire cal_fail_store_reg;
  wire cal_fail_store_reg_0;
  wire cal_fail_store_reg_1;
  wire cal_on_tx_reset_in_sync;
  wire clear;
  wire \cpll_cal_state[21]_i_2_n_0 ;
  wire \cpll_cal_state_reg[13] ;
  wire \cpll_cal_state_reg[13]_0 ;
  wire \cpll_cal_state_reg[13]_1 ;
  wire \cpll_cal_state_reg[13]_2 ;
  wire [0:0]\cpll_cal_state_reg[21] ;
  wire done_o_reg_0;
  wire [1:0]done_o_reg_1;
  wire [0:0]drpclk_in;
  wire \freq_cnt_o[17]_i_1_n_0 ;
  wire \freq_cnt_o_reg[0]_0 ;
  wire [7:0]\freq_cnt_o_reg[14]_0 ;
  wire [4:0]\freq_cnt_o_reg[15]_0 ;
  wire [7:0]\freq_cnt_o_reg[16]_0 ;
  wire [0:0]\freq_cnt_o_reg[16]_1 ;
  wire [0:0]\freq_cnt_o_reg[17]_0 ;
  wire \freq_cnt_o_reg_n_0_[0] ;
  wire \freq_cnt_o_reg_n_0_[10] ;
  wire \freq_cnt_o_reg_n_0_[11] ;
  wire \freq_cnt_o_reg_n_0_[12] ;
  wire \freq_cnt_o_reg_n_0_[14] ;
  wire \freq_cnt_o_reg_n_0_[15] ;
  wire \freq_cnt_o_reg_n_0_[16] ;
  wire \freq_cnt_o_reg_n_0_[17] ;
  wire \freq_cnt_o_reg_n_0_[1] ;
  wire \freq_cnt_o_reg_n_0_[2] ;
  wire \freq_cnt_o_reg_n_0_[3] ;
  wire \freq_cnt_o_reg_n_0_[4] ;
  wire \freq_cnt_o_reg_n_0_[5] ;
  wire \freq_cnt_o_reg_n_0_[6] ;
  wire \freq_cnt_o_reg_n_0_[7] ;
  wire \freq_cnt_o_reg_n_0_[8] ;
  wire \freq_cnt_o_reg_n_0_[9] ;
  wire \hold_clk[2]_i_1_n_0 ;
  wire \hold_clk[5]_i_1_n_0 ;
  wire [5:0]hold_clk_reg;
  wire [5:0]p_0_in__0;
  wire [15:1]p_0_in__1;
  wire p_1_in;
  wire refclk_cnt0_carry__0_n_2;
  wire refclk_cnt0_carry__0_n_3;
  wire refclk_cnt0_carry__0_n_4;
  wire refclk_cnt0_carry__0_n_5;
  wire refclk_cnt0_carry__0_n_6;
  wire refclk_cnt0_carry__0_n_7;
  wire refclk_cnt0_carry_n_0;
  wire refclk_cnt0_carry_n_1;
  wire refclk_cnt0_carry_n_2;
  wire refclk_cnt0_carry_n_3;
  wire refclk_cnt0_carry_n_4;
  wire refclk_cnt0_carry_n_5;
  wire refclk_cnt0_carry_n_6;
  wire refclk_cnt0_carry_n_7;
  wire \refclk_cnt[0]_i_1_n_0 ;
  wire [15:0]refclk_cnt_reg;
  wire \repeat_ctr[3]_i_4_n_0 ;
  wire \repeat_ctr_reg[3] ;
  wire [0:0]\repeat_ctr_reg[3]_0 ;
  wire rst_in_out;
  wire rst_in_out_reg;
  wire rst_in_out_reg_0;
  wire \state[0]_i_1_n_0 ;
  wire \state[1]_i_1_n_0 ;
  wire \state[1]_i_2_n_0 ;
  wire \state[2]_i_1_n_0 ;
  wire \state[2]_i_2_n_0 ;
  wire \state[2]_i_3_n_0 ;
  wire \state[2]_i_4_n_0 ;
  wire \state[2]_i_5_n_0 ;
  wire \state[3]_i_1_n_0 ;
  wire \state[3]_i_2_n_0 ;
  wire \state[4]_i_1_n_0 ;
  wire \state_reg[1]_0 ;
  wire \state_reg_n_0_[2] ;
  wire \state_reg_n_0_[4] ;
  wire testclk_cnt0_n_0;
  wire [0:0]testclk_cnt_reg;
  wire [7:0]\testclk_cnt_reg[15]_0 ;
  wire [1:0]\testclk_cnt_reg[17]_0 ;
  wire [3:0]testclk_div4;
  wire testclk_en;
  (* async_reg = "true" *) wire testclk_en_dly1;
  (* async_reg = "true" *) wire testclk_en_dly2;
  wire testclk_rst;
  (* async_reg = "true" *) wire tstclk_rst_dly1;
  (* async_reg = "true" *) wire tstclk_rst_dly2;
  wire txoutclkmon;
  wire [7:6]NLW_refclk_cnt0_carry__0_CO_UNCONNECTED;
  wire [7:7]NLW_refclk_cnt0_carry__0_O_UNCONNECTED;

  LUT6 #(
    .INIT(64'hFFFFDFDF30331010)) 
    cal_fail_store_i_1
       (.I0(cal_fail_store_i_2_n_0),
        .I1(cal_on_tx_reset_in_sync),
        .I2(cal_fail_store_i_3_n_0),
        .I3(cal_fail_store_reg),
        .I4(Q[5]),
        .I5(cal_fail_store__0),
        .O(rst_in_out_reg_0));
  LUT2 #(
    .INIT(4'h8)) 
    cal_fail_store_i_2
       (.I0(CO),
        .I1(\repeat_ctr_reg[3]_0 ),
        .O(cal_fail_store_i_2_n_0));
  LUT6 #(
    .INIT(64'hF222000000000000)) 
    cal_fail_store_i_3
       (.I0(cal_fail_store_reg_0),
        .I1(cal_fail_store_reg_1),
        .I2(CO),
        .I3(\repeat_ctr_reg[3]_0 ),
        .I4(Q[3]),
        .I5(done_o_reg_0),
        .O(cal_fail_store_i_3_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    cpll_cal_state2_carry_i_1
       (.I0(\freq_cnt_o_reg_n_0_[0] ),
        .I1(\freq_cnt_o_reg_n_0_[1] ),
        .O(\freq_cnt_o_reg[0]_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    cpll_cal_state2_carry_i_10
       (.I0(\freq_cnt_o_reg_n_0_[10] ),
        .I1(\freq_cnt_o_reg_n_0_[11] ),
        .O(\freq_cnt_o_reg[16]_0 [4]));
  LUT2 #(
    .INIT(4'h8)) 
    cpll_cal_state2_carry_i_11
       (.I0(\freq_cnt_o_reg_n_0_[9] ),
        .I1(\freq_cnt_o_reg_n_0_[8] ),
        .O(\freq_cnt_o_reg[16]_0 [3]));
  LUT2 #(
    .INIT(4'h2)) 
    cpll_cal_state2_carry_i_12
       (.I0(\freq_cnt_o_reg_n_0_[7] ),
        .I1(\freq_cnt_o_reg_n_0_[6] ),
        .O(\freq_cnt_o_reg[16]_0 [2]));
  LUT2 #(
    .INIT(4'h2)) 
    cpll_cal_state2_carry_i_13
       (.I0(\freq_cnt_o_reg_n_0_[4] ),
        .I1(\freq_cnt_o_reg_n_0_[5] ),
        .O(\freq_cnt_o_reg[16]_0 [1]));
  LUT2 #(
    .INIT(4'h1)) 
    cpll_cal_state2_carry_i_14
       (.I0(\freq_cnt_o_reg_n_0_[2] ),
        .I1(\freq_cnt_o_reg_n_0_[3] ),
        .O(\freq_cnt_o_reg[16]_0 [0]));
  LUT2 #(
    .INIT(4'h1)) 
    cpll_cal_state2_carry_i_2
       (.I0(\freq_cnt_o_reg_n_0_[12] ),
        .I1(\freq_cnt_o_reg[15]_0 [3]),
        .O(DI[4]));
  LUT2 #(
    .INIT(4'h7)) 
    cpll_cal_state2_carry_i_3
       (.I0(\freq_cnt_o_reg_n_0_[11] ),
        .I1(\freq_cnt_o_reg_n_0_[10] ),
        .O(DI[3]));
  LUT2 #(
    .INIT(4'h7)) 
    cpll_cal_state2_carry_i_4
       (.I0(\freq_cnt_o_reg_n_0_[8] ),
        .I1(\freq_cnt_o_reg_n_0_[9] ),
        .O(DI[2]));
  LUT1 #(
    .INIT(2'h1)) 
    cpll_cal_state2_carry_i_5
       (.I0(\freq_cnt_o_reg_n_0_[7] ),
        .O(DI[1]));
  LUT2 #(
    .INIT(4'h1)) 
    cpll_cal_state2_carry_i_6
       (.I0(\freq_cnt_o_reg_n_0_[4] ),
        .I1(\freq_cnt_o_reg_n_0_[5] ),
        .O(DI[0]));
  LUT2 #(
    .INIT(4'h1)) 
    cpll_cal_state2_carry_i_7
       (.I0(\freq_cnt_o_reg_n_0_[16] ),
        .I1(\freq_cnt_o_reg_n_0_[17] ),
        .O(\freq_cnt_o_reg[16]_0 [7]));
  LUT2 #(
    .INIT(4'h1)) 
    cpll_cal_state2_carry_i_8
       (.I0(\freq_cnt_o_reg_n_0_[14] ),
        .I1(\freq_cnt_o_reg_n_0_[15] ),
        .O(\freq_cnt_o_reg[16]_0 [6]));
  LUT2 #(
    .INIT(4'h2)) 
    cpll_cal_state2_carry_i_9
       (.I0(\freq_cnt_o_reg_n_0_[12] ),
        .I1(\freq_cnt_o_reg[15]_0 [3]),
        .O(\freq_cnt_o_reg[16]_0 [5]));
  LUT6 #(
    .INIT(64'hFFFFFFFF8F888888)) 
    \cpll_cal_state[13]_i_1 
       (.I0(\cpll_cal_state_reg[13] ),
        .I1(Q[2]),
        .I2(\cpll_cal_state[21]_i_2_n_0 ),
        .I3(Q[3]),
        .I4(done_o_reg_0),
        .I5(Q[1]),
        .O(done_o_reg_1[0]));
  (* SOFT_HLUTNM = "soft_lutpair59" *) 
  LUT5 #(
    .INIT(32'h80FF8080)) 
    \cpll_cal_state[21]_i_1 
       (.I0(done_o_reg_0),
        .I1(Q[3]),
        .I2(\cpll_cal_state[21]_i_2_n_0 ),
        .I3(\cpll_cal_state_reg[21] ),
        .I4(Q[4]),
        .O(done_o_reg_1[1]));
  LUT6 #(
    .INIT(64'hF888888888888888)) 
    \cpll_cal_state[21]_i_2 
       (.I0(\repeat_ctr_reg[3]_0 ),
        .I1(CO),
        .I2(\cpll_cal_state_reg[13]_0 ),
        .I3(\cpll_cal_state_reg[13]_1 ),
        .I4(\cpll_cal_state_reg[13]_2 ),
        .I5(cal_fail_store_reg_0),
        .O(\cpll_cal_state[21]_i_2_n_0 ));
  FDCE done_o_reg
       (.C(drpclk_in),
        .CE(1'b1),
        .CLR(\state_reg[1]_0 ),
        .D(\state_reg_n_0_[4] ),
        .Q(done_o_reg_0));
  LUT2 #(
    .INIT(4'h2)) 
    \freq_cnt_o[17]_i_1 
       (.I0(p_1_in),
        .I1(\state_reg[1]_0 ),
        .O(\freq_cnt_o[17]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \freq_cnt_o_reg[0] 
       (.C(drpclk_in),
        .CE(\freq_cnt_o[17]_i_1_n_0 ),
        .D(testclk_cnt_reg),
        .Q(\freq_cnt_o_reg_n_0_[0] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \freq_cnt_o_reg[10] 
       (.C(drpclk_in),
        .CE(\freq_cnt_o[17]_i_1_n_0 ),
        .D(D[9]),
        .Q(\freq_cnt_o_reg_n_0_[10] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \freq_cnt_o_reg[11] 
       (.C(drpclk_in),
        .CE(\freq_cnt_o[17]_i_1_n_0 ),
        .D(D[10]),
        .Q(\freq_cnt_o_reg_n_0_[11] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \freq_cnt_o_reg[12] 
       (.C(drpclk_in),
        .CE(\freq_cnt_o[17]_i_1_n_0 ),
        .D(D[11]),
        .Q(\freq_cnt_o_reg_n_0_[12] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \freq_cnt_o_reg[13] 
       (.C(drpclk_in),
        .CE(\freq_cnt_o[17]_i_1_n_0 ),
        .D(D[12]),
        .Q(\freq_cnt_o_reg[15]_0 [3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \freq_cnt_o_reg[14] 
       (.C(drpclk_in),
        .CE(\freq_cnt_o[17]_i_1_n_0 ),
        .D(D[13]),
        .Q(\freq_cnt_o_reg_n_0_[14] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \freq_cnt_o_reg[15] 
       (.C(drpclk_in),
        .CE(\freq_cnt_o[17]_i_1_n_0 ),
        .D(D[14]),
        .Q(\freq_cnt_o_reg_n_0_[15] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \freq_cnt_o_reg[16] 
       (.C(drpclk_in),
        .CE(\freq_cnt_o[17]_i_1_n_0 ),
        .D(D[15]),
        .Q(\freq_cnt_o_reg_n_0_[16] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \freq_cnt_o_reg[17] 
       (.C(drpclk_in),
        .CE(\freq_cnt_o[17]_i_1_n_0 ),
        .D(D[16]),
        .Q(\freq_cnt_o_reg_n_0_[17] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \freq_cnt_o_reg[1] 
       (.C(drpclk_in),
        .CE(\freq_cnt_o[17]_i_1_n_0 ),
        .D(D[0]),
        .Q(\freq_cnt_o_reg_n_0_[1] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \freq_cnt_o_reg[2] 
       (.C(drpclk_in),
        .CE(\freq_cnt_o[17]_i_1_n_0 ),
        .D(D[1]),
        .Q(\freq_cnt_o_reg_n_0_[2] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \freq_cnt_o_reg[3] 
       (.C(drpclk_in),
        .CE(\freq_cnt_o[17]_i_1_n_0 ),
        .D(D[2]),
        .Q(\freq_cnt_o_reg_n_0_[3] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \freq_cnt_o_reg[4] 
       (.C(drpclk_in),
        .CE(\freq_cnt_o[17]_i_1_n_0 ),
        .D(D[3]),
        .Q(\freq_cnt_o_reg_n_0_[4] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \freq_cnt_o_reg[5] 
       (.C(drpclk_in),
        .CE(\freq_cnt_o[17]_i_1_n_0 ),
        .D(D[4]),
        .Q(\freq_cnt_o_reg_n_0_[5] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \freq_cnt_o_reg[6] 
       (.C(drpclk_in),
        .CE(\freq_cnt_o[17]_i_1_n_0 ),
        .D(D[5]),
        .Q(\freq_cnt_o_reg_n_0_[6] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \freq_cnt_o_reg[7] 
       (.C(drpclk_in),
        .CE(\freq_cnt_o[17]_i_1_n_0 ),
        .D(D[6]),
        .Q(\freq_cnt_o_reg_n_0_[7] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \freq_cnt_o_reg[8] 
       (.C(drpclk_in),
        .CE(\freq_cnt_o[17]_i_1_n_0 ),
        .D(D[7]),
        .Q(\freq_cnt_o_reg_n_0_[8] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \freq_cnt_o_reg[9] 
       (.C(drpclk_in),
        .CE(\freq_cnt_o[17]_i_1_n_0 ),
        .D(D[8]),
        .Q(\freq_cnt_o_reg_n_0_[9] ),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair62" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \hold_clk[0]_i_1 
       (.I0(hold_clk_reg[0]),
        .O(p_0_in__0[0]));
  (* SOFT_HLUTNM = "soft_lutpair62" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \hold_clk[1]_i_1 
       (.I0(hold_clk_reg[0]),
        .I1(hold_clk_reg[1]),
        .O(p_0_in__0[1]));
  (* SOFT_HLUTNM = "soft_lutpair61" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \hold_clk[2]_i_1 
       (.I0(hold_clk_reg[0]),
        .I1(hold_clk_reg[1]),
        .I2(hold_clk_reg[2]),
        .O(\hold_clk[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair60" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \hold_clk[3]_i_1 
       (.I0(hold_clk_reg[1]),
        .I1(hold_clk_reg[0]),
        .I2(hold_clk_reg[2]),
        .I3(hold_clk_reg[3]),
        .O(p_0_in__0[3]));
  (* SOFT_HLUTNM = "soft_lutpair60" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \hold_clk[4]_i_1 
       (.I0(hold_clk_reg[2]),
        .I1(hold_clk_reg[0]),
        .I2(hold_clk_reg[1]),
        .I3(hold_clk_reg[3]),
        .I4(hold_clk_reg[4]),
        .O(p_0_in__0[4]));
  LUT2 #(
    .INIT(4'h1)) 
    \hold_clk[5]_i_1 
       (.I0(testclk_rst),
        .I1(\state_reg_n_0_[2] ),
        .O(\hold_clk[5]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h7FFFFFFF80000000)) 
    \hold_clk[5]_i_2 
       (.I0(hold_clk_reg[3]),
        .I1(hold_clk_reg[1]),
        .I2(hold_clk_reg[0]),
        .I3(hold_clk_reg[2]),
        .I4(hold_clk_reg[4]),
        .I5(hold_clk_reg[5]),
        .O(p_0_in__0[5]));
  FDRE #(
    .INIT(1'b0)) 
    \hold_clk_reg[0] 
       (.C(drpclk_in),
        .CE(1'b1),
        .D(p_0_in__0[0]),
        .Q(hold_clk_reg[0]),
        .R(\hold_clk[5]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \hold_clk_reg[1] 
       (.C(drpclk_in),
        .CE(1'b1),
        .D(p_0_in__0[1]),
        .Q(hold_clk_reg[1]),
        .R(\hold_clk[5]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \hold_clk_reg[2] 
       (.C(drpclk_in),
        .CE(1'b1),
        .D(\hold_clk[2]_i_1_n_0 ),
        .Q(hold_clk_reg[2]),
        .R(\hold_clk[5]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \hold_clk_reg[3] 
       (.C(drpclk_in),
        .CE(1'b1),
        .D(p_0_in__0[3]),
        .Q(hold_clk_reg[3]),
        .R(\hold_clk[5]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \hold_clk_reg[4] 
       (.C(drpclk_in),
        .CE(1'b1),
        .D(p_0_in__0[4]),
        .Q(hold_clk_reg[4]),
        .R(\hold_clk[5]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \hold_clk_reg[5] 
       (.C(drpclk_in),
        .CE(1'b1),
        .D(p_0_in__0[5]),
        .Q(hold_clk_reg[5]),
        .R(\hold_clk[5]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    i__carry__0_i_1
       (.I0(\freq_cnt_o_reg_n_0_[17] ),
        .I1(\freq_cnt_o_reg_n_0_[16] ),
        .O(\freq_cnt_o_reg[17]_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    i__carry__0_i_2
       (.I0(\freq_cnt_o_reg_n_0_[16] ),
        .I1(\freq_cnt_o_reg_n_0_[17] ),
        .O(\freq_cnt_o_reg[16]_1 ));
  LUT1 #(
    .INIT(2'h1)) 
    i__carry_i_1
       (.I0(testclk_cnt_reg),
        .O(S));
  LUT2 #(
    .INIT(4'h8)) 
    i__carry_i_10
       (.I0(\freq_cnt_o_reg_n_0_[4] ),
        .I1(\freq_cnt_o_reg_n_0_[5] ),
        .O(\freq_cnt_o_reg[14]_0 [2]));
  LUT2 #(
    .INIT(4'h1)) 
    i__carry_i_11
       (.I0(\freq_cnt_o_reg_n_0_[2] ),
        .I1(\freq_cnt_o_reg_n_0_[3] ),
        .O(\freq_cnt_o_reg[14]_0 [1]));
  LUT2 #(
    .INIT(4'h1)) 
    i__carry_i_12
       (.I0(\freq_cnt_o_reg_n_0_[0] ),
        .I1(\freq_cnt_o_reg_n_0_[1] ),
        .O(\freq_cnt_o_reg[14]_0 [0]));
  LUT2 #(
    .INIT(4'hE)) 
    i__carry_i_1__0
       (.I0(\freq_cnt_o_reg_n_0_[15] ),
        .I1(\freq_cnt_o_reg_n_0_[14] ),
        .O(\freq_cnt_o_reg[15]_0 [4]));
  LUT2 #(
    .INIT(4'h8)) 
    i__carry_i_2
       (.I0(\freq_cnt_o_reg_n_0_[9] ),
        .I1(\freq_cnt_o_reg_n_0_[8] ),
        .O(\freq_cnt_o_reg[15]_0 [2]));
  LUT2 #(
    .INIT(4'hE)) 
    i__carry_i_3
       (.I0(\freq_cnt_o_reg_n_0_[3] ),
        .I1(\freq_cnt_o_reg_n_0_[2] ),
        .O(\freq_cnt_o_reg[15]_0 [1]));
  LUT2 #(
    .INIT(4'hE)) 
    i__carry_i_4
       (.I0(\freq_cnt_o_reg_n_0_[1] ),
        .I1(\freq_cnt_o_reg_n_0_[0] ),
        .O(\freq_cnt_o_reg[15]_0 [0]));
  LUT2 #(
    .INIT(4'h1)) 
    i__carry_i_5
       (.I0(\freq_cnt_o_reg_n_0_[14] ),
        .I1(\freq_cnt_o_reg_n_0_[15] ),
        .O(\freq_cnt_o_reg[14]_0 [7]));
  LUT2 #(
    .INIT(4'h2)) 
    i__carry_i_6
       (.I0(\freq_cnt_o_reg_n_0_[12] ),
        .I1(\freq_cnt_o_reg[15]_0 [3]),
        .O(\freq_cnt_o_reg[14]_0 [6]));
  LUT2 #(
    .INIT(4'h8)) 
    i__carry_i_7
       (.I0(\freq_cnt_o_reg_n_0_[10] ),
        .I1(\freq_cnt_o_reg_n_0_[11] ),
        .O(\freq_cnt_o_reg[14]_0 [5]));
  LUT2 #(
    .INIT(4'h2)) 
    i__carry_i_8
       (.I0(\freq_cnt_o_reg_n_0_[9] ),
        .I1(\freq_cnt_o_reg_n_0_[8] ),
        .O(\freq_cnt_o_reg[14]_0 [4]));
  LUT2 #(
    .INIT(4'h8)) 
    i__carry_i_9
       (.I0(\freq_cnt_o_reg_n_0_[7] ),
        .I1(\freq_cnt_o_reg_n_0_[6] ),
        .O(\freq_cnt_o_reg[14]_0 [3]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY8 refclk_cnt0_carry
       (.CI(refclk_cnt_reg[0]),
        .CI_TOP(1'b0),
        .CO({refclk_cnt0_carry_n_0,refclk_cnt0_carry_n_1,refclk_cnt0_carry_n_2,refclk_cnt0_carry_n_3,refclk_cnt0_carry_n_4,refclk_cnt0_carry_n_5,refclk_cnt0_carry_n_6,refclk_cnt0_carry_n_7}),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .O(p_0_in__1[8:1]),
        .S(refclk_cnt_reg[8:1]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY8 refclk_cnt0_carry__0
       (.CI(refclk_cnt0_carry_n_0),
        .CI_TOP(1'b0),
        .CO({NLW_refclk_cnt0_carry__0_CO_UNCONNECTED[7:6],refclk_cnt0_carry__0_n_2,refclk_cnt0_carry__0_n_3,refclk_cnt0_carry__0_n_4,refclk_cnt0_carry__0_n_5,refclk_cnt0_carry__0_n_6,refclk_cnt0_carry__0_n_7}),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .O({NLW_refclk_cnt0_carry__0_O_UNCONNECTED[7],p_0_in__1[15:9]}),
        .S({1'b0,refclk_cnt_reg[15:9]}));
  LUT1 #(
    .INIT(2'h1)) 
    \refclk_cnt[0]_i_1 
       (.I0(refclk_cnt_reg[0]),
        .O(\refclk_cnt[0]_i_1_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \refclk_cnt[15]_i_1 
       (.I0(testclk_en),
        .O(clear));
  FDRE #(
    .INIT(1'b0)) 
    \refclk_cnt_reg[0] 
       (.C(drpclk_in),
        .CE(1'b1),
        .D(\refclk_cnt[0]_i_1_n_0 ),
        .Q(refclk_cnt_reg[0]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \refclk_cnt_reg[10] 
       (.C(drpclk_in),
        .CE(1'b1),
        .D(p_0_in__1[10]),
        .Q(refclk_cnt_reg[10]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \refclk_cnt_reg[11] 
       (.C(drpclk_in),
        .CE(1'b1),
        .D(p_0_in__1[11]),
        .Q(refclk_cnt_reg[11]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \refclk_cnt_reg[12] 
       (.C(drpclk_in),
        .CE(1'b1),
        .D(p_0_in__1[12]),
        .Q(refclk_cnt_reg[12]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \refclk_cnt_reg[13] 
       (.C(drpclk_in),
        .CE(1'b1),
        .D(p_0_in__1[13]),
        .Q(refclk_cnt_reg[13]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \refclk_cnt_reg[14] 
       (.C(drpclk_in),
        .CE(1'b1),
        .D(p_0_in__1[14]),
        .Q(refclk_cnt_reg[14]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \refclk_cnt_reg[15] 
       (.C(drpclk_in),
        .CE(1'b1),
        .D(p_0_in__1[15]),
        .Q(refclk_cnt_reg[15]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \refclk_cnt_reg[1] 
       (.C(drpclk_in),
        .CE(1'b1),
        .D(p_0_in__1[1]),
        .Q(refclk_cnt_reg[1]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \refclk_cnt_reg[2] 
       (.C(drpclk_in),
        .CE(1'b1),
        .D(p_0_in__1[2]),
        .Q(refclk_cnt_reg[2]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \refclk_cnt_reg[3] 
       (.C(drpclk_in),
        .CE(1'b1),
        .D(p_0_in__1[3]),
        .Q(refclk_cnt_reg[3]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \refclk_cnt_reg[4] 
       (.C(drpclk_in),
        .CE(1'b1),
        .D(p_0_in__1[4]),
        .Q(refclk_cnt_reg[4]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \refclk_cnt_reg[5] 
       (.C(drpclk_in),
        .CE(1'b1),
        .D(p_0_in__1[5]),
        .Q(refclk_cnt_reg[5]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \refclk_cnt_reg[6] 
       (.C(drpclk_in),
        .CE(1'b1),
        .D(p_0_in__1[6]),
        .Q(refclk_cnt_reg[6]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \refclk_cnt_reg[7] 
       (.C(drpclk_in),
        .CE(1'b1),
        .D(p_0_in__1[7]),
        .Q(refclk_cnt_reg[7]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \refclk_cnt_reg[8] 
       (.C(drpclk_in),
        .CE(1'b1),
        .D(p_0_in__1[8]),
        .Q(refclk_cnt_reg[8]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \refclk_cnt_reg[9] 
       (.C(drpclk_in),
        .CE(1'b1),
        .D(p_0_in__1[9]),
        .Q(refclk_cnt_reg[9]),
        .R(clear));
  LUT6 #(
    .INIT(64'h5555555500000111)) 
    \repeat_ctr[3]_i_1 
       (.I0(cal_on_tx_reset_in_sync),
        .I1(\repeat_ctr_reg[3] ),
        .I2(CO),
        .I3(\repeat_ctr_reg[3]_0 ),
        .I4(\repeat_ctr[3]_i_4_n_0 ),
        .I5(Q[0]),
        .O(rst_in_out_reg));
  (* SOFT_HLUTNM = "soft_lutpair59" *) 
  LUT2 #(
    .INIT(4'h7)) 
    \repeat_ctr[3]_i_4 
       (.I0(done_o_reg_0),
        .I1(Q[3]),
        .O(\repeat_ctr[3]_i_4_n_0 ));
  PCS_PMA_gtwizard_ultrascale_v1_7_13_reset_synchronizer_28 reset_synchronizer_testclk_rst_inst
       (.out(testclk_rst),
        .rst_in_out(rst_in_out),
        .txoutclkmon(txoutclkmon));
  LUT6 #(
    .INIT(64'hAA2AAAAAAAAAAAAA)) 
    \state[0]_i_1 
       (.I0(testclk_rst),
        .I1(hold_clk_reg[2]),
        .I2(hold_clk_reg[3]),
        .I3(\state[3]_i_2_n_0 ),
        .I4(hold_clk_reg[4]),
        .I5(hold_clk_reg[5]),
        .O(\state[0]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h4F44)) 
    \state[1]_i_1 
       (.I0(\state[1]_i_2_n_0 ),
        .I1(testclk_rst),
        .I2(\state[2]_i_2_n_0 ),
        .I3(testclk_en),
        .O(\state[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h7FFFFFFFFFFFFFFF)) 
    \state[1]_i_2 
       (.I0(hold_clk_reg[5]),
        .I1(hold_clk_reg[4]),
        .I2(hold_clk_reg[1]),
        .I3(hold_clk_reg[0]),
        .I4(hold_clk_reg[3]),
        .I5(hold_clk_reg[2]),
        .O(\state[1]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \state[2]_i_1 
       (.I0(\state[2]_i_2_n_0 ),
        .I1(testclk_en),
        .I2(\state[2]_i_3_n_0 ),
        .I3(\state_reg_n_0_[2] ),
        .O(\state[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000020)) 
    \state[2]_i_2 
       (.I0(refclk_cnt_reg[13]),
        .I1(refclk_cnt_reg[14]),
        .I2(refclk_cnt_reg[12]),
        .I3(refclk_cnt_reg[15]),
        .I4(\state[2]_i_4_n_0 ),
        .I5(\state[2]_i_5_n_0 ),
        .O(\state[2]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFF7FFFFFFFFFFFF)) 
    \state[2]_i_3 
       (.I0(hold_clk_reg[0]),
        .I1(hold_clk_reg[1]),
        .I2(hold_clk_reg[4]),
        .I3(hold_clk_reg[5]),
        .I4(hold_clk_reg[3]),
        .I5(hold_clk_reg[2]),
        .O(\state[2]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \state[2]_i_4 
       (.I0(refclk_cnt_reg[0]),
        .I1(refclk_cnt_reg[1]),
        .I2(refclk_cnt_reg[2]),
        .I3(refclk_cnt_reg[3]),
        .I4(refclk_cnt_reg[4]),
        .I5(refclk_cnt_reg[5]),
        .O(\state[2]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFBFFFFFFFFFFFFFF)) 
    \state[2]_i_5 
       (.I0(refclk_cnt_reg[6]),
        .I1(refclk_cnt_reg[7]),
        .I2(refclk_cnt_reg[8]),
        .I3(refclk_cnt_reg[10]),
        .I4(refclk_cnt_reg[11]),
        .I5(refclk_cnt_reg[9]),
        .O(\state[2]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000080)) 
    \state[3]_i_1 
       (.I0(\state_reg_n_0_[2] ),
        .I1(hold_clk_reg[2]),
        .I2(hold_clk_reg[3]),
        .I3(\state[3]_i_2_n_0 ),
        .I4(hold_clk_reg[4]),
        .I5(hold_clk_reg[5]),
        .O(\state[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair61" *) 
  LUT2 #(
    .INIT(4'h7)) 
    \state[3]_i_2 
       (.I0(hold_clk_reg[1]),
        .I1(hold_clk_reg[0]),
        .O(\state[3]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \state[4]_i_1 
       (.I0(p_1_in),
        .I1(\state_reg_n_0_[4] ),
        .O(\state[4]_i_1_n_0 ));
  FDPE #(
    .INIT(1'b1)) 
    \state_reg[0] 
       (.C(drpclk_in),
        .CE(1'b1),
        .D(\state[0]_i_1_n_0 ),
        .PRE(\state_reg[1]_0 ),
        .Q(testclk_rst));
  FDCE #(
    .INIT(1'b0)) 
    \state_reg[1] 
       (.C(drpclk_in),
        .CE(1'b1),
        .CLR(\state_reg[1]_0 ),
        .D(\state[1]_i_1_n_0 ),
        .Q(testclk_en));
  FDCE #(
    .INIT(1'b0)) 
    \state_reg[2] 
       (.C(drpclk_in),
        .CE(1'b1),
        .CLR(\state_reg[1]_0 ),
        .D(\state[2]_i_1_n_0 ),
        .Q(\state_reg_n_0_[2] ));
  FDCE #(
    .INIT(1'b0)) 
    \state_reg[3] 
       (.C(drpclk_in),
        .CE(1'b1),
        .CLR(\state_reg[1]_0 ),
        .D(\state[3]_i_1_n_0 ),
        .Q(p_1_in));
  FDCE #(
    .INIT(1'b0)) 
    \state_reg[4] 
       (.C(drpclk_in),
        .CE(1'b1),
        .CLR(\state_reg[1]_0 ),
        .D(\state[4]_i_1_n_0 ),
        .Q(\state_reg_n_0_[4] ));
  LUT5 #(
    .INIT(32'h00000020)) 
    testclk_cnt0
       (.I0(testclk_en_dly2),
        .I1(testclk_div4[1]),
        .I2(testclk_div4[3]),
        .I3(testclk_div4[2]),
        .I4(testclk_div4[0]),
        .O(testclk_cnt0_n_0));
  FDCE #(
    .INIT(1'b0)) 
    \testclk_cnt_reg[0] 
       (.C(txoutclkmon),
        .CE(testclk_cnt0_n_0),
        .CLR(rst_in_out),
        .D(O[0]),
        .Q(testclk_cnt_reg));
  FDCE #(
    .INIT(1'b0)) 
    \testclk_cnt_reg[10] 
       (.C(txoutclkmon),
        .CE(testclk_cnt0_n_0),
        .CLR(rst_in_out),
        .D(\testclk_cnt_reg[15]_0 [2]),
        .Q(D[9]));
  FDCE #(
    .INIT(1'b0)) 
    \testclk_cnt_reg[11] 
       (.C(txoutclkmon),
        .CE(testclk_cnt0_n_0),
        .CLR(rst_in_out),
        .D(\testclk_cnt_reg[15]_0 [3]),
        .Q(D[10]));
  FDCE #(
    .INIT(1'b0)) 
    \testclk_cnt_reg[12] 
       (.C(txoutclkmon),
        .CE(testclk_cnt0_n_0),
        .CLR(rst_in_out),
        .D(\testclk_cnt_reg[15]_0 [4]),
        .Q(D[11]));
  FDCE #(
    .INIT(1'b0)) 
    \testclk_cnt_reg[13] 
       (.C(txoutclkmon),
        .CE(testclk_cnt0_n_0),
        .CLR(rst_in_out),
        .D(\testclk_cnt_reg[15]_0 [5]),
        .Q(D[12]));
  FDCE #(
    .INIT(1'b0)) 
    \testclk_cnt_reg[14] 
       (.C(txoutclkmon),
        .CE(testclk_cnt0_n_0),
        .CLR(rst_in_out),
        .D(\testclk_cnt_reg[15]_0 [6]),
        .Q(D[13]));
  FDCE #(
    .INIT(1'b0)) 
    \testclk_cnt_reg[15] 
       (.C(txoutclkmon),
        .CE(testclk_cnt0_n_0),
        .CLR(rst_in_out),
        .D(\testclk_cnt_reg[15]_0 [7]),
        .Q(D[14]));
  FDCE #(
    .INIT(1'b0)) 
    \testclk_cnt_reg[16] 
       (.C(txoutclkmon),
        .CE(testclk_cnt0_n_0),
        .CLR(rst_in_out),
        .D(\testclk_cnt_reg[17]_0 [0]),
        .Q(D[15]));
  FDCE #(
    .INIT(1'b0)) 
    \testclk_cnt_reg[17] 
       (.C(txoutclkmon),
        .CE(testclk_cnt0_n_0),
        .CLR(rst_in_out),
        .D(\testclk_cnt_reg[17]_0 [1]),
        .Q(D[16]));
  FDCE #(
    .INIT(1'b0)) 
    \testclk_cnt_reg[1] 
       (.C(txoutclkmon),
        .CE(testclk_cnt0_n_0),
        .CLR(rst_in_out),
        .D(O[1]),
        .Q(D[0]));
  FDCE #(
    .INIT(1'b0)) 
    \testclk_cnt_reg[2] 
       (.C(txoutclkmon),
        .CE(testclk_cnt0_n_0),
        .CLR(rst_in_out),
        .D(O[2]),
        .Q(D[1]));
  FDCE #(
    .INIT(1'b0)) 
    \testclk_cnt_reg[3] 
       (.C(txoutclkmon),
        .CE(testclk_cnt0_n_0),
        .CLR(rst_in_out),
        .D(O[3]),
        .Q(D[2]));
  FDCE #(
    .INIT(1'b0)) 
    \testclk_cnt_reg[4] 
       (.C(txoutclkmon),
        .CE(testclk_cnt0_n_0),
        .CLR(rst_in_out),
        .D(O[4]),
        .Q(D[3]));
  FDCE #(
    .INIT(1'b0)) 
    \testclk_cnt_reg[5] 
       (.C(txoutclkmon),
        .CE(testclk_cnt0_n_0),
        .CLR(rst_in_out),
        .D(O[5]),
        .Q(D[4]));
  FDCE #(
    .INIT(1'b0)) 
    \testclk_cnt_reg[6] 
       (.C(txoutclkmon),
        .CE(testclk_cnt0_n_0),
        .CLR(rst_in_out),
        .D(O[6]),
        .Q(D[5]));
  FDCE #(
    .INIT(1'b0)) 
    \testclk_cnt_reg[7] 
       (.C(txoutclkmon),
        .CE(testclk_cnt0_n_0),
        .CLR(rst_in_out),
        .D(O[7]),
        .Q(D[6]));
  FDCE #(
    .INIT(1'b0)) 
    \testclk_cnt_reg[8] 
       (.C(txoutclkmon),
        .CE(testclk_cnt0_n_0),
        .CLR(rst_in_out),
        .D(\testclk_cnt_reg[15]_0 [0]),
        .Q(D[7]));
  FDCE #(
    .INIT(1'b0)) 
    \testclk_cnt_reg[9] 
       (.C(txoutclkmon),
        .CE(testclk_cnt0_n_0),
        .CLR(rst_in_out),
        .D(\testclk_cnt_reg[15]_0 [1]),
        .Q(D[8]));
  FDSE #(
    .INIT(1'b1)) 
    \testclk_div4_reg[0] 
       (.C(txoutclkmon),
        .CE(1'b1),
        .D(testclk_div4[3]),
        .Q(testclk_div4[0]),
        .S(tstclk_rst_dly2));
  FDRE #(
    .INIT(1'b0)) 
    \testclk_div4_reg[1] 
       (.C(txoutclkmon),
        .CE(1'b1),
        .D(testclk_div4[0]),
        .Q(testclk_div4[1]),
        .R(tstclk_rst_dly2));
  FDRE #(
    .INIT(1'b0)) 
    \testclk_div4_reg[2] 
       (.C(txoutclkmon),
        .CE(1'b1),
        .D(testclk_div4[1]),
        .Q(testclk_div4[2]),
        .R(tstclk_rst_dly2));
  FDRE #(
    .INIT(1'b0)) 
    \testclk_div4_reg[3] 
       (.C(txoutclkmon),
        .CE(1'b1),
        .D(testclk_div4[2]),
        .Q(testclk_div4[3]),
        .R(tstclk_rst_dly2));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE testclk_en_dly1_reg
       (.C(txoutclkmon),
        .CE(1'b1),
        .D(testclk_en),
        .Q(testclk_en_dly1),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE testclk_en_dly2_reg
       (.C(txoutclkmon),
        .CE(1'b1),
        .D(testclk_en_dly1),
        .Q(testclk_en_dly2),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE tstclk_rst_dly1_reg
       (.C(txoutclkmon),
        .CE(1'b1),
        .D(testclk_rst),
        .Q(tstclk_rst_dly1),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE tstclk_rst_dly2_reg
       (.C(txoutclkmon),
        .CE(1'b1),
        .D(tstclk_rst_dly1),
        .Q(tstclk_rst_dly2),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "gtwizard_ultrascale_v1_7_13_gthe4_cpll_cal_tx" *) 
module PCS_PMA_gtwizard_ultrascale_v1_7_13_gthe4_cpll_cal_tx
   (\gen_gtwizard_gthe4.txprogdivreset_ch_int ,
    cpllpd_int_reg_0,
    cpllreset_int_reg_0,
    USER_CPLLLOCK_OUT_reg_0,
    cal_on_tx_drpen_out,
    cal_on_tx_drpwe_out,
    D,
    rst_in0,
    S,
    \non_pcie_txoutclksel.GTHE4_TXOUTCLKSEL_OUT_reg[2]_0 ,
    \daddr_reg[7]_0 ,
    \di_reg[15]_0 ,
    in0,
    i_in_meta_reg,
    i_in_meta_reg_0,
    txoutclk_out,
    drpclk_in,
    cal_on_tx_reset_in_sync,
    O,
    \testclk_cnt_reg[15] ,
    \testclk_cnt_reg[17] ,
    Q,
    cal_on_tx_drdy,
    lopt,
    lopt_1);
  output \gen_gtwizard_gthe4.txprogdivreset_ch_int ;
  output cpllpd_int_reg_0;
  output cpllreset_int_reg_0;
  output USER_CPLLLOCK_OUT_reg_0;
  output cal_on_tx_drpen_out;
  output cal_on_tx_drpwe_out;
  output [16:0]D;
  output rst_in0;
  output [0:0]S;
  output [2:0]\non_pcie_txoutclksel.GTHE4_TXOUTCLKSEL_OUT_reg[2]_0 ;
  output [6:0]\daddr_reg[7]_0 ;
  output [15:0]\di_reg[15]_0 ;
  input in0;
  input i_in_meta_reg;
  input i_in_meta_reg_0;
  input [0:0]txoutclk_out;
  input [0:0]drpclk_in;
  input cal_on_tx_reset_in_sync;
  input [7:0]O;
  input [7:0]\testclk_cnt_reg[15] ;
  input [1:0]\testclk_cnt_reg[17] ;
  input [15:0]Q;
  input cal_on_tx_drdy;
  input lopt;
  input lopt_1;

  wire [16:0]D;
  wire [7:0]O;
  wire [15:0]Q;
  wire [0:0]S;
  wire USER_CPLLLOCK_OUT_reg_0;
  wire U_TXOUTCLK_FREQ_COUNTER_n_0;
  wire U_TXOUTCLK_FREQ_COUNTER_n_18;
  wire U_TXOUTCLK_FREQ_COUNTER_n_19;
  wire U_TXOUTCLK_FREQ_COUNTER_n_23;
  wire U_TXOUTCLK_FREQ_COUNTER_n_24;
  wire U_TXOUTCLK_FREQ_COUNTER_n_25;
  wire U_TXOUTCLK_FREQ_COUNTER_n_26;
  wire U_TXOUTCLK_FREQ_COUNTER_n_27;
  wire U_TXOUTCLK_FREQ_COUNTER_n_28;
  wire U_TXOUTCLK_FREQ_COUNTER_n_29;
  wire U_TXOUTCLK_FREQ_COUNTER_n_30;
  wire U_TXOUTCLK_FREQ_COUNTER_n_31;
  wire U_TXOUTCLK_FREQ_COUNTER_n_32;
  wire U_TXOUTCLK_FREQ_COUNTER_n_33;
  wire U_TXOUTCLK_FREQ_COUNTER_n_34;
  wire U_TXOUTCLK_FREQ_COUNTER_n_35;
  wire U_TXOUTCLK_FREQ_COUNTER_n_36;
  wire U_TXOUTCLK_FREQ_COUNTER_n_37;
  wire U_TXOUTCLK_FREQ_COUNTER_n_38;
  wire U_TXOUTCLK_FREQ_COUNTER_n_39;
  wire U_TXOUTCLK_FREQ_COUNTER_n_40;
  wire U_TXOUTCLK_FREQ_COUNTER_n_41;
  wire U_TXOUTCLK_FREQ_COUNTER_n_42;
  wire U_TXOUTCLK_FREQ_COUNTER_n_43;
  wire U_TXOUTCLK_FREQ_COUNTER_n_44;
  wire U_TXOUTCLK_FREQ_COUNTER_n_45;
  wire U_TXOUTCLK_FREQ_COUNTER_n_46;
  wire U_TXOUTCLK_FREQ_COUNTER_n_47;
  wire U_TXOUTCLK_FREQ_COUNTER_n_48;
  wire U_TXOUTCLK_FREQ_COUNTER_n_49;
  wire U_TXOUTCLK_FREQ_COUNTER_n_50;
  wire U_TXOUTCLK_FREQ_COUNTER_n_51;
  wire bit_synchronizer_cplllock_inst_n_0;
  wire bit_synchronizer_cplllock_inst_n_1;
  wire bit_synchronizer_txoutclksel_inst0_n_0;
  wire bit_synchronizer_txoutclksel_inst1_n_0;
  wire bit_synchronizer_txoutclksel_inst2_n_0;
  wire bit_synchronizer_txprgdivresetdone_inst_n_0;
  wire bit_synchronizer_txprogdivreset_inst_n_0;
  wire cal_fail_store__0;
  wire cal_fail_store_i_4_n_0;
  wire cal_on_tx_drdy;
  wire cal_on_tx_drpen_out;
  wire cal_on_tx_drpwe_out;
  wire cal_on_tx_reset_in_sync;
  wire cpll_cal_state2;
  wire cpll_cal_state26_in;
  wire cpll_cal_state2_carry_n_1;
  wire cpll_cal_state2_carry_n_2;
  wire cpll_cal_state2_carry_n_3;
  wire cpll_cal_state2_carry_n_4;
  wire cpll_cal_state2_carry_n_5;
  wire cpll_cal_state2_carry_n_6;
  wire cpll_cal_state2_carry_n_7;
  wire \cpll_cal_state2_inferred__0/i__carry_n_0 ;
  wire \cpll_cal_state2_inferred__0/i__carry_n_1 ;
  wire \cpll_cal_state2_inferred__0/i__carry_n_2 ;
  wire \cpll_cal_state2_inferred__0/i__carry_n_3 ;
  wire \cpll_cal_state2_inferred__0/i__carry_n_4 ;
  wire \cpll_cal_state2_inferred__0/i__carry_n_5 ;
  wire \cpll_cal_state2_inferred__0/i__carry_n_6 ;
  wire \cpll_cal_state2_inferred__0/i__carry_n_7 ;
  wire [31:1]cpll_cal_state7_out;
  wire \cpll_cal_state[17]_i_2_n_0 ;
  wire \cpll_cal_state[17]_i_3_n_0 ;
  wire \cpll_cal_state[17]_i_4_n_0 ;
  wire \cpll_cal_state[17]_i_5_n_0 ;
  wire \cpll_cal_state[17]_i_6_n_0 ;
  wire \cpll_cal_state[17]_i_7_n_0 ;
  wire \cpll_cal_state[17]_i_8_n_0 ;
  wire \cpll_cal_state_reg_n_0_[0] ;
  wire \cpll_cal_state_reg_n_0_[12] ;
  wire \cpll_cal_state_reg_n_0_[27] ;
  wire \cpll_cal_state_reg_n_0_[28] ;
  wire \cpll_cal_state_reg_n_0_[29] ;
  wire \cpll_cal_state_reg_n_0_[30] ;
  wire \cpll_cal_state_reg_n_0_[31] ;
  wire cpllpd_int_i_1_n_0;
  wire cpllpd_int_reg_0;
  wire cpllreset_int_i_1_n_0;
  wire cpllreset_int_reg_0;
  wire [4:1]daddr0_in;
  wire \daddr[2]_i_1__0_n_0 ;
  wire \daddr[5]_i_1__0_n_0 ;
  wire \daddr[5]_i_2_n_0 ;
  wire \daddr[6]_i_1__0_n_0 ;
  wire \daddr[6]_i_2_n_0 ;
  wire \daddr[7]_i_1__0_n_0 ;
  wire \daddr[7]_i_2__0_n_0 ;
  wire [6:0]\daddr_reg[7]_0 ;
  wire den_i_1_n_0;
  wire \di_msk[0]_i_1_n_0 ;
  wire \di_msk[10]_i_1_n_0 ;
  wire \di_msk[11]_i_1_n_0 ;
  wire \di_msk[12]_i_1_n_0 ;
  wire \di_msk[12]_i_2_n_0 ;
  wire \di_msk[12]_i_3_n_0 ;
  wire \di_msk[13]_i_1_n_0 ;
  wire \di_msk[13]_i_2_n_0 ;
  wire \di_msk[14]_i_1_n_0 ;
  wire \di_msk[14]_i_2_n_0 ;
  wire \di_msk[15]_i_1_n_0 ;
  wire \di_msk[15]_i_2_n_0 ;
  wire \di_msk[15]_i_3_n_0 ;
  wire \di_msk[15]_i_4_n_0 ;
  wire \di_msk[1]_i_1_n_0 ;
  wire \di_msk[1]_i_2_n_0 ;
  wire \di_msk[2]_i_1_n_0 ;
  wire \di_msk[3]_i_1_n_0 ;
  wire \di_msk[4]_i_1_n_0 ;
  wire \di_msk[5]_i_1_n_0 ;
  wire \di_msk[5]_i_2_n_0 ;
  wire \di_msk[6]_i_1_n_0 ;
  wire \di_msk[6]_i_2_n_0 ;
  wire \di_msk[7]_i_1_n_0 ;
  wire \di_msk[8]_i_1_n_0 ;
  wire \di_msk[9]_i_1_n_0 ;
  wire \di_msk_reg_n_0_[0] ;
  wire \di_msk_reg_n_0_[10] ;
  wire \di_msk_reg_n_0_[11] ;
  wire \di_msk_reg_n_0_[12] ;
  wire \di_msk_reg_n_0_[13] ;
  wire \di_msk_reg_n_0_[14] ;
  wire \di_msk_reg_n_0_[15] ;
  wire \di_msk_reg_n_0_[1] ;
  wire \di_msk_reg_n_0_[2] ;
  wire \di_msk_reg_n_0_[3] ;
  wire \di_msk_reg_n_0_[4] ;
  wire \di_msk_reg_n_0_[5] ;
  wire \di_msk_reg_n_0_[6] ;
  wire \di_msk_reg_n_0_[7] ;
  wire \di_msk_reg_n_0_[8] ;
  wire \di_msk_reg_n_0_[9] ;
  wire [15:0]\di_reg[15]_0 ;
  wire drp_done;
  wire \drp_state[0]_i_1__0_n_0 ;
  wire \drp_state[1]_i_1__0_n_0 ;
  wire \drp_state[2]_i_1__0_n_0 ;
  wire \drp_state[3]_i_1_n_0 ;
  wire \drp_state[4]_i_1__0_n_0 ;
  wire \drp_state[5]_i_1__0_n_0 ;
  wire \drp_state[6]_i_1__0_n_0 ;
  wire \drp_state_reg_n_0_[0] ;
  wire \drp_state_reg_n_0_[1] ;
  wire \drp_state_reg_n_0_[2] ;
  wire \drp_state_reg_n_0_[3] ;
  wire \drp_state_reg_n_0_[4] ;
  wire \drp_state_reg_n_0_[5] ;
  wire [0:0]drpclk_in;
  wire dwe_i_1_n_0;
  wire freq_counter_rst_reg_n_0;
  wire \gen_gtwizard_gthe4.txprogdivreset_ch_int ;
  wire i_in_meta_reg;
  wire i_in_meta_reg_0;
  wire in0;
  wire lopt;
  wire lopt_1;
  wire mask_user_in_i_1_n_0;
  wire mask_user_in_reg_n_0;
  wire [2:0]\non_pcie_txoutclksel.GTHE4_TXOUTCLKSEL_OUT_reg[2]_0 ;
  wire p_0_in;
  wire p_0_in0_in;
  wire p_0_in3_in;
  wire p_0_in7_in;
  wire p_11_in;
  wire p_12_in;
  wire p_13_in;
  wire p_14_in;
  wire p_15_in;
  wire p_16_in;
  wire p_17_in;
  wire p_18_in;
  wire p_1_in;
  wire p_1_in10_in;
  wire p_1_in2_in;
  wire p_1_in5_in;
  wire p_25_in;
  wire p_29_in;
  wire p_2_in;
  wire p_2_in1_in;
  wire p_2_in4_in;
  wire p_2_in8_in;
  wire p_3_in;
  wire p_3_in9_in;
  wire p_4_in;
  wire progclk_sel_store;
  wire \progclk_sel_store_reg_n_0_[0] ;
  wire \progclk_sel_store_reg_n_0_[10] ;
  wire \progclk_sel_store_reg_n_0_[11] ;
  wire \progclk_sel_store_reg_n_0_[12] ;
  wire \progclk_sel_store_reg_n_0_[13] ;
  wire \progclk_sel_store_reg_n_0_[14] ;
  wire \progclk_sel_store_reg_n_0_[1] ;
  wire \progclk_sel_store_reg_n_0_[2] ;
  wire \progclk_sel_store_reg_n_0_[3] ;
  wire \progclk_sel_store_reg_n_0_[4] ;
  wire \progclk_sel_store_reg_n_0_[5] ;
  wire \progclk_sel_store_reg_n_0_[6] ;
  wire \progclk_sel_store_reg_n_0_[7] ;
  wire \progclk_sel_store_reg_n_0_[8] ;
  wire \progclk_sel_store_reg_n_0_[9] ;
  wire progdiv_cfg_store;
  wire \progdiv_cfg_store[15]_i_1_n_0 ;
  wire \progdiv_cfg_store_reg_n_0_[0] ;
  wire \progdiv_cfg_store_reg_n_0_[10] ;
  wire \progdiv_cfg_store_reg_n_0_[11] ;
  wire \progdiv_cfg_store_reg_n_0_[12] ;
  wire \progdiv_cfg_store_reg_n_0_[13] ;
  wire \progdiv_cfg_store_reg_n_0_[14] ;
  wire \progdiv_cfg_store_reg_n_0_[15] ;
  wire \progdiv_cfg_store_reg_n_0_[1] ;
  wire \progdiv_cfg_store_reg_n_0_[2] ;
  wire \progdiv_cfg_store_reg_n_0_[3] ;
  wire \progdiv_cfg_store_reg_n_0_[4] ;
  wire \progdiv_cfg_store_reg_n_0_[5] ;
  wire \progdiv_cfg_store_reg_n_0_[6] ;
  wire \progdiv_cfg_store_reg_n_0_[7] ;
  wire \progdiv_cfg_store_reg_n_0_[8] ;
  wire \progdiv_cfg_store_reg_n_0_[9] ;
  wire rd;
  wire rd_i_1__0_n_0;
  wire rd_i_2_n_0;
  wire \repeat_ctr[0]_i_1_n_0 ;
  wire \repeat_ctr[1]_i_1_n_0 ;
  wire \repeat_ctr[2]_i_1_n_0 ;
  wire \repeat_ctr[3]_i_2_n_0 ;
  wire \repeat_ctr[3]_i_3_n_0 ;
  wire \repeat_ctr_reg_n_0_[0] ;
  wire \repeat_ctr_reg_n_0_[1] ;
  wire \repeat_ctr_reg_n_0_[2] ;
  wire \repeat_ctr_reg_n_0_[3] ;
  wire rst_in0;
  wire status_store__0;
  wire status_store_i_1_n_0;
  wire [7:0]\testclk_cnt_reg[15] ;
  wire [1:0]\testclk_cnt_reg[17] ;
  wire [0:0]txoutclk_out;
  wire txoutclkmon;
  wire [2:2]txoutclksel_int;
  wire \txoutclksel_int[2]_i_1_n_0 ;
  wire txprogdivreset_int;
  wire txprogdivreset_int_i_1_n_0;
  wire wait_ctr0_carry__0_n_0;
  wire wait_ctr0_carry__0_n_1;
  wire wait_ctr0_carry__0_n_10;
  wire wait_ctr0_carry__0_n_11;
  wire wait_ctr0_carry__0_n_12;
  wire wait_ctr0_carry__0_n_13;
  wire wait_ctr0_carry__0_n_14;
  wire wait_ctr0_carry__0_n_15;
  wire wait_ctr0_carry__0_n_2;
  wire wait_ctr0_carry__0_n_3;
  wire wait_ctr0_carry__0_n_4;
  wire wait_ctr0_carry__0_n_5;
  wire wait_ctr0_carry__0_n_6;
  wire wait_ctr0_carry__0_n_7;
  wire wait_ctr0_carry__0_n_8;
  wire wait_ctr0_carry__0_n_9;
  wire wait_ctr0_carry__1_n_1;
  wire wait_ctr0_carry__1_n_10;
  wire wait_ctr0_carry__1_n_11;
  wire wait_ctr0_carry__1_n_12;
  wire wait_ctr0_carry__1_n_13;
  wire wait_ctr0_carry__1_n_14;
  wire wait_ctr0_carry__1_n_15;
  wire wait_ctr0_carry__1_n_2;
  wire wait_ctr0_carry__1_n_3;
  wire wait_ctr0_carry__1_n_4;
  wire wait_ctr0_carry__1_n_5;
  wire wait_ctr0_carry__1_n_6;
  wire wait_ctr0_carry__1_n_7;
  wire wait_ctr0_carry__1_n_8;
  wire wait_ctr0_carry__1_n_9;
  wire wait_ctr0_carry_n_0;
  wire wait_ctr0_carry_n_1;
  wire wait_ctr0_carry_n_10;
  wire wait_ctr0_carry_n_11;
  wire wait_ctr0_carry_n_12;
  wire wait_ctr0_carry_n_13;
  wire wait_ctr0_carry_n_14;
  wire wait_ctr0_carry_n_15;
  wire wait_ctr0_carry_n_2;
  wire wait_ctr0_carry_n_3;
  wire wait_ctr0_carry_n_4;
  wire wait_ctr0_carry_n_5;
  wire wait_ctr0_carry_n_6;
  wire wait_ctr0_carry_n_7;
  wire wait_ctr0_carry_n_8;
  wire wait_ctr0_carry_n_9;
  wire \wait_ctr[0]_i_1_n_0 ;
  wire \wait_ctr[10]_i_1_n_0 ;
  wire \wait_ctr[11]_i_1_n_0 ;
  wire \wait_ctr[12]_i_1_n_0 ;
  wire \wait_ctr[13]_i_1_n_0 ;
  wire \wait_ctr[14]_i_1_n_0 ;
  wire \wait_ctr[15]_i_1_n_0 ;
  wire \wait_ctr[16]_i_1_n_0 ;
  wire \wait_ctr[17]_i_1_n_0 ;
  wire \wait_ctr[18]_i_1_n_0 ;
  wire \wait_ctr[19]_i_1_n_0 ;
  wire \wait_ctr[1]_i_1_n_0 ;
  wire \wait_ctr[20]_i_1_n_0 ;
  wire \wait_ctr[21]_i_1_n_0 ;
  wire \wait_ctr[22]_i_1_n_0 ;
  wire \wait_ctr[23]_i_1_n_0 ;
  wire \wait_ctr[24]_i_1_n_0 ;
  wire \wait_ctr[24]_i_2_n_0 ;
  wire \wait_ctr[2]_i_1_n_0 ;
  wire \wait_ctr[3]_i_1_n_0 ;
  wire \wait_ctr[5]_i_1_n_0 ;
  wire \wait_ctr[6]_i_1_n_0 ;
  wire \wait_ctr[9]_i_10_n_0 ;
  wire \wait_ctr[9]_i_11_n_0 ;
  wire \wait_ctr[9]_i_12_n_0 ;
  wire \wait_ctr[9]_i_13_n_0 ;
  wire \wait_ctr[9]_i_14_n_0 ;
  wire \wait_ctr[9]_i_1_n_0 ;
  wire \wait_ctr[9]_i_2_n_0 ;
  wire \wait_ctr[9]_i_3_n_0 ;
  wire \wait_ctr[9]_i_4_n_0 ;
  wire \wait_ctr[9]_i_5_n_0 ;
  wire \wait_ctr[9]_i_6_n_0 ;
  wire \wait_ctr[9]_i_7_n_0 ;
  wire \wait_ctr[9]_i_8_n_0 ;
  wire \wait_ctr[9]_i_9_n_0 ;
  wire \wait_ctr_reg_n_0_[0] ;
  wire \wait_ctr_reg_n_0_[10] ;
  wire \wait_ctr_reg_n_0_[11] ;
  wire \wait_ctr_reg_n_0_[12] ;
  wire \wait_ctr_reg_n_0_[13] ;
  wire \wait_ctr_reg_n_0_[14] ;
  wire \wait_ctr_reg_n_0_[15] ;
  wire \wait_ctr_reg_n_0_[16] ;
  wire \wait_ctr_reg_n_0_[17] ;
  wire \wait_ctr_reg_n_0_[18] ;
  wire \wait_ctr_reg_n_0_[19] ;
  wire \wait_ctr_reg_n_0_[1] ;
  wire \wait_ctr_reg_n_0_[20] ;
  wire \wait_ctr_reg_n_0_[21] ;
  wire \wait_ctr_reg_n_0_[22] ;
  wire \wait_ctr_reg_n_0_[23] ;
  wire \wait_ctr_reg_n_0_[24] ;
  wire \wait_ctr_reg_n_0_[2] ;
  wire \wait_ctr_reg_n_0_[3] ;
  wire \wait_ctr_reg_n_0_[4] ;
  wire \wait_ctr_reg_n_0_[5] ;
  wire \wait_ctr_reg_n_0_[6] ;
  wire \wait_ctr_reg_n_0_[7] ;
  wire \wait_ctr_reg_n_0_[8] ;
  wire \wait_ctr_reg_n_0_[9] ;
  wire wr;
  wire wr_i_1__0_n_0;
  wire \x0e1_store[14]_i_1_n_0 ;
  wire \x0e1_store_reg_n_0_[0] ;
  wire \x0e1_store_reg_n_0_[12] ;
  wire \x0e1_store_reg_n_0_[13] ;
  wire \x0e1_store_reg_n_0_[14] ;
  wire \x0e1_store_reg_n_0_[1] ;
  wire \x0e1_store_reg_n_0_[2] ;
  wire \x0e1_store_reg_n_0_[3] ;
  wire \x0e1_store_reg_n_0_[4] ;
  wire \x0e1_store_reg_n_0_[5] ;
  wire \x0e1_store_reg_n_0_[6] ;
  wire \x0e1_store_reg_n_0_[7] ;
  wire \x0e1_store_reg_n_0_[8] ;
  wire \x0e1_store_reg_n_0_[9] ;
  wire [7:0]NLW_cpll_cal_state2_carry_O_UNCONNECTED;
  wire [7:0]\NLW_cpll_cal_state2_inferred__0/i__carry_O_UNCONNECTED ;
  wire [7:1]\NLW_cpll_cal_state2_inferred__0/i__carry__0_CO_UNCONNECTED ;
  wire [7:0]\NLW_cpll_cal_state2_inferred__0/i__carry__0_O_UNCONNECTED ;
  wire [7:7]NLW_wait_ctr0_carry__1_CO_UNCONNECTED;

  FDRE USER_CPLLLOCK_OUT_reg
       (.C(drpclk_in),
        .CE(1'b1),
        .D(bit_synchronizer_cplllock_inst_n_1),
        .Q(USER_CPLLLOCK_OUT_reg_0),
        .R(1'b0));
  PCS_PMA_gtwizard_ultrascale_v1_7_13_gthe4_cpll_cal_freq_counter U_TXOUTCLK_FREQ_COUNTER
       (.CO(cpll_cal_state2),
        .D(D),
        .DI({U_TXOUTCLK_FREQ_COUNTER_n_23,U_TXOUTCLK_FREQ_COUNTER_n_24,U_TXOUTCLK_FREQ_COUNTER_n_25,U_TXOUTCLK_FREQ_COUNTER_n_26,U_TXOUTCLK_FREQ_COUNTER_n_27}),
        .O(O),
        .Q({\cpll_cal_state_reg_n_0_[27] ,p_2_in8_in,p_11_in,p_18_in,\cpll_cal_state_reg_n_0_[12] ,\cpll_cal_state_reg_n_0_[0] }),
        .S(S),
        .cal_fail_store__0(cal_fail_store__0),
        .cal_fail_store_reg(bit_synchronizer_cplllock_inst_n_0),
        .cal_fail_store_reg_0(\repeat_ctr_reg_n_0_[3] ),
        .cal_fail_store_reg_1(cal_fail_store_i_4_n_0),
        .cal_on_tx_reset_in_sync(cal_on_tx_reset_in_sync),
        .\cpll_cal_state_reg[13] (\wait_ctr[9]_i_4_n_0 ),
        .\cpll_cal_state_reg[13]_0 (\repeat_ctr_reg_n_0_[1] ),
        .\cpll_cal_state_reg[13]_1 (\repeat_ctr_reg_n_0_[0] ),
        .\cpll_cal_state_reg[13]_2 (\repeat_ctr_reg_n_0_[2] ),
        .\cpll_cal_state_reg[21] (drp_done),
        .done_o_reg_0(U_TXOUTCLK_FREQ_COUNTER_n_0),
        .done_o_reg_1({cpll_cal_state7_out[21],cpll_cal_state7_out[13]}),
        .drpclk_in(drpclk_in),
        .\freq_cnt_o_reg[0]_0 (U_TXOUTCLK_FREQ_COUNTER_n_49),
        .\freq_cnt_o_reg[14]_0 ({U_TXOUTCLK_FREQ_COUNTER_n_41,U_TXOUTCLK_FREQ_COUNTER_n_42,U_TXOUTCLK_FREQ_COUNTER_n_43,U_TXOUTCLK_FREQ_COUNTER_n_44,U_TXOUTCLK_FREQ_COUNTER_n_45,U_TXOUTCLK_FREQ_COUNTER_n_46,U_TXOUTCLK_FREQ_COUNTER_n_47,U_TXOUTCLK_FREQ_COUNTER_n_48}),
        .\freq_cnt_o_reg[15]_0 ({U_TXOUTCLK_FREQ_COUNTER_n_36,U_TXOUTCLK_FREQ_COUNTER_n_37,U_TXOUTCLK_FREQ_COUNTER_n_38,U_TXOUTCLK_FREQ_COUNTER_n_39,U_TXOUTCLK_FREQ_COUNTER_n_40}),
        .\freq_cnt_o_reg[16]_0 ({U_TXOUTCLK_FREQ_COUNTER_n_28,U_TXOUTCLK_FREQ_COUNTER_n_29,U_TXOUTCLK_FREQ_COUNTER_n_30,U_TXOUTCLK_FREQ_COUNTER_n_31,U_TXOUTCLK_FREQ_COUNTER_n_32,U_TXOUTCLK_FREQ_COUNTER_n_33,U_TXOUTCLK_FREQ_COUNTER_n_34,U_TXOUTCLK_FREQ_COUNTER_n_35}),
        .\freq_cnt_o_reg[16]_1 (U_TXOUTCLK_FREQ_COUNTER_n_51),
        .\freq_cnt_o_reg[17]_0 (U_TXOUTCLK_FREQ_COUNTER_n_50),
        .\repeat_ctr_reg[3] (\repeat_ctr[3]_i_3_n_0 ),
        .\repeat_ctr_reg[3]_0 (cpll_cal_state26_in),
        .rst_in_out_reg(U_TXOUTCLK_FREQ_COUNTER_n_18),
        .rst_in_out_reg_0(U_TXOUTCLK_FREQ_COUNTER_n_19),
        .\state_reg[1]_0 (freq_counter_rst_reg_n_0),
        .\testclk_cnt_reg[15]_0 (\testclk_cnt_reg[15] ),
        .\testclk_cnt_reg[17]_0 (\testclk_cnt_reg[17] ),
        .txoutclkmon(txoutclkmon));
  PCS_PMA_gtwizard_ultrascale_v1_7_13_bit_synchronizer_22 bit_synchronizer_cplllock_inst
       (.Q({\cpll_cal_state_reg_n_0_[30] ,\cpll_cal_state_reg_n_0_[0] }),
        .USER_CPLLLOCK_OUT_reg(mask_user_in_reg_n_0),
        .cal_on_tx_reset_in_sync(cal_on_tx_reset_in_sync),
        .\cpll_cal_state_reg[0] (bit_synchronizer_cplllock_inst_n_1),
        .drpclk_in(drpclk_in),
        .i_in_out_reg_0(bit_synchronizer_cplllock_inst_n_0),
        .in0(in0));
  PCS_PMA_gtwizard_ultrascale_v1_7_13_bit_synchronizer_23 bit_synchronizer_txoutclksel_inst0
       (.D(bit_synchronizer_txoutclksel_inst0_n_0),
        .drpclk_in(drpclk_in),
        .\non_pcie_txoutclksel.GTHE4_TXOUTCLKSEL_OUT_reg[0] (mask_user_in_reg_n_0),
        .txoutclksel_int(txoutclksel_int));
  PCS_PMA_gtwizard_ultrascale_v1_7_13_bit_synchronizer_24 bit_synchronizer_txoutclksel_inst1
       (.D(bit_synchronizer_txoutclksel_inst1_n_0),
        .drpclk_in(drpclk_in),
        .\non_pcie_txoutclksel.GTHE4_TXOUTCLKSEL_OUT_reg[1] (mask_user_in_reg_n_0));
  PCS_PMA_gtwizard_ultrascale_v1_7_13_bit_synchronizer_25 bit_synchronizer_txoutclksel_inst2
       (.D(bit_synchronizer_txoutclksel_inst2_n_0),
        .drpclk_in(drpclk_in),
        .\non_pcie_txoutclksel.GTHE4_TXOUTCLKSEL_OUT_reg[2] (mask_user_in_reg_n_0),
        .txoutclksel_int(txoutclksel_int));
  PCS_PMA_gtwizard_ultrascale_v1_7_13_bit_synchronizer_26 bit_synchronizer_txprgdivresetdone_inst
       (.D({cpll_cal_state7_out[31:29],cpll_cal_state7_out[20:19]}),
        .Q({\cpll_cal_state_reg_n_0_[31] ,\cpll_cal_state_reg_n_0_[30] ,\cpll_cal_state_reg_n_0_[29] ,\cpll_cal_state_reg_n_0_[28] ,p_11_in,p_12_in,p_13_in,p_16_in,p_17_in}),
        .cal_fail_store__0(cal_fail_store__0),
        .cal_on_tx_reset_in_sync(cal_on_tx_reset_in_sync),
        .\cpll_cal_state_reg[14] (bit_synchronizer_txprgdivresetdone_inst_n_0),
        .\cpll_cal_state_reg[19] (\wait_ctr[9]_i_4_n_0 ),
        .\cpll_cal_state_reg[20] (U_TXOUTCLK_FREQ_COUNTER_n_0),
        .drpclk_in(drpclk_in),
        .freq_counter_rst_reg(\wait_ctr[9]_i_7_n_0 ),
        .freq_counter_rst_reg_0(freq_counter_rst_reg_n_0),
        .freq_counter_rst_reg_1(\cpll_cal_state[17]_i_2_n_0 ),
        .i_in_meta_reg_0(i_in_meta_reg_0));
  PCS_PMA_gtwizard_ultrascale_v1_7_13_bit_synchronizer_27 bit_synchronizer_txprogdivreset_inst
       (.drpclk_in(drpclk_in),
        .i_in_meta_reg_0(i_in_meta_reg),
        .\non_pcie_txoutclksel.GTHE4_TXPROGDIVRESET_OUT_reg (mask_user_in_reg_n_0),
        .txprogdivreset_int(txprogdivreset_int),
        .txprogdivreset_int_reg(bit_synchronizer_txprogdivreset_inst_n_0));
  (* OPT_MODIFIED = "MLO" *) 
  (* box_type = "PRIMITIVE" *) 
  BUFG_GT #(
    .SIM_DEVICE("ULTRASCALE"),
    .STARTUP_SYNC("FALSE")) 
    bufg_gt_txoutclkmon_inst
       (.CE(lopt),
        .CEMASK(1'b1),
        .CLR(lopt_1),
        .CLRMASK(1'b1),
        .DIV({1'b0,1'b0,1'b0}),
        .I(txoutclk_out),
        .O(txoutclkmon));
  (* SOFT_HLUTNM = "soft_lutpair82" *) 
  LUT3 #(
    .INIT(8'h7F)) 
    cal_fail_store_i_4
       (.I0(\repeat_ctr_reg_n_0_[1] ),
        .I1(\repeat_ctr_reg_n_0_[0] ),
        .I2(\repeat_ctr_reg_n_0_[2] ),
        .O(cal_fail_store_i_4_n_0));
  FDRE #(
    .INIT(1'b0)) 
    cal_fail_store_reg
       (.C(drpclk_in),
        .CE(1'b1),
        .D(U_TXOUTCLK_FREQ_COUNTER_n_19),
        .Q(cal_fail_store__0),
        .R(1'b0));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY8 cpll_cal_state2_carry
       (.CI(U_TXOUTCLK_FREQ_COUNTER_n_49),
        .CI_TOP(1'b0),
        .CO({cpll_cal_state2,cpll_cal_state2_carry_n_1,cpll_cal_state2_carry_n_2,cpll_cal_state2_carry_n_3,cpll_cal_state2_carry_n_4,cpll_cal_state2_carry_n_5,cpll_cal_state2_carry_n_6,cpll_cal_state2_carry_n_7}),
        .DI({1'b0,1'b0,U_TXOUTCLK_FREQ_COUNTER_n_23,U_TXOUTCLK_FREQ_COUNTER_n_24,U_TXOUTCLK_FREQ_COUNTER_n_25,U_TXOUTCLK_FREQ_COUNTER_n_26,U_TXOUTCLK_FREQ_COUNTER_n_27,1'b0}),
        .O(NLW_cpll_cal_state2_carry_O_UNCONNECTED[7:0]),
        .S({U_TXOUTCLK_FREQ_COUNTER_n_28,U_TXOUTCLK_FREQ_COUNTER_n_29,U_TXOUTCLK_FREQ_COUNTER_n_30,U_TXOUTCLK_FREQ_COUNTER_n_31,U_TXOUTCLK_FREQ_COUNTER_n_32,U_TXOUTCLK_FREQ_COUNTER_n_33,U_TXOUTCLK_FREQ_COUNTER_n_34,U_TXOUTCLK_FREQ_COUNTER_n_35}));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY8 \cpll_cal_state2_inferred__0/i__carry 
       (.CI(1'b1),
        .CI_TOP(1'b0),
        .CO({\cpll_cal_state2_inferred__0/i__carry_n_0 ,\cpll_cal_state2_inferred__0/i__carry_n_1 ,\cpll_cal_state2_inferred__0/i__carry_n_2 ,\cpll_cal_state2_inferred__0/i__carry_n_3 ,\cpll_cal_state2_inferred__0/i__carry_n_4 ,\cpll_cal_state2_inferred__0/i__carry_n_5 ,\cpll_cal_state2_inferred__0/i__carry_n_6 ,\cpll_cal_state2_inferred__0/i__carry_n_7 }),
        .DI({U_TXOUTCLK_FREQ_COUNTER_n_36,U_TXOUTCLK_FREQ_COUNTER_n_37,1'b0,U_TXOUTCLK_FREQ_COUNTER_n_38,1'b0,1'b0,U_TXOUTCLK_FREQ_COUNTER_n_39,U_TXOUTCLK_FREQ_COUNTER_n_40}),
        .O(\NLW_cpll_cal_state2_inferred__0/i__carry_O_UNCONNECTED [7:0]),
        .S({U_TXOUTCLK_FREQ_COUNTER_n_41,U_TXOUTCLK_FREQ_COUNTER_n_42,U_TXOUTCLK_FREQ_COUNTER_n_43,U_TXOUTCLK_FREQ_COUNTER_n_44,U_TXOUTCLK_FREQ_COUNTER_n_45,U_TXOUTCLK_FREQ_COUNTER_n_46,U_TXOUTCLK_FREQ_COUNTER_n_47,U_TXOUTCLK_FREQ_COUNTER_n_48}));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY8 \cpll_cal_state2_inferred__0/i__carry__0 
       (.CI(\cpll_cal_state2_inferred__0/i__carry_n_0 ),
        .CI_TOP(1'b0),
        .CO({\NLW_cpll_cal_state2_inferred__0/i__carry__0_CO_UNCONNECTED [7:1],cpll_cal_state26_in}),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,U_TXOUTCLK_FREQ_COUNTER_n_50}),
        .O(\NLW_cpll_cal_state2_inferred__0/i__carry__0_O_UNCONNECTED [7:0]),
        .S({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,U_TXOUTCLK_FREQ_COUNTER_n_51}));
  (* SOFT_HLUTNM = "soft_lutpair81" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \cpll_cal_state[12]_i_1 
       (.I0(drp_done),
        .I1(p_0_in),
        .O(cpll_cal_state7_out[12]));
  (* SOFT_HLUTNM = "soft_lutpair66" *) 
  LUT4 #(
    .INIT(16'h8F88)) 
    \cpll_cal_state[14]_i_1 
       (.I0(p_17_in),
        .I1(\cpll_cal_state[17]_i_2_n_0 ),
        .I2(\wait_ctr[9]_i_4_n_0 ),
        .I3(p_18_in),
        .O(cpll_cal_state7_out[14]));
  (* SOFT_HLUTNM = "soft_lutpair76" *) 
  LUT4 #(
    .INIT(16'hF222)) 
    \cpll_cal_state[15]_i_1 
       (.I0(p_17_in),
        .I1(\cpll_cal_state[17]_i_2_n_0 ),
        .I2(\wait_ctr[9]_i_7_n_0 ),
        .I3(p_16_in),
        .O(cpll_cal_state7_out[15]));
  (* SOFT_HLUTNM = "soft_lutpair67" *) 
  LUT4 #(
    .INIT(16'h8F88)) 
    \cpll_cal_state[16]_i_1 
       (.I0(p_15_in),
        .I1(\cpll_cal_state[17]_i_2_n_0 ),
        .I2(\wait_ctr[9]_i_7_n_0 ),
        .I3(p_16_in),
        .O(cpll_cal_state7_out[16]));
  LUT4 #(
    .INIT(16'hF222)) 
    \cpll_cal_state[17]_i_1 
       (.I0(p_15_in),
        .I1(\cpll_cal_state[17]_i_2_n_0 ),
        .I2(\wait_ctr[9]_i_7_n_0 ),
        .I3(p_14_in),
        .O(cpll_cal_state7_out[17]));
  LUT6 #(
    .INIT(64'h0100010001000101)) 
    \cpll_cal_state[17]_i_2 
       (.I0(\cpll_cal_state[17]_i_3_n_0 ),
        .I1(\cpll_cal_state[17]_i_4_n_0 ),
        .I2(\cpll_cal_state[17]_i_5_n_0 ),
        .I3(\cpll_cal_state[17]_i_6_n_0 ),
        .I4(\cpll_cal_state[17]_i_7_n_0 ),
        .I5(\cpll_cal_state[17]_i_8_n_0 ),
        .O(\cpll_cal_state[17]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair72" *) 
  LUT4 #(
    .INIT(16'hFFFE)) 
    \cpll_cal_state[17]_i_3 
       (.I0(\wait_ctr_reg_n_0_[13] ),
        .I1(\wait_ctr_reg_n_0_[14] ),
        .I2(\wait_ctr_reg_n_0_[15] ),
        .I3(\wait_ctr_reg_n_0_[16] ),
        .O(\cpll_cal_state[17]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair64" *) 
  LUT4 #(
    .INIT(16'hFFFE)) 
    \cpll_cal_state[17]_i_4 
       (.I0(\wait_ctr_reg_n_0_[23] ),
        .I1(\wait_ctr_reg_n_0_[24] ),
        .I2(\wait_ctr_reg_n_0_[21] ),
        .I3(\wait_ctr_reg_n_0_[22] ),
        .O(\cpll_cal_state[17]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \cpll_cal_state[17]_i_5 
       (.I0(\wait_ctr_reg_n_0_[17] ),
        .I1(\wait_ctr_reg_n_0_[18] ),
        .I2(\wait_ctr_reg_n_0_[19] ),
        .I3(\wait_ctr_reg_n_0_[20] ),
        .O(\cpll_cal_state[17]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h7)) 
    \cpll_cal_state[17]_i_6 
       (.I0(\wait_ctr_reg_n_0_[12] ),
        .I1(\wait_ctr_reg_n_0_[11] ),
        .O(\cpll_cal_state[17]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hF000E000F0000000)) 
    \cpll_cal_state[17]_i_7 
       (.I0(\wait_ctr_reg_n_0_[2] ),
        .I1(\wait_ctr_reg_n_0_[1] ),
        .I2(\wait_ctr_reg_n_0_[6] ),
        .I3(\wait_ctr_reg_n_0_[5] ),
        .I4(\wait_ctr_reg_n_0_[4] ),
        .I5(\wait_ctr_reg_n_0_[3] ),
        .O(\cpll_cal_state[17]_i_7_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair73" *) 
  LUT4 #(
    .INIT(16'hFFFE)) 
    \cpll_cal_state[17]_i_8 
       (.I0(\wait_ctr_reg_n_0_[10] ),
        .I1(\wait_ctr_reg_n_0_[8] ),
        .I2(\wait_ctr_reg_n_0_[7] ),
        .I3(\wait_ctr_reg_n_0_[9] ),
        .O(\cpll_cal_state[17]_i_8_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair75" *) 
  LUT4 #(
    .INIT(16'h8F88)) 
    \cpll_cal_state[18]_i_1 
       (.I0(\wait_ctr[9]_i_4_n_0 ),
        .I1(p_13_in),
        .I2(\wait_ctr[9]_i_7_n_0 ),
        .I3(p_14_in),
        .O(cpll_cal_state7_out[18]));
  (* SOFT_HLUTNM = "soft_lutpair85" *) 
  LUT3 #(
    .INIT(8'hBA)) 
    \cpll_cal_state[1]_i_1 
       (.I0(\cpll_cal_state_reg_n_0_[0] ),
        .I1(drp_done),
        .I2(p_1_in10_in),
        .O(cpll_cal_state7_out[1]));
  (* SOFT_HLUTNM = "soft_lutpair80" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \cpll_cal_state[27]_i_1 
       (.I0(drp_done),
        .I1(p_3_in),
        .O(cpll_cal_state7_out[27]));
  (* SOFT_HLUTNM = "soft_lutpair74" *) 
  LUT3 #(
    .INIT(8'hEA)) 
    \cpll_cal_state[28]_i_1 
       (.I0(\cpll_cal_state_reg_n_0_[27] ),
        .I1(\wait_ctr[9]_i_4_n_0 ),
        .I2(\cpll_cal_state_reg_n_0_[28] ),
        .O(cpll_cal_state7_out[28]));
  (* SOFT_HLUTNM = "soft_lutpair79" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \cpll_cal_state[2]_i_1 
       (.I0(p_1_in10_in),
        .I1(drp_done),
        .O(cpll_cal_state7_out[2]));
  (* SOFT_HLUTNM = "soft_lutpair81" *) 
  LUT4 #(
    .INIT(16'h4F44)) 
    \cpll_cal_state[3]_i_1 
       (.I0(drp_done),
        .I1(p_1_in2_in),
        .I2(status_store__0),
        .I3(p_29_in),
        .O(cpll_cal_state7_out[3]));
  (* SOFT_HLUTNM = "soft_lutpair71" *) 
  LUT5 #(
    .INIT(32'hFFF888F8)) 
    \cpll_cal_state[5]_i_1 
       (.I0(p_29_in),
        .I1(status_store__0),
        .I2(p_1_in5_in),
        .I3(drp_done),
        .I4(p_0_in7_in),
        .O(cpll_cal_state7_out[5]));
  (* SOFT_HLUTNM = "soft_lutpair71" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \cpll_cal_state[6]_i_1 
       (.I0(drp_done),
        .I1(p_1_in5_in),
        .O(cpll_cal_state7_out[6]));
  (* SOFT_HLUTNM = "soft_lutpair80" *) 
  LUT4 #(
    .INIT(16'h4F44)) 
    \cpll_cal_state[7]_i_1 
       (.I0(drp_done),
        .I1(p_1_in),
        .I2(status_store__0),
        .I3(p_25_in),
        .O(cpll_cal_state7_out[7]));
  LUT5 #(
    .INIT(32'hFFE2E2E2)) 
    \cpll_cal_state[9]_i_1 
       (.I0(p_4_in),
        .I1(drp_done),
        .I2(p_0_in3_in),
        .I3(status_store__0),
        .I4(p_25_in),
        .O(cpll_cal_state7_out[9]));
  FDSE #(
    .INIT(1'b0)) 
    \cpll_cal_state_reg[0] 
       (.C(drpclk_in),
        .CE(1'b1),
        .D(1'b0),
        .Q(\cpll_cal_state_reg_n_0_[0] ),
        .S(cal_on_tx_reset_in_sync));
  FDRE #(
    .INIT(1'b0)) 
    \cpll_cal_state_reg[10] 
       (.C(drpclk_in),
        .CE(drp_done),
        .D(p_4_in),
        .Q(p_0_in0_in),
        .R(cal_on_tx_reset_in_sync));
  FDRE #(
    .INIT(1'b0)) 
    \cpll_cal_state_reg[11] 
       (.C(drpclk_in),
        .CE(drp_done),
        .D(p_0_in0_in),
        .Q(p_0_in),
        .R(cal_on_tx_reset_in_sync));
  FDRE #(
    .INIT(1'b0)) 
    \cpll_cal_state_reg[12] 
       (.C(drpclk_in),
        .CE(1'b1),
        .D(cpll_cal_state7_out[12]),
        .Q(\cpll_cal_state_reg_n_0_[12] ),
        .R(cal_on_tx_reset_in_sync));
  FDRE #(
    .INIT(1'b0)) 
    \cpll_cal_state_reg[13] 
       (.C(drpclk_in),
        .CE(1'b1),
        .D(cpll_cal_state7_out[13]),
        .Q(p_18_in),
        .R(cal_on_tx_reset_in_sync));
  FDRE #(
    .INIT(1'b0)) 
    \cpll_cal_state_reg[14] 
       (.C(drpclk_in),
        .CE(1'b1),
        .D(cpll_cal_state7_out[14]),
        .Q(p_17_in),
        .R(cal_on_tx_reset_in_sync));
  FDRE #(
    .INIT(1'b0)) 
    \cpll_cal_state_reg[15] 
       (.C(drpclk_in),
        .CE(1'b1),
        .D(cpll_cal_state7_out[15]),
        .Q(p_16_in),
        .R(cal_on_tx_reset_in_sync));
  FDRE #(
    .INIT(1'b0)) 
    \cpll_cal_state_reg[16] 
       (.C(drpclk_in),
        .CE(1'b1),
        .D(cpll_cal_state7_out[16]),
        .Q(p_15_in),
        .R(cal_on_tx_reset_in_sync));
  FDRE #(
    .INIT(1'b0)) 
    \cpll_cal_state_reg[17] 
       (.C(drpclk_in),
        .CE(1'b1),
        .D(cpll_cal_state7_out[17]),
        .Q(p_14_in),
        .R(cal_on_tx_reset_in_sync));
  FDRE #(
    .INIT(1'b0)) 
    \cpll_cal_state_reg[18] 
       (.C(drpclk_in),
        .CE(1'b1),
        .D(cpll_cal_state7_out[18]),
        .Q(p_13_in),
        .R(cal_on_tx_reset_in_sync));
  FDRE #(
    .INIT(1'b0)) 
    \cpll_cal_state_reg[19] 
       (.C(drpclk_in),
        .CE(1'b1),
        .D(cpll_cal_state7_out[19]),
        .Q(p_12_in),
        .R(cal_on_tx_reset_in_sync));
  FDRE #(
    .INIT(1'b0)) 
    \cpll_cal_state_reg[1] 
       (.C(drpclk_in),
        .CE(1'b1),
        .D(cpll_cal_state7_out[1]),
        .Q(p_1_in10_in),
        .R(cal_on_tx_reset_in_sync));
  FDRE #(
    .INIT(1'b0)) 
    \cpll_cal_state_reg[20] 
       (.C(drpclk_in),
        .CE(1'b1),
        .D(cpll_cal_state7_out[20]),
        .Q(p_11_in),
        .R(cal_on_tx_reset_in_sync));
  FDRE #(
    .INIT(1'b0)) 
    \cpll_cal_state_reg[21] 
       (.C(drpclk_in),
        .CE(1'b1),
        .D(cpll_cal_state7_out[21]),
        .Q(p_2_in8_in),
        .R(cal_on_tx_reset_in_sync));
  FDRE #(
    .INIT(1'b0)) 
    \cpll_cal_state_reg[22] 
       (.C(drpclk_in),
        .CE(drp_done),
        .D(p_2_in8_in),
        .Q(p_2_in4_in),
        .R(cal_on_tx_reset_in_sync));
  FDRE #(
    .INIT(1'b0)) 
    \cpll_cal_state_reg[23] 
       (.C(drpclk_in),
        .CE(drp_done),
        .D(p_2_in4_in),
        .Q(p_2_in),
        .R(cal_on_tx_reset_in_sync));
  FDRE #(
    .INIT(1'b0)) 
    \cpll_cal_state_reg[24] 
       (.C(drpclk_in),
        .CE(drp_done),
        .D(p_2_in),
        .Q(p_2_in1_in),
        .R(cal_on_tx_reset_in_sync));
  FDRE #(
    .INIT(1'b0)) 
    \cpll_cal_state_reg[25] 
       (.C(drpclk_in),
        .CE(drp_done),
        .D(p_2_in1_in),
        .Q(p_3_in9_in),
        .R(cal_on_tx_reset_in_sync));
  FDRE #(
    .INIT(1'b0)) 
    \cpll_cal_state_reg[26] 
       (.C(drpclk_in),
        .CE(drp_done),
        .D(p_3_in9_in),
        .Q(p_3_in),
        .R(cal_on_tx_reset_in_sync));
  FDRE #(
    .INIT(1'b0)) 
    \cpll_cal_state_reg[27] 
       (.C(drpclk_in),
        .CE(1'b1),
        .D(cpll_cal_state7_out[27]),
        .Q(\cpll_cal_state_reg_n_0_[27] ),
        .R(cal_on_tx_reset_in_sync));
  FDRE #(
    .INIT(1'b0)) 
    \cpll_cal_state_reg[28] 
       (.C(drpclk_in),
        .CE(1'b1),
        .D(cpll_cal_state7_out[28]),
        .Q(\cpll_cal_state_reg_n_0_[28] ),
        .R(cal_on_tx_reset_in_sync));
  FDRE #(
    .INIT(1'b0)) 
    \cpll_cal_state_reg[29] 
       (.C(drpclk_in),
        .CE(1'b1),
        .D(cpll_cal_state7_out[29]),
        .Q(\cpll_cal_state_reg_n_0_[29] ),
        .R(cal_on_tx_reset_in_sync));
  FDRE #(
    .INIT(1'b0)) 
    \cpll_cal_state_reg[2] 
       (.C(drpclk_in),
        .CE(1'b1),
        .D(cpll_cal_state7_out[2]),
        .Q(p_29_in),
        .R(cal_on_tx_reset_in_sync));
  FDRE #(
    .INIT(1'b0)) 
    \cpll_cal_state_reg[30] 
       (.C(drpclk_in),
        .CE(1'b1),
        .D(cpll_cal_state7_out[30]),
        .Q(\cpll_cal_state_reg_n_0_[30] ),
        .R(cal_on_tx_reset_in_sync));
  FDRE #(
    .INIT(1'b0)) 
    \cpll_cal_state_reg[31] 
       (.C(drpclk_in),
        .CE(1'b1),
        .D(cpll_cal_state7_out[31]),
        .Q(\cpll_cal_state_reg_n_0_[31] ),
        .R(cal_on_tx_reset_in_sync));
  FDRE #(
    .INIT(1'b0)) 
    \cpll_cal_state_reg[3] 
       (.C(drpclk_in),
        .CE(1'b1),
        .D(cpll_cal_state7_out[3]),
        .Q(p_1_in2_in),
        .R(cal_on_tx_reset_in_sync));
  FDRE #(
    .INIT(1'b0)) 
    \cpll_cal_state_reg[4] 
       (.C(drpclk_in),
        .CE(drp_done),
        .D(p_1_in2_in),
        .Q(p_0_in7_in),
        .R(cal_on_tx_reset_in_sync));
  FDRE #(
    .INIT(1'b0)) 
    \cpll_cal_state_reg[5] 
       (.C(drpclk_in),
        .CE(1'b1),
        .D(cpll_cal_state7_out[5]),
        .Q(p_1_in5_in),
        .R(cal_on_tx_reset_in_sync));
  FDRE #(
    .INIT(1'b0)) 
    \cpll_cal_state_reg[6] 
       (.C(drpclk_in),
        .CE(1'b1),
        .D(cpll_cal_state7_out[6]),
        .Q(p_25_in),
        .R(cal_on_tx_reset_in_sync));
  FDRE #(
    .INIT(1'b0)) 
    \cpll_cal_state_reg[7] 
       (.C(drpclk_in),
        .CE(1'b1),
        .D(cpll_cal_state7_out[7]),
        .Q(p_1_in),
        .R(cal_on_tx_reset_in_sync));
  FDRE #(
    .INIT(1'b0)) 
    \cpll_cal_state_reg[8] 
       (.C(drpclk_in),
        .CE(drp_done),
        .D(p_1_in),
        .Q(p_0_in3_in),
        .R(cal_on_tx_reset_in_sync));
  FDRE #(
    .INIT(1'b0)) 
    \cpll_cal_state_reg[9] 
       (.C(drpclk_in),
        .CE(1'b1),
        .D(cpll_cal_state7_out[9]),
        .Q(p_4_in),
        .R(cal_on_tx_reset_in_sync));
  (* SOFT_HLUTNM = "soft_lutpair66" *) 
  LUT5 #(
    .INIT(32'hFFDD2F00)) 
    cpllpd_int_i_1
       (.I0(p_17_in),
        .I1(\cpll_cal_state[17]_i_2_n_0 ),
        .I2(\wait_ctr[9]_i_4_n_0 ),
        .I3(p_18_in),
        .I4(cpllpd_int_reg_0),
        .O(cpllpd_int_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    cpllpd_int_reg
       (.C(drpclk_in),
        .CE(1'b1),
        .D(cpllpd_int_i_1_n_0),
        .Q(cpllpd_int_reg_0),
        .R(cal_on_tx_reset_in_sync));
  (* SOFT_HLUTNM = "soft_lutpair67" *) 
  LUT5 #(
    .INIT(32'hFFDD2F00)) 
    cpllreset_int_i_1
       (.I0(p_15_in),
        .I1(\cpll_cal_state[17]_i_2_n_0 ),
        .I2(\wait_ctr[9]_i_7_n_0 ),
        .I3(p_16_in),
        .I4(cpllreset_int_reg_0),
        .O(cpllreset_int_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    cpllreset_int_reg
       (.C(drpclk_in),
        .CE(1'b1),
        .D(cpllreset_int_i_1_n_0),
        .Q(cpllreset_int_reg_0),
        .R(cal_on_tx_reset_in_sync));
  (* SOFT_HLUTNM = "soft_lutpair65" *) 
  LUT5 #(
    .INIT(32'h00000008)) 
    \daddr[1]_i_1__0 
       (.I0(daddr0_in[3]),
        .I1(\daddr[5]_i_2_n_0 ),
        .I2(p_1_in2_in),
        .I3(p_2_in1_in),
        .I4(p_0_in0_in),
        .O(daddr0_in[1]));
  (* SOFT_HLUTNM = "soft_lutpair68" *) 
  LUT5 #(
    .INIT(32'h00000002)) 
    \daddr[2]_i_1__0 
       (.I0(daddr0_in[3]),
        .I1(p_1_in5_in),
        .I2(p_2_in4_in),
        .I3(p_0_in3_in),
        .I4(p_3_in),
        .O(\daddr[2]_i_1__0_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    \daddr[3]_i_1__0 
       (.I0(p_4_in),
        .I1(p_2_in8_in),
        .I2(p_3_in9_in),
        .I3(p_1_in10_in),
        .I4(p_0_in7_in),
        .I5(\cpll_cal_state_reg_n_0_[0] ),
        .O(daddr0_in[3]));
  (* SOFT_HLUTNM = "soft_lutpair65" *) 
  LUT5 #(
    .INIT(32'h0002AAAA)) 
    \daddr[4]_i_1__0 
       (.I0(daddr0_in[3]),
        .I1(p_1_in2_in),
        .I2(p_2_in1_in),
        .I3(p_0_in0_in),
        .I4(\daddr[5]_i_2_n_0 ),
        .O(daddr0_in[4]));
  LUT6 #(
    .INIT(64'h1111111555555555)) 
    \daddr[5]_i_1__0 
       (.I0(\cpll_cal_state_reg_n_0_[0] ),
        .I1(\daddr[5]_i_2_n_0 ),
        .I2(p_0_in0_in),
        .I3(p_2_in1_in),
        .I4(p_1_in2_in),
        .I5(\daddr[6]_i_2_n_0 ),
        .O(\daddr[5]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair68" *) 
  LUT4 #(
    .INIT(16'h0001)) 
    \daddr[5]_i_2 
       (.I0(p_3_in),
        .I1(p_0_in3_in),
        .I2(p_2_in4_in),
        .I3(p_1_in5_in),
        .O(\daddr[5]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h5555555455555555)) 
    \daddr[6]_i_1__0 
       (.I0(\cpll_cal_state_reg_n_0_[0] ),
        .I1(p_3_in),
        .I2(p_0_in3_in),
        .I3(p_2_in4_in),
        .I4(p_1_in5_in),
        .I5(\daddr[6]_i_2_n_0 ),
        .O(\daddr[6]_i_1__0_n_0 ));
  LUT5 #(
    .INIT(32'h00000001)) 
    \daddr[6]_i_2 
       (.I0(p_0_in7_in),
        .I1(p_1_in10_in),
        .I2(p_3_in9_in),
        .I3(p_2_in8_in),
        .I4(p_4_in),
        .O(\daddr[6]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'hFEFF)) 
    \daddr[7]_i_1__0 
       (.I0(p_0_in),
        .I1(p_2_in),
        .I2(p_1_in),
        .I3(daddr0_in[1]),
        .O(\daddr[7]_i_1__0_n_0 ));
  LUT6 #(
    .INIT(64'h5555555555555554)) 
    \daddr[7]_i_2__0 
       (.I0(\cpll_cal_state_reg_n_0_[0] ),
        .I1(p_4_in),
        .I2(p_2_in8_in),
        .I3(p_3_in9_in),
        .I4(p_1_in10_in),
        .I5(p_0_in7_in),
        .O(\daddr[7]_i_2__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \daddr_reg[1] 
       (.C(drpclk_in),
        .CE(\daddr[7]_i_1__0_n_0 ),
        .D(daddr0_in[1]),
        .Q(\daddr_reg[7]_0 [0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \daddr_reg[2] 
       (.C(drpclk_in),
        .CE(\daddr[7]_i_1__0_n_0 ),
        .D(\daddr[2]_i_1__0_n_0 ),
        .Q(\daddr_reg[7]_0 [1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \daddr_reg[3] 
       (.C(drpclk_in),
        .CE(\daddr[7]_i_1__0_n_0 ),
        .D(daddr0_in[3]),
        .Q(\daddr_reg[7]_0 [2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \daddr_reg[4] 
       (.C(drpclk_in),
        .CE(\daddr[7]_i_1__0_n_0 ),
        .D(daddr0_in[4]),
        .Q(\daddr_reg[7]_0 [3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \daddr_reg[5] 
       (.C(drpclk_in),
        .CE(\daddr[7]_i_1__0_n_0 ),
        .D(\daddr[5]_i_1__0_n_0 ),
        .Q(\daddr_reg[7]_0 [4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \daddr_reg[6] 
       (.C(drpclk_in),
        .CE(\daddr[7]_i_1__0_n_0 ),
        .D(\daddr[6]_i_1__0_n_0 ),
        .Q(\daddr_reg[7]_0 [5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \daddr_reg[7] 
       (.C(drpclk_in),
        .CE(\daddr[7]_i_1__0_n_0 ),
        .D(\daddr[7]_i_2__0_n_0 ),
        .Q(\daddr_reg[7]_0 [6]),
        .R(1'b0));
  LUT5 #(
    .INIT(32'hFFCDFFCC)) 
    den_i_1
       (.I0(\drp_state_reg_n_0_[5] ),
        .I1(\drp_state_reg_n_0_[4] ),
        .I2(\drp_state_reg_n_0_[2] ),
        .I3(\drp_state_reg_n_0_[1] ),
        .I4(cal_on_tx_drpen_out),
        .O(den_i_1_n_0));
  FDCE #(
    .INIT(1'b0)) 
    den_reg
       (.C(drpclk_in),
        .CE(1'b1),
        .CLR(cal_on_tx_reset_in_sync),
        .D(den_i_1_n_0),
        .Q(cal_on_tx_drpen_out));
  LUT6 #(
    .INIT(64'hFFFF44F444F444F4)) 
    \di_msk[0]_i_1 
       (.I0(\di_msk[12]_i_2_n_0 ),
        .I1(\progclk_sel_store_reg_n_0_[0] ),
        .I2(\progdiv_cfg_store_reg_n_0_[0] ),
        .I3(\di_msk[12]_i_3_n_0 ),
        .I4(p_0_in0_in),
        .I5(\x0e1_store_reg_n_0_[0] ),
        .O(\di_msk[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFE0E0E0E0E0)) 
    \di_msk[10]_i_1 
       (.I0(p_2_in),
        .I1(p_0_in3_in),
        .I2(\progdiv_cfg_store_reg_n_0_[10] ),
        .I3(p_0_in7_in),
        .I4(p_2_in1_in),
        .I5(\progclk_sel_store_reg_n_0_[10] ),
        .O(\di_msk[10]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFE0E0FFE0)) 
    \di_msk[11]_i_1 
       (.I0(p_2_in),
        .I1(p_0_in3_in),
        .I2(\progdiv_cfg_store_reg_n_0_[11] ),
        .I3(\progclk_sel_store_reg_n_0_[11] ),
        .I4(\di_msk[12]_i_2_n_0 ),
        .I5(p_0_in0_in),
        .O(\di_msk[11]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF44F444F444F4)) 
    \di_msk[12]_i_1 
       (.I0(\di_msk[12]_i_2_n_0 ),
        .I1(\progclk_sel_store_reg_n_0_[12] ),
        .I2(\progdiv_cfg_store_reg_n_0_[12] ),
        .I3(\di_msk[12]_i_3_n_0 ),
        .I4(p_0_in0_in),
        .I5(\x0e1_store_reg_n_0_[12] ),
        .O(\di_msk[12]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair78" *) 
  LUT2 #(
    .INIT(4'h1)) 
    \di_msk[12]_i_2 
       (.I0(p_0_in7_in),
        .I1(p_2_in1_in),
        .O(\di_msk[12]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair69" *) 
  LUT2 #(
    .INIT(4'h1)) 
    \di_msk[12]_i_3 
       (.I0(p_2_in),
        .I1(p_0_in3_in),
        .O(\di_msk[12]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'hFFE0)) 
    \di_msk[13]_i_1 
       (.I0(p_2_in),
        .I1(p_0_in3_in),
        .I2(\progdiv_cfg_store_reg_n_0_[13] ),
        .I3(\di_msk[13]_i_2_n_0 ),
        .O(\di_msk[13]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFE0E0E0)) 
    \di_msk[13]_i_2 
       (.I0(p_0_in7_in),
        .I1(p_2_in1_in),
        .I2(\progclk_sel_store_reg_n_0_[13] ),
        .I3(p_0_in0_in),
        .I4(\x0e1_store_reg_n_0_[13] ),
        .I5(p_0_in),
        .O(\di_msk[13]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'hFFE0)) 
    \di_msk[14]_i_1 
       (.I0(p_0_in7_in),
        .I1(p_2_in1_in),
        .I2(\progclk_sel_store_reg_n_0_[14] ),
        .I3(\di_msk[14]_i_2_n_0 ),
        .O(\di_msk[14]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFE0E0E0)) 
    \di_msk[14]_i_2 
       (.I0(p_2_in),
        .I1(p_0_in3_in),
        .I2(\progdiv_cfg_store_reg_n_0_[14] ),
        .I3(p_0_in0_in),
        .I4(\x0e1_store_reg_n_0_[14] ),
        .I5(p_0_in),
        .O(\di_msk[14]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'h54)) 
    \di_msk[15]_i_1 
       (.I0(cal_on_tx_reset_in_sync),
        .I1(\di_msk[15]_i_3_n_0 ),
        .I2(\cpll_cal_state_reg_n_0_[0] ),
        .O(\di_msk[15]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair69" *) 
  LUT5 #(
    .INIT(32'hFFFFFFE0)) 
    \di_msk[15]_i_2 
       (.I0(p_2_in),
        .I1(p_0_in3_in),
        .I2(\progdiv_cfg_store_reg_n_0_[15] ),
        .I3(p_0_in7_in),
        .I4(p_0_in),
        .O(\di_msk[15]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFEFFFF)) 
    \di_msk[15]_i_3 
       (.I0(p_0_in0_in),
        .I1(p_3_in9_in),
        .I2(p_0_in3_in),
        .I3(p_3_in),
        .I4(\di_msk[12]_i_2_n_0 ),
        .I5(\di_msk[15]_i_4_n_0 ),
        .O(\di_msk[15]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair77" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \di_msk[15]_i_4 
       (.I0(p_0_in),
        .I1(p_2_in),
        .O(\di_msk[15]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair77" *) 
  LUT4 #(
    .INIT(16'hFFE0)) 
    \di_msk[1]_i_1 
       (.I0(p_2_in),
        .I1(p_0_in3_in),
        .I2(\progdiv_cfg_store_reg_n_0_[1] ),
        .I3(\di_msk[1]_i_2_n_0 ),
        .O(\di_msk[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFE0E0E0)) 
    \di_msk[1]_i_2 
       (.I0(p_0_in7_in),
        .I1(p_2_in1_in),
        .I2(\progclk_sel_store_reg_n_0_[1] ),
        .I3(p_0_in0_in),
        .I4(\x0e1_store_reg_n_0_[1] ),
        .I5(p_0_in),
        .O(\di_msk[1]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hF444F444FFFFF444)) 
    \di_msk[2]_i_1 
       (.I0(\di_msk[12]_i_3_n_0 ),
        .I1(\progdiv_cfg_store_reg_n_0_[2] ),
        .I2(p_0_in0_in),
        .I3(\x0e1_store_reg_n_0_[2] ),
        .I4(\progclk_sel_store_reg_n_0_[2] ),
        .I5(\di_msk[12]_i_2_n_0 ),
        .O(\di_msk[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF44F444F444F4)) 
    \di_msk[3]_i_1 
       (.I0(\di_msk[12]_i_2_n_0 ),
        .I1(\progclk_sel_store_reg_n_0_[3] ),
        .I2(\progdiv_cfg_store_reg_n_0_[3] ),
        .I3(\di_msk[12]_i_3_n_0 ),
        .I4(p_0_in0_in),
        .I5(\x0e1_store_reg_n_0_[3] ),
        .O(\di_msk[3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hF444F444FFFFF444)) 
    \di_msk[4]_i_1 
       (.I0(\di_msk[12]_i_3_n_0 ),
        .I1(\progdiv_cfg_store_reg_n_0_[4] ),
        .I2(p_0_in0_in),
        .I3(\x0e1_store_reg_n_0_[4] ),
        .I4(\progclk_sel_store_reg_n_0_[4] ),
        .I5(\di_msk[12]_i_2_n_0 ),
        .O(\di_msk[4]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hFFE0)) 
    \di_msk[5]_i_1 
       (.I0(p_2_in),
        .I1(p_0_in3_in),
        .I2(\progdiv_cfg_store_reg_n_0_[5] ),
        .I3(\di_msk[5]_i_2_n_0 ),
        .O(\di_msk[5]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFE0E0E0)) 
    \di_msk[5]_i_2 
       (.I0(p_0_in7_in),
        .I1(p_2_in1_in),
        .I2(\progclk_sel_store_reg_n_0_[5] ),
        .I3(p_0_in0_in),
        .I4(\x0e1_store_reg_n_0_[5] ),
        .I5(p_0_in),
        .O(\di_msk[5]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair78" *) 
  LUT4 #(
    .INIT(16'hFFE0)) 
    \di_msk[6]_i_1 
       (.I0(p_0_in7_in),
        .I1(p_2_in1_in),
        .I2(\progclk_sel_store_reg_n_0_[6] ),
        .I3(\di_msk[6]_i_2_n_0 ),
        .O(\di_msk[6]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFE0E0E0)) 
    \di_msk[6]_i_2 
       (.I0(p_2_in),
        .I1(p_0_in3_in),
        .I2(\progdiv_cfg_store_reg_n_0_[6] ),
        .I3(p_0_in0_in),
        .I4(\x0e1_store_reg_n_0_[6] ),
        .I5(p_0_in),
        .O(\di_msk[6]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hF444F444FFFFF444)) 
    \di_msk[7]_i_1 
       (.I0(\di_msk[12]_i_3_n_0 ),
        .I1(\progdiv_cfg_store_reg_n_0_[7] ),
        .I2(p_0_in0_in),
        .I3(\x0e1_store_reg_n_0_[7] ),
        .I4(\progclk_sel_store_reg_n_0_[7] ),
        .I5(\di_msk[12]_i_2_n_0 ),
        .O(\di_msk[7]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF44F444F444F4)) 
    \di_msk[8]_i_1 
       (.I0(\di_msk[12]_i_2_n_0 ),
        .I1(\progclk_sel_store_reg_n_0_[8] ),
        .I2(\progdiv_cfg_store_reg_n_0_[8] ),
        .I3(\di_msk[12]_i_3_n_0 ),
        .I4(p_0_in0_in),
        .I5(\x0e1_store_reg_n_0_[8] ),
        .O(\di_msk[8]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF44F444F444F4)) 
    \di_msk[9]_i_1 
       (.I0(\di_msk[12]_i_2_n_0 ),
        .I1(\progclk_sel_store_reg_n_0_[9] ),
        .I2(\progdiv_cfg_store_reg_n_0_[9] ),
        .I3(\di_msk[12]_i_3_n_0 ),
        .I4(p_0_in0_in),
        .I5(\x0e1_store_reg_n_0_[9] ),
        .O(\di_msk[9]_i_1_n_0 ));
  FDRE \di_msk_reg[0] 
       (.C(drpclk_in),
        .CE(\di_msk[15]_i_1_n_0 ),
        .D(\di_msk[0]_i_1_n_0 ),
        .Q(\di_msk_reg_n_0_[0] ),
        .R(1'b0));
  FDRE \di_msk_reg[10] 
       (.C(drpclk_in),
        .CE(\di_msk[15]_i_1_n_0 ),
        .D(\di_msk[10]_i_1_n_0 ),
        .Q(\di_msk_reg_n_0_[10] ),
        .R(1'b0));
  FDRE \di_msk_reg[11] 
       (.C(drpclk_in),
        .CE(\di_msk[15]_i_1_n_0 ),
        .D(\di_msk[11]_i_1_n_0 ),
        .Q(\di_msk_reg_n_0_[11] ),
        .R(1'b0));
  FDRE \di_msk_reg[12] 
       (.C(drpclk_in),
        .CE(\di_msk[15]_i_1_n_0 ),
        .D(\di_msk[12]_i_1_n_0 ),
        .Q(\di_msk_reg_n_0_[12] ),
        .R(1'b0));
  FDRE \di_msk_reg[13] 
       (.C(drpclk_in),
        .CE(\di_msk[15]_i_1_n_0 ),
        .D(\di_msk[13]_i_1_n_0 ),
        .Q(\di_msk_reg_n_0_[13] ),
        .R(1'b0));
  FDRE \di_msk_reg[14] 
       (.C(drpclk_in),
        .CE(\di_msk[15]_i_1_n_0 ),
        .D(\di_msk[14]_i_1_n_0 ),
        .Q(\di_msk_reg_n_0_[14] ),
        .R(1'b0));
  FDRE \di_msk_reg[15] 
       (.C(drpclk_in),
        .CE(\di_msk[15]_i_1_n_0 ),
        .D(\di_msk[15]_i_2_n_0 ),
        .Q(\di_msk_reg_n_0_[15] ),
        .R(1'b0));
  FDRE \di_msk_reg[1] 
       (.C(drpclk_in),
        .CE(\di_msk[15]_i_1_n_0 ),
        .D(\di_msk[1]_i_1_n_0 ),
        .Q(\di_msk_reg_n_0_[1] ),
        .R(1'b0));
  FDRE \di_msk_reg[2] 
       (.C(drpclk_in),
        .CE(\di_msk[15]_i_1_n_0 ),
        .D(\di_msk[2]_i_1_n_0 ),
        .Q(\di_msk_reg_n_0_[2] ),
        .R(1'b0));
  FDRE \di_msk_reg[3] 
       (.C(drpclk_in),
        .CE(\di_msk[15]_i_1_n_0 ),
        .D(\di_msk[3]_i_1_n_0 ),
        .Q(\di_msk_reg_n_0_[3] ),
        .R(1'b0));
  FDRE \di_msk_reg[4] 
       (.C(drpclk_in),
        .CE(\di_msk[15]_i_1_n_0 ),
        .D(\di_msk[4]_i_1_n_0 ),
        .Q(\di_msk_reg_n_0_[4] ),
        .R(1'b0));
  FDRE \di_msk_reg[5] 
       (.C(drpclk_in),
        .CE(\di_msk[15]_i_1_n_0 ),
        .D(\di_msk[5]_i_1_n_0 ),
        .Q(\di_msk_reg_n_0_[5] ),
        .R(1'b0));
  FDRE \di_msk_reg[6] 
       (.C(drpclk_in),
        .CE(\di_msk[15]_i_1_n_0 ),
        .D(\di_msk[6]_i_1_n_0 ),
        .Q(\di_msk_reg_n_0_[6] ),
        .R(1'b0));
  FDRE \di_msk_reg[7] 
       (.C(drpclk_in),
        .CE(\di_msk[15]_i_1_n_0 ),
        .D(\di_msk[7]_i_1_n_0 ),
        .Q(\di_msk_reg_n_0_[7] ),
        .R(1'b0));
  FDRE \di_msk_reg[8] 
       (.C(drpclk_in),
        .CE(\di_msk[15]_i_1_n_0 ),
        .D(\di_msk[8]_i_1_n_0 ),
        .Q(\di_msk_reg_n_0_[8] ),
        .R(1'b0));
  FDRE \di_msk_reg[9] 
       (.C(drpclk_in),
        .CE(\di_msk[15]_i_1_n_0 ),
        .D(\di_msk[9]_i_1_n_0 ),
        .Q(\di_msk_reg_n_0_[9] ),
        .R(1'b0));
  FDCE #(
    .INIT(1'b0)) 
    \di_reg[0] 
       (.C(drpclk_in),
        .CE(\drp_state_reg_n_0_[4] ),
        .CLR(cal_on_tx_reset_in_sync),
        .D(\di_msk_reg_n_0_[0] ),
        .Q(\di_reg[15]_0 [0]));
  FDCE #(
    .INIT(1'b0)) 
    \di_reg[10] 
       (.C(drpclk_in),
        .CE(\drp_state_reg_n_0_[4] ),
        .CLR(cal_on_tx_reset_in_sync),
        .D(\di_msk_reg_n_0_[10] ),
        .Q(\di_reg[15]_0 [10]));
  FDCE #(
    .INIT(1'b0)) 
    \di_reg[11] 
       (.C(drpclk_in),
        .CE(\drp_state_reg_n_0_[4] ),
        .CLR(cal_on_tx_reset_in_sync),
        .D(\di_msk_reg_n_0_[11] ),
        .Q(\di_reg[15]_0 [11]));
  FDCE #(
    .INIT(1'b0)) 
    \di_reg[12] 
       (.C(drpclk_in),
        .CE(\drp_state_reg_n_0_[4] ),
        .CLR(cal_on_tx_reset_in_sync),
        .D(\di_msk_reg_n_0_[12] ),
        .Q(\di_reg[15]_0 [12]));
  FDCE #(
    .INIT(1'b0)) 
    \di_reg[13] 
       (.C(drpclk_in),
        .CE(\drp_state_reg_n_0_[4] ),
        .CLR(cal_on_tx_reset_in_sync),
        .D(\di_msk_reg_n_0_[13] ),
        .Q(\di_reg[15]_0 [13]));
  FDCE #(
    .INIT(1'b0)) 
    \di_reg[14] 
       (.C(drpclk_in),
        .CE(\drp_state_reg_n_0_[4] ),
        .CLR(cal_on_tx_reset_in_sync),
        .D(\di_msk_reg_n_0_[14] ),
        .Q(\di_reg[15]_0 [14]));
  FDCE #(
    .INIT(1'b0)) 
    \di_reg[15] 
       (.C(drpclk_in),
        .CE(\drp_state_reg_n_0_[4] ),
        .CLR(cal_on_tx_reset_in_sync),
        .D(\di_msk_reg_n_0_[15] ),
        .Q(\di_reg[15]_0 [15]));
  FDCE #(
    .INIT(1'b0)) 
    \di_reg[1] 
       (.C(drpclk_in),
        .CE(\drp_state_reg_n_0_[4] ),
        .CLR(cal_on_tx_reset_in_sync),
        .D(\di_msk_reg_n_0_[1] ),
        .Q(\di_reg[15]_0 [1]));
  FDCE #(
    .INIT(1'b0)) 
    \di_reg[2] 
       (.C(drpclk_in),
        .CE(\drp_state_reg_n_0_[4] ),
        .CLR(cal_on_tx_reset_in_sync),
        .D(\di_msk_reg_n_0_[2] ),
        .Q(\di_reg[15]_0 [2]));
  FDCE #(
    .INIT(1'b0)) 
    \di_reg[3] 
       (.C(drpclk_in),
        .CE(\drp_state_reg_n_0_[4] ),
        .CLR(cal_on_tx_reset_in_sync),
        .D(\di_msk_reg_n_0_[3] ),
        .Q(\di_reg[15]_0 [3]));
  FDCE #(
    .INIT(1'b0)) 
    \di_reg[4] 
       (.C(drpclk_in),
        .CE(\drp_state_reg_n_0_[4] ),
        .CLR(cal_on_tx_reset_in_sync),
        .D(\di_msk_reg_n_0_[4] ),
        .Q(\di_reg[15]_0 [4]));
  FDCE #(
    .INIT(1'b0)) 
    \di_reg[5] 
       (.C(drpclk_in),
        .CE(\drp_state_reg_n_0_[4] ),
        .CLR(cal_on_tx_reset_in_sync),
        .D(\di_msk_reg_n_0_[5] ),
        .Q(\di_reg[15]_0 [5]));
  FDCE #(
    .INIT(1'b0)) 
    \di_reg[6] 
       (.C(drpclk_in),
        .CE(\drp_state_reg_n_0_[4] ),
        .CLR(cal_on_tx_reset_in_sync),
        .D(\di_msk_reg_n_0_[6] ),
        .Q(\di_reg[15]_0 [6]));
  FDCE #(
    .INIT(1'b0)) 
    \di_reg[7] 
       (.C(drpclk_in),
        .CE(\drp_state_reg_n_0_[4] ),
        .CLR(cal_on_tx_reset_in_sync),
        .D(\di_msk_reg_n_0_[7] ),
        .Q(\di_reg[15]_0 [7]));
  FDCE #(
    .INIT(1'b0)) 
    \di_reg[8] 
       (.C(drpclk_in),
        .CE(\drp_state_reg_n_0_[4] ),
        .CLR(cal_on_tx_reset_in_sync),
        .D(\di_msk_reg_n_0_[8] ),
        .Q(\di_reg[15]_0 [8]));
  FDCE #(
    .INIT(1'b0)) 
    \di_reg[9] 
       (.C(drpclk_in),
        .CE(\drp_state_reg_n_0_[4] ),
        .CLR(cal_on_tx_reset_in_sync),
        .D(\di_msk_reg_n_0_[9] ),
        .Q(\di_reg[15]_0 [9]));
  LUT4 #(
    .INIT(16'hAABA)) 
    \drp_state[0]_i_1__0 
       (.I0(drp_done),
        .I1(rd),
        .I2(\drp_state_reg_n_0_[0] ),
        .I3(wr),
        .O(\drp_state[0]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair84" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \drp_state[1]_i_1__0 
       (.I0(rd),
        .I1(\drp_state_reg_n_0_[0] ),
        .O(\drp_state[1]_i_1__0_n_0 ));
  LUT3 #(
    .INIT(8'hBA)) 
    \drp_state[2]_i_1__0 
       (.I0(\drp_state_reg_n_0_[1] ),
        .I1(cal_on_tx_drdy),
        .I2(\drp_state_reg_n_0_[2] ),
        .O(\drp_state[2]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair83" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \drp_state[3]_i_1 
       (.I0(\drp_state_reg_n_0_[2] ),
        .I1(cal_on_tx_drdy),
        .I2(rd),
        .O(\drp_state[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair84" *) 
  LUT4 #(
    .INIT(16'hBAAA)) 
    \drp_state[4]_i_1__0 
       (.I0(\drp_state_reg_n_0_[3] ),
        .I1(rd),
        .I2(\drp_state_reg_n_0_[0] ),
        .I3(wr),
        .O(\drp_state[4]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair87" *) 
  LUT3 #(
    .INIT(8'hBA)) 
    \drp_state[5]_i_1__0 
       (.I0(\drp_state_reg_n_0_[4] ),
        .I1(cal_on_tx_drdy),
        .I2(\drp_state_reg_n_0_[5] ),
        .O(\drp_state[5]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair83" *) 
  LUT4 #(
    .INIT(16'hA888)) 
    \drp_state[6]_i_1__0 
       (.I0(cal_on_tx_drdy),
        .I1(\drp_state_reg_n_0_[5] ),
        .I2(rd),
        .I3(\drp_state_reg_n_0_[2] ),
        .O(\drp_state[6]_i_1__0_n_0 ));
  FDPE #(
    .INIT(1'b1)) 
    \drp_state_reg[0] 
       (.C(drpclk_in),
        .CE(1'b1),
        .D(\drp_state[0]_i_1__0_n_0 ),
        .PRE(cal_on_tx_reset_in_sync),
        .Q(\drp_state_reg_n_0_[0] ));
  FDCE #(
    .INIT(1'b0)) 
    \drp_state_reg[1] 
       (.C(drpclk_in),
        .CE(1'b1),
        .CLR(cal_on_tx_reset_in_sync),
        .D(\drp_state[1]_i_1__0_n_0 ),
        .Q(\drp_state_reg_n_0_[1] ));
  FDCE #(
    .INIT(1'b0)) 
    \drp_state_reg[2] 
       (.C(drpclk_in),
        .CE(1'b1),
        .CLR(cal_on_tx_reset_in_sync),
        .D(\drp_state[2]_i_1__0_n_0 ),
        .Q(\drp_state_reg_n_0_[2] ));
  FDCE #(
    .INIT(1'b0)) 
    \drp_state_reg[3] 
       (.C(drpclk_in),
        .CE(1'b1),
        .CLR(cal_on_tx_reset_in_sync),
        .D(\drp_state[3]_i_1_n_0 ),
        .Q(\drp_state_reg_n_0_[3] ));
  FDCE #(
    .INIT(1'b0)) 
    \drp_state_reg[4] 
       (.C(drpclk_in),
        .CE(1'b1),
        .CLR(cal_on_tx_reset_in_sync),
        .D(\drp_state[4]_i_1__0_n_0 ),
        .Q(\drp_state_reg_n_0_[4] ));
  FDCE #(
    .INIT(1'b0)) 
    \drp_state_reg[5] 
       (.C(drpclk_in),
        .CE(1'b1),
        .CLR(cal_on_tx_reset_in_sync),
        .D(\drp_state[5]_i_1__0_n_0 ),
        .Q(\drp_state_reg_n_0_[5] ));
  FDCE #(
    .INIT(1'b0)) 
    \drp_state_reg[6] 
       (.C(drpclk_in),
        .CE(1'b1),
        .CLR(cal_on_tx_reset_in_sync),
        .D(\drp_state[6]_i_1__0_n_0 ),
        .Q(drp_done));
  (* SOFT_HLUTNM = "soft_lutpair87" *) 
  LUT3 #(
    .INIT(8'hBA)) 
    dwe_i_1
       (.I0(\drp_state_reg_n_0_[4] ),
        .I1(\drp_state_reg_n_0_[5] ),
        .I2(cal_on_tx_drpwe_out),
        .O(dwe_i_1_n_0));
  FDCE #(
    .INIT(1'b0)) 
    dwe_reg
       (.C(drpclk_in),
        .CE(1'b1),
        .CLR(cal_on_tx_reset_in_sync),
        .D(dwe_i_1_n_0),
        .Q(cal_on_tx_drpwe_out));
  FDRE #(
    .INIT(1'b1)) 
    freq_counter_rst_reg
       (.C(drpclk_in),
        .CE(1'b1),
        .D(bit_synchronizer_txprgdivresetdone_inst_n_0),
        .Q(freq_counter_rst_reg_n_0),
        .R(1'b0));
  LUT5 #(
    .INIT(32'hEEEFEEEE)) 
    mask_user_in_i_1
       (.I0(\cpll_cal_state_reg_n_0_[0] ),
        .I1(p_1_in10_in),
        .I2(\cpll_cal_state_reg_n_0_[30] ),
        .I3(\cpll_cal_state_reg_n_0_[31] ),
        .I4(mask_user_in_reg_n_0),
        .O(mask_user_in_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    mask_user_in_reg
       (.C(drpclk_in),
        .CE(1'b1),
        .D(mask_user_in_i_1_n_0),
        .Q(mask_user_in_reg_n_0),
        .R(cal_on_tx_reset_in_sync));
  FDRE \non_pcie_txoutclksel.GTHE4_TXOUTCLKSEL_OUT_reg[0] 
       (.C(drpclk_in),
        .CE(1'b1),
        .D(bit_synchronizer_txoutclksel_inst0_n_0),
        .Q(\non_pcie_txoutclksel.GTHE4_TXOUTCLKSEL_OUT_reg[2]_0 [0]),
        .R(1'b0));
  FDRE \non_pcie_txoutclksel.GTHE4_TXOUTCLKSEL_OUT_reg[1] 
       (.C(drpclk_in),
        .CE(1'b1),
        .D(bit_synchronizer_txoutclksel_inst1_n_0),
        .Q(\non_pcie_txoutclksel.GTHE4_TXOUTCLKSEL_OUT_reg[2]_0 [1]),
        .R(1'b0));
  FDRE \non_pcie_txoutclksel.GTHE4_TXOUTCLKSEL_OUT_reg[2] 
       (.C(drpclk_in),
        .CE(1'b1),
        .D(bit_synchronizer_txoutclksel_inst2_n_0),
        .Q(\non_pcie_txoutclksel.GTHE4_TXOUTCLKSEL_OUT_reg[2]_0 [2]),
        .R(1'b0));
  FDRE \non_pcie_txoutclksel.GTHE4_TXPROGDIVRESET_OUT_reg 
       (.C(drpclk_in),
        .CE(1'b1),
        .D(bit_synchronizer_txprogdivreset_inst_n_0),
        .Q(\gen_gtwizard_gthe4.txprogdivreset_ch_int ),
        .R(1'b0));
  LUT4 #(
    .INIT(16'h4440)) 
    \progclk_sel_store[14]_i_1 
       (.I0(cal_on_tx_reset_in_sync),
        .I1(drp_done),
        .I2(p_2_in8_in),
        .I3(p_1_in2_in),
        .O(progclk_sel_store));
  FDRE #(
    .INIT(1'b0)) 
    \progclk_sel_store_reg[0] 
       (.C(drpclk_in),
        .CE(progclk_sel_store),
        .D(Q[0]),
        .Q(\progclk_sel_store_reg_n_0_[0] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \progclk_sel_store_reg[10] 
       (.C(drpclk_in),
        .CE(progclk_sel_store),
        .D(Q[10]),
        .Q(\progclk_sel_store_reg_n_0_[10] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \progclk_sel_store_reg[11] 
       (.C(drpclk_in),
        .CE(progclk_sel_store),
        .D(Q[11]),
        .Q(\progclk_sel_store_reg_n_0_[11] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \progclk_sel_store_reg[12] 
       (.C(drpclk_in),
        .CE(progclk_sel_store),
        .D(Q[12]),
        .Q(\progclk_sel_store_reg_n_0_[12] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \progclk_sel_store_reg[13] 
       (.C(drpclk_in),
        .CE(progclk_sel_store),
        .D(Q[13]),
        .Q(\progclk_sel_store_reg_n_0_[13] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \progclk_sel_store_reg[14] 
       (.C(drpclk_in),
        .CE(progclk_sel_store),
        .D(Q[14]),
        .Q(\progclk_sel_store_reg_n_0_[14] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \progclk_sel_store_reg[1] 
       (.C(drpclk_in),
        .CE(progclk_sel_store),
        .D(Q[1]),
        .Q(\progclk_sel_store_reg_n_0_[1] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \progclk_sel_store_reg[2] 
       (.C(drpclk_in),
        .CE(progclk_sel_store),
        .D(Q[2]),
        .Q(\progclk_sel_store_reg_n_0_[2] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \progclk_sel_store_reg[3] 
       (.C(drpclk_in),
        .CE(progclk_sel_store),
        .D(Q[3]),
        .Q(\progclk_sel_store_reg_n_0_[3] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \progclk_sel_store_reg[4] 
       (.C(drpclk_in),
        .CE(progclk_sel_store),
        .D(Q[4]),
        .Q(\progclk_sel_store_reg_n_0_[4] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \progclk_sel_store_reg[5] 
       (.C(drpclk_in),
        .CE(progclk_sel_store),
        .D(Q[5]),
        .Q(\progclk_sel_store_reg_n_0_[5] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \progclk_sel_store_reg[6] 
       (.C(drpclk_in),
        .CE(progclk_sel_store),
        .D(Q[6]),
        .Q(\progclk_sel_store_reg_n_0_[6] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \progclk_sel_store_reg[7] 
       (.C(drpclk_in),
        .CE(progclk_sel_store),
        .D(Q[7]),
        .Q(\progclk_sel_store_reg_n_0_[7] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \progclk_sel_store_reg[8] 
       (.C(drpclk_in),
        .CE(progclk_sel_store),
        .D(Q[8]),
        .Q(\progclk_sel_store_reg_n_0_[8] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \progclk_sel_store_reg[9] 
       (.C(drpclk_in),
        .CE(progclk_sel_store),
        .D(Q[9]),
        .Q(\progclk_sel_store_reg_n_0_[9] ),
        .R(1'b0));
  LUT4 #(
    .INIT(16'h4440)) 
    \progdiv_cfg_store[14]_i_1 
       (.I0(cal_on_tx_reset_in_sync),
        .I1(drp_done),
        .I2(p_2_in4_in),
        .I3(p_1_in),
        .O(progdiv_cfg_store));
  LUT6 #(
    .INIT(64'hFFFFEFFF30302000)) 
    \progdiv_cfg_store[15]_i_1 
       (.I0(Q[15]),
        .I1(cal_on_tx_reset_in_sync),
        .I2(drp_done),
        .I3(p_2_in4_in),
        .I4(p_1_in),
        .I5(\progdiv_cfg_store_reg_n_0_[15] ),
        .O(\progdiv_cfg_store[15]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \progdiv_cfg_store_reg[0] 
       (.C(drpclk_in),
        .CE(progdiv_cfg_store),
        .D(Q[0]),
        .Q(\progdiv_cfg_store_reg_n_0_[0] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \progdiv_cfg_store_reg[10] 
       (.C(drpclk_in),
        .CE(progdiv_cfg_store),
        .D(Q[10]),
        .Q(\progdiv_cfg_store_reg_n_0_[10] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \progdiv_cfg_store_reg[11] 
       (.C(drpclk_in),
        .CE(progdiv_cfg_store),
        .D(Q[11]),
        .Q(\progdiv_cfg_store_reg_n_0_[11] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \progdiv_cfg_store_reg[12] 
       (.C(drpclk_in),
        .CE(progdiv_cfg_store),
        .D(Q[12]),
        .Q(\progdiv_cfg_store_reg_n_0_[12] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \progdiv_cfg_store_reg[13] 
       (.C(drpclk_in),
        .CE(progdiv_cfg_store),
        .D(Q[13]),
        .Q(\progdiv_cfg_store_reg_n_0_[13] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \progdiv_cfg_store_reg[14] 
       (.C(drpclk_in),
        .CE(progdiv_cfg_store),
        .D(Q[14]),
        .Q(\progdiv_cfg_store_reg_n_0_[14] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \progdiv_cfg_store_reg[15] 
       (.C(drpclk_in),
        .CE(1'b1),
        .D(\progdiv_cfg_store[15]_i_1_n_0 ),
        .Q(\progdiv_cfg_store_reg_n_0_[15] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \progdiv_cfg_store_reg[1] 
       (.C(drpclk_in),
        .CE(progdiv_cfg_store),
        .D(Q[1]),
        .Q(\progdiv_cfg_store_reg_n_0_[1] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \progdiv_cfg_store_reg[2] 
       (.C(drpclk_in),
        .CE(progdiv_cfg_store),
        .D(Q[2]),
        .Q(\progdiv_cfg_store_reg_n_0_[2] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \progdiv_cfg_store_reg[3] 
       (.C(drpclk_in),
        .CE(progdiv_cfg_store),
        .D(Q[3]),
        .Q(\progdiv_cfg_store_reg_n_0_[3] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \progdiv_cfg_store_reg[4] 
       (.C(drpclk_in),
        .CE(progdiv_cfg_store),
        .D(Q[4]),
        .Q(\progdiv_cfg_store_reg_n_0_[4] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \progdiv_cfg_store_reg[5] 
       (.C(drpclk_in),
        .CE(progdiv_cfg_store),
        .D(Q[5]),
        .Q(\progdiv_cfg_store_reg_n_0_[5] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \progdiv_cfg_store_reg[6] 
       (.C(drpclk_in),
        .CE(progdiv_cfg_store),
        .D(Q[6]),
        .Q(\progdiv_cfg_store_reg_n_0_[6] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \progdiv_cfg_store_reg[7] 
       (.C(drpclk_in),
        .CE(progdiv_cfg_store),
        .D(Q[7]),
        .Q(\progdiv_cfg_store_reg_n_0_[7] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \progdiv_cfg_store_reg[8] 
       (.C(drpclk_in),
        .CE(progdiv_cfg_store),
        .D(Q[8]),
        .Q(\progdiv_cfg_store_reg_n_0_[8] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \progdiv_cfg_store_reg[9] 
       (.C(drpclk_in),
        .CE(progdiv_cfg_store),
        .D(Q[9]),
        .Q(\progdiv_cfg_store_reg_n_0_[9] ),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h5555555755555554)) 
    rd_i_1__0
       (.I0(drp_done),
        .I1(p_1_in),
        .I2(p_2_in4_in),
        .I3(p_4_in),
        .I4(rd_i_2_n_0),
        .I5(rd),
        .O(rd_i_1__0_n_0));
  (* SOFT_HLUTNM = "soft_lutpair79" *) 
  LUT4 #(
    .INIT(16'hFFFE)) 
    rd_i_2
       (.I0(p_1_in5_in),
        .I1(p_1_in10_in),
        .I2(p_2_in8_in),
        .I3(p_1_in2_in),
        .O(rd_i_2_n_0));
  FDRE #(
    .INIT(1'b0)) 
    rd_reg
       (.C(drpclk_in),
        .CE(1'b1),
        .D(rd_i_1__0_n_0),
        .Q(rd),
        .R(cal_on_tx_reset_in_sync));
  (* SOFT_HLUTNM = "soft_lutpair86" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \repeat_ctr[0]_i_1 
       (.I0(p_11_in),
        .I1(\repeat_ctr_reg_n_0_[0] ),
        .O(\repeat_ctr[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair86" *) 
  LUT3 #(
    .INIT(8'h28)) 
    \repeat_ctr[1]_i_1 
       (.I0(p_11_in),
        .I1(\repeat_ctr_reg_n_0_[0] ),
        .I2(\repeat_ctr_reg_n_0_[1] ),
        .O(\repeat_ctr[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair82" *) 
  LUT4 #(
    .INIT(16'h2888)) 
    \repeat_ctr[2]_i_1 
       (.I0(p_11_in),
        .I1(\repeat_ctr_reg_n_0_[2] ),
        .I2(\repeat_ctr_reg_n_0_[1] ),
        .I3(\repeat_ctr_reg_n_0_[0] ),
        .O(\repeat_ctr[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair70" *) 
  LUT5 #(
    .INIT(32'h28888888)) 
    \repeat_ctr[3]_i_2 
       (.I0(p_11_in),
        .I1(\repeat_ctr_reg_n_0_[3] ),
        .I2(\repeat_ctr_reg_n_0_[2] ),
        .I3(\repeat_ctr_reg_n_0_[0] ),
        .I4(\repeat_ctr_reg_n_0_[1] ),
        .O(\repeat_ctr[3]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair70" *) 
  LUT4 #(
    .INIT(16'h8000)) 
    \repeat_ctr[3]_i_3 
       (.I0(\repeat_ctr_reg_n_0_[3] ),
        .I1(\repeat_ctr_reg_n_0_[2] ),
        .I2(\repeat_ctr_reg_n_0_[0] ),
        .I3(\repeat_ctr_reg_n_0_[1] ),
        .O(\repeat_ctr[3]_i_3_n_0 ));
  FDRE \repeat_ctr_reg[0] 
       (.C(drpclk_in),
        .CE(U_TXOUTCLK_FREQ_COUNTER_n_18),
        .D(\repeat_ctr[0]_i_1_n_0 ),
        .Q(\repeat_ctr_reg_n_0_[0] ),
        .R(1'b0));
  FDRE \repeat_ctr_reg[1] 
       (.C(drpclk_in),
        .CE(U_TXOUTCLK_FREQ_COUNTER_n_18),
        .D(\repeat_ctr[1]_i_1_n_0 ),
        .Q(\repeat_ctr_reg_n_0_[1] ),
        .R(1'b0));
  FDRE \repeat_ctr_reg[2] 
       (.C(drpclk_in),
        .CE(U_TXOUTCLK_FREQ_COUNTER_n_18),
        .D(\repeat_ctr[2]_i_1_n_0 ),
        .Q(\repeat_ctr_reg_n_0_[2] ),
        .R(1'b0));
  FDRE \repeat_ctr_reg[3] 
       (.C(drpclk_in),
        .CE(U_TXOUTCLK_FREQ_COUNTER_n_18),
        .D(\repeat_ctr[3]_i_2_n_0 ),
        .Q(\repeat_ctr_reg_n_0_[3] ),
        .R(1'b0));
  LUT1 #(
    .INIT(2'h1)) 
    rst_in_meta_i_1__3
       (.I0(USER_CPLLLOCK_OUT_reg_0),
        .O(rst_in0));
  LUT6 #(
    .INIT(64'hFFABFFFF00A80000)) 
    status_store_i_1
       (.I0(Q[15]),
        .I1(p_1_in5_in),
        .I2(p_1_in10_in),
        .I3(cal_on_tx_reset_in_sync),
        .I4(drp_done),
        .I5(status_store__0),
        .O(status_store_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    status_store_reg
       (.C(drpclk_in),
        .CE(1'b1),
        .D(status_store_i_1_n_0),
        .Q(status_store__0),
        .R(1'b0));
  LUT3 #(
    .INIT(8'h0E)) 
    \txoutclksel_int[2]_i_1 
       (.I0(txoutclksel_int),
        .I1(\cpll_cal_state_reg_n_0_[12] ),
        .I2(\cpll_cal_state_reg_n_0_[0] ),
        .O(\txoutclksel_int[2]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \txoutclksel_int_reg[2] 
       (.C(drpclk_in),
        .CE(1'b1),
        .D(\txoutclksel_int[2]_i_1_n_0 ),
        .Q(txoutclksel_int),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair74" *) 
  LUT4 #(
    .INIT(16'hABA8)) 
    txprogdivreset_int_i_1
       (.I0(\wait_ctr[9]_i_4_n_0 ),
        .I1(\cpll_cal_state_reg_n_0_[28] ),
        .I2(p_13_in),
        .I3(txprogdivreset_int),
        .O(txprogdivreset_int_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    txprogdivreset_int_reg
       (.C(drpclk_in),
        .CE(1'b1),
        .D(txprogdivreset_int_i_1_n_0),
        .Q(txprogdivreset_int),
        .R(cal_on_tx_reset_in_sync));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY8 wait_ctr0_carry
       (.CI(\wait_ctr_reg_n_0_[0] ),
        .CI_TOP(1'b0),
        .CO({wait_ctr0_carry_n_0,wait_ctr0_carry_n_1,wait_ctr0_carry_n_2,wait_ctr0_carry_n_3,wait_ctr0_carry_n_4,wait_ctr0_carry_n_5,wait_ctr0_carry_n_6,wait_ctr0_carry_n_7}),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .O({wait_ctr0_carry_n_8,wait_ctr0_carry_n_9,wait_ctr0_carry_n_10,wait_ctr0_carry_n_11,wait_ctr0_carry_n_12,wait_ctr0_carry_n_13,wait_ctr0_carry_n_14,wait_ctr0_carry_n_15}),
        .S({\wait_ctr_reg_n_0_[8] ,\wait_ctr_reg_n_0_[7] ,\wait_ctr_reg_n_0_[6] ,\wait_ctr_reg_n_0_[5] ,\wait_ctr_reg_n_0_[4] ,\wait_ctr_reg_n_0_[3] ,\wait_ctr_reg_n_0_[2] ,\wait_ctr_reg_n_0_[1] }));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY8 wait_ctr0_carry__0
       (.CI(wait_ctr0_carry_n_0),
        .CI_TOP(1'b0),
        .CO({wait_ctr0_carry__0_n_0,wait_ctr0_carry__0_n_1,wait_ctr0_carry__0_n_2,wait_ctr0_carry__0_n_3,wait_ctr0_carry__0_n_4,wait_ctr0_carry__0_n_5,wait_ctr0_carry__0_n_6,wait_ctr0_carry__0_n_7}),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .O({wait_ctr0_carry__0_n_8,wait_ctr0_carry__0_n_9,wait_ctr0_carry__0_n_10,wait_ctr0_carry__0_n_11,wait_ctr0_carry__0_n_12,wait_ctr0_carry__0_n_13,wait_ctr0_carry__0_n_14,wait_ctr0_carry__0_n_15}),
        .S({\wait_ctr_reg_n_0_[16] ,\wait_ctr_reg_n_0_[15] ,\wait_ctr_reg_n_0_[14] ,\wait_ctr_reg_n_0_[13] ,\wait_ctr_reg_n_0_[12] ,\wait_ctr_reg_n_0_[11] ,\wait_ctr_reg_n_0_[10] ,\wait_ctr_reg_n_0_[9] }));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY8 wait_ctr0_carry__1
       (.CI(wait_ctr0_carry__0_n_0),
        .CI_TOP(1'b0),
        .CO({NLW_wait_ctr0_carry__1_CO_UNCONNECTED[7],wait_ctr0_carry__1_n_1,wait_ctr0_carry__1_n_2,wait_ctr0_carry__1_n_3,wait_ctr0_carry__1_n_4,wait_ctr0_carry__1_n_5,wait_ctr0_carry__1_n_6,wait_ctr0_carry__1_n_7}),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .O({wait_ctr0_carry__1_n_8,wait_ctr0_carry__1_n_9,wait_ctr0_carry__1_n_10,wait_ctr0_carry__1_n_11,wait_ctr0_carry__1_n_12,wait_ctr0_carry__1_n_13,wait_ctr0_carry__1_n_14,wait_ctr0_carry__1_n_15}),
        .S({\wait_ctr_reg_n_0_[24] ,\wait_ctr_reg_n_0_[23] ,\wait_ctr_reg_n_0_[22] ,\wait_ctr_reg_n_0_[21] ,\wait_ctr_reg_n_0_[20] ,\wait_ctr_reg_n_0_[19] ,\wait_ctr_reg_n_0_[18] ,\wait_ctr_reg_n_0_[17] }));
  LUT6 #(
    .INIT(64'h5554555555555555)) 
    \wait_ctr[0]_i_1 
       (.I0(\wait_ctr_reg_n_0_[0] ),
        .I1(\cpll_cal_state_reg_n_0_[28] ),
        .I2(p_13_in),
        .I3(p_18_in),
        .I4(\wait_ctr[9]_i_6_n_0 ),
        .I5(\wait_ctr[9]_i_3_n_0 ),
        .O(\wait_ctr[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAAA8AAAAAAAAAAAA)) 
    \wait_ctr[10]_i_1 
       (.I0(wait_ctr0_carry__0_n_14),
        .I1(\cpll_cal_state_reg_n_0_[28] ),
        .I2(p_13_in),
        .I3(p_18_in),
        .I4(\wait_ctr[9]_i_6_n_0 ),
        .I5(\wait_ctr[9]_i_3_n_0 ),
        .O(\wait_ctr[10]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAAA8AAAAAAAAAAAA)) 
    \wait_ctr[11]_i_1 
       (.I0(wait_ctr0_carry__0_n_13),
        .I1(\cpll_cal_state_reg_n_0_[28] ),
        .I2(p_13_in),
        .I3(p_18_in),
        .I4(\wait_ctr[9]_i_6_n_0 ),
        .I5(\wait_ctr[9]_i_3_n_0 ),
        .O(\wait_ctr[11]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAAA8AAAAAAAAAAAA)) 
    \wait_ctr[12]_i_1 
       (.I0(wait_ctr0_carry__0_n_12),
        .I1(\cpll_cal_state_reg_n_0_[28] ),
        .I2(p_13_in),
        .I3(p_18_in),
        .I4(\wait_ctr[9]_i_6_n_0 ),
        .I5(\wait_ctr[9]_i_3_n_0 ),
        .O(\wait_ctr[12]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAAA8AAAAAAAAAAAA)) 
    \wait_ctr[13]_i_1 
       (.I0(wait_ctr0_carry__0_n_11),
        .I1(\cpll_cal_state_reg_n_0_[28] ),
        .I2(p_13_in),
        .I3(p_18_in),
        .I4(\wait_ctr[9]_i_6_n_0 ),
        .I5(\wait_ctr[9]_i_3_n_0 ),
        .O(\wait_ctr[13]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAAA8AAAAAAAAAAAA)) 
    \wait_ctr[14]_i_1 
       (.I0(wait_ctr0_carry__0_n_10),
        .I1(\cpll_cal_state_reg_n_0_[28] ),
        .I2(p_13_in),
        .I3(p_18_in),
        .I4(\wait_ctr[9]_i_6_n_0 ),
        .I5(\wait_ctr[9]_i_3_n_0 ),
        .O(\wait_ctr[14]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAAA8AAAAAAAAAAAA)) 
    \wait_ctr[15]_i_1 
       (.I0(wait_ctr0_carry__0_n_9),
        .I1(\cpll_cal_state_reg_n_0_[28] ),
        .I2(p_13_in),
        .I3(p_18_in),
        .I4(\wait_ctr[9]_i_6_n_0 ),
        .I5(\wait_ctr[9]_i_3_n_0 ),
        .O(\wait_ctr[15]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAAA8AAAAAAAAAAAA)) 
    \wait_ctr[16]_i_1 
       (.I0(wait_ctr0_carry__0_n_8),
        .I1(\cpll_cal_state_reg_n_0_[28] ),
        .I2(p_13_in),
        .I3(p_18_in),
        .I4(\wait_ctr[9]_i_6_n_0 ),
        .I5(\wait_ctr[9]_i_3_n_0 ),
        .O(\wait_ctr[16]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAAA8AAAAAAAAAAAA)) 
    \wait_ctr[17]_i_1 
       (.I0(wait_ctr0_carry__1_n_15),
        .I1(\cpll_cal_state_reg_n_0_[28] ),
        .I2(p_13_in),
        .I3(p_18_in),
        .I4(\wait_ctr[9]_i_6_n_0 ),
        .I5(\wait_ctr[9]_i_3_n_0 ),
        .O(\wait_ctr[17]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAAA8AAAAAAAAAAAA)) 
    \wait_ctr[18]_i_1 
       (.I0(wait_ctr0_carry__1_n_14),
        .I1(\cpll_cal_state_reg_n_0_[28] ),
        .I2(p_13_in),
        .I3(p_18_in),
        .I4(\wait_ctr[9]_i_6_n_0 ),
        .I5(\wait_ctr[9]_i_3_n_0 ),
        .O(\wait_ctr[18]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAAA8AAAAAAAAAAAA)) 
    \wait_ctr[19]_i_1 
       (.I0(wait_ctr0_carry__1_n_13),
        .I1(\cpll_cal_state_reg_n_0_[28] ),
        .I2(p_13_in),
        .I3(p_18_in),
        .I4(\wait_ctr[9]_i_6_n_0 ),
        .I5(\wait_ctr[9]_i_3_n_0 ),
        .O(\wait_ctr[19]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAAA8AAAAAAAAAAAA)) 
    \wait_ctr[1]_i_1 
       (.I0(wait_ctr0_carry_n_15),
        .I1(\cpll_cal_state_reg_n_0_[28] ),
        .I2(p_13_in),
        .I3(p_18_in),
        .I4(\wait_ctr[9]_i_6_n_0 ),
        .I5(\wait_ctr[9]_i_3_n_0 ),
        .O(\wait_ctr[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAAA8AAAAAAAAAAAA)) 
    \wait_ctr[20]_i_1 
       (.I0(wait_ctr0_carry__1_n_12),
        .I1(\cpll_cal_state_reg_n_0_[28] ),
        .I2(p_13_in),
        .I3(p_18_in),
        .I4(\wait_ctr[9]_i_6_n_0 ),
        .I5(\wait_ctr[9]_i_3_n_0 ),
        .O(\wait_ctr[20]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAAA8AAAAAAAAAAAA)) 
    \wait_ctr[21]_i_1 
       (.I0(wait_ctr0_carry__1_n_11),
        .I1(\cpll_cal_state_reg_n_0_[28] ),
        .I2(p_13_in),
        .I3(p_18_in),
        .I4(\wait_ctr[9]_i_6_n_0 ),
        .I5(\wait_ctr[9]_i_3_n_0 ),
        .O(\wait_ctr[21]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAAA8AAAAAAAAAAAA)) 
    \wait_ctr[22]_i_1 
       (.I0(wait_ctr0_carry__1_n_10),
        .I1(\cpll_cal_state_reg_n_0_[28] ),
        .I2(p_13_in),
        .I3(p_18_in),
        .I4(\wait_ctr[9]_i_6_n_0 ),
        .I5(\wait_ctr[9]_i_3_n_0 ),
        .O(\wait_ctr[22]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAAA8AAAAAAAAAAAA)) 
    \wait_ctr[23]_i_1 
       (.I0(wait_ctr0_carry__1_n_9),
        .I1(\cpll_cal_state_reg_n_0_[28] ),
        .I2(p_13_in),
        .I3(p_18_in),
        .I4(\wait_ctr[9]_i_6_n_0 ),
        .I5(\wait_ctr[9]_i_3_n_0 ),
        .O(\wait_ctr[23]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h00000008AAAAAAAA)) 
    \wait_ctr[24]_i_1 
       (.I0(\wait_ctr[9]_i_2_n_0 ),
        .I1(\wait_ctr[9]_i_3_n_0 ),
        .I2(\wait_ctr[9]_i_4_n_0 ),
        .I3(p_16_in),
        .I4(p_14_in),
        .I5(\wait_ctr[9]_i_7_n_0 ),
        .O(\wait_ctr[24]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAAA8AAAAAAAAAAAA)) 
    \wait_ctr[24]_i_2 
       (.I0(wait_ctr0_carry__1_n_8),
        .I1(\cpll_cal_state_reg_n_0_[28] ),
        .I2(p_13_in),
        .I3(p_18_in),
        .I4(\wait_ctr[9]_i_6_n_0 ),
        .I5(\wait_ctr[9]_i_3_n_0 ),
        .O(\wait_ctr[24]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAAA8AAAAAAAAAAAA)) 
    \wait_ctr[2]_i_1 
       (.I0(wait_ctr0_carry_n_14),
        .I1(\cpll_cal_state_reg_n_0_[28] ),
        .I2(p_13_in),
        .I3(p_18_in),
        .I4(\wait_ctr[9]_i_6_n_0 ),
        .I5(\wait_ctr[9]_i_3_n_0 ),
        .O(\wait_ctr[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAAA8AAAAAAAAAAAA)) 
    \wait_ctr[3]_i_1 
       (.I0(wait_ctr0_carry_n_13),
        .I1(\cpll_cal_state_reg_n_0_[28] ),
        .I2(p_13_in),
        .I3(p_18_in),
        .I4(\wait_ctr[9]_i_6_n_0 ),
        .I5(\wait_ctr[9]_i_3_n_0 ),
        .O(\wait_ctr[3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAAA8AAAAAAAAAAAA)) 
    \wait_ctr[5]_i_1 
       (.I0(wait_ctr0_carry_n_11),
        .I1(\cpll_cal_state_reg_n_0_[28] ),
        .I2(p_13_in),
        .I3(p_18_in),
        .I4(\wait_ctr[9]_i_6_n_0 ),
        .I5(\wait_ctr[9]_i_3_n_0 ),
        .O(\wait_ctr[5]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAAA8AAAAAAAAAAAA)) 
    \wait_ctr[6]_i_1 
       (.I0(wait_ctr0_carry_n_10),
        .I1(\cpll_cal_state_reg_n_0_[28] ),
        .I2(p_13_in),
        .I3(p_18_in),
        .I4(\wait_ctr[9]_i_6_n_0 ),
        .I5(\wait_ctr[9]_i_3_n_0 ),
        .O(\wait_ctr[6]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hA200A2A200000000)) 
    \wait_ctr[9]_i_1 
       (.I0(\wait_ctr[9]_i_3_n_0 ),
        .I1(\wait_ctr[9]_i_4_n_0 ),
        .I2(\wait_ctr[9]_i_5_n_0 ),
        .I3(\wait_ctr[9]_i_6_n_0 ),
        .I4(\wait_ctr[9]_i_7_n_0 ),
        .I5(\wait_ctr[9]_i_2_n_0 ),
        .O(\wait_ctr[9]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \wait_ctr[9]_i_10 
       (.I0(\cpll_cal_state[17]_i_8_n_0 ),
        .I1(\wait_ctr_reg_n_0_[11] ),
        .I2(\wait_ctr_reg_n_0_[12] ),
        .I3(\wait_ctr_reg_n_0_[5] ),
        .I4(\wait_ctr_reg_n_0_[6] ),
        .I5(\wait_ctr[9]_i_13_n_0 ),
        .O(\wait_ctr[9]_i_10_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair72" *) 
  LUT4 #(
    .INIT(16'h7FFF)) 
    \wait_ctr[9]_i_11 
       (.I0(\wait_ctr_reg_n_0_[13] ),
        .I1(\wait_ctr_reg_n_0_[14] ),
        .I2(\wait_ctr_reg_n_0_[12] ),
        .I3(\wait_ctr_reg_n_0_[15] ),
        .O(\wait_ctr[9]_i_11_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000005557)) 
    \wait_ctr[9]_i_12 
       (.I0(\wait_ctr_reg_n_0_[5] ),
        .I1(\wait_ctr_reg_n_0_[3] ),
        .I2(\wait_ctr_reg_n_0_[4] ),
        .I3(\wait_ctr_reg_n_0_[2] ),
        .I4(\wait_ctr[9]_i_14_n_0 ),
        .I5(\wait_ctr_reg_n_0_[6] ),
        .O(\wait_ctr[9]_i_12_n_0 ));
  LUT5 #(
    .INIT(32'hFE000000)) 
    \wait_ctr[9]_i_13 
       (.I0(\wait_ctr_reg_n_0_[2] ),
        .I1(\wait_ctr_reg_n_0_[1] ),
        .I2(\wait_ctr_reg_n_0_[0] ),
        .I3(\wait_ctr_reg_n_0_[3] ),
        .I4(\wait_ctr_reg_n_0_[4] ),
        .O(\wait_ctr[9]_i_13_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair73" *) 
  LUT3 #(
    .INIT(8'hFE)) 
    \wait_ctr[9]_i_14 
       (.I0(\wait_ctr_reg_n_0_[9] ),
        .I1(\wait_ctr_reg_n_0_[7] ),
        .I2(\wait_ctr_reg_n_0_[8] ),
        .O(\wait_ctr[9]_i_14_n_0 ));
  LUT5 #(
    .INIT(32'h55555554)) 
    \wait_ctr[9]_i_2 
       (.I0(cal_on_tx_reset_in_sync),
        .I1(\wait_ctr[9]_i_8_n_0 ),
        .I2(p_18_in),
        .I3(p_13_in),
        .I4(\cpll_cal_state_reg_n_0_[28] ),
        .O(\wait_ctr[9]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair76" *) 
  LUT3 #(
    .INIT(8'h37)) 
    \wait_ctr[9]_i_3 
       (.I0(p_15_in),
        .I1(\cpll_cal_state[17]_i_2_n_0 ),
        .I2(p_17_in),
        .O(\wait_ctr[9]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    \wait_ctr[9]_i_4 
       (.I0(\wait_ctr_reg_n_0_[13] ),
        .I1(\wait_ctr_reg_n_0_[14] ),
        .I2(\wait_ctr_reg_n_0_[15] ),
        .I3(\wait_ctr_reg_n_0_[16] ),
        .I4(\wait_ctr[9]_i_9_n_0 ),
        .I5(\wait_ctr[9]_i_10_n_0 ),
        .O(\wait_ctr[9]_i_4_n_0 ));
  LUT3 #(
    .INIT(8'h01)) 
    \wait_ctr[9]_i_5 
       (.I0(p_18_in),
        .I1(p_13_in),
        .I2(\cpll_cal_state_reg_n_0_[28] ),
        .O(\wait_ctr[9]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair75" *) 
  LUT2 #(
    .INIT(4'h1)) 
    \wait_ctr[9]_i_6 
       (.I0(p_16_in),
        .I1(p_14_in),
        .O(\wait_ctr[9]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h1011101010111011)) 
    \wait_ctr[9]_i_7 
       (.I0(\wait_ctr[9]_i_9_n_0 ),
        .I1(\wait_ctr_reg_n_0_[16] ),
        .I2(\wait_ctr[9]_i_11_n_0 ),
        .I3(\wait_ctr_reg_n_0_[11] ),
        .I4(\wait_ctr[9]_i_12_n_0 ),
        .I5(\wait_ctr_reg_n_0_[10] ),
        .O(\wait_ctr[9]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hFEFFFEFEFFFFFFFF)) 
    \wait_ctr[9]_i_8 
       (.I0(\cpll_cal_state_reg_n_0_[0] ),
        .I1(p_15_in),
        .I2(p_17_in),
        .I3(drp_done),
        .I4(p_0_in),
        .I5(\wait_ctr[9]_i_6_n_0 ),
        .O(\wait_ctr[9]_i_8_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair64" *) 
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \wait_ctr[9]_i_9 
       (.I0(\wait_ctr_reg_n_0_[22] ),
        .I1(\wait_ctr_reg_n_0_[21] ),
        .I2(\wait_ctr_reg_n_0_[24] ),
        .I3(\wait_ctr_reg_n_0_[23] ),
        .I4(\cpll_cal_state[17]_i_5_n_0 ),
        .O(\wait_ctr[9]_i_9_n_0 ));
  FDRE \wait_ctr_reg[0] 
       (.C(drpclk_in),
        .CE(\wait_ctr[9]_i_2_n_0 ),
        .D(\wait_ctr[0]_i_1_n_0 ),
        .Q(\wait_ctr_reg_n_0_[0] ),
        .R(\wait_ctr[24]_i_1_n_0 ));
  FDRE \wait_ctr_reg[10] 
       (.C(drpclk_in),
        .CE(\wait_ctr[9]_i_2_n_0 ),
        .D(\wait_ctr[10]_i_1_n_0 ),
        .Q(\wait_ctr_reg_n_0_[10] ),
        .R(\wait_ctr[24]_i_1_n_0 ));
  FDRE \wait_ctr_reg[11] 
       (.C(drpclk_in),
        .CE(\wait_ctr[9]_i_2_n_0 ),
        .D(\wait_ctr[11]_i_1_n_0 ),
        .Q(\wait_ctr_reg_n_0_[11] ),
        .R(\wait_ctr[24]_i_1_n_0 ));
  FDRE \wait_ctr_reg[12] 
       (.C(drpclk_in),
        .CE(\wait_ctr[9]_i_2_n_0 ),
        .D(\wait_ctr[12]_i_1_n_0 ),
        .Q(\wait_ctr_reg_n_0_[12] ),
        .R(\wait_ctr[24]_i_1_n_0 ));
  FDRE \wait_ctr_reg[13] 
       (.C(drpclk_in),
        .CE(\wait_ctr[9]_i_2_n_0 ),
        .D(\wait_ctr[13]_i_1_n_0 ),
        .Q(\wait_ctr_reg_n_0_[13] ),
        .R(\wait_ctr[24]_i_1_n_0 ));
  FDRE \wait_ctr_reg[14] 
       (.C(drpclk_in),
        .CE(\wait_ctr[9]_i_2_n_0 ),
        .D(\wait_ctr[14]_i_1_n_0 ),
        .Q(\wait_ctr_reg_n_0_[14] ),
        .R(\wait_ctr[24]_i_1_n_0 ));
  FDRE \wait_ctr_reg[15] 
       (.C(drpclk_in),
        .CE(\wait_ctr[9]_i_2_n_0 ),
        .D(\wait_ctr[15]_i_1_n_0 ),
        .Q(\wait_ctr_reg_n_0_[15] ),
        .R(\wait_ctr[24]_i_1_n_0 ));
  FDRE \wait_ctr_reg[16] 
       (.C(drpclk_in),
        .CE(\wait_ctr[9]_i_2_n_0 ),
        .D(\wait_ctr[16]_i_1_n_0 ),
        .Q(\wait_ctr_reg_n_0_[16] ),
        .R(\wait_ctr[24]_i_1_n_0 ));
  FDRE \wait_ctr_reg[17] 
       (.C(drpclk_in),
        .CE(\wait_ctr[9]_i_2_n_0 ),
        .D(\wait_ctr[17]_i_1_n_0 ),
        .Q(\wait_ctr_reg_n_0_[17] ),
        .R(\wait_ctr[24]_i_1_n_0 ));
  FDRE \wait_ctr_reg[18] 
       (.C(drpclk_in),
        .CE(\wait_ctr[9]_i_2_n_0 ),
        .D(\wait_ctr[18]_i_1_n_0 ),
        .Q(\wait_ctr_reg_n_0_[18] ),
        .R(\wait_ctr[24]_i_1_n_0 ));
  FDRE \wait_ctr_reg[19] 
       (.C(drpclk_in),
        .CE(\wait_ctr[9]_i_2_n_0 ),
        .D(\wait_ctr[19]_i_1_n_0 ),
        .Q(\wait_ctr_reg_n_0_[19] ),
        .R(\wait_ctr[24]_i_1_n_0 ));
  FDRE \wait_ctr_reg[1] 
       (.C(drpclk_in),
        .CE(\wait_ctr[9]_i_2_n_0 ),
        .D(\wait_ctr[1]_i_1_n_0 ),
        .Q(\wait_ctr_reg_n_0_[1] ),
        .R(\wait_ctr[24]_i_1_n_0 ));
  FDRE \wait_ctr_reg[20] 
       (.C(drpclk_in),
        .CE(\wait_ctr[9]_i_2_n_0 ),
        .D(\wait_ctr[20]_i_1_n_0 ),
        .Q(\wait_ctr_reg_n_0_[20] ),
        .R(\wait_ctr[24]_i_1_n_0 ));
  FDRE \wait_ctr_reg[21] 
       (.C(drpclk_in),
        .CE(\wait_ctr[9]_i_2_n_0 ),
        .D(\wait_ctr[21]_i_1_n_0 ),
        .Q(\wait_ctr_reg_n_0_[21] ),
        .R(\wait_ctr[24]_i_1_n_0 ));
  FDRE \wait_ctr_reg[22] 
       (.C(drpclk_in),
        .CE(\wait_ctr[9]_i_2_n_0 ),
        .D(\wait_ctr[22]_i_1_n_0 ),
        .Q(\wait_ctr_reg_n_0_[22] ),
        .R(\wait_ctr[24]_i_1_n_0 ));
  FDRE \wait_ctr_reg[23] 
       (.C(drpclk_in),
        .CE(\wait_ctr[9]_i_2_n_0 ),
        .D(\wait_ctr[23]_i_1_n_0 ),
        .Q(\wait_ctr_reg_n_0_[23] ),
        .R(\wait_ctr[24]_i_1_n_0 ));
  FDRE \wait_ctr_reg[24] 
       (.C(drpclk_in),
        .CE(\wait_ctr[9]_i_2_n_0 ),
        .D(\wait_ctr[24]_i_2_n_0 ),
        .Q(\wait_ctr_reg_n_0_[24] ),
        .R(\wait_ctr[24]_i_1_n_0 ));
  FDRE \wait_ctr_reg[2] 
       (.C(drpclk_in),
        .CE(\wait_ctr[9]_i_2_n_0 ),
        .D(\wait_ctr[2]_i_1_n_0 ),
        .Q(\wait_ctr_reg_n_0_[2] ),
        .R(\wait_ctr[24]_i_1_n_0 ));
  FDRE \wait_ctr_reg[3] 
       (.C(drpclk_in),
        .CE(\wait_ctr[9]_i_2_n_0 ),
        .D(\wait_ctr[3]_i_1_n_0 ),
        .Q(\wait_ctr_reg_n_0_[3] ),
        .R(\wait_ctr[24]_i_1_n_0 ));
  FDRE \wait_ctr_reg[4] 
       (.C(drpclk_in),
        .CE(\wait_ctr[9]_i_2_n_0 ),
        .D(wait_ctr0_carry_n_12),
        .Q(\wait_ctr_reg_n_0_[4] ),
        .R(\wait_ctr[9]_i_1_n_0 ));
  FDRE \wait_ctr_reg[5] 
       (.C(drpclk_in),
        .CE(\wait_ctr[9]_i_2_n_0 ),
        .D(\wait_ctr[5]_i_1_n_0 ),
        .Q(\wait_ctr_reg_n_0_[5] ),
        .R(\wait_ctr[24]_i_1_n_0 ));
  FDRE \wait_ctr_reg[6] 
       (.C(drpclk_in),
        .CE(\wait_ctr[9]_i_2_n_0 ),
        .D(\wait_ctr[6]_i_1_n_0 ),
        .Q(\wait_ctr_reg_n_0_[6] ),
        .R(\wait_ctr[24]_i_1_n_0 ));
  FDRE \wait_ctr_reg[7] 
       (.C(drpclk_in),
        .CE(\wait_ctr[9]_i_2_n_0 ),
        .D(wait_ctr0_carry_n_9),
        .Q(\wait_ctr_reg_n_0_[7] ),
        .R(\wait_ctr[9]_i_1_n_0 ));
  FDRE \wait_ctr_reg[8] 
       (.C(drpclk_in),
        .CE(\wait_ctr[9]_i_2_n_0 ),
        .D(wait_ctr0_carry_n_8),
        .Q(\wait_ctr_reg_n_0_[8] ),
        .R(\wait_ctr[9]_i_1_n_0 ));
  FDRE \wait_ctr_reg[9] 
       (.C(drpclk_in),
        .CE(\wait_ctr[9]_i_2_n_0 ),
        .D(wait_ctr0_carry__0_n_15),
        .Q(\wait_ctr_reg_n_0_[9] ),
        .R(\wait_ctr[9]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair85" *) 
  LUT3 #(
    .INIT(8'h74)) 
    wr_i_1__0
       (.I0(drp_done),
        .I1(\di_msk[15]_i_3_n_0 ),
        .I2(wr),
        .O(wr_i_1__0_n_0));
  FDRE #(
    .INIT(1'b0)) 
    wr_reg
       (.C(drpclk_in),
        .CE(1'b1),
        .D(wr_i_1__0_n_0),
        .Q(wr),
        .R(cal_on_tx_reset_in_sync));
  LUT3 #(
    .INIT(8'h40)) 
    \x0e1_store[14]_i_1 
       (.I0(cal_on_tx_reset_in_sync),
        .I1(p_4_in),
        .I2(drp_done),
        .O(\x0e1_store[14]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \x0e1_store_reg[0] 
       (.C(drpclk_in),
        .CE(\x0e1_store[14]_i_1_n_0 ),
        .D(Q[0]),
        .Q(\x0e1_store_reg_n_0_[0] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \x0e1_store_reg[12] 
       (.C(drpclk_in),
        .CE(\x0e1_store[14]_i_1_n_0 ),
        .D(Q[12]),
        .Q(\x0e1_store_reg_n_0_[12] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \x0e1_store_reg[13] 
       (.C(drpclk_in),
        .CE(\x0e1_store[14]_i_1_n_0 ),
        .D(Q[13]),
        .Q(\x0e1_store_reg_n_0_[13] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \x0e1_store_reg[14] 
       (.C(drpclk_in),
        .CE(\x0e1_store[14]_i_1_n_0 ),
        .D(Q[14]),
        .Q(\x0e1_store_reg_n_0_[14] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \x0e1_store_reg[1] 
       (.C(drpclk_in),
        .CE(\x0e1_store[14]_i_1_n_0 ),
        .D(Q[1]),
        .Q(\x0e1_store_reg_n_0_[1] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \x0e1_store_reg[2] 
       (.C(drpclk_in),
        .CE(\x0e1_store[14]_i_1_n_0 ),
        .D(Q[2]),
        .Q(\x0e1_store_reg_n_0_[2] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \x0e1_store_reg[3] 
       (.C(drpclk_in),
        .CE(\x0e1_store[14]_i_1_n_0 ),
        .D(Q[3]),
        .Q(\x0e1_store_reg_n_0_[3] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \x0e1_store_reg[4] 
       (.C(drpclk_in),
        .CE(\x0e1_store[14]_i_1_n_0 ),
        .D(Q[4]),
        .Q(\x0e1_store_reg_n_0_[4] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \x0e1_store_reg[5] 
       (.C(drpclk_in),
        .CE(\x0e1_store[14]_i_1_n_0 ),
        .D(Q[5]),
        .Q(\x0e1_store_reg_n_0_[5] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \x0e1_store_reg[6] 
       (.C(drpclk_in),
        .CE(\x0e1_store[14]_i_1_n_0 ),
        .D(Q[6]),
        .Q(\x0e1_store_reg_n_0_[6] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \x0e1_store_reg[7] 
       (.C(drpclk_in),
        .CE(\x0e1_store[14]_i_1_n_0 ),
        .D(Q[7]),
        .Q(\x0e1_store_reg_n_0_[7] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \x0e1_store_reg[8] 
       (.C(drpclk_in),
        .CE(\x0e1_store[14]_i_1_n_0 ),
        .D(Q[8]),
        .Q(\x0e1_store_reg_n_0_[8] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \x0e1_store_reg[9] 
       (.C(drpclk_in),
        .CE(\x0e1_store[14]_i_1_n_0 ),
        .D(Q[9]),
        .Q(\x0e1_store_reg_n_0_[9] ),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "gtwizard_ultrascale_v1_7_13_gthe4_delay_powergood" *) 
module PCS_PMA_gtwizard_ultrascale_v1_7_13_gthe4_delay_powergood
   (out,
    RXPD,
    RXRATE,
    rxoutclkpcs_out,
    \gen_powergood_delay.intclk_rrst_n_r_reg[4]_0 ,
    rxpd_in);
  output out;
  output [0:0]RXPD;
  output [0:0]RXRATE;
  input [0:0]rxoutclkpcs_out;
  input \gen_powergood_delay.intclk_rrst_n_r_reg[4]_0 ;
  input [0:0]rxpd_in;

  wire [0:0]RXPD;
  wire [0:0]RXRATE;
  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* shreg_extract = "no" *) wire \gen_powergood_delay.int_pwr_on_fsm ;
  wire \gen_powergood_delay.int_pwr_on_fsm_i_1_n_0 ;
  (* async_reg = "true" *) (* shreg_extract = "no" *) wire [4:0]\gen_powergood_delay.intclk_rrst_n_r ;
  wire \gen_powergood_delay.intclk_rrst_n_r[4]_i_1_n_0 ;
  wire \gen_powergood_delay.intclk_rrst_n_r_reg[4]_0 ;
  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* shreg_extract = "no" *) wire \gen_powergood_delay.pwr_on_fsm ;
  (* async_reg = "true" *) (* shreg_extract = "no" *) wire [8:0]\gen_powergood_delay.wait_cnt ;
  wire \gen_powergood_delay.wait_cnt[0]_i_1_n_0 ;
  wire \gen_powergood_delay.wait_cnt[8]_i_1_n_0 ;
  wire [0:0]rxoutclkpcs_out;
  wire [0:0]rxpd_in;

  assign out = \gen_powergood_delay.pwr_on_fsm ;
  LUT2 #(
    .INIT(4'hE)) 
    \gen_powergood_delay.int_pwr_on_fsm_i_1 
       (.I0(\gen_powergood_delay.int_pwr_on_fsm ),
        .I1(\gen_powergood_delay.wait_cnt [7]),
        .O(\gen_powergood_delay.int_pwr_on_fsm_i_1_n_0 ));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* SHREG_EXTRACT = "no" *) 
  FDCE #(
    .INIT(1'b0)) 
    \gen_powergood_delay.int_pwr_on_fsm_reg 
       (.C(rxoutclkpcs_out),
        .CE(1'b1),
        .CLR(\gen_powergood_delay.intclk_rrst_n_r_reg[4]_0 ),
        .D(\gen_powergood_delay.int_pwr_on_fsm_i_1_n_0 ),
        .Q(\gen_powergood_delay.int_pwr_on_fsm ));
  LUT1 #(
    .INIT(2'h1)) 
    \gen_powergood_delay.intclk_rrst_n_r[4]_i_1 
       (.I0(\gen_powergood_delay.int_pwr_on_fsm ),
        .O(\gen_powergood_delay.intclk_rrst_n_r[4]_i_1_n_0 ));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* SHREG_EXTRACT = "no" *) 
  FDCE #(
    .INIT(1'b0)) 
    \gen_powergood_delay.intclk_rrst_n_r_reg[0] 
       (.C(rxoutclkpcs_out),
        .CE(\gen_powergood_delay.intclk_rrst_n_r[4]_i_1_n_0 ),
        .CLR(\gen_powergood_delay.intclk_rrst_n_r_reg[4]_0 ),
        .D(1'b1),
        .Q(\gen_powergood_delay.intclk_rrst_n_r [0]));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* SHREG_EXTRACT = "no" *) 
  FDCE #(
    .INIT(1'b0)) 
    \gen_powergood_delay.intclk_rrst_n_r_reg[1] 
       (.C(rxoutclkpcs_out),
        .CE(\gen_powergood_delay.intclk_rrst_n_r[4]_i_1_n_0 ),
        .CLR(\gen_powergood_delay.intclk_rrst_n_r_reg[4]_0 ),
        .D(\gen_powergood_delay.intclk_rrst_n_r [0]),
        .Q(\gen_powergood_delay.intclk_rrst_n_r [1]));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* SHREG_EXTRACT = "no" *) 
  FDCE #(
    .INIT(1'b0)) 
    \gen_powergood_delay.intclk_rrst_n_r_reg[2] 
       (.C(rxoutclkpcs_out),
        .CE(\gen_powergood_delay.intclk_rrst_n_r[4]_i_1_n_0 ),
        .CLR(\gen_powergood_delay.intclk_rrst_n_r_reg[4]_0 ),
        .D(\gen_powergood_delay.intclk_rrst_n_r [1]),
        .Q(\gen_powergood_delay.intclk_rrst_n_r [2]));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* SHREG_EXTRACT = "no" *) 
  FDCE #(
    .INIT(1'b0)) 
    \gen_powergood_delay.intclk_rrst_n_r_reg[3] 
       (.C(rxoutclkpcs_out),
        .CE(\gen_powergood_delay.intclk_rrst_n_r[4]_i_1_n_0 ),
        .CLR(\gen_powergood_delay.intclk_rrst_n_r_reg[4]_0 ),
        .D(\gen_powergood_delay.intclk_rrst_n_r [2]),
        .Q(\gen_powergood_delay.intclk_rrst_n_r [3]));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* SHREG_EXTRACT = "no" *) 
  FDCE #(
    .INIT(1'b0)) 
    \gen_powergood_delay.intclk_rrst_n_r_reg[4] 
       (.C(rxoutclkpcs_out),
        .CE(\gen_powergood_delay.intclk_rrst_n_r[4]_i_1_n_0 ),
        .CLR(\gen_powergood_delay.intclk_rrst_n_r_reg[4]_0 ),
        .D(\gen_powergood_delay.intclk_rrst_n_r [3]),
        .Q(\gen_powergood_delay.intclk_rrst_n_r [4]));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* SHREG_EXTRACT = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \gen_powergood_delay.pwr_on_fsm_reg 
       (.C(rxoutclkpcs_out),
        .CE(1'b1),
        .D(\gen_powergood_delay.int_pwr_on_fsm ),
        .Q(\gen_powergood_delay.pwr_on_fsm ),
        .R(1'b0));
  LUT2 #(
    .INIT(4'h7)) 
    \gen_powergood_delay.wait_cnt[0]_i_1 
       (.I0(\gen_powergood_delay.intclk_rrst_n_r [4]),
        .I1(\gen_powergood_delay.int_pwr_on_fsm ),
        .O(\gen_powergood_delay.wait_cnt[0]_i_1_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \gen_powergood_delay.wait_cnt[8]_i_1 
       (.I0(\gen_powergood_delay.intclk_rrst_n_r [4]),
        .O(\gen_powergood_delay.wait_cnt[8]_i_1_n_0 ));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* SHREG_EXTRACT = "no" *) 
  FDRE \gen_powergood_delay.wait_cnt_reg[0] 
       (.C(rxoutclkpcs_out),
        .CE(\gen_powergood_delay.wait_cnt[0]_i_1_n_0 ),
        .D(\gen_powergood_delay.intclk_rrst_n_r [4]),
        .Q(\gen_powergood_delay.wait_cnt [0]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* SHREG_EXTRACT = "no" *) 
  FDRE \gen_powergood_delay.wait_cnt_reg[1] 
       (.C(rxoutclkpcs_out),
        .CE(\gen_powergood_delay.intclk_rrst_n_r[4]_i_1_n_0 ),
        .D(\gen_powergood_delay.wait_cnt [0]),
        .Q(\gen_powergood_delay.wait_cnt [1]),
        .R(\gen_powergood_delay.wait_cnt[8]_i_1_n_0 ));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* SHREG_EXTRACT = "no" *) 
  FDRE \gen_powergood_delay.wait_cnt_reg[2] 
       (.C(rxoutclkpcs_out),
        .CE(\gen_powergood_delay.intclk_rrst_n_r[4]_i_1_n_0 ),
        .D(\gen_powergood_delay.wait_cnt [1]),
        .Q(\gen_powergood_delay.wait_cnt [2]),
        .R(\gen_powergood_delay.wait_cnt[8]_i_1_n_0 ));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* SHREG_EXTRACT = "no" *) 
  FDRE \gen_powergood_delay.wait_cnt_reg[3] 
       (.C(rxoutclkpcs_out),
        .CE(\gen_powergood_delay.intclk_rrst_n_r[4]_i_1_n_0 ),
        .D(\gen_powergood_delay.wait_cnt [2]),
        .Q(\gen_powergood_delay.wait_cnt [3]),
        .R(\gen_powergood_delay.wait_cnt[8]_i_1_n_0 ));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* SHREG_EXTRACT = "no" *) 
  FDRE \gen_powergood_delay.wait_cnt_reg[4] 
       (.C(rxoutclkpcs_out),
        .CE(\gen_powergood_delay.intclk_rrst_n_r[4]_i_1_n_0 ),
        .D(\gen_powergood_delay.wait_cnt [3]),
        .Q(\gen_powergood_delay.wait_cnt [4]),
        .R(\gen_powergood_delay.wait_cnt[8]_i_1_n_0 ));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* SHREG_EXTRACT = "no" *) 
  FDRE \gen_powergood_delay.wait_cnt_reg[5] 
       (.C(rxoutclkpcs_out),
        .CE(\gen_powergood_delay.intclk_rrst_n_r[4]_i_1_n_0 ),
        .D(\gen_powergood_delay.wait_cnt [4]),
        .Q(\gen_powergood_delay.wait_cnt [5]),
        .R(\gen_powergood_delay.wait_cnt[8]_i_1_n_0 ));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* SHREG_EXTRACT = "no" *) 
  FDRE \gen_powergood_delay.wait_cnt_reg[6] 
       (.C(rxoutclkpcs_out),
        .CE(\gen_powergood_delay.intclk_rrst_n_r[4]_i_1_n_0 ),
        .D(\gen_powergood_delay.wait_cnt [5]),
        .Q(\gen_powergood_delay.wait_cnt [6]),
        .R(\gen_powergood_delay.wait_cnt[8]_i_1_n_0 ));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* SHREG_EXTRACT = "no" *) 
  FDRE \gen_powergood_delay.wait_cnt_reg[7] 
       (.C(rxoutclkpcs_out),
        .CE(\gen_powergood_delay.intclk_rrst_n_r[4]_i_1_n_0 ),
        .D(\gen_powergood_delay.wait_cnt [6]),
        .Q(\gen_powergood_delay.wait_cnt [7]),
        .R(\gen_powergood_delay.wait_cnt[8]_i_1_n_0 ));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* SHREG_EXTRACT = "no" *) 
  FDRE \gen_powergood_delay.wait_cnt_reg[8] 
       (.C(rxoutclkpcs_out),
        .CE(\gen_powergood_delay.intclk_rrst_n_r[4]_i_1_n_0 ),
        .D(\gen_powergood_delay.wait_cnt [7]),
        .Q(\gen_powergood_delay.wait_cnt [8]),
        .R(\gen_powergood_delay.wait_cnt[8]_i_1_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_i_2 
       (.I0(\gen_powergood_delay.pwr_on_fsm ),
        .O(RXRATE));
  LUT2 #(
    .INIT(4'hB)) 
    \gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_i_3 
       (.I0(rxpd_in),
        .I1(\gen_powergood_delay.pwr_on_fsm ),
        .O(RXPD));
endmodule

(* ORIG_REF_NAME = "gtwizard_ultrascale_v1_7_13_gtwiz_reset" *) 
module PCS_PMA_gtwizard_ultrascale_v1_7_13_gtwiz_reset
   (rst_in_out_reg,
    gtwiz_reset_tx_done_out,
    gtwiz_reset_rx_done_out,
    \gen_gtwizard_gthe4.gttxreset_int ,
    \gen_gtwizard_gthe4.txuserrdy_int ,
    \gen_gtwizard_gthe4.rxprogdivreset_int ,
    \gen_gtwizard_gthe4.rxuserrdy_int ,
    \gen_gtwizard_gthe4.delay_pwrgood_gtrxreset_int ,
    RESET_IN,
    gtpowergood_out,
    i_in_meta_reg,
    gtwiz_userclk_rx_active_out,
    rxcdrlock_out,
    drpclk_in,
    gtwiz_reset_all_in,
    gtwiz_reset_tx_datapath_in,
    rst_in0,
    rxusrclk_in,
    \gen_gtwizard_gthe4.gen_reset_controller_internal.gen_single_instance.rxresetdone_sync ,
    \gen_gtwizard_gthe4.gen_reset_controller_internal.gen_single_instance.txresetdone_sync ,
    \gen_gtwizard_gthe4.gtpowergood_int ,
    gtwiz_reset_rx_datapath_in);
  output rst_in_out_reg;
  output [0:0]gtwiz_reset_tx_done_out;
  output [0:0]gtwiz_reset_rx_done_out;
  output \gen_gtwizard_gthe4.gttxreset_int ;
  output \gen_gtwizard_gthe4.txuserrdy_int ;
  output \gen_gtwizard_gthe4.rxprogdivreset_int ;
  output \gen_gtwizard_gthe4.rxuserrdy_int ;
  output \gen_gtwizard_gthe4.delay_pwrgood_gtrxreset_int ;
  output RESET_IN;
  input [0:0]gtpowergood_out;
  input i_in_meta_reg;
  input [0:0]gtwiz_userclk_rx_active_out;
  input [0:0]rxcdrlock_out;
  input [0:0]drpclk_in;
  input [0:0]gtwiz_reset_all_in;
  input [0:0]gtwiz_reset_tx_datapath_in;
  input rst_in0;
  input [0:0]rxusrclk_in;
  input \gen_gtwizard_gthe4.gen_reset_controller_internal.gen_single_instance.rxresetdone_sync ;
  input \gen_gtwizard_gthe4.gen_reset_controller_internal.gen_single_instance.txresetdone_sync ;
  input \gen_gtwizard_gthe4.gtpowergood_int ;
  input [0:0]gtwiz_reset_rx_datapath_in;

  wire \FSM_sequential_sm_reset_all[2]_i_3_n_0 ;
  wire \FSM_sequential_sm_reset_all[2]_i_4_n_0 ;
  wire \FSM_sequential_sm_reset_rx[2]_i_2_n_0 ;
  wire RESET_IN;
  wire bit_synchronizer_gtpowergood_inst_n_0;
  wire bit_synchronizer_gtwiz_reset_rx_pll_and_datapath_dly_inst_n_2;
  wire bit_synchronizer_gtwiz_reset_tx_pll_and_datapath_dly_inst_n_0;
  wire bit_synchronizer_gtwiz_reset_userclk_rx_active_inst_n_0;
  wire bit_synchronizer_gtwiz_reset_userclk_rx_active_inst_n_1;
  wire bit_synchronizer_gtwiz_reset_userclk_rx_active_inst_n_2;
  wire bit_synchronizer_gtwiz_reset_userclk_tx_active_inst_n_1;
  wire bit_synchronizer_gtwiz_reset_userclk_tx_active_inst_n_2;
  wire bit_synchronizer_plllock_rx_inst_n_0;
  wire bit_synchronizer_plllock_rx_inst_n_1;
  wire bit_synchronizer_plllock_rx_inst_n_2;
  wire bit_synchronizer_plllock_rx_inst_n_3;
  wire bit_synchronizer_plllock_rx_inst_n_4;
  wire bit_synchronizer_plllock_tx_inst_n_0;
  wire bit_synchronizer_plllock_tx_inst_n_1;
  wire bit_synchronizer_plllock_tx_inst_n_2;
  wire bit_synchronizer_plllock_tx_inst_n_3;
  wire bit_synchronizer_rxcdrlock_inst_n_0;
  wire bit_synchronizer_rxcdrlock_inst_n_1;
  wire bit_synchronizer_rxcdrlock_inst_n_2;
  wire [0:0]drpclk_in;
  wire \gen_gtwizard_gthe4.delay_pwrgood_gtrxreset_int ;
  wire \gen_gtwizard_gthe4.gen_reset_controller_internal.gen_single_instance.gtwiz_reset_pllreset_rx_int ;
  wire \gen_gtwizard_gthe4.gen_reset_controller_internal.gen_single_instance.gtwiz_reset_pllreset_tx_int ;
  wire \gen_gtwizard_gthe4.gen_reset_controller_internal.gen_single_instance.rxresetdone_sync ;
  wire \gen_gtwizard_gthe4.gen_reset_controller_internal.gen_single_instance.txresetdone_sync ;
  wire \gen_gtwizard_gthe4.gtpowergood_int ;
  wire \gen_gtwizard_gthe4.gtrxreset_int ;
  wire \gen_gtwizard_gthe4.gttxreset_int ;
  wire \gen_gtwizard_gthe4.rxprogdivreset_int ;
  wire \gen_gtwizard_gthe4.rxuserrdy_int ;
  wire \gen_gtwizard_gthe4.txuserrdy_int ;
  wire [0:0]gtpowergood_out;
  wire [0:0]gtwiz_reset_all_in;
  wire gtwiz_reset_all_sync;
  wire gtwiz_reset_rx_any_sync;
  wire gtwiz_reset_rx_datapath_dly;
  wire [0:0]gtwiz_reset_rx_datapath_in;
  wire gtwiz_reset_rx_datapath_int_i_1_n_0;
  wire gtwiz_reset_rx_datapath_int_reg_n_0;
  wire gtwiz_reset_rx_datapath_sync;
  wire gtwiz_reset_rx_done_int_reg_n_0;
  wire [0:0]gtwiz_reset_rx_done_out;
  wire gtwiz_reset_rx_pll_and_datapath_int_i_1_n_0;
  wire gtwiz_reset_rx_pll_and_datapath_int_reg_n_0;
  wire gtwiz_reset_rx_pll_and_datapath_sync;
  wire gtwiz_reset_tx_any_sync;
  wire gtwiz_reset_tx_datapath_dly;
  wire [0:0]gtwiz_reset_tx_datapath_in;
  wire gtwiz_reset_tx_datapath_sync;
  wire gtwiz_reset_tx_done_int0__0;
  wire gtwiz_reset_tx_done_int_reg_n_0;
  wire [0:0]gtwiz_reset_tx_done_out;
  wire gtwiz_reset_tx_pll_and_datapath_int_i_1_n_0;
  wire gtwiz_reset_tx_pll_and_datapath_int_reg_n_0;
  wire gtwiz_reset_tx_pll_and_datapath_sync;
  wire [0:0]gtwiz_userclk_rx_active_out;
  wire i_in_meta_reg;
  wire p_0_in;
  wire p_0_in11_out__0;
  wire [9:0]p_0_in__2;
  wire [9:0]p_0_in__3;
  wire reset_synchronizer_gtwiz_reset_rx_any_inst_n_1;
  wire reset_synchronizer_gtwiz_reset_tx_any_inst_n_1;
  wire rst_in0;
  wire rst_in_out_reg;
  wire [0:0]rxcdrlock_out;
  wire [0:0]rxusrclk_in;
  wire sel;
  wire [2:0]sm_reset_all;
  wire [2:0]sm_reset_all__0;
  wire sm_reset_all_timer_clr_i_1_n_0;
  wire sm_reset_all_timer_clr_i_2_n_0;
  wire sm_reset_all_timer_clr_reg_n_0;
  wire [2:0]sm_reset_all_timer_ctr;
  wire \sm_reset_all_timer_ctr0_inferred__0/i__n_0 ;
  wire \sm_reset_all_timer_ctr[0]_i_1_n_0 ;
  wire \sm_reset_all_timer_ctr[1]_i_1_n_0 ;
  wire \sm_reset_all_timer_ctr[2]_i_1_n_0 ;
  wire sm_reset_all_timer_sat;
  wire sm_reset_all_timer_sat_i_1_n_0;
  wire [2:0]sm_reset_rx;
  wire [1:0]sm_reset_rx__0;
  wire sm_reset_rx_cdr_to_clr;
  wire \sm_reset_rx_cdr_to_ctr[0]_i_1_n_0 ;
  wire \sm_reset_rx_cdr_to_ctr[0]_i_3_n_0 ;
  wire \sm_reset_rx_cdr_to_ctr[0]_i_4_n_0 ;
  wire \sm_reset_rx_cdr_to_ctr[0]_i_5_n_0 ;
  wire \sm_reset_rx_cdr_to_ctr[0]_i_6_n_0 ;
  wire \sm_reset_rx_cdr_to_ctr[0]_i_7_n_0 ;
  wire \sm_reset_rx_cdr_to_ctr[0]_i_8_n_0 ;
  wire [25:0]sm_reset_rx_cdr_to_ctr_reg;
  wire \sm_reset_rx_cdr_to_ctr_reg[0]_i_2_n_0 ;
  wire \sm_reset_rx_cdr_to_ctr_reg[0]_i_2_n_1 ;
  wire \sm_reset_rx_cdr_to_ctr_reg[0]_i_2_n_10 ;
  wire \sm_reset_rx_cdr_to_ctr_reg[0]_i_2_n_11 ;
  wire \sm_reset_rx_cdr_to_ctr_reg[0]_i_2_n_12 ;
  wire \sm_reset_rx_cdr_to_ctr_reg[0]_i_2_n_13 ;
  wire \sm_reset_rx_cdr_to_ctr_reg[0]_i_2_n_14 ;
  wire \sm_reset_rx_cdr_to_ctr_reg[0]_i_2_n_15 ;
  wire \sm_reset_rx_cdr_to_ctr_reg[0]_i_2_n_2 ;
  wire \sm_reset_rx_cdr_to_ctr_reg[0]_i_2_n_3 ;
  wire \sm_reset_rx_cdr_to_ctr_reg[0]_i_2_n_4 ;
  wire \sm_reset_rx_cdr_to_ctr_reg[0]_i_2_n_5 ;
  wire \sm_reset_rx_cdr_to_ctr_reg[0]_i_2_n_6 ;
  wire \sm_reset_rx_cdr_to_ctr_reg[0]_i_2_n_7 ;
  wire \sm_reset_rx_cdr_to_ctr_reg[0]_i_2_n_8 ;
  wire \sm_reset_rx_cdr_to_ctr_reg[0]_i_2_n_9 ;
  wire \sm_reset_rx_cdr_to_ctr_reg[16]_i_1_n_0 ;
  wire \sm_reset_rx_cdr_to_ctr_reg[16]_i_1_n_1 ;
  wire \sm_reset_rx_cdr_to_ctr_reg[16]_i_1_n_10 ;
  wire \sm_reset_rx_cdr_to_ctr_reg[16]_i_1_n_11 ;
  wire \sm_reset_rx_cdr_to_ctr_reg[16]_i_1_n_12 ;
  wire \sm_reset_rx_cdr_to_ctr_reg[16]_i_1_n_13 ;
  wire \sm_reset_rx_cdr_to_ctr_reg[16]_i_1_n_14 ;
  wire \sm_reset_rx_cdr_to_ctr_reg[16]_i_1_n_15 ;
  wire \sm_reset_rx_cdr_to_ctr_reg[16]_i_1_n_2 ;
  wire \sm_reset_rx_cdr_to_ctr_reg[16]_i_1_n_3 ;
  wire \sm_reset_rx_cdr_to_ctr_reg[16]_i_1_n_4 ;
  wire \sm_reset_rx_cdr_to_ctr_reg[16]_i_1_n_5 ;
  wire \sm_reset_rx_cdr_to_ctr_reg[16]_i_1_n_6 ;
  wire \sm_reset_rx_cdr_to_ctr_reg[16]_i_1_n_7 ;
  wire \sm_reset_rx_cdr_to_ctr_reg[16]_i_1_n_8 ;
  wire \sm_reset_rx_cdr_to_ctr_reg[16]_i_1_n_9 ;
  wire \sm_reset_rx_cdr_to_ctr_reg[24]_i_1_n_14 ;
  wire \sm_reset_rx_cdr_to_ctr_reg[24]_i_1_n_15 ;
  wire \sm_reset_rx_cdr_to_ctr_reg[24]_i_1_n_7 ;
  wire \sm_reset_rx_cdr_to_ctr_reg[8]_i_1_n_0 ;
  wire \sm_reset_rx_cdr_to_ctr_reg[8]_i_1_n_1 ;
  wire \sm_reset_rx_cdr_to_ctr_reg[8]_i_1_n_10 ;
  wire \sm_reset_rx_cdr_to_ctr_reg[8]_i_1_n_11 ;
  wire \sm_reset_rx_cdr_to_ctr_reg[8]_i_1_n_12 ;
  wire \sm_reset_rx_cdr_to_ctr_reg[8]_i_1_n_13 ;
  wire \sm_reset_rx_cdr_to_ctr_reg[8]_i_1_n_14 ;
  wire \sm_reset_rx_cdr_to_ctr_reg[8]_i_1_n_15 ;
  wire \sm_reset_rx_cdr_to_ctr_reg[8]_i_1_n_2 ;
  wire \sm_reset_rx_cdr_to_ctr_reg[8]_i_1_n_3 ;
  wire \sm_reset_rx_cdr_to_ctr_reg[8]_i_1_n_4 ;
  wire \sm_reset_rx_cdr_to_ctr_reg[8]_i_1_n_5 ;
  wire \sm_reset_rx_cdr_to_ctr_reg[8]_i_1_n_6 ;
  wire \sm_reset_rx_cdr_to_ctr_reg[8]_i_1_n_7 ;
  wire \sm_reset_rx_cdr_to_ctr_reg[8]_i_1_n_8 ;
  wire \sm_reset_rx_cdr_to_ctr_reg[8]_i_1_n_9 ;
  wire sm_reset_rx_cdr_to_sat;
  wire sm_reset_rx_cdr_to_sat_i_1_n_0;
  wire sm_reset_rx_pll_timer_clr_i_1_n_0;
  wire sm_reset_rx_pll_timer_clr_reg_n_0;
  wire \sm_reset_rx_pll_timer_ctr[2]_i_1_n_0 ;
  wire \sm_reset_rx_pll_timer_ctr[7]_i_2_n_0 ;
  wire \sm_reset_rx_pll_timer_ctr[9]_i_1_n_0 ;
  wire \sm_reset_rx_pll_timer_ctr[9]_i_3_n_0 ;
  wire \sm_reset_rx_pll_timer_ctr[9]_i_4_n_0 ;
  wire [9:0]sm_reset_rx_pll_timer_ctr_reg;
  wire sm_reset_rx_pll_timer_sat;
  wire sm_reset_rx_pll_timer_sat_i_1_n_0;
  wire sm_reset_rx_timer_clr_reg_n_0;
  wire [2:0]sm_reset_rx_timer_ctr;
  wire \sm_reset_rx_timer_ctr0_inferred__0/i__n_0 ;
  wire \sm_reset_rx_timer_ctr[0]_i_1_n_0 ;
  wire \sm_reset_rx_timer_ctr[1]_i_1_n_0 ;
  wire \sm_reset_rx_timer_ctr[2]_i_1_n_0 ;
  wire sm_reset_rx_timer_sat;
  wire sm_reset_rx_timer_sat_i_1_n_0;
  wire [2:0]sm_reset_tx;
  wire [2:0]sm_reset_tx__0;
  wire sm_reset_tx_pll_timer_clr_i_1_n_0;
  wire sm_reset_tx_pll_timer_clr_reg_n_0;
  wire \sm_reset_tx_pll_timer_ctr[2]_i_1_n_0 ;
  wire \sm_reset_tx_pll_timer_ctr[7]_i_2_n_0 ;
  wire \sm_reset_tx_pll_timer_ctr[9]_i_3_n_0 ;
  wire \sm_reset_tx_pll_timer_ctr[9]_i_4_n_0 ;
  wire [9:0]sm_reset_tx_pll_timer_ctr_reg;
  wire sm_reset_tx_pll_timer_sat;
  wire sm_reset_tx_pll_timer_sat_i_1_n_0;
  wire sm_reset_tx_timer_clr013_out__0;
  wire sm_reset_tx_timer_clr0__0;
  wire sm_reset_tx_timer_clr_reg_n_0;
  wire [2:0]sm_reset_tx_timer_ctr;
  wire \sm_reset_tx_timer_ctr[0]_i_1_n_0 ;
  wire \sm_reset_tx_timer_ctr[1]_i_1_n_0 ;
  wire \sm_reset_tx_timer_ctr[2]_i_1_n_0 ;
  wire sm_reset_tx_timer_sat;
  wire sm_reset_tx_timer_sat_i_1_n_0;
  wire [7:1]\NLW_sm_reset_rx_cdr_to_ctr_reg[24]_i_1_CO_UNCONNECTED ;
  wire [7:2]\NLW_sm_reset_rx_cdr_to_ctr_reg[24]_i_1_O_UNCONNECTED ;

  LUT6 #(
    .INIT(64'h00FFF70000FFFFFF)) 
    \FSM_sequential_sm_reset_all[0]_i_1 
       (.I0(gtwiz_reset_rx_done_int_reg_n_0),
        .I1(sm_reset_all_timer_sat),
        .I2(sm_reset_all_timer_clr_reg_n_0),
        .I3(sm_reset_all[2]),
        .I4(sm_reset_all[1]),
        .I5(sm_reset_all[0]),
        .O(sm_reset_all__0[0]));
  (* SOFT_HLUTNM = "soft_lutpair102" *) 
  LUT3 #(
    .INIT(8'h34)) 
    \FSM_sequential_sm_reset_all[1]_i_1 
       (.I0(sm_reset_all[2]),
        .I1(sm_reset_all[1]),
        .I2(sm_reset_all[0]),
        .O(sm_reset_all__0[1]));
  (* SOFT_HLUTNM = "soft_lutpair102" *) 
  LUT3 #(
    .INIT(8'h4A)) 
    \FSM_sequential_sm_reset_all[2]_i_2 
       (.I0(sm_reset_all[2]),
        .I1(sm_reset_all[0]),
        .I2(sm_reset_all[1]),
        .O(sm_reset_all__0[2]));
  (* SOFT_HLUTNM = "soft_lutpair99" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \FSM_sequential_sm_reset_all[2]_i_3 
       (.I0(sm_reset_all_timer_sat),
        .I1(gtwiz_reset_rx_done_int_reg_n_0),
        .I2(sm_reset_all_timer_clr_reg_n_0),
        .O(\FSM_sequential_sm_reset_all[2]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair99" *) 
  LUT3 #(
    .INIT(8'h40)) 
    \FSM_sequential_sm_reset_all[2]_i_4 
       (.I0(sm_reset_all_timer_clr_reg_n_0),
        .I1(sm_reset_all_timer_sat),
        .I2(gtwiz_reset_tx_done_int_reg_n_0),
        .O(\FSM_sequential_sm_reset_all[2]_i_4_n_0 ));
  (* FSM_ENCODED_STATES = "ST_RESET_ALL_BRANCH:000,ST_RESET_ALL_TX_PLL_WAIT:010,ST_RESET_ALL_RX_WAIT:101,ST_RESET_ALL_TX_PLL:001,ST_RESET_ALL_RX_PLL:100,ST_RESET_ALL_RX_DP:011,ST_RESET_ALL_INIT:111,iSTATE:110" *) 
  FDRE #(
    .INIT(1'b1)) 
    \FSM_sequential_sm_reset_all_reg[0] 
       (.C(drpclk_in),
        .CE(bit_synchronizer_gtpowergood_inst_n_0),
        .D(sm_reset_all__0[0]),
        .Q(sm_reset_all[0]),
        .R(gtwiz_reset_all_sync));
  (* FSM_ENCODED_STATES = "ST_RESET_ALL_BRANCH:000,ST_RESET_ALL_TX_PLL_WAIT:010,ST_RESET_ALL_RX_WAIT:101,ST_RESET_ALL_TX_PLL:001,ST_RESET_ALL_RX_PLL:100,ST_RESET_ALL_RX_DP:011,ST_RESET_ALL_INIT:111,iSTATE:110" *) 
  FDRE #(
    .INIT(1'b1)) 
    \FSM_sequential_sm_reset_all_reg[1] 
       (.C(drpclk_in),
        .CE(bit_synchronizer_gtpowergood_inst_n_0),
        .D(sm_reset_all__0[1]),
        .Q(sm_reset_all[1]),
        .R(gtwiz_reset_all_sync));
  (* FSM_ENCODED_STATES = "ST_RESET_ALL_BRANCH:000,ST_RESET_ALL_TX_PLL_WAIT:010,ST_RESET_ALL_RX_WAIT:101,ST_RESET_ALL_TX_PLL:001,ST_RESET_ALL_RX_PLL:100,ST_RESET_ALL_RX_DP:011,ST_RESET_ALL_INIT:111,iSTATE:110" *) 
  FDRE #(
    .INIT(1'b1)) 
    \FSM_sequential_sm_reset_all_reg[2] 
       (.C(drpclk_in),
        .CE(bit_synchronizer_gtpowergood_inst_n_0),
        .D(sm_reset_all__0[2]),
        .Q(sm_reset_all[2]),
        .R(gtwiz_reset_all_sync));
  LUT3 #(
    .INIT(8'h40)) 
    \FSM_sequential_sm_reset_rx[1]_i_2 
       (.I0(sm_reset_rx_timer_clr_reg_n_0),
        .I1(sm_reset_rx_timer_sat),
        .I2(\gen_gtwizard_gthe4.gen_reset_controller_internal.gen_single_instance.rxresetdone_sync ),
        .O(p_0_in11_out__0));
  LUT6 #(
    .INIT(64'hFFFFFF000800FF00)) 
    \FSM_sequential_sm_reset_rx[2]_i_2 
       (.I0(\gen_gtwizard_gthe4.gen_reset_controller_internal.gen_single_instance.rxresetdone_sync ),
        .I1(sm_reset_rx_timer_sat),
        .I2(sm_reset_rx_timer_clr_reg_n_0),
        .I3(sm_reset_rx[2]),
        .I4(sm_reset_rx[1]),
        .I5(sm_reset_rx[0]),
        .O(\FSM_sequential_sm_reset_rx[2]_i_2_n_0 ));
  (* FSM_ENCODED_STATES = "ST_RESET_RX_WAIT_LOCK:011,ST_RESET_RX_WAIT_CDR:100,ST_RESET_RX_WAIT_USERRDY:101,ST_RESET_RX_WAIT_RESETDONE:110,ST_RESET_RX_DATAPATH:010,ST_RESET_RX_PLL:001,ST_RESET_RX_BRANCH:000,ST_RESET_RX_IDLE:111" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_sequential_sm_reset_rx_reg[0] 
       (.C(drpclk_in),
        .CE(bit_synchronizer_plllock_rx_inst_n_0),
        .D(sm_reset_rx__0[0]),
        .Q(sm_reset_rx[0]),
        .R(gtwiz_reset_rx_any_sync));
  (* FSM_ENCODED_STATES = "ST_RESET_RX_WAIT_LOCK:011,ST_RESET_RX_WAIT_CDR:100,ST_RESET_RX_WAIT_USERRDY:101,ST_RESET_RX_WAIT_RESETDONE:110,ST_RESET_RX_DATAPATH:010,ST_RESET_RX_PLL:001,ST_RESET_RX_BRANCH:000,ST_RESET_RX_IDLE:111" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_sequential_sm_reset_rx_reg[1] 
       (.C(drpclk_in),
        .CE(bit_synchronizer_plllock_rx_inst_n_0),
        .D(sm_reset_rx__0[1]),
        .Q(sm_reset_rx[1]),
        .R(gtwiz_reset_rx_any_sync));
  (* FSM_ENCODED_STATES = "ST_RESET_RX_WAIT_LOCK:011,ST_RESET_RX_WAIT_CDR:100,ST_RESET_RX_WAIT_USERRDY:101,ST_RESET_RX_WAIT_RESETDONE:110,ST_RESET_RX_DATAPATH:010,ST_RESET_RX_PLL:001,ST_RESET_RX_BRANCH:000,ST_RESET_RX_IDLE:111" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_sequential_sm_reset_rx_reg[2] 
       (.C(drpclk_in),
        .CE(bit_synchronizer_plllock_rx_inst_n_0),
        .D(\FSM_sequential_sm_reset_rx[2]_i_2_n_0 ),
        .Q(sm_reset_rx[2]),
        .R(gtwiz_reset_rx_any_sync));
  LUT3 #(
    .INIT(8'h38)) 
    \FSM_sequential_sm_reset_tx[2]_i_2 
       (.I0(sm_reset_tx[0]),
        .I1(sm_reset_tx[1]),
        .I2(sm_reset_tx[2]),
        .O(sm_reset_tx__0[2]));
  LUT3 #(
    .INIT(8'h40)) 
    \FSM_sequential_sm_reset_tx[2]_i_4 
       (.I0(sm_reset_tx_timer_clr_reg_n_0),
        .I1(sm_reset_tx_timer_sat),
        .I2(\gen_gtwizard_gthe4.gen_reset_controller_internal.gen_single_instance.txresetdone_sync ),
        .O(gtwiz_reset_tx_done_int0__0));
  (* FSM_ENCODED_STATES = "ST_RESET_TX_BRANCH:000,ST_RESET_TX_WAIT_LOCK:011,ST_RESET_TX_WAIT_USERRDY:100,ST_RESET_TX_WAIT_RESETDONE:101,ST_RESET_TX_IDLE:110,ST_RESET_TX_DATAPATH:010,ST_RESET_TX_PLL:001" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_sequential_sm_reset_tx_reg[0] 
       (.C(drpclk_in),
        .CE(bit_synchronizer_plllock_tx_inst_n_0),
        .D(sm_reset_tx__0[0]),
        .Q(sm_reset_tx[0]),
        .R(gtwiz_reset_tx_any_sync));
  (* FSM_ENCODED_STATES = "ST_RESET_TX_BRANCH:000,ST_RESET_TX_WAIT_LOCK:011,ST_RESET_TX_WAIT_USERRDY:100,ST_RESET_TX_WAIT_RESETDONE:101,ST_RESET_TX_IDLE:110,ST_RESET_TX_DATAPATH:010,ST_RESET_TX_PLL:001" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_sequential_sm_reset_tx_reg[1] 
       (.C(drpclk_in),
        .CE(bit_synchronizer_plllock_tx_inst_n_0),
        .D(sm_reset_tx__0[1]),
        .Q(sm_reset_tx[1]),
        .R(gtwiz_reset_tx_any_sync));
  (* FSM_ENCODED_STATES = "ST_RESET_TX_BRANCH:000,ST_RESET_TX_WAIT_LOCK:011,ST_RESET_TX_WAIT_USERRDY:100,ST_RESET_TX_WAIT_RESETDONE:101,ST_RESET_TX_IDLE:110,ST_RESET_TX_DATAPATH:010,ST_RESET_TX_PLL:001" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_sequential_sm_reset_tx_reg[2] 
       (.C(drpclk_in),
        .CE(bit_synchronizer_plllock_tx_inst_n_0),
        .D(sm_reset_tx__0[2]),
        .Q(sm_reset_tx[2]),
        .R(gtwiz_reset_tx_any_sync));
  PCS_PMA_gtwizard_ultrascale_v1_7_13_bit_synchronizer_1 bit_synchronizer_gtpowergood_inst
       (.E(bit_synchronizer_gtpowergood_inst_n_0),
        .\FSM_sequential_sm_reset_all_reg[0] (\FSM_sequential_sm_reset_all[2]_i_3_n_0 ),
        .\FSM_sequential_sm_reset_all_reg[0]_0 (\FSM_sequential_sm_reset_all[2]_i_4_n_0 ),
        .Q(sm_reset_all),
        .drpclk_in(drpclk_in),
        .gtpowergood_out(gtpowergood_out));
  PCS_PMA_gtwizard_ultrascale_v1_7_13_bit_synchronizer_2 bit_synchronizer_gtwiz_reset_rx_datapath_dly_inst
       (.drpclk_in(drpclk_in),
        .gtwiz_reset_rx_datapath_dly(gtwiz_reset_rx_datapath_dly),
        .in0(gtwiz_reset_rx_datapath_sync));
  PCS_PMA_gtwizard_ultrascale_v1_7_13_bit_synchronizer_3 bit_synchronizer_gtwiz_reset_rx_pll_and_datapath_dly_inst
       (.D(sm_reset_rx__0),
        .\FSM_sequential_sm_reset_rx[2]_i_3 (sm_reset_rx_pll_timer_clr_reg_n_0),
        .Q(sm_reset_rx),
        .drpclk_in(drpclk_in),
        .gtwiz_reset_rx_datapath_dly(gtwiz_reset_rx_datapath_dly),
        .in0(gtwiz_reset_rx_pll_and_datapath_sync),
        .p_0_in11_out__0(p_0_in11_out__0),
        .sm_reset_rx_pll_timer_sat(sm_reset_rx_pll_timer_sat),
        .sm_reset_rx_pll_timer_sat_reg(bit_synchronizer_gtwiz_reset_rx_pll_and_datapath_dly_inst_n_2));
  PCS_PMA_gtwizard_ultrascale_v1_7_13_bit_synchronizer_4 bit_synchronizer_gtwiz_reset_tx_datapath_dly_inst
       (.drpclk_in(drpclk_in),
        .gtwiz_reset_tx_datapath_dly(gtwiz_reset_tx_datapath_dly),
        .in0(gtwiz_reset_tx_datapath_sync));
  PCS_PMA_gtwizard_ultrascale_v1_7_13_bit_synchronizer_5 bit_synchronizer_gtwiz_reset_tx_pll_and_datapath_dly_inst
       (.D(sm_reset_tx__0[1:0]),
        .\FSM_sequential_sm_reset_tx[2]_i_3 (sm_reset_tx_pll_timer_clr_reg_n_0),
        .Q(sm_reset_tx),
        .drpclk_in(drpclk_in),
        .gtwiz_reset_tx_datapath_dly(gtwiz_reset_tx_datapath_dly),
        .in0(gtwiz_reset_tx_pll_and_datapath_sync),
        .sm_reset_tx_pll_timer_sat(sm_reset_tx_pll_timer_sat),
        .sm_reset_tx_pll_timer_sat_reg(bit_synchronizer_gtwiz_reset_tx_pll_and_datapath_dly_inst_n_0));
  PCS_PMA_gtwizard_ultrascale_v1_7_13_bit_synchronizer_6 bit_synchronizer_gtwiz_reset_userclk_rx_active_inst
       (.\FSM_sequential_sm_reset_rx_reg[0] (bit_synchronizer_gtwiz_reset_userclk_rx_active_inst_n_1),
        .\FSM_sequential_sm_reset_rx_reg[0]_0 (bit_synchronizer_gtwiz_reset_userclk_rx_active_inst_n_2),
        .\FSM_sequential_sm_reset_rx_reg[0]_1 (bit_synchronizer_rxcdrlock_inst_n_0),
        .\FSM_sequential_sm_reset_rx_reg[1] (bit_synchronizer_gtwiz_reset_userclk_rx_active_inst_n_0),
        .Q(sm_reset_rx),
        .drpclk_in(drpclk_in),
        .\gen_gtwizard_gthe4.gen_reset_controller_internal.gen_single_instance.rxresetdone_sync (\gen_gtwizard_gthe4.gen_reset_controller_internal.gen_single_instance.rxresetdone_sync ),
        .\gen_gtwizard_gthe4.rxuserrdy_int (\gen_gtwizard_gthe4.rxuserrdy_int ),
        .gtwiz_reset_rx_any_sync(gtwiz_reset_rx_any_sync),
        .gtwiz_userclk_rx_active_out(gtwiz_userclk_rx_active_out),
        .p_0_in11_out__0(p_0_in11_out__0),
        .sm_reset_rx_cdr_to_sat(sm_reset_rx_cdr_to_sat),
        .sm_reset_rx_timer_clr_reg(sm_reset_rx_timer_clr_reg_n_0),
        .sm_reset_rx_timer_clr_reg_0(bit_synchronizer_plllock_rx_inst_n_1),
        .sm_reset_rx_timer_sat(sm_reset_rx_timer_sat));
  PCS_PMA_gtwizard_ultrascale_v1_7_13_bit_synchronizer_7 bit_synchronizer_gtwiz_reset_userclk_tx_active_inst
       (.\FSM_sequential_sm_reset_tx_reg[1] (bit_synchronizer_gtwiz_reset_userclk_tx_active_inst_n_1),
        .\FSM_sequential_sm_reset_tx_reg[2] (bit_synchronizer_gtwiz_reset_userclk_tx_active_inst_n_2),
        .Q(sm_reset_tx),
        .drpclk_in(drpclk_in),
        .\gen_gtwizard_gthe4.gen_reset_controller_internal.gen_single_instance.txresetdone_sync (\gen_gtwizard_gthe4.gen_reset_controller_internal.gen_single_instance.txresetdone_sync ),
        .\gen_gtwizard_gthe4.txuserrdy_int (\gen_gtwizard_gthe4.txuserrdy_int ),
        .gtwiz_reset_tx_any_sync(gtwiz_reset_tx_any_sync),
        .sm_reset_tx_timer_clr013_out__0(sm_reset_tx_timer_clr013_out__0),
        .sm_reset_tx_timer_clr0__0(sm_reset_tx_timer_clr0__0),
        .sm_reset_tx_timer_clr_reg(sm_reset_tx_timer_clr_reg_n_0),
        .sm_reset_tx_timer_clr_reg_0(bit_synchronizer_plllock_tx_inst_n_1),
        .sm_reset_tx_timer_sat(sm_reset_tx_timer_sat));
  PCS_PMA_gtwizard_ultrascale_v1_7_13_bit_synchronizer_8 bit_synchronizer_plllock_rx_inst
       (.E(bit_synchronizer_plllock_rx_inst_n_0),
        .\FSM_sequential_sm_reset_rx_reg[0] (bit_synchronizer_gtwiz_reset_userclk_rx_active_inst_n_0),
        .\FSM_sequential_sm_reset_rx_reg[0]_0 (sm_reset_rx_timer_clr_reg_n_0),
        .\FSM_sequential_sm_reset_rx_reg[0]_1 (bit_synchronizer_gtwiz_reset_rx_pll_and_datapath_dly_inst_n_2),
        .\FSM_sequential_sm_reset_rx_reg[1] (bit_synchronizer_plllock_rx_inst_n_2),
        .\FSM_sequential_sm_reset_rx_reg[1]_0 (bit_synchronizer_plllock_rx_inst_n_4),
        .\FSM_sequential_sm_reset_rx_reg[2] (bit_synchronizer_plllock_rx_inst_n_3),
        .Q(sm_reset_rx),
        .drpclk_in(drpclk_in),
        .\gen_gtwizard_gthe4.gtrxreset_int (\gen_gtwizard_gthe4.gtrxreset_int ),
        .gtwiz_reset_rx_any_sync(gtwiz_reset_rx_any_sync),
        .gtwiz_reset_rx_done_int_reg(gtwiz_reset_rx_done_int_reg_n_0),
        .i_in_meta_reg_0(i_in_meta_reg),
        .i_in_out_reg_0(bit_synchronizer_plllock_rx_inst_n_1),
        .p_0_in11_out__0(p_0_in11_out__0),
        .sm_reset_rx_timer_sat(sm_reset_rx_timer_sat));
  PCS_PMA_gtwizard_ultrascale_v1_7_13_bit_synchronizer_9 bit_synchronizer_plllock_tx_inst
       (.E(bit_synchronizer_plllock_tx_inst_n_0),
        .\FSM_sequential_sm_reset_tx_reg[0] (bit_synchronizer_plllock_tx_inst_n_2),
        .\FSM_sequential_sm_reset_tx_reg[0]_0 (sm_reset_tx_timer_clr_reg_n_0),
        .\FSM_sequential_sm_reset_tx_reg[0]_1 (bit_synchronizer_gtwiz_reset_tx_pll_and_datapath_dly_inst_n_0),
        .\FSM_sequential_sm_reset_tx_reg[1] (bit_synchronizer_plllock_tx_inst_n_3),
        .Q(sm_reset_tx),
        .drpclk_in(drpclk_in),
        .\gen_gtwizard_gthe4.gttxreset_int (\gen_gtwizard_gthe4.gttxreset_int ),
        .gtwiz_reset_tx_any_sync(gtwiz_reset_tx_any_sync),
        .gtwiz_reset_tx_done_int0__0(gtwiz_reset_tx_done_int0__0),
        .gtwiz_reset_tx_done_int_reg(gtwiz_reset_tx_done_int_reg_n_0),
        .i_in_meta_reg_0(i_in_meta_reg),
        .i_in_out_reg_0(bit_synchronizer_plllock_tx_inst_n_1),
        .sm_reset_tx_timer_clr0__0(sm_reset_tx_timer_clr0__0),
        .sm_reset_tx_timer_sat(sm_reset_tx_timer_sat));
  PCS_PMA_gtwizard_ultrascale_v1_7_13_bit_synchronizer_10 bit_synchronizer_rxcdrlock_inst
       (.\FSM_sequential_sm_reset_rx_reg[1] (bit_synchronizer_rxcdrlock_inst_n_1),
        .\FSM_sequential_sm_reset_rx_reg[2] (bit_synchronizer_rxcdrlock_inst_n_2),
        .Q(sm_reset_rx),
        .drpclk_in(drpclk_in),
        .\gen_gtwizard_gthe4.rxprogdivreset_int (\gen_gtwizard_gthe4.rxprogdivreset_int ),
        .gtwiz_reset_rx_any_sync(gtwiz_reset_rx_any_sync),
        .i_in_out_reg_0(bit_synchronizer_rxcdrlock_inst_n_0),
        .rxcdrlock_out(rxcdrlock_out),
        .sm_reset_rx_cdr_to_clr(sm_reset_rx_cdr_to_clr),
        .sm_reset_rx_cdr_to_clr_reg(bit_synchronizer_plllock_rx_inst_n_2),
        .sm_reset_rx_cdr_to_sat(sm_reset_rx_cdr_to_sat));
  LUT3 #(
    .INIT(8'h8B)) 
    \gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_i_1 
       (.I0(\gen_gtwizard_gthe4.gtrxreset_int ),
        .I1(gtpowergood_out),
        .I2(\gen_gtwizard_gthe4.gtpowergood_int ),
        .O(\gen_gtwizard_gthe4.delay_pwrgood_gtrxreset_int ));
  FDRE #(
    .INIT(1'b1)) 
    gtrxreset_out_reg
       (.C(drpclk_in),
        .CE(1'b1),
        .D(bit_synchronizer_plllock_rx_inst_n_4),
        .Q(\gen_gtwizard_gthe4.gtrxreset_int ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    gttxreset_out_reg
       (.C(drpclk_in),
        .CE(1'b1),
        .D(bit_synchronizer_plllock_tx_inst_n_3),
        .Q(\gen_gtwizard_gthe4.gttxreset_int ),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair98" *) 
  LUT4 #(
    .INIT(16'hF740)) 
    gtwiz_reset_rx_datapath_int_i_1
       (.I0(sm_reset_all[2]),
        .I1(sm_reset_all[0]),
        .I2(sm_reset_all[1]),
        .I3(gtwiz_reset_rx_datapath_int_reg_n_0),
        .O(gtwiz_reset_rx_datapath_int_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    gtwiz_reset_rx_datapath_int_reg
       (.C(drpclk_in),
        .CE(1'b1),
        .D(gtwiz_reset_rx_datapath_int_i_1_n_0),
        .Q(gtwiz_reset_rx_datapath_int_reg_n_0),
        .R(gtwiz_reset_all_sync));
  FDRE #(
    .INIT(1'b0)) 
    gtwiz_reset_rx_done_int_reg
       (.C(drpclk_in),
        .CE(1'b1),
        .D(bit_synchronizer_plllock_rx_inst_n_3),
        .Q(gtwiz_reset_rx_done_int_reg_n_0),
        .R(gtwiz_reset_rx_any_sync));
  LUT4 #(
    .INIT(16'hF704)) 
    gtwiz_reset_rx_pll_and_datapath_int_i_1
       (.I0(sm_reset_all[0]),
        .I1(sm_reset_all[2]),
        .I2(sm_reset_all[1]),
        .I3(gtwiz_reset_rx_pll_and_datapath_int_reg_n_0),
        .O(gtwiz_reset_rx_pll_and_datapath_int_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    gtwiz_reset_rx_pll_and_datapath_int_reg
       (.C(drpclk_in),
        .CE(1'b1),
        .D(gtwiz_reset_rx_pll_and_datapath_int_i_1_n_0),
        .Q(gtwiz_reset_rx_pll_and_datapath_int_reg_n_0),
        .R(gtwiz_reset_all_sync));
  FDRE #(
    .INIT(1'b0)) 
    gtwiz_reset_tx_done_int_reg
       (.C(drpclk_in),
        .CE(1'b1),
        .D(bit_synchronizer_plllock_tx_inst_n_2),
        .Q(gtwiz_reset_tx_done_int_reg_n_0),
        .R(gtwiz_reset_tx_any_sync));
  (* SOFT_HLUTNM = "soft_lutpair98" *) 
  LUT4 #(
    .INIT(16'hFB02)) 
    gtwiz_reset_tx_pll_and_datapath_int_i_1
       (.I0(sm_reset_all[0]),
        .I1(sm_reset_all[1]),
        .I2(sm_reset_all[2]),
        .I3(gtwiz_reset_tx_pll_and_datapath_int_reg_n_0),
        .O(gtwiz_reset_tx_pll_and_datapath_int_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    gtwiz_reset_tx_pll_and_datapath_int_reg
       (.C(drpclk_in),
        .CE(1'b1),
        .D(gtwiz_reset_tx_pll_and_datapath_int_i_1_n_0),
        .Q(gtwiz_reset_tx_pll_and_datapath_int_reg_n_0),
        .R(gtwiz_reset_all_sync));
  FDRE #(
    .INIT(1'b0)) 
    pllreset_rx_out_reg
       (.C(drpclk_in),
        .CE(1'b1),
        .D(reset_synchronizer_gtwiz_reset_rx_any_inst_n_1),
        .Q(\gen_gtwizard_gthe4.gen_reset_controller_internal.gen_single_instance.gtwiz_reset_pllreset_rx_int ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    pllreset_tx_out_reg
       (.C(drpclk_in),
        .CE(1'b1),
        .D(reset_synchronizer_gtwiz_reset_tx_any_inst_n_1),
        .Q(\gen_gtwizard_gthe4.gen_reset_controller_internal.gen_single_instance.gtwiz_reset_pllreset_tx_int ),
        .R(1'b0));
  PCS_PMA_gtwizard_ultrascale_v1_7_13_reset_synchronizer reset_synchronizer_gtwiz_reset_all_inst
       (.drpclk_in(drpclk_in),
        .gtwiz_reset_all_in(gtwiz_reset_all_in),
        .gtwiz_reset_all_sync(gtwiz_reset_all_sync));
  PCS_PMA_gtwizard_ultrascale_v1_7_13_reset_synchronizer_11 reset_synchronizer_gtwiz_reset_rx_any_inst
       (.\FSM_sequential_sm_reset_rx_reg[1] (reset_synchronizer_gtwiz_reset_rx_any_inst_n_1),
        .Q(sm_reset_rx),
        .drpclk_in(drpclk_in),
        .\gen_gtwizard_gthe4.gen_reset_controller_internal.gen_single_instance.gtwiz_reset_pllreset_rx_int (\gen_gtwizard_gthe4.gen_reset_controller_internal.gen_single_instance.gtwiz_reset_pllreset_rx_int ),
        .gtwiz_reset_rx_any_sync(gtwiz_reset_rx_any_sync),
        .gtwiz_reset_rx_datapath_in(gtwiz_reset_rx_datapath_in),
        .rst_in_out_reg_0(gtwiz_reset_rx_datapath_int_reg_n_0),
        .rst_in_out_reg_1(gtwiz_reset_rx_pll_and_datapath_int_reg_n_0));
  PCS_PMA_gtwizard_ultrascale_v1_7_13_reset_synchronizer_12 reset_synchronizer_gtwiz_reset_rx_datapath_inst
       (.drpclk_in(drpclk_in),
        .gtwiz_reset_rx_datapath_in(gtwiz_reset_rx_datapath_in),
        .in0(gtwiz_reset_rx_datapath_sync),
        .rst_in_out_reg_0(gtwiz_reset_rx_datapath_int_reg_n_0));
  PCS_PMA_gtwizard_ultrascale_v1_7_13_reset_synchronizer_13 reset_synchronizer_gtwiz_reset_rx_pll_and_datapath_inst
       (.drpclk_in(drpclk_in),
        .in0(gtwiz_reset_rx_pll_and_datapath_sync),
        .rst_in_meta_reg_0(gtwiz_reset_rx_pll_and_datapath_int_reg_n_0));
  PCS_PMA_gtwizard_ultrascale_v1_7_13_reset_synchronizer_14 reset_synchronizer_gtwiz_reset_tx_any_inst
       (.\FSM_sequential_sm_reset_tx_reg[1] (reset_synchronizer_gtwiz_reset_tx_any_inst_n_1),
        .Q(sm_reset_tx),
        .drpclk_in(drpclk_in),
        .\gen_gtwizard_gthe4.gen_reset_controller_internal.gen_single_instance.gtwiz_reset_pllreset_tx_int (\gen_gtwizard_gthe4.gen_reset_controller_internal.gen_single_instance.gtwiz_reset_pllreset_tx_int ),
        .gtwiz_reset_tx_any_sync(gtwiz_reset_tx_any_sync),
        .gtwiz_reset_tx_datapath_in(gtwiz_reset_tx_datapath_in),
        .rst_in_out_reg_0(gtwiz_reset_tx_pll_and_datapath_int_reg_n_0));
  PCS_PMA_gtwizard_ultrascale_v1_7_13_reset_synchronizer_15 reset_synchronizer_gtwiz_reset_tx_datapath_inst
       (.drpclk_in(drpclk_in),
        .gtwiz_reset_tx_datapath_in(gtwiz_reset_tx_datapath_in),
        .in0(gtwiz_reset_tx_datapath_sync));
  PCS_PMA_gtwizard_ultrascale_v1_7_13_reset_synchronizer_16 reset_synchronizer_gtwiz_reset_tx_pll_and_datapath_inst
       (.drpclk_in(drpclk_in),
        .in0(gtwiz_reset_tx_pll_and_datapath_sync),
        .rst_in_meta_reg_0(gtwiz_reset_tx_pll_and_datapath_int_reg_n_0));
  PCS_PMA_gtwizard_ultrascale_v1_7_13_reset_inv_synchronizer reset_synchronizer_rx_done_inst
       (.gtwiz_reset_rx_done_out(gtwiz_reset_rx_done_out),
        .rst_in_sync2_reg_0(gtwiz_reset_rx_done_int_reg_n_0),
        .rxusrclk_in(rxusrclk_in));
  PCS_PMA_gtwizard_ultrascale_v1_7_13_reset_inv_synchronizer_17 reset_synchronizer_tx_done_inst
       (.gtwiz_reset_tx_done_out(gtwiz_reset_tx_done_out),
        .rst_in_sync2_reg_0(gtwiz_reset_tx_done_int_reg_n_0),
        .rxusrclk_in(rxusrclk_in));
  PCS_PMA_gtwizard_ultrascale_v1_7_13_reset_synchronizer_18 reset_synchronizer_txprogdivreset_inst
       (.drpclk_in(drpclk_in),
        .rst_in0(rst_in0),
        .rst_in_out_reg_0(rst_in_out_reg));
  LUT2 #(
    .INIT(4'hE)) 
    rst_in_meta_i_1__2
       (.I0(\gen_gtwizard_gthe4.gen_reset_controller_internal.gen_single_instance.gtwiz_reset_pllreset_tx_int ),
        .I1(\gen_gtwizard_gthe4.gen_reset_controller_internal.gen_single_instance.gtwiz_reset_pllreset_rx_int ),
        .O(RESET_IN));
  FDRE #(
    .INIT(1'b1)) 
    rxprogdivreset_out_reg
       (.C(drpclk_in),
        .CE(1'b1),
        .D(bit_synchronizer_rxcdrlock_inst_n_2),
        .Q(\gen_gtwizard_gthe4.rxprogdivreset_int ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    rxuserrdy_out_reg
       (.C(drpclk_in),
        .CE(1'b1),
        .D(bit_synchronizer_gtwiz_reset_userclk_rx_active_inst_n_2),
        .Q(\gen_gtwizard_gthe4.rxuserrdy_int ),
        .R(1'b0));
  LUT5 #(
    .INIT(32'hEFFA200A)) 
    sm_reset_all_timer_clr_i_1
       (.I0(sm_reset_all_timer_clr_i_2_n_0),
        .I1(sm_reset_all[1]),
        .I2(sm_reset_all[2]),
        .I3(sm_reset_all[0]),
        .I4(sm_reset_all_timer_clr_reg_n_0),
        .O(sm_reset_all_timer_clr_i_1_n_0));
  LUT6 #(
    .INIT(64'h0000B0003333BB33)) 
    sm_reset_all_timer_clr_i_2
       (.I0(gtwiz_reset_rx_done_int_reg_n_0),
        .I1(sm_reset_all[2]),
        .I2(gtwiz_reset_tx_done_int_reg_n_0),
        .I3(sm_reset_all_timer_sat),
        .I4(sm_reset_all_timer_clr_reg_n_0),
        .I5(sm_reset_all[1]),
        .O(sm_reset_all_timer_clr_i_2_n_0));
  FDSE #(
    .INIT(1'b1)) 
    sm_reset_all_timer_clr_reg
       (.C(drpclk_in),
        .CE(1'b1),
        .D(sm_reset_all_timer_clr_i_1_n_0),
        .Q(sm_reset_all_timer_clr_reg_n_0),
        .S(gtwiz_reset_all_sync));
  LUT3 #(
    .INIT(8'h7F)) 
    \sm_reset_all_timer_ctr0_inferred__0/i_ 
       (.I0(sm_reset_all_timer_ctr[2]),
        .I1(sm_reset_all_timer_ctr[0]),
        .I2(sm_reset_all_timer_ctr[1]),
        .O(\sm_reset_all_timer_ctr0_inferred__0/i__n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \sm_reset_all_timer_ctr[0]_i_1 
       (.I0(sm_reset_all_timer_ctr[0]),
        .O(\sm_reset_all_timer_ctr[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair105" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \sm_reset_all_timer_ctr[1]_i_1 
       (.I0(sm_reset_all_timer_ctr[0]),
        .I1(sm_reset_all_timer_ctr[1]),
        .O(\sm_reset_all_timer_ctr[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair105" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \sm_reset_all_timer_ctr[2]_i_1 
       (.I0(sm_reset_all_timer_ctr[0]),
        .I1(sm_reset_all_timer_ctr[1]),
        .I2(sm_reset_all_timer_ctr[2]),
        .O(\sm_reset_all_timer_ctr[2]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \sm_reset_all_timer_ctr_reg[0] 
       (.C(drpclk_in),
        .CE(\sm_reset_all_timer_ctr0_inferred__0/i__n_0 ),
        .D(\sm_reset_all_timer_ctr[0]_i_1_n_0 ),
        .Q(sm_reset_all_timer_ctr[0]),
        .R(sm_reset_all_timer_clr_reg_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \sm_reset_all_timer_ctr_reg[1] 
       (.C(drpclk_in),
        .CE(\sm_reset_all_timer_ctr0_inferred__0/i__n_0 ),
        .D(\sm_reset_all_timer_ctr[1]_i_1_n_0 ),
        .Q(sm_reset_all_timer_ctr[1]),
        .R(sm_reset_all_timer_clr_reg_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \sm_reset_all_timer_ctr_reg[2] 
       (.C(drpclk_in),
        .CE(\sm_reset_all_timer_ctr0_inferred__0/i__n_0 ),
        .D(\sm_reset_all_timer_ctr[2]_i_1_n_0 ),
        .Q(sm_reset_all_timer_ctr[2]),
        .R(sm_reset_all_timer_clr_reg_n_0));
  LUT5 #(
    .INIT(32'h0000FF80)) 
    sm_reset_all_timer_sat_i_1
       (.I0(sm_reset_all_timer_ctr[2]),
        .I1(sm_reset_all_timer_ctr[0]),
        .I2(sm_reset_all_timer_ctr[1]),
        .I3(sm_reset_all_timer_sat),
        .I4(sm_reset_all_timer_clr_reg_n_0),
        .O(sm_reset_all_timer_sat_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    sm_reset_all_timer_sat_reg
       (.C(drpclk_in),
        .CE(1'b1),
        .D(sm_reset_all_timer_sat_i_1_n_0),
        .Q(sm_reset_all_timer_sat),
        .R(1'b0));
  FDSE #(
    .INIT(1'b1)) 
    sm_reset_rx_cdr_to_clr_reg
       (.C(drpclk_in),
        .CE(1'b1),
        .D(bit_synchronizer_rxcdrlock_inst_n_1),
        .Q(sm_reset_rx_cdr_to_clr),
        .S(gtwiz_reset_rx_any_sync));
  LUT6 #(
    .INIT(64'h7FFFFFFFFFFFFFFF)) 
    \sm_reset_rx_cdr_to_ctr[0]_i_1 
       (.I0(\sm_reset_rx_cdr_to_ctr[0]_i_3_n_0 ),
        .I1(sm_reset_rx_cdr_to_ctr_reg[12]),
        .I2(sm_reset_rx_cdr_to_ctr_reg[13]),
        .I3(sm_reset_rx_cdr_to_ctr_reg[18]),
        .I4(\sm_reset_rx_cdr_to_ctr[0]_i_4_n_0 ),
        .I5(\sm_reset_rx_cdr_to_ctr[0]_i_5_n_0 ),
        .O(\sm_reset_rx_cdr_to_ctr[0]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h8000)) 
    \sm_reset_rx_cdr_to_ctr[0]_i_3 
       (.I0(sm_reset_rx_cdr_to_ctr_reg[7]),
        .I1(sm_reset_rx_cdr_to_ctr_reg[4]),
        .I2(sm_reset_rx_cdr_to_ctr_reg[11]),
        .I3(sm_reset_rx_cdr_to_ctr_reg[9]),
        .O(\sm_reset_rx_cdr_to_ctr[0]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0001000000000000)) 
    \sm_reset_rx_cdr_to_ctr[0]_i_4 
       (.I0(sm_reset_rx_cdr_to_ctr_reg[3]),
        .I1(sm_reset_rx_cdr_to_ctr_reg[1]),
        .I2(sm_reset_rx_cdr_to_ctr_reg[2]),
        .I3(sm_reset_rx_cdr_to_ctr_reg[0]),
        .I4(sm_reset_rx_cdr_to_ctr_reg[19]),
        .I5(sm_reset_rx_cdr_to_ctr_reg[20]),
        .O(\sm_reset_rx_cdr_to_ctr[0]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'h00020000)) 
    \sm_reset_rx_cdr_to_ctr[0]_i_5 
       (.I0(\sm_reset_rx_cdr_to_ctr[0]_i_7_n_0 ),
        .I1(sm_reset_rx_cdr_to_ctr_reg[15]),
        .I2(sm_reset_rx_cdr_to_ctr_reg[14]),
        .I3(sm_reset_rx_cdr_to_ctr_reg[16]),
        .I4(\sm_reset_rx_cdr_to_ctr[0]_i_8_n_0 ),
        .O(\sm_reset_rx_cdr_to_ctr[0]_i_5_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \sm_reset_rx_cdr_to_ctr[0]_i_6 
       (.I0(sm_reset_rx_cdr_to_ctr_reg[0]),
        .O(\sm_reset_rx_cdr_to_ctr[0]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    \sm_reset_rx_cdr_to_ctr[0]_i_7 
       (.I0(sm_reset_rx_cdr_to_ctr_reg[24]),
        .I1(sm_reset_rx_cdr_to_ctr_reg[23]),
        .I2(sm_reset_rx_cdr_to_ctr_reg[25]),
        .I3(sm_reset_rx_cdr_to_ctr_reg[17]),
        .I4(sm_reset_rx_cdr_to_ctr_reg[21]),
        .I5(sm_reset_rx_cdr_to_ctr_reg[22]),
        .O(\sm_reset_rx_cdr_to_ctr[0]_i_7_n_0 ));
  LUT4 #(
    .INIT(16'h0001)) 
    \sm_reset_rx_cdr_to_ctr[0]_i_8 
       (.I0(sm_reset_rx_cdr_to_ctr_reg[10]),
        .I1(sm_reset_rx_cdr_to_ctr_reg[8]),
        .I2(sm_reset_rx_cdr_to_ctr_reg[6]),
        .I3(sm_reset_rx_cdr_to_ctr_reg[5]),
        .O(\sm_reset_rx_cdr_to_ctr[0]_i_8_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \sm_reset_rx_cdr_to_ctr_reg[0] 
       (.C(drpclk_in),
        .CE(\sm_reset_rx_cdr_to_ctr[0]_i_1_n_0 ),
        .D(\sm_reset_rx_cdr_to_ctr_reg[0]_i_2_n_15 ),
        .Q(sm_reset_rx_cdr_to_ctr_reg[0]),
        .R(sm_reset_rx_cdr_to_clr));
  (* ADDER_THRESHOLD = "16" *) 
  CARRY8 \sm_reset_rx_cdr_to_ctr_reg[0]_i_2 
       (.CI(1'b0),
        .CI_TOP(1'b0),
        .CO({\sm_reset_rx_cdr_to_ctr_reg[0]_i_2_n_0 ,\sm_reset_rx_cdr_to_ctr_reg[0]_i_2_n_1 ,\sm_reset_rx_cdr_to_ctr_reg[0]_i_2_n_2 ,\sm_reset_rx_cdr_to_ctr_reg[0]_i_2_n_3 ,\sm_reset_rx_cdr_to_ctr_reg[0]_i_2_n_4 ,\sm_reset_rx_cdr_to_ctr_reg[0]_i_2_n_5 ,\sm_reset_rx_cdr_to_ctr_reg[0]_i_2_n_6 ,\sm_reset_rx_cdr_to_ctr_reg[0]_i_2_n_7 }),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b1}),
        .O({\sm_reset_rx_cdr_to_ctr_reg[0]_i_2_n_8 ,\sm_reset_rx_cdr_to_ctr_reg[0]_i_2_n_9 ,\sm_reset_rx_cdr_to_ctr_reg[0]_i_2_n_10 ,\sm_reset_rx_cdr_to_ctr_reg[0]_i_2_n_11 ,\sm_reset_rx_cdr_to_ctr_reg[0]_i_2_n_12 ,\sm_reset_rx_cdr_to_ctr_reg[0]_i_2_n_13 ,\sm_reset_rx_cdr_to_ctr_reg[0]_i_2_n_14 ,\sm_reset_rx_cdr_to_ctr_reg[0]_i_2_n_15 }),
        .S({sm_reset_rx_cdr_to_ctr_reg[7:1],\sm_reset_rx_cdr_to_ctr[0]_i_6_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \sm_reset_rx_cdr_to_ctr_reg[10] 
       (.C(drpclk_in),
        .CE(\sm_reset_rx_cdr_to_ctr[0]_i_1_n_0 ),
        .D(\sm_reset_rx_cdr_to_ctr_reg[8]_i_1_n_13 ),
        .Q(sm_reset_rx_cdr_to_ctr_reg[10]),
        .R(sm_reset_rx_cdr_to_clr));
  FDRE #(
    .INIT(1'b0)) 
    \sm_reset_rx_cdr_to_ctr_reg[11] 
       (.C(drpclk_in),
        .CE(\sm_reset_rx_cdr_to_ctr[0]_i_1_n_0 ),
        .D(\sm_reset_rx_cdr_to_ctr_reg[8]_i_1_n_12 ),
        .Q(sm_reset_rx_cdr_to_ctr_reg[11]),
        .R(sm_reset_rx_cdr_to_clr));
  FDRE #(
    .INIT(1'b0)) 
    \sm_reset_rx_cdr_to_ctr_reg[12] 
       (.C(drpclk_in),
        .CE(\sm_reset_rx_cdr_to_ctr[0]_i_1_n_0 ),
        .D(\sm_reset_rx_cdr_to_ctr_reg[8]_i_1_n_11 ),
        .Q(sm_reset_rx_cdr_to_ctr_reg[12]),
        .R(sm_reset_rx_cdr_to_clr));
  FDRE #(
    .INIT(1'b0)) 
    \sm_reset_rx_cdr_to_ctr_reg[13] 
       (.C(drpclk_in),
        .CE(\sm_reset_rx_cdr_to_ctr[0]_i_1_n_0 ),
        .D(\sm_reset_rx_cdr_to_ctr_reg[8]_i_1_n_10 ),
        .Q(sm_reset_rx_cdr_to_ctr_reg[13]),
        .R(sm_reset_rx_cdr_to_clr));
  FDRE #(
    .INIT(1'b0)) 
    \sm_reset_rx_cdr_to_ctr_reg[14] 
       (.C(drpclk_in),
        .CE(\sm_reset_rx_cdr_to_ctr[0]_i_1_n_0 ),
        .D(\sm_reset_rx_cdr_to_ctr_reg[8]_i_1_n_9 ),
        .Q(sm_reset_rx_cdr_to_ctr_reg[14]),
        .R(sm_reset_rx_cdr_to_clr));
  FDRE #(
    .INIT(1'b0)) 
    \sm_reset_rx_cdr_to_ctr_reg[15] 
       (.C(drpclk_in),
        .CE(\sm_reset_rx_cdr_to_ctr[0]_i_1_n_0 ),
        .D(\sm_reset_rx_cdr_to_ctr_reg[8]_i_1_n_8 ),
        .Q(sm_reset_rx_cdr_to_ctr_reg[15]),
        .R(sm_reset_rx_cdr_to_clr));
  FDRE #(
    .INIT(1'b0)) 
    \sm_reset_rx_cdr_to_ctr_reg[16] 
       (.C(drpclk_in),
        .CE(\sm_reset_rx_cdr_to_ctr[0]_i_1_n_0 ),
        .D(\sm_reset_rx_cdr_to_ctr_reg[16]_i_1_n_15 ),
        .Q(sm_reset_rx_cdr_to_ctr_reg[16]),
        .R(sm_reset_rx_cdr_to_clr));
  (* ADDER_THRESHOLD = "16" *) 
  CARRY8 \sm_reset_rx_cdr_to_ctr_reg[16]_i_1 
       (.CI(\sm_reset_rx_cdr_to_ctr_reg[8]_i_1_n_0 ),
        .CI_TOP(1'b0),
        .CO({\sm_reset_rx_cdr_to_ctr_reg[16]_i_1_n_0 ,\sm_reset_rx_cdr_to_ctr_reg[16]_i_1_n_1 ,\sm_reset_rx_cdr_to_ctr_reg[16]_i_1_n_2 ,\sm_reset_rx_cdr_to_ctr_reg[16]_i_1_n_3 ,\sm_reset_rx_cdr_to_ctr_reg[16]_i_1_n_4 ,\sm_reset_rx_cdr_to_ctr_reg[16]_i_1_n_5 ,\sm_reset_rx_cdr_to_ctr_reg[16]_i_1_n_6 ,\sm_reset_rx_cdr_to_ctr_reg[16]_i_1_n_7 }),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .O({\sm_reset_rx_cdr_to_ctr_reg[16]_i_1_n_8 ,\sm_reset_rx_cdr_to_ctr_reg[16]_i_1_n_9 ,\sm_reset_rx_cdr_to_ctr_reg[16]_i_1_n_10 ,\sm_reset_rx_cdr_to_ctr_reg[16]_i_1_n_11 ,\sm_reset_rx_cdr_to_ctr_reg[16]_i_1_n_12 ,\sm_reset_rx_cdr_to_ctr_reg[16]_i_1_n_13 ,\sm_reset_rx_cdr_to_ctr_reg[16]_i_1_n_14 ,\sm_reset_rx_cdr_to_ctr_reg[16]_i_1_n_15 }),
        .S(sm_reset_rx_cdr_to_ctr_reg[23:16]));
  FDRE #(
    .INIT(1'b0)) 
    \sm_reset_rx_cdr_to_ctr_reg[17] 
       (.C(drpclk_in),
        .CE(\sm_reset_rx_cdr_to_ctr[0]_i_1_n_0 ),
        .D(\sm_reset_rx_cdr_to_ctr_reg[16]_i_1_n_14 ),
        .Q(sm_reset_rx_cdr_to_ctr_reg[17]),
        .R(sm_reset_rx_cdr_to_clr));
  FDRE #(
    .INIT(1'b0)) 
    \sm_reset_rx_cdr_to_ctr_reg[18] 
       (.C(drpclk_in),
        .CE(\sm_reset_rx_cdr_to_ctr[0]_i_1_n_0 ),
        .D(\sm_reset_rx_cdr_to_ctr_reg[16]_i_1_n_13 ),
        .Q(sm_reset_rx_cdr_to_ctr_reg[18]),
        .R(sm_reset_rx_cdr_to_clr));
  FDRE #(
    .INIT(1'b0)) 
    \sm_reset_rx_cdr_to_ctr_reg[19] 
       (.C(drpclk_in),
        .CE(\sm_reset_rx_cdr_to_ctr[0]_i_1_n_0 ),
        .D(\sm_reset_rx_cdr_to_ctr_reg[16]_i_1_n_12 ),
        .Q(sm_reset_rx_cdr_to_ctr_reg[19]),
        .R(sm_reset_rx_cdr_to_clr));
  FDRE #(
    .INIT(1'b0)) 
    \sm_reset_rx_cdr_to_ctr_reg[1] 
       (.C(drpclk_in),
        .CE(\sm_reset_rx_cdr_to_ctr[0]_i_1_n_0 ),
        .D(\sm_reset_rx_cdr_to_ctr_reg[0]_i_2_n_14 ),
        .Q(sm_reset_rx_cdr_to_ctr_reg[1]),
        .R(sm_reset_rx_cdr_to_clr));
  FDRE #(
    .INIT(1'b0)) 
    \sm_reset_rx_cdr_to_ctr_reg[20] 
       (.C(drpclk_in),
        .CE(\sm_reset_rx_cdr_to_ctr[0]_i_1_n_0 ),
        .D(\sm_reset_rx_cdr_to_ctr_reg[16]_i_1_n_11 ),
        .Q(sm_reset_rx_cdr_to_ctr_reg[20]),
        .R(sm_reset_rx_cdr_to_clr));
  FDRE #(
    .INIT(1'b0)) 
    \sm_reset_rx_cdr_to_ctr_reg[21] 
       (.C(drpclk_in),
        .CE(\sm_reset_rx_cdr_to_ctr[0]_i_1_n_0 ),
        .D(\sm_reset_rx_cdr_to_ctr_reg[16]_i_1_n_10 ),
        .Q(sm_reset_rx_cdr_to_ctr_reg[21]),
        .R(sm_reset_rx_cdr_to_clr));
  FDRE #(
    .INIT(1'b0)) 
    \sm_reset_rx_cdr_to_ctr_reg[22] 
       (.C(drpclk_in),
        .CE(\sm_reset_rx_cdr_to_ctr[0]_i_1_n_0 ),
        .D(\sm_reset_rx_cdr_to_ctr_reg[16]_i_1_n_9 ),
        .Q(sm_reset_rx_cdr_to_ctr_reg[22]),
        .R(sm_reset_rx_cdr_to_clr));
  FDRE #(
    .INIT(1'b0)) 
    \sm_reset_rx_cdr_to_ctr_reg[23] 
       (.C(drpclk_in),
        .CE(\sm_reset_rx_cdr_to_ctr[0]_i_1_n_0 ),
        .D(\sm_reset_rx_cdr_to_ctr_reg[16]_i_1_n_8 ),
        .Q(sm_reset_rx_cdr_to_ctr_reg[23]),
        .R(sm_reset_rx_cdr_to_clr));
  FDRE #(
    .INIT(1'b0)) 
    \sm_reset_rx_cdr_to_ctr_reg[24] 
       (.C(drpclk_in),
        .CE(\sm_reset_rx_cdr_to_ctr[0]_i_1_n_0 ),
        .D(\sm_reset_rx_cdr_to_ctr_reg[24]_i_1_n_15 ),
        .Q(sm_reset_rx_cdr_to_ctr_reg[24]),
        .R(sm_reset_rx_cdr_to_clr));
  (* ADDER_THRESHOLD = "16" *) 
  CARRY8 \sm_reset_rx_cdr_to_ctr_reg[24]_i_1 
       (.CI(\sm_reset_rx_cdr_to_ctr_reg[16]_i_1_n_0 ),
        .CI_TOP(1'b0),
        .CO({\NLW_sm_reset_rx_cdr_to_ctr_reg[24]_i_1_CO_UNCONNECTED [7:1],\sm_reset_rx_cdr_to_ctr_reg[24]_i_1_n_7 }),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_sm_reset_rx_cdr_to_ctr_reg[24]_i_1_O_UNCONNECTED [7:2],\sm_reset_rx_cdr_to_ctr_reg[24]_i_1_n_14 ,\sm_reset_rx_cdr_to_ctr_reg[24]_i_1_n_15 }),
        .S({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,sm_reset_rx_cdr_to_ctr_reg[25:24]}));
  FDRE #(
    .INIT(1'b0)) 
    \sm_reset_rx_cdr_to_ctr_reg[25] 
       (.C(drpclk_in),
        .CE(\sm_reset_rx_cdr_to_ctr[0]_i_1_n_0 ),
        .D(\sm_reset_rx_cdr_to_ctr_reg[24]_i_1_n_14 ),
        .Q(sm_reset_rx_cdr_to_ctr_reg[25]),
        .R(sm_reset_rx_cdr_to_clr));
  FDRE #(
    .INIT(1'b0)) 
    \sm_reset_rx_cdr_to_ctr_reg[2] 
       (.C(drpclk_in),
        .CE(\sm_reset_rx_cdr_to_ctr[0]_i_1_n_0 ),
        .D(\sm_reset_rx_cdr_to_ctr_reg[0]_i_2_n_13 ),
        .Q(sm_reset_rx_cdr_to_ctr_reg[2]),
        .R(sm_reset_rx_cdr_to_clr));
  FDRE #(
    .INIT(1'b0)) 
    \sm_reset_rx_cdr_to_ctr_reg[3] 
       (.C(drpclk_in),
        .CE(\sm_reset_rx_cdr_to_ctr[0]_i_1_n_0 ),
        .D(\sm_reset_rx_cdr_to_ctr_reg[0]_i_2_n_12 ),
        .Q(sm_reset_rx_cdr_to_ctr_reg[3]),
        .R(sm_reset_rx_cdr_to_clr));
  FDRE #(
    .INIT(1'b0)) 
    \sm_reset_rx_cdr_to_ctr_reg[4] 
       (.C(drpclk_in),
        .CE(\sm_reset_rx_cdr_to_ctr[0]_i_1_n_0 ),
        .D(\sm_reset_rx_cdr_to_ctr_reg[0]_i_2_n_11 ),
        .Q(sm_reset_rx_cdr_to_ctr_reg[4]),
        .R(sm_reset_rx_cdr_to_clr));
  FDRE #(
    .INIT(1'b0)) 
    \sm_reset_rx_cdr_to_ctr_reg[5] 
       (.C(drpclk_in),
        .CE(\sm_reset_rx_cdr_to_ctr[0]_i_1_n_0 ),
        .D(\sm_reset_rx_cdr_to_ctr_reg[0]_i_2_n_10 ),
        .Q(sm_reset_rx_cdr_to_ctr_reg[5]),
        .R(sm_reset_rx_cdr_to_clr));
  FDRE #(
    .INIT(1'b0)) 
    \sm_reset_rx_cdr_to_ctr_reg[6] 
       (.C(drpclk_in),
        .CE(\sm_reset_rx_cdr_to_ctr[0]_i_1_n_0 ),
        .D(\sm_reset_rx_cdr_to_ctr_reg[0]_i_2_n_9 ),
        .Q(sm_reset_rx_cdr_to_ctr_reg[6]),
        .R(sm_reset_rx_cdr_to_clr));
  FDRE #(
    .INIT(1'b0)) 
    \sm_reset_rx_cdr_to_ctr_reg[7] 
       (.C(drpclk_in),
        .CE(\sm_reset_rx_cdr_to_ctr[0]_i_1_n_0 ),
        .D(\sm_reset_rx_cdr_to_ctr_reg[0]_i_2_n_8 ),
        .Q(sm_reset_rx_cdr_to_ctr_reg[7]),
        .R(sm_reset_rx_cdr_to_clr));
  FDRE #(
    .INIT(1'b0)) 
    \sm_reset_rx_cdr_to_ctr_reg[8] 
       (.C(drpclk_in),
        .CE(\sm_reset_rx_cdr_to_ctr[0]_i_1_n_0 ),
        .D(\sm_reset_rx_cdr_to_ctr_reg[8]_i_1_n_15 ),
        .Q(sm_reset_rx_cdr_to_ctr_reg[8]),
        .R(sm_reset_rx_cdr_to_clr));
  (* ADDER_THRESHOLD = "16" *) 
  CARRY8 \sm_reset_rx_cdr_to_ctr_reg[8]_i_1 
       (.CI(\sm_reset_rx_cdr_to_ctr_reg[0]_i_2_n_0 ),
        .CI_TOP(1'b0),
        .CO({\sm_reset_rx_cdr_to_ctr_reg[8]_i_1_n_0 ,\sm_reset_rx_cdr_to_ctr_reg[8]_i_1_n_1 ,\sm_reset_rx_cdr_to_ctr_reg[8]_i_1_n_2 ,\sm_reset_rx_cdr_to_ctr_reg[8]_i_1_n_3 ,\sm_reset_rx_cdr_to_ctr_reg[8]_i_1_n_4 ,\sm_reset_rx_cdr_to_ctr_reg[8]_i_1_n_5 ,\sm_reset_rx_cdr_to_ctr_reg[8]_i_1_n_6 ,\sm_reset_rx_cdr_to_ctr_reg[8]_i_1_n_7 }),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .O({\sm_reset_rx_cdr_to_ctr_reg[8]_i_1_n_8 ,\sm_reset_rx_cdr_to_ctr_reg[8]_i_1_n_9 ,\sm_reset_rx_cdr_to_ctr_reg[8]_i_1_n_10 ,\sm_reset_rx_cdr_to_ctr_reg[8]_i_1_n_11 ,\sm_reset_rx_cdr_to_ctr_reg[8]_i_1_n_12 ,\sm_reset_rx_cdr_to_ctr_reg[8]_i_1_n_13 ,\sm_reset_rx_cdr_to_ctr_reg[8]_i_1_n_14 ,\sm_reset_rx_cdr_to_ctr_reg[8]_i_1_n_15 }),
        .S(sm_reset_rx_cdr_to_ctr_reg[15:8]));
  FDRE #(
    .INIT(1'b0)) 
    \sm_reset_rx_cdr_to_ctr_reg[9] 
       (.C(drpclk_in),
        .CE(\sm_reset_rx_cdr_to_ctr[0]_i_1_n_0 ),
        .D(\sm_reset_rx_cdr_to_ctr_reg[8]_i_1_n_14 ),
        .Q(sm_reset_rx_cdr_to_ctr_reg[9]),
        .R(sm_reset_rx_cdr_to_clr));
  LUT3 #(
    .INIT(8'h0D)) 
    sm_reset_rx_cdr_to_sat_i_1
       (.I0(\sm_reset_rx_cdr_to_ctr[0]_i_1_n_0 ),
        .I1(sm_reset_rx_cdr_to_sat),
        .I2(sm_reset_rx_cdr_to_clr),
        .O(sm_reset_rx_cdr_to_sat_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    sm_reset_rx_cdr_to_sat_reg
       (.C(drpclk_in),
        .CE(1'b1),
        .D(sm_reset_rx_cdr_to_sat_i_1_n_0),
        .Q(sm_reset_rx_cdr_to_sat),
        .R(1'b0));
  LUT5 #(
    .INIT(32'hFFF3000B)) 
    sm_reset_rx_pll_timer_clr_i_1
       (.I0(sm_reset_rx_pll_timer_sat),
        .I1(sm_reset_rx[0]),
        .I2(sm_reset_rx[1]),
        .I3(sm_reset_rx[2]),
        .I4(sm_reset_rx_pll_timer_clr_reg_n_0),
        .O(sm_reset_rx_pll_timer_clr_i_1_n_0));
  FDSE #(
    .INIT(1'b1)) 
    sm_reset_rx_pll_timer_clr_reg
       (.C(drpclk_in),
        .CE(1'b1),
        .D(sm_reset_rx_pll_timer_clr_i_1_n_0),
        .Q(sm_reset_rx_pll_timer_clr_reg_n_0),
        .S(gtwiz_reset_rx_any_sync));
  (* SOFT_HLUTNM = "soft_lutpair107" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \sm_reset_rx_pll_timer_ctr[0]_i_1 
       (.I0(sm_reset_rx_pll_timer_ctr_reg[0]),
        .O(p_0_in__3[0]));
  (* SOFT_HLUTNM = "soft_lutpair107" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \sm_reset_rx_pll_timer_ctr[1]_i_1 
       (.I0(sm_reset_rx_pll_timer_ctr_reg[0]),
        .I1(sm_reset_rx_pll_timer_ctr_reg[1]),
        .O(p_0_in__3[1]));
  (* SOFT_HLUTNM = "soft_lutpair101" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \sm_reset_rx_pll_timer_ctr[2]_i_1 
       (.I0(sm_reset_rx_pll_timer_ctr_reg[1]),
        .I1(sm_reset_rx_pll_timer_ctr_reg[0]),
        .I2(sm_reset_rx_pll_timer_ctr_reg[2]),
        .O(\sm_reset_rx_pll_timer_ctr[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair96" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \sm_reset_rx_pll_timer_ctr[3]_i_1 
       (.I0(sm_reset_rx_pll_timer_ctr_reg[0]),
        .I1(sm_reset_rx_pll_timer_ctr_reg[1]),
        .I2(sm_reset_rx_pll_timer_ctr_reg[2]),
        .I3(sm_reset_rx_pll_timer_ctr_reg[3]),
        .O(p_0_in__3[3]));
  (* SOFT_HLUTNM = "soft_lutpair96" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \sm_reset_rx_pll_timer_ctr[4]_i_1 
       (.I0(sm_reset_rx_pll_timer_ctr_reg[2]),
        .I1(sm_reset_rx_pll_timer_ctr_reg[1]),
        .I2(sm_reset_rx_pll_timer_ctr_reg[0]),
        .I3(sm_reset_rx_pll_timer_ctr_reg[3]),
        .I4(sm_reset_rx_pll_timer_ctr_reg[4]),
        .O(p_0_in__3[4]));
  LUT6 #(
    .INIT(64'h7FFFFFFF80000000)) 
    \sm_reset_rx_pll_timer_ctr[5]_i_1 
       (.I0(sm_reset_rx_pll_timer_ctr_reg[3]),
        .I1(sm_reset_rx_pll_timer_ctr_reg[0]),
        .I2(sm_reset_rx_pll_timer_ctr_reg[1]),
        .I3(sm_reset_rx_pll_timer_ctr_reg[2]),
        .I4(sm_reset_rx_pll_timer_ctr_reg[4]),
        .I5(sm_reset_rx_pll_timer_ctr_reg[5]),
        .O(p_0_in__3[5]));
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \sm_reset_rx_pll_timer_ctr[6]_i_1 
       (.I0(sm_reset_rx_pll_timer_ctr_reg[4]),
        .I1(\sm_reset_rx_pll_timer_ctr[7]_i_2_n_0 ),
        .I2(sm_reset_rx_pll_timer_ctr_reg[3]),
        .I3(sm_reset_rx_pll_timer_ctr_reg[5]),
        .I4(sm_reset_rx_pll_timer_ctr_reg[6]),
        .O(p_0_in__3[6]));
  LUT6 #(
    .INIT(64'h7FFFFFFF80000000)) 
    \sm_reset_rx_pll_timer_ctr[7]_i_1 
       (.I0(sm_reset_rx_pll_timer_ctr_reg[5]),
        .I1(sm_reset_rx_pll_timer_ctr_reg[3]),
        .I2(\sm_reset_rx_pll_timer_ctr[7]_i_2_n_0 ),
        .I3(sm_reset_rx_pll_timer_ctr_reg[4]),
        .I4(sm_reset_rx_pll_timer_ctr_reg[6]),
        .I5(sm_reset_rx_pll_timer_ctr_reg[7]),
        .O(p_0_in__3[7]));
  (* SOFT_HLUTNM = "soft_lutpair101" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \sm_reset_rx_pll_timer_ctr[7]_i_2 
       (.I0(sm_reset_rx_pll_timer_ctr_reg[2]),
        .I1(sm_reset_rx_pll_timer_ctr_reg[1]),
        .I2(sm_reset_rx_pll_timer_ctr_reg[0]),
        .O(\sm_reset_rx_pll_timer_ctr[7]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair94" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \sm_reset_rx_pll_timer_ctr[8]_i_1 
       (.I0(sm_reset_rx_pll_timer_ctr_reg[6]),
        .I1(\sm_reset_rx_pll_timer_ctr[9]_i_4_n_0 ),
        .I2(sm_reset_rx_pll_timer_ctr_reg[7]),
        .I3(sm_reset_rx_pll_timer_ctr_reg[8]),
        .O(p_0_in__3[8]));
  LUT6 #(
    .INIT(64'h7FFFFFFFFFFFFFFF)) 
    \sm_reset_rx_pll_timer_ctr[9]_i_1 
       (.I0(sm_reset_rx_pll_timer_ctr_reg[3]),
        .I1(sm_reset_rx_pll_timer_ctr_reg[4]),
        .I2(sm_reset_rx_pll_timer_ctr_reg[2]),
        .I3(sm_reset_rx_pll_timer_ctr_reg[1]),
        .I4(sm_reset_rx_pll_timer_ctr_reg[0]),
        .I5(\sm_reset_rx_pll_timer_ctr[9]_i_3_n_0 ),
        .O(\sm_reset_rx_pll_timer_ctr[9]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair94" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \sm_reset_rx_pll_timer_ctr[9]_i_2 
       (.I0(sm_reset_rx_pll_timer_ctr_reg[7]),
        .I1(\sm_reset_rx_pll_timer_ctr[9]_i_4_n_0 ),
        .I2(sm_reset_rx_pll_timer_ctr_reg[6]),
        .I3(sm_reset_rx_pll_timer_ctr_reg[8]),
        .I4(sm_reset_rx_pll_timer_ctr_reg[9]),
        .O(p_0_in__3[9]));
  LUT5 #(
    .INIT(32'h01000000)) 
    \sm_reset_rx_pll_timer_ctr[9]_i_3 
       (.I0(sm_reset_rx_pll_timer_ctr_reg[8]),
        .I1(sm_reset_rx_pll_timer_ctr_reg[9]),
        .I2(sm_reset_rx_pll_timer_ctr_reg[7]),
        .I3(sm_reset_rx_pll_timer_ctr_reg[5]),
        .I4(sm_reset_rx_pll_timer_ctr_reg[6]),
        .O(\sm_reset_rx_pll_timer_ctr[9]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \sm_reset_rx_pll_timer_ctr[9]_i_4 
       (.I0(sm_reset_rx_pll_timer_ctr_reg[5]),
        .I1(sm_reset_rx_pll_timer_ctr_reg[3]),
        .I2(sm_reset_rx_pll_timer_ctr_reg[0]),
        .I3(sm_reset_rx_pll_timer_ctr_reg[1]),
        .I4(sm_reset_rx_pll_timer_ctr_reg[2]),
        .I5(sm_reset_rx_pll_timer_ctr_reg[4]),
        .O(\sm_reset_rx_pll_timer_ctr[9]_i_4_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \sm_reset_rx_pll_timer_ctr_reg[0] 
       (.C(drpclk_in),
        .CE(\sm_reset_rx_pll_timer_ctr[9]_i_1_n_0 ),
        .D(p_0_in__3[0]),
        .Q(sm_reset_rx_pll_timer_ctr_reg[0]),
        .R(sm_reset_rx_pll_timer_clr_reg_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \sm_reset_rx_pll_timer_ctr_reg[1] 
       (.C(drpclk_in),
        .CE(\sm_reset_rx_pll_timer_ctr[9]_i_1_n_0 ),
        .D(p_0_in__3[1]),
        .Q(sm_reset_rx_pll_timer_ctr_reg[1]),
        .R(sm_reset_rx_pll_timer_clr_reg_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \sm_reset_rx_pll_timer_ctr_reg[2] 
       (.C(drpclk_in),
        .CE(\sm_reset_rx_pll_timer_ctr[9]_i_1_n_0 ),
        .D(\sm_reset_rx_pll_timer_ctr[2]_i_1_n_0 ),
        .Q(sm_reset_rx_pll_timer_ctr_reg[2]),
        .R(sm_reset_rx_pll_timer_clr_reg_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \sm_reset_rx_pll_timer_ctr_reg[3] 
       (.C(drpclk_in),
        .CE(\sm_reset_rx_pll_timer_ctr[9]_i_1_n_0 ),
        .D(p_0_in__3[3]),
        .Q(sm_reset_rx_pll_timer_ctr_reg[3]),
        .R(sm_reset_rx_pll_timer_clr_reg_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \sm_reset_rx_pll_timer_ctr_reg[4] 
       (.C(drpclk_in),
        .CE(\sm_reset_rx_pll_timer_ctr[9]_i_1_n_0 ),
        .D(p_0_in__3[4]),
        .Q(sm_reset_rx_pll_timer_ctr_reg[4]),
        .R(sm_reset_rx_pll_timer_clr_reg_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \sm_reset_rx_pll_timer_ctr_reg[5] 
       (.C(drpclk_in),
        .CE(\sm_reset_rx_pll_timer_ctr[9]_i_1_n_0 ),
        .D(p_0_in__3[5]),
        .Q(sm_reset_rx_pll_timer_ctr_reg[5]),
        .R(sm_reset_rx_pll_timer_clr_reg_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \sm_reset_rx_pll_timer_ctr_reg[6] 
       (.C(drpclk_in),
        .CE(\sm_reset_rx_pll_timer_ctr[9]_i_1_n_0 ),
        .D(p_0_in__3[6]),
        .Q(sm_reset_rx_pll_timer_ctr_reg[6]),
        .R(sm_reset_rx_pll_timer_clr_reg_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \sm_reset_rx_pll_timer_ctr_reg[7] 
       (.C(drpclk_in),
        .CE(\sm_reset_rx_pll_timer_ctr[9]_i_1_n_0 ),
        .D(p_0_in__3[7]),
        .Q(sm_reset_rx_pll_timer_ctr_reg[7]),
        .R(sm_reset_rx_pll_timer_clr_reg_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \sm_reset_rx_pll_timer_ctr_reg[8] 
       (.C(drpclk_in),
        .CE(\sm_reset_rx_pll_timer_ctr[9]_i_1_n_0 ),
        .D(p_0_in__3[8]),
        .Q(sm_reset_rx_pll_timer_ctr_reg[8]),
        .R(sm_reset_rx_pll_timer_clr_reg_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \sm_reset_rx_pll_timer_ctr_reg[9] 
       (.C(drpclk_in),
        .CE(\sm_reset_rx_pll_timer_ctr[9]_i_1_n_0 ),
        .D(p_0_in__3[9]),
        .Q(sm_reset_rx_pll_timer_ctr_reg[9]),
        .R(sm_reset_rx_pll_timer_clr_reg_n_0));
  LUT3 #(
    .INIT(8'h0D)) 
    sm_reset_rx_pll_timer_sat_i_1
       (.I0(\sm_reset_rx_pll_timer_ctr[9]_i_1_n_0 ),
        .I1(sm_reset_rx_pll_timer_sat),
        .I2(sm_reset_rx_pll_timer_clr_reg_n_0),
        .O(sm_reset_rx_pll_timer_sat_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    sm_reset_rx_pll_timer_sat_reg
       (.C(drpclk_in),
        .CE(1'b1),
        .D(sm_reset_rx_pll_timer_sat_i_1_n_0),
        .Q(sm_reset_rx_pll_timer_sat),
        .R(1'b0));
  FDSE #(
    .INIT(1'b1)) 
    sm_reset_rx_timer_clr_reg
       (.C(drpclk_in),
        .CE(1'b1),
        .D(bit_synchronizer_gtwiz_reset_userclk_rx_active_inst_n_1),
        .Q(sm_reset_rx_timer_clr_reg_n_0),
        .S(gtwiz_reset_rx_any_sync));
  LUT3 #(
    .INIT(8'h7F)) 
    \sm_reset_rx_timer_ctr0_inferred__0/i_ 
       (.I0(sm_reset_rx_timer_ctr[2]),
        .I1(sm_reset_rx_timer_ctr[0]),
        .I2(sm_reset_rx_timer_ctr[1]),
        .O(\sm_reset_rx_timer_ctr0_inferred__0/i__n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \sm_reset_rx_timer_ctr[0]_i_1 
       (.I0(sm_reset_rx_timer_ctr[0]),
        .O(\sm_reset_rx_timer_ctr[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair104" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \sm_reset_rx_timer_ctr[1]_i_1 
       (.I0(sm_reset_rx_timer_ctr[0]),
        .I1(sm_reset_rx_timer_ctr[1]),
        .O(\sm_reset_rx_timer_ctr[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair104" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \sm_reset_rx_timer_ctr[2]_i_1 
       (.I0(sm_reset_rx_timer_ctr[0]),
        .I1(sm_reset_rx_timer_ctr[1]),
        .I2(sm_reset_rx_timer_ctr[2]),
        .O(\sm_reset_rx_timer_ctr[2]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \sm_reset_rx_timer_ctr_reg[0] 
       (.C(drpclk_in),
        .CE(\sm_reset_rx_timer_ctr0_inferred__0/i__n_0 ),
        .D(\sm_reset_rx_timer_ctr[0]_i_1_n_0 ),
        .Q(sm_reset_rx_timer_ctr[0]),
        .R(sm_reset_rx_timer_clr_reg_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \sm_reset_rx_timer_ctr_reg[1] 
       (.C(drpclk_in),
        .CE(\sm_reset_rx_timer_ctr0_inferred__0/i__n_0 ),
        .D(\sm_reset_rx_timer_ctr[1]_i_1_n_0 ),
        .Q(sm_reset_rx_timer_ctr[1]),
        .R(sm_reset_rx_timer_clr_reg_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \sm_reset_rx_timer_ctr_reg[2] 
       (.C(drpclk_in),
        .CE(\sm_reset_rx_timer_ctr0_inferred__0/i__n_0 ),
        .D(\sm_reset_rx_timer_ctr[2]_i_1_n_0 ),
        .Q(sm_reset_rx_timer_ctr[2]),
        .R(sm_reset_rx_timer_clr_reg_n_0));
  LUT5 #(
    .INIT(32'h0000FF80)) 
    sm_reset_rx_timer_sat_i_1
       (.I0(sm_reset_rx_timer_ctr[2]),
        .I1(sm_reset_rx_timer_ctr[0]),
        .I2(sm_reset_rx_timer_ctr[1]),
        .I3(sm_reset_rx_timer_sat),
        .I4(sm_reset_rx_timer_clr_reg_n_0),
        .O(sm_reset_rx_timer_sat_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    sm_reset_rx_timer_sat_reg
       (.C(drpclk_in),
        .CE(1'b1),
        .D(sm_reset_rx_timer_sat_i_1_n_0),
        .Q(sm_reset_rx_timer_sat),
        .R(1'b0));
  LUT5 #(
    .INIT(32'hFFF3000B)) 
    sm_reset_tx_pll_timer_clr_i_1
       (.I0(sm_reset_tx_pll_timer_sat),
        .I1(sm_reset_tx[0]),
        .I2(sm_reset_tx[1]),
        .I3(sm_reset_tx[2]),
        .I4(sm_reset_tx_pll_timer_clr_reg_n_0),
        .O(sm_reset_tx_pll_timer_clr_i_1_n_0));
  FDSE #(
    .INIT(1'b1)) 
    sm_reset_tx_pll_timer_clr_reg
       (.C(drpclk_in),
        .CE(1'b1),
        .D(sm_reset_tx_pll_timer_clr_i_1_n_0),
        .Q(sm_reset_tx_pll_timer_clr_reg_n_0),
        .S(gtwiz_reset_tx_any_sync));
  (* SOFT_HLUTNM = "soft_lutpair106" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \sm_reset_tx_pll_timer_ctr[0]_i_1 
       (.I0(sm_reset_tx_pll_timer_ctr_reg[0]),
        .O(p_0_in__2[0]));
  (* SOFT_HLUTNM = "soft_lutpair106" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \sm_reset_tx_pll_timer_ctr[1]_i_1 
       (.I0(sm_reset_tx_pll_timer_ctr_reg[0]),
        .I1(sm_reset_tx_pll_timer_ctr_reg[1]),
        .O(p_0_in__2[1]));
  (* SOFT_HLUTNM = "soft_lutpair100" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \sm_reset_tx_pll_timer_ctr[2]_i_1 
       (.I0(sm_reset_tx_pll_timer_ctr_reg[1]),
        .I1(sm_reset_tx_pll_timer_ctr_reg[0]),
        .I2(sm_reset_tx_pll_timer_ctr_reg[2]),
        .O(\sm_reset_tx_pll_timer_ctr[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair95" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \sm_reset_tx_pll_timer_ctr[3]_i_1 
       (.I0(sm_reset_tx_pll_timer_ctr_reg[0]),
        .I1(sm_reset_tx_pll_timer_ctr_reg[1]),
        .I2(sm_reset_tx_pll_timer_ctr_reg[2]),
        .I3(sm_reset_tx_pll_timer_ctr_reg[3]),
        .O(p_0_in__2[3]));
  (* SOFT_HLUTNM = "soft_lutpair95" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \sm_reset_tx_pll_timer_ctr[4]_i_1 
       (.I0(sm_reset_tx_pll_timer_ctr_reg[2]),
        .I1(sm_reset_tx_pll_timer_ctr_reg[1]),
        .I2(sm_reset_tx_pll_timer_ctr_reg[0]),
        .I3(sm_reset_tx_pll_timer_ctr_reg[3]),
        .I4(sm_reset_tx_pll_timer_ctr_reg[4]),
        .O(p_0_in__2[4]));
  LUT6 #(
    .INIT(64'h7FFFFFFF80000000)) 
    \sm_reset_tx_pll_timer_ctr[5]_i_1 
       (.I0(sm_reset_tx_pll_timer_ctr_reg[3]),
        .I1(sm_reset_tx_pll_timer_ctr_reg[0]),
        .I2(sm_reset_tx_pll_timer_ctr_reg[1]),
        .I3(sm_reset_tx_pll_timer_ctr_reg[2]),
        .I4(sm_reset_tx_pll_timer_ctr_reg[4]),
        .I5(sm_reset_tx_pll_timer_ctr_reg[5]),
        .O(p_0_in__2[5]));
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \sm_reset_tx_pll_timer_ctr[6]_i_1 
       (.I0(sm_reset_tx_pll_timer_ctr_reg[4]),
        .I1(\sm_reset_tx_pll_timer_ctr[7]_i_2_n_0 ),
        .I2(sm_reset_tx_pll_timer_ctr_reg[3]),
        .I3(sm_reset_tx_pll_timer_ctr_reg[5]),
        .I4(sm_reset_tx_pll_timer_ctr_reg[6]),
        .O(p_0_in__2[6]));
  LUT6 #(
    .INIT(64'h7FFFFFFF80000000)) 
    \sm_reset_tx_pll_timer_ctr[7]_i_1 
       (.I0(sm_reset_tx_pll_timer_ctr_reg[5]),
        .I1(sm_reset_tx_pll_timer_ctr_reg[3]),
        .I2(\sm_reset_tx_pll_timer_ctr[7]_i_2_n_0 ),
        .I3(sm_reset_tx_pll_timer_ctr_reg[4]),
        .I4(sm_reset_tx_pll_timer_ctr_reg[6]),
        .I5(sm_reset_tx_pll_timer_ctr_reg[7]),
        .O(p_0_in__2[7]));
  (* SOFT_HLUTNM = "soft_lutpair100" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \sm_reset_tx_pll_timer_ctr[7]_i_2 
       (.I0(sm_reset_tx_pll_timer_ctr_reg[2]),
        .I1(sm_reset_tx_pll_timer_ctr_reg[1]),
        .I2(sm_reset_tx_pll_timer_ctr_reg[0]),
        .O(\sm_reset_tx_pll_timer_ctr[7]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair93" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \sm_reset_tx_pll_timer_ctr[8]_i_1 
       (.I0(sm_reset_tx_pll_timer_ctr_reg[6]),
        .I1(\sm_reset_tx_pll_timer_ctr[9]_i_4_n_0 ),
        .I2(sm_reset_tx_pll_timer_ctr_reg[7]),
        .I3(sm_reset_tx_pll_timer_ctr_reg[8]),
        .O(p_0_in__2[8]));
  LUT6 #(
    .INIT(64'h7FFFFFFFFFFFFFFF)) 
    \sm_reset_tx_pll_timer_ctr[9]_i_1 
       (.I0(sm_reset_tx_pll_timer_ctr_reg[3]),
        .I1(sm_reset_tx_pll_timer_ctr_reg[4]),
        .I2(sm_reset_tx_pll_timer_ctr_reg[2]),
        .I3(sm_reset_tx_pll_timer_ctr_reg[1]),
        .I4(sm_reset_tx_pll_timer_ctr_reg[0]),
        .I5(\sm_reset_tx_pll_timer_ctr[9]_i_3_n_0 ),
        .O(sel));
  (* SOFT_HLUTNM = "soft_lutpair93" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \sm_reset_tx_pll_timer_ctr[9]_i_2 
       (.I0(sm_reset_tx_pll_timer_ctr_reg[7]),
        .I1(\sm_reset_tx_pll_timer_ctr[9]_i_4_n_0 ),
        .I2(sm_reset_tx_pll_timer_ctr_reg[6]),
        .I3(sm_reset_tx_pll_timer_ctr_reg[8]),
        .I4(sm_reset_tx_pll_timer_ctr_reg[9]),
        .O(p_0_in__2[9]));
  LUT5 #(
    .INIT(32'h01000000)) 
    \sm_reset_tx_pll_timer_ctr[9]_i_3 
       (.I0(sm_reset_tx_pll_timer_ctr_reg[8]),
        .I1(sm_reset_tx_pll_timer_ctr_reg[9]),
        .I2(sm_reset_tx_pll_timer_ctr_reg[7]),
        .I3(sm_reset_tx_pll_timer_ctr_reg[5]),
        .I4(sm_reset_tx_pll_timer_ctr_reg[6]),
        .O(\sm_reset_tx_pll_timer_ctr[9]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \sm_reset_tx_pll_timer_ctr[9]_i_4 
       (.I0(sm_reset_tx_pll_timer_ctr_reg[5]),
        .I1(sm_reset_tx_pll_timer_ctr_reg[3]),
        .I2(sm_reset_tx_pll_timer_ctr_reg[0]),
        .I3(sm_reset_tx_pll_timer_ctr_reg[1]),
        .I4(sm_reset_tx_pll_timer_ctr_reg[2]),
        .I5(sm_reset_tx_pll_timer_ctr_reg[4]),
        .O(\sm_reset_tx_pll_timer_ctr[9]_i_4_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \sm_reset_tx_pll_timer_ctr_reg[0] 
       (.C(drpclk_in),
        .CE(sel),
        .D(p_0_in__2[0]),
        .Q(sm_reset_tx_pll_timer_ctr_reg[0]),
        .R(sm_reset_tx_pll_timer_clr_reg_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \sm_reset_tx_pll_timer_ctr_reg[1] 
       (.C(drpclk_in),
        .CE(sel),
        .D(p_0_in__2[1]),
        .Q(sm_reset_tx_pll_timer_ctr_reg[1]),
        .R(sm_reset_tx_pll_timer_clr_reg_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \sm_reset_tx_pll_timer_ctr_reg[2] 
       (.C(drpclk_in),
        .CE(sel),
        .D(\sm_reset_tx_pll_timer_ctr[2]_i_1_n_0 ),
        .Q(sm_reset_tx_pll_timer_ctr_reg[2]),
        .R(sm_reset_tx_pll_timer_clr_reg_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \sm_reset_tx_pll_timer_ctr_reg[3] 
       (.C(drpclk_in),
        .CE(sel),
        .D(p_0_in__2[3]),
        .Q(sm_reset_tx_pll_timer_ctr_reg[3]),
        .R(sm_reset_tx_pll_timer_clr_reg_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \sm_reset_tx_pll_timer_ctr_reg[4] 
       (.C(drpclk_in),
        .CE(sel),
        .D(p_0_in__2[4]),
        .Q(sm_reset_tx_pll_timer_ctr_reg[4]),
        .R(sm_reset_tx_pll_timer_clr_reg_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \sm_reset_tx_pll_timer_ctr_reg[5] 
       (.C(drpclk_in),
        .CE(sel),
        .D(p_0_in__2[5]),
        .Q(sm_reset_tx_pll_timer_ctr_reg[5]),
        .R(sm_reset_tx_pll_timer_clr_reg_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \sm_reset_tx_pll_timer_ctr_reg[6] 
       (.C(drpclk_in),
        .CE(sel),
        .D(p_0_in__2[6]),
        .Q(sm_reset_tx_pll_timer_ctr_reg[6]),
        .R(sm_reset_tx_pll_timer_clr_reg_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \sm_reset_tx_pll_timer_ctr_reg[7] 
       (.C(drpclk_in),
        .CE(sel),
        .D(p_0_in__2[7]),
        .Q(sm_reset_tx_pll_timer_ctr_reg[7]),
        .R(sm_reset_tx_pll_timer_clr_reg_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \sm_reset_tx_pll_timer_ctr_reg[8] 
       (.C(drpclk_in),
        .CE(sel),
        .D(p_0_in__2[8]),
        .Q(sm_reset_tx_pll_timer_ctr_reg[8]),
        .R(sm_reset_tx_pll_timer_clr_reg_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \sm_reset_tx_pll_timer_ctr_reg[9] 
       (.C(drpclk_in),
        .CE(sel),
        .D(p_0_in__2[9]),
        .Q(sm_reset_tx_pll_timer_ctr_reg[9]),
        .R(sm_reset_tx_pll_timer_clr_reg_n_0));
  LUT3 #(
    .INIT(8'h0D)) 
    sm_reset_tx_pll_timer_sat_i_1
       (.I0(sel),
        .I1(sm_reset_tx_pll_timer_sat),
        .I2(sm_reset_tx_pll_timer_clr_reg_n_0),
        .O(sm_reset_tx_pll_timer_sat_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    sm_reset_tx_pll_timer_sat_reg
       (.C(drpclk_in),
        .CE(1'b1),
        .D(sm_reset_tx_pll_timer_sat_i_1_n_0),
        .Q(sm_reset_tx_pll_timer_sat),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair97" *) 
  LUT2 #(
    .INIT(4'h2)) 
    sm_reset_tx_timer_clr_i_4
       (.I0(sm_reset_tx_timer_sat),
        .I1(sm_reset_tx_timer_clr_reg_n_0),
        .O(sm_reset_tx_timer_clr013_out__0));
  FDSE #(
    .INIT(1'b1)) 
    sm_reset_tx_timer_clr_reg
       (.C(drpclk_in),
        .CE(1'b1),
        .D(bit_synchronizer_gtwiz_reset_userclk_tx_active_inst_n_1),
        .Q(sm_reset_tx_timer_clr_reg_n_0),
        .S(gtwiz_reset_tx_any_sync));
  LUT3 #(
    .INIT(8'h7F)) 
    \sm_reset_tx_timer_ctr0_inferred__0/i_ 
       (.I0(sm_reset_tx_timer_ctr[2]),
        .I1(sm_reset_tx_timer_ctr[0]),
        .I2(sm_reset_tx_timer_ctr[1]),
        .O(p_0_in));
  LUT1 #(
    .INIT(2'h1)) 
    \sm_reset_tx_timer_ctr[0]_i_1 
       (.I0(sm_reset_tx_timer_ctr[0]),
        .O(\sm_reset_tx_timer_ctr[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair103" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \sm_reset_tx_timer_ctr[1]_i_1 
       (.I0(sm_reset_tx_timer_ctr[0]),
        .I1(sm_reset_tx_timer_ctr[1]),
        .O(\sm_reset_tx_timer_ctr[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair103" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \sm_reset_tx_timer_ctr[2]_i_1 
       (.I0(sm_reset_tx_timer_ctr[0]),
        .I1(sm_reset_tx_timer_ctr[1]),
        .I2(sm_reset_tx_timer_ctr[2]),
        .O(\sm_reset_tx_timer_ctr[2]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \sm_reset_tx_timer_ctr_reg[0] 
       (.C(drpclk_in),
        .CE(p_0_in),
        .D(\sm_reset_tx_timer_ctr[0]_i_1_n_0 ),
        .Q(sm_reset_tx_timer_ctr[0]),
        .R(sm_reset_tx_timer_clr_reg_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \sm_reset_tx_timer_ctr_reg[1] 
       (.C(drpclk_in),
        .CE(p_0_in),
        .D(\sm_reset_tx_timer_ctr[1]_i_1_n_0 ),
        .Q(sm_reset_tx_timer_ctr[1]),
        .R(sm_reset_tx_timer_clr_reg_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \sm_reset_tx_timer_ctr_reg[2] 
       (.C(drpclk_in),
        .CE(p_0_in),
        .D(\sm_reset_tx_timer_ctr[2]_i_1_n_0 ),
        .Q(sm_reset_tx_timer_ctr[2]),
        .R(sm_reset_tx_timer_clr_reg_n_0));
  (* SOFT_HLUTNM = "soft_lutpair97" *) 
  LUT5 #(
    .INIT(32'h0000FF80)) 
    sm_reset_tx_timer_sat_i_1
       (.I0(sm_reset_tx_timer_ctr[2]),
        .I1(sm_reset_tx_timer_ctr[0]),
        .I2(sm_reset_tx_timer_ctr[1]),
        .I3(sm_reset_tx_timer_sat),
        .I4(sm_reset_tx_timer_clr_reg_n_0),
        .O(sm_reset_tx_timer_sat_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    sm_reset_tx_timer_sat_reg
       (.C(drpclk_in),
        .CE(1'b1),
        .D(sm_reset_tx_timer_sat_i_1_n_0),
        .Q(sm_reset_tx_timer_sat),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    txuserrdy_out_reg
       (.C(drpclk_in),
        .CE(1'b1),
        .D(bit_synchronizer_gtwiz_reset_userclk_tx_active_inst_n_2),
        .Q(\gen_gtwizard_gthe4.txuserrdy_int ),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "gtwizard_ultrascale_v1_7_13_reset_inv_synchronizer" *) 
module PCS_PMA_gtwizard_ultrascale_v1_7_13_reset_inv_synchronizer
   (gtwiz_reset_rx_done_out,
    rxusrclk_in,
    rst_in_sync2_reg_0);
  output [0:0]gtwiz_reset_rx_done_out;
  input [0:0]rxusrclk_in;
  input rst_in_sync2_reg_0;

  wire [0:0]gtwiz_reset_rx_done_out;
  (* async_reg = "true" *) wire rst_in_meta;
  wire rst_in_out_i_1_n_0;
  (* async_reg = "true" *) wire rst_in_sync1;
  (* async_reg = "true" *) wire rst_in_sync2;
  wire rst_in_sync2_reg_0;
  (* async_reg = "true" *) wire rst_in_sync3;
  wire [0:0]rxusrclk_in;

  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDCE #(
    .INIT(1'b0)) 
    rst_in_meta_reg
       (.C(rxusrclk_in),
        .CE(1'b1),
        .CLR(rst_in_out_i_1_n_0),
        .D(1'b1),
        .Q(rst_in_meta));
  LUT1 #(
    .INIT(2'h1)) 
    rst_in_out_i_1
       (.I0(rst_in_sync2_reg_0),
        .O(rst_in_out_i_1_n_0));
  FDCE #(
    .INIT(1'b0)) 
    rst_in_out_reg
       (.C(rxusrclk_in),
        .CE(1'b1),
        .CLR(rst_in_out_i_1_n_0),
        .D(rst_in_sync3),
        .Q(gtwiz_reset_rx_done_out));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDCE #(
    .INIT(1'b0)) 
    rst_in_sync1_reg
       (.C(rxusrclk_in),
        .CE(1'b1),
        .CLR(rst_in_out_i_1_n_0),
        .D(rst_in_meta),
        .Q(rst_in_sync1));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDCE #(
    .INIT(1'b0)) 
    rst_in_sync2_reg
       (.C(rxusrclk_in),
        .CE(1'b1),
        .CLR(rst_in_out_i_1_n_0),
        .D(rst_in_sync1),
        .Q(rst_in_sync2));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDCE #(
    .INIT(1'b0)) 
    rst_in_sync3_reg
       (.C(rxusrclk_in),
        .CE(1'b1),
        .CLR(rst_in_out_i_1_n_0),
        .D(rst_in_sync2),
        .Q(rst_in_sync3));
endmodule

(* ORIG_REF_NAME = "gtwizard_ultrascale_v1_7_13_reset_inv_synchronizer" *) 
module PCS_PMA_gtwizard_ultrascale_v1_7_13_reset_inv_synchronizer_17
   (gtwiz_reset_tx_done_out,
    rxusrclk_in,
    rst_in_sync2_reg_0);
  output [0:0]gtwiz_reset_tx_done_out;
  input [0:0]rxusrclk_in;
  input rst_in_sync2_reg_0;

  wire [0:0]gtwiz_reset_tx_done_out;
  (* async_reg = "true" *) wire rst_in_meta;
  wire rst_in_out_i_1__0_n_0;
  (* async_reg = "true" *) wire rst_in_sync1;
  (* async_reg = "true" *) wire rst_in_sync2;
  wire rst_in_sync2_reg_0;
  (* async_reg = "true" *) wire rst_in_sync3;
  wire [0:0]rxusrclk_in;

  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDCE #(
    .INIT(1'b0)) 
    rst_in_meta_reg
       (.C(rxusrclk_in),
        .CE(1'b1),
        .CLR(rst_in_out_i_1__0_n_0),
        .D(1'b1),
        .Q(rst_in_meta));
  LUT1 #(
    .INIT(2'h1)) 
    rst_in_out_i_1__0
       (.I0(rst_in_sync2_reg_0),
        .O(rst_in_out_i_1__0_n_0));
  FDCE #(
    .INIT(1'b0)) 
    rst_in_out_reg
       (.C(rxusrclk_in),
        .CE(1'b1),
        .CLR(rst_in_out_i_1__0_n_0),
        .D(rst_in_sync3),
        .Q(gtwiz_reset_tx_done_out));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDCE #(
    .INIT(1'b0)) 
    rst_in_sync1_reg
       (.C(rxusrclk_in),
        .CE(1'b1),
        .CLR(rst_in_out_i_1__0_n_0),
        .D(rst_in_meta),
        .Q(rst_in_sync1));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDCE #(
    .INIT(1'b0)) 
    rst_in_sync2_reg
       (.C(rxusrclk_in),
        .CE(1'b1),
        .CLR(rst_in_out_i_1__0_n_0),
        .D(rst_in_sync1),
        .Q(rst_in_sync2));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDCE #(
    .INIT(1'b0)) 
    rst_in_sync3_reg
       (.C(rxusrclk_in),
        .CE(1'b1),
        .CLR(rst_in_out_i_1__0_n_0),
        .D(rst_in_sync2),
        .Q(rst_in_sync3));
endmodule

(* ORIG_REF_NAME = "gtwizard_ultrascale_v1_7_13_reset_synchronizer" *) 
module PCS_PMA_gtwizard_ultrascale_v1_7_13_reset_synchronizer
   (gtwiz_reset_all_sync,
    drpclk_in,
    gtwiz_reset_all_in);
  output gtwiz_reset_all_sync;
  input [0:0]drpclk_in;
  input [0:0]gtwiz_reset_all_in;

  wire [0:0]drpclk_in;
  wire [0:0]gtwiz_reset_all_in;
  wire gtwiz_reset_all_sync;
  (* async_reg = "true" *) wire rst_in_meta;
  (* async_reg = "true" *) wire rst_in_sync1;
  (* async_reg = "true" *) wire rst_in_sync2;
  (* async_reg = "true" *) wire rst_in_sync3;

  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDPE #(
    .INIT(1'b0)) 
    rst_in_meta_reg
       (.C(drpclk_in),
        .CE(1'b1),
        .D(1'b0),
        .PRE(gtwiz_reset_all_in),
        .Q(rst_in_meta));
  FDPE #(
    .INIT(1'b0)) 
    rst_in_out_reg
       (.C(drpclk_in),
        .CE(1'b1),
        .D(rst_in_sync3),
        .PRE(gtwiz_reset_all_in),
        .Q(gtwiz_reset_all_sync));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDPE #(
    .INIT(1'b0)) 
    rst_in_sync1_reg
       (.C(drpclk_in),
        .CE(1'b1),
        .D(rst_in_meta),
        .PRE(gtwiz_reset_all_in),
        .Q(rst_in_sync1));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDPE #(
    .INIT(1'b0)) 
    rst_in_sync2_reg
       (.C(drpclk_in),
        .CE(1'b1),
        .D(rst_in_sync1),
        .PRE(gtwiz_reset_all_in),
        .Q(rst_in_sync2));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDPE #(
    .INIT(1'b0)) 
    rst_in_sync3_reg
       (.C(drpclk_in),
        .CE(1'b1),
        .D(rst_in_sync2),
        .PRE(gtwiz_reset_all_in),
        .Q(rst_in_sync3));
endmodule

(* ORIG_REF_NAME = "gtwizard_ultrascale_v1_7_13_reset_synchronizer" *) 
module PCS_PMA_gtwizard_ultrascale_v1_7_13_reset_synchronizer_11
   (gtwiz_reset_rx_any_sync,
    \FSM_sequential_sm_reset_rx_reg[1] ,
    drpclk_in,
    Q,
    \gen_gtwizard_gthe4.gen_reset_controller_internal.gen_single_instance.gtwiz_reset_pllreset_rx_int ,
    rst_in_out_reg_0,
    gtwiz_reset_rx_datapath_in,
    rst_in_out_reg_1);
  output gtwiz_reset_rx_any_sync;
  output \FSM_sequential_sm_reset_rx_reg[1] ;
  input [0:0]drpclk_in;
  input [2:0]Q;
  input \gen_gtwizard_gthe4.gen_reset_controller_internal.gen_single_instance.gtwiz_reset_pllreset_rx_int ;
  input rst_in_out_reg_0;
  input [0:0]gtwiz_reset_rx_datapath_in;
  input rst_in_out_reg_1;

  wire \FSM_sequential_sm_reset_rx_reg[1] ;
  wire [2:0]Q;
  wire [0:0]drpclk_in;
  wire \gen_gtwizard_gthe4.gen_reset_controller_internal.gen_single_instance.gtwiz_reset_pllreset_rx_int ;
  wire gtwiz_reset_rx_any;
  wire gtwiz_reset_rx_any_sync;
  wire [0:0]gtwiz_reset_rx_datapath_in;
  (* async_reg = "true" *) wire rst_in_meta;
  wire rst_in_out_reg_0;
  wire rst_in_out_reg_1;
  (* async_reg = "true" *) wire rst_in_sync1;
  (* async_reg = "true" *) wire rst_in_sync2;
  (* async_reg = "true" *) wire rst_in_sync3;

  LUT5 #(
    .INIT(32'hFFDF0010)) 
    pllreset_rx_out_i_1
       (.I0(Q[1]),
        .I1(Q[2]),
        .I2(Q[0]),
        .I3(gtwiz_reset_rx_any_sync),
        .I4(\gen_gtwizard_gthe4.gen_reset_controller_internal.gen_single_instance.gtwiz_reset_pllreset_rx_int ),
        .O(\FSM_sequential_sm_reset_rx_reg[1] ));
  LUT3 #(
    .INIT(8'hFE)) 
    rst_in_meta_i_1
       (.I0(rst_in_out_reg_0),
        .I1(gtwiz_reset_rx_datapath_in),
        .I2(rst_in_out_reg_1),
        .O(gtwiz_reset_rx_any));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDPE #(
    .INIT(1'b0)) 
    rst_in_meta_reg
       (.C(drpclk_in),
        .CE(1'b1),
        .D(1'b0),
        .PRE(gtwiz_reset_rx_any),
        .Q(rst_in_meta));
  FDPE #(
    .INIT(1'b0)) 
    rst_in_out_reg
       (.C(drpclk_in),
        .CE(1'b1),
        .D(rst_in_sync3),
        .PRE(gtwiz_reset_rx_any),
        .Q(gtwiz_reset_rx_any_sync));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDPE #(
    .INIT(1'b0)) 
    rst_in_sync1_reg
       (.C(drpclk_in),
        .CE(1'b1),
        .D(rst_in_meta),
        .PRE(gtwiz_reset_rx_any),
        .Q(rst_in_sync1));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDPE #(
    .INIT(1'b0)) 
    rst_in_sync2_reg
       (.C(drpclk_in),
        .CE(1'b1),
        .D(rst_in_sync1),
        .PRE(gtwiz_reset_rx_any),
        .Q(rst_in_sync2));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDPE #(
    .INIT(1'b0)) 
    rst_in_sync3_reg
       (.C(drpclk_in),
        .CE(1'b1),
        .D(rst_in_sync2),
        .PRE(gtwiz_reset_rx_any),
        .Q(rst_in_sync3));
endmodule

(* ORIG_REF_NAME = "gtwizard_ultrascale_v1_7_13_reset_synchronizer" *) 
module PCS_PMA_gtwizard_ultrascale_v1_7_13_reset_synchronizer_12
   (in0,
    drpclk_in,
    gtwiz_reset_rx_datapath_in,
    rst_in_out_reg_0);
  output in0;
  input [0:0]drpclk_in;
  input [0:0]gtwiz_reset_rx_datapath_in;
  input rst_in_out_reg_0;

  wire [0:0]drpclk_in;
  wire [0:0]gtwiz_reset_rx_datapath_in;
  wire in0;
  wire rst_in0_0;
  (* async_reg = "true" *) wire rst_in_meta;
  wire rst_in_out_reg_0;
  (* async_reg = "true" *) wire rst_in_sync1;
  (* async_reg = "true" *) wire rst_in_sync2;
  (* async_reg = "true" *) wire rst_in_sync3;

  LUT2 #(
    .INIT(4'hE)) 
    rst_in_meta_i_1__0
       (.I0(gtwiz_reset_rx_datapath_in),
        .I1(rst_in_out_reg_0),
        .O(rst_in0_0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDPE #(
    .INIT(1'b0)) 
    rst_in_meta_reg
       (.C(drpclk_in),
        .CE(1'b1),
        .D(1'b0),
        .PRE(rst_in0_0),
        .Q(rst_in_meta));
  FDPE #(
    .INIT(1'b0)) 
    rst_in_out_reg
       (.C(drpclk_in),
        .CE(1'b1),
        .D(rst_in_sync3),
        .PRE(rst_in0_0),
        .Q(in0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDPE #(
    .INIT(1'b0)) 
    rst_in_sync1_reg
       (.C(drpclk_in),
        .CE(1'b1),
        .D(rst_in_meta),
        .PRE(rst_in0_0),
        .Q(rst_in_sync1));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDPE #(
    .INIT(1'b0)) 
    rst_in_sync2_reg
       (.C(drpclk_in),
        .CE(1'b1),
        .D(rst_in_sync1),
        .PRE(rst_in0_0),
        .Q(rst_in_sync2));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDPE #(
    .INIT(1'b0)) 
    rst_in_sync3_reg
       (.C(drpclk_in),
        .CE(1'b1),
        .D(rst_in_sync2),
        .PRE(rst_in0_0),
        .Q(rst_in_sync3));
endmodule

(* ORIG_REF_NAME = "gtwizard_ultrascale_v1_7_13_reset_synchronizer" *) 
module PCS_PMA_gtwizard_ultrascale_v1_7_13_reset_synchronizer_13
   (in0,
    drpclk_in,
    rst_in_meta_reg_0);
  output in0;
  input [0:0]drpclk_in;
  input rst_in_meta_reg_0;

  wire [0:0]drpclk_in;
  wire in0;
  (* async_reg = "true" *) wire rst_in_meta;
  wire rst_in_meta_reg_0;
  (* async_reg = "true" *) wire rst_in_sync1;
  (* async_reg = "true" *) wire rst_in_sync2;
  (* async_reg = "true" *) wire rst_in_sync3;

  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDPE #(
    .INIT(1'b0)) 
    rst_in_meta_reg
       (.C(drpclk_in),
        .CE(1'b1),
        .D(1'b0),
        .PRE(rst_in_meta_reg_0),
        .Q(rst_in_meta));
  FDPE #(
    .INIT(1'b0)) 
    rst_in_out_reg
       (.C(drpclk_in),
        .CE(1'b1),
        .D(rst_in_sync3),
        .PRE(rst_in_meta_reg_0),
        .Q(in0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDPE #(
    .INIT(1'b0)) 
    rst_in_sync1_reg
       (.C(drpclk_in),
        .CE(1'b1),
        .D(rst_in_meta),
        .PRE(rst_in_meta_reg_0),
        .Q(rst_in_sync1));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDPE #(
    .INIT(1'b0)) 
    rst_in_sync2_reg
       (.C(drpclk_in),
        .CE(1'b1),
        .D(rst_in_sync1),
        .PRE(rst_in_meta_reg_0),
        .Q(rst_in_sync2));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDPE #(
    .INIT(1'b0)) 
    rst_in_sync3_reg
       (.C(drpclk_in),
        .CE(1'b1),
        .D(rst_in_sync2),
        .PRE(rst_in_meta_reg_0),
        .Q(rst_in_sync3));
endmodule

(* ORIG_REF_NAME = "gtwizard_ultrascale_v1_7_13_reset_synchronizer" *) 
module PCS_PMA_gtwizard_ultrascale_v1_7_13_reset_synchronizer_14
   (gtwiz_reset_tx_any_sync,
    \FSM_sequential_sm_reset_tx_reg[1] ,
    drpclk_in,
    gtwiz_reset_tx_datapath_in,
    rst_in_out_reg_0,
    Q,
    \gen_gtwizard_gthe4.gen_reset_controller_internal.gen_single_instance.gtwiz_reset_pllreset_tx_int );
  output gtwiz_reset_tx_any_sync;
  output \FSM_sequential_sm_reset_tx_reg[1] ;
  input [0:0]drpclk_in;
  input [0:0]gtwiz_reset_tx_datapath_in;
  input rst_in_out_reg_0;
  input [2:0]Q;
  input \gen_gtwizard_gthe4.gen_reset_controller_internal.gen_single_instance.gtwiz_reset_pllreset_tx_int ;

  wire \FSM_sequential_sm_reset_tx_reg[1] ;
  wire [2:0]Q;
  wire [0:0]drpclk_in;
  wire \gen_gtwizard_gthe4.gen_reset_controller_internal.gen_single_instance.gtwiz_reset_pllreset_tx_int ;
  wire gtwiz_reset_tx_any;
  wire gtwiz_reset_tx_any_sync;
  wire [0:0]gtwiz_reset_tx_datapath_in;
  (* async_reg = "true" *) wire rst_in_meta;
  wire rst_in_out_reg_0;
  (* async_reg = "true" *) wire rst_in_sync1;
  (* async_reg = "true" *) wire rst_in_sync2;
  (* async_reg = "true" *) wire rst_in_sync3;

  LUT5 #(
    .INIT(32'hFFDF0010)) 
    pllreset_tx_out_i_1
       (.I0(Q[1]),
        .I1(Q[2]),
        .I2(Q[0]),
        .I3(gtwiz_reset_tx_any_sync),
        .I4(\gen_gtwizard_gthe4.gen_reset_controller_internal.gen_single_instance.gtwiz_reset_pllreset_tx_int ),
        .O(\FSM_sequential_sm_reset_tx_reg[1] ));
  LUT2 #(
    .INIT(4'hE)) 
    rst_in_meta_i_1__1
       (.I0(gtwiz_reset_tx_datapath_in),
        .I1(rst_in_out_reg_0),
        .O(gtwiz_reset_tx_any));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDPE #(
    .INIT(1'b0)) 
    rst_in_meta_reg
       (.C(drpclk_in),
        .CE(1'b1),
        .D(1'b0),
        .PRE(gtwiz_reset_tx_any),
        .Q(rst_in_meta));
  FDPE #(
    .INIT(1'b0)) 
    rst_in_out_reg
       (.C(drpclk_in),
        .CE(1'b1),
        .D(rst_in_sync3),
        .PRE(gtwiz_reset_tx_any),
        .Q(gtwiz_reset_tx_any_sync));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDPE #(
    .INIT(1'b0)) 
    rst_in_sync1_reg
       (.C(drpclk_in),
        .CE(1'b1),
        .D(rst_in_meta),
        .PRE(gtwiz_reset_tx_any),
        .Q(rst_in_sync1));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDPE #(
    .INIT(1'b0)) 
    rst_in_sync2_reg
       (.C(drpclk_in),
        .CE(1'b1),
        .D(rst_in_sync1),
        .PRE(gtwiz_reset_tx_any),
        .Q(rst_in_sync2));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDPE #(
    .INIT(1'b0)) 
    rst_in_sync3_reg
       (.C(drpclk_in),
        .CE(1'b1),
        .D(rst_in_sync2),
        .PRE(gtwiz_reset_tx_any),
        .Q(rst_in_sync3));
endmodule

(* ORIG_REF_NAME = "gtwizard_ultrascale_v1_7_13_reset_synchronizer" *) 
module PCS_PMA_gtwizard_ultrascale_v1_7_13_reset_synchronizer_15
   (in0,
    drpclk_in,
    gtwiz_reset_tx_datapath_in);
  output in0;
  input [0:0]drpclk_in;
  input [0:0]gtwiz_reset_tx_datapath_in;

  wire [0:0]drpclk_in;
  wire [0:0]gtwiz_reset_tx_datapath_in;
  wire in0;
  (* async_reg = "true" *) wire rst_in_meta;
  (* async_reg = "true" *) wire rst_in_sync1;
  (* async_reg = "true" *) wire rst_in_sync2;
  (* async_reg = "true" *) wire rst_in_sync3;

  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDPE #(
    .INIT(1'b0)) 
    rst_in_meta_reg
       (.C(drpclk_in),
        .CE(1'b1),
        .D(1'b0),
        .PRE(gtwiz_reset_tx_datapath_in),
        .Q(rst_in_meta));
  FDPE #(
    .INIT(1'b0)) 
    rst_in_out_reg
       (.C(drpclk_in),
        .CE(1'b1),
        .D(rst_in_sync3),
        .PRE(gtwiz_reset_tx_datapath_in),
        .Q(in0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDPE #(
    .INIT(1'b0)) 
    rst_in_sync1_reg
       (.C(drpclk_in),
        .CE(1'b1),
        .D(rst_in_meta),
        .PRE(gtwiz_reset_tx_datapath_in),
        .Q(rst_in_sync1));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDPE #(
    .INIT(1'b0)) 
    rst_in_sync2_reg
       (.C(drpclk_in),
        .CE(1'b1),
        .D(rst_in_sync1),
        .PRE(gtwiz_reset_tx_datapath_in),
        .Q(rst_in_sync2));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDPE #(
    .INIT(1'b0)) 
    rst_in_sync3_reg
       (.C(drpclk_in),
        .CE(1'b1),
        .D(rst_in_sync2),
        .PRE(gtwiz_reset_tx_datapath_in),
        .Q(rst_in_sync3));
endmodule

(* ORIG_REF_NAME = "gtwizard_ultrascale_v1_7_13_reset_synchronizer" *) 
module PCS_PMA_gtwizard_ultrascale_v1_7_13_reset_synchronizer_16
   (in0,
    drpclk_in,
    rst_in_meta_reg_0);
  output in0;
  input [0:0]drpclk_in;
  input rst_in_meta_reg_0;

  wire [0:0]drpclk_in;
  wire in0;
  (* async_reg = "true" *) wire rst_in_meta;
  wire rst_in_meta_reg_0;
  (* async_reg = "true" *) wire rst_in_sync1;
  (* async_reg = "true" *) wire rst_in_sync2;
  (* async_reg = "true" *) wire rst_in_sync3;

  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDPE #(
    .INIT(1'b0)) 
    rst_in_meta_reg
       (.C(drpclk_in),
        .CE(1'b1),
        .D(1'b0),
        .PRE(rst_in_meta_reg_0),
        .Q(rst_in_meta));
  FDPE #(
    .INIT(1'b0)) 
    rst_in_out_reg
       (.C(drpclk_in),
        .CE(1'b1),
        .D(rst_in_sync3),
        .PRE(rst_in_meta_reg_0),
        .Q(in0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDPE #(
    .INIT(1'b0)) 
    rst_in_sync1_reg
       (.C(drpclk_in),
        .CE(1'b1),
        .D(rst_in_meta),
        .PRE(rst_in_meta_reg_0),
        .Q(rst_in_sync1));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDPE #(
    .INIT(1'b0)) 
    rst_in_sync2_reg
       (.C(drpclk_in),
        .CE(1'b1),
        .D(rst_in_sync1),
        .PRE(rst_in_meta_reg_0),
        .Q(rst_in_sync2));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDPE #(
    .INIT(1'b0)) 
    rst_in_sync3_reg
       (.C(drpclk_in),
        .CE(1'b1),
        .D(rst_in_sync2),
        .PRE(rst_in_meta_reg_0),
        .Q(rst_in_sync3));
endmodule

(* ORIG_REF_NAME = "gtwizard_ultrascale_v1_7_13_reset_synchronizer" *) 
module PCS_PMA_gtwizard_ultrascale_v1_7_13_reset_synchronizer_18
   (rst_in_out_reg_0,
    drpclk_in,
    rst_in0);
  output rst_in_out_reg_0;
  input [0:0]drpclk_in;
  input rst_in0;

  wire [0:0]drpclk_in;
  wire rst_in0;
  (* async_reg = "true" *) wire rst_in_meta;
  wire rst_in_out_reg_0;
  (* async_reg = "true" *) wire rst_in_sync1;
  (* async_reg = "true" *) wire rst_in_sync2;
  (* async_reg = "true" *) wire rst_in_sync3;

  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDPE #(
    .INIT(1'b0)) 
    rst_in_meta_reg
       (.C(drpclk_in),
        .CE(1'b1),
        .D(1'b0),
        .PRE(rst_in0),
        .Q(rst_in_meta));
  FDPE #(
    .INIT(1'b0)) 
    rst_in_out_reg
       (.C(drpclk_in),
        .CE(1'b1),
        .D(rst_in_sync3),
        .PRE(rst_in0),
        .Q(rst_in_out_reg_0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDPE #(
    .INIT(1'b0)) 
    rst_in_sync1_reg
       (.C(drpclk_in),
        .CE(1'b1),
        .D(rst_in_meta),
        .PRE(rst_in0),
        .Q(rst_in_sync1));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDPE #(
    .INIT(1'b0)) 
    rst_in_sync2_reg
       (.C(drpclk_in),
        .CE(1'b1),
        .D(rst_in_sync1),
        .PRE(rst_in0),
        .Q(rst_in_sync2));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDPE #(
    .INIT(1'b0)) 
    rst_in_sync3_reg
       (.C(drpclk_in),
        .CE(1'b1),
        .D(rst_in_sync2),
        .PRE(rst_in0),
        .Q(rst_in_sync3));
endmodule

(* ORIG_REF_NAME = "gtwizard_ultrascale_v1_7_13_reset_synchronizer" *) 
module PCS_PMA_gtwizard_ultrascale_v1_7_13_reset_synchronizer_20
   (drpclk_in);
  input [0:0]drpclk_in;

  wire [0:0]drpclk_in;
  (* async_reg = "true" *) wire rst_in_meta;
  (* async_reg = "true" *) wire rst_in_sync1;
  (* async_reg = "true" *) wire rst_in_sync2;
  (* async_reg = "true" *) wire rst_in_sync3;

  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDPE #(
    .INIT(1'b0)) 
    rst_in_meta_reg
       (.C(drpclk_in),
        .CE(1'b1),
        .D(1'b0),
        .PRE(1'b1),
        .Q(rst_in_meta));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDPE #(
    .INIT(1'b0)) 
    rst_in_sync1_reg
       (.C(drpclk_in),
        .CE(1'b1),
        .D(rst_in_meta),
        .PRE(1'b1),
        .Q(rst_in_sync1));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDPE #(
    .INIT(1'b0)) 
    rst_in_sync2_reg
       (.C(drpclk_in),
        .CE(1'b1),
        .D(rst_in_sync1),
        .PRE(1'b1),
        .Q(rst_in_sync2));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDPE #(
    .INIT(1'b0)) 
    rst_in_sync3_reg
       (.C(drpclk_in),
        .CE(1'b1),
        .D(rst_in_sync2),
        .PRE(1'b1),
        .Q(rst_in_sync3));
endmodule

(* ORIG_REF_NAME = "gtwizard_ultrascale_v1_7_13_reset_synchronizer" *) 
module PCS_PMA_gtwizard_ultrascale_v1_7_13_reset_synchronizer_21
   (cal_on_tx_reset_in_sync,
    drpclk_in,
    RESET_IN);
  output cal_on_tx_reset_in_sync;
  input [0:0]drpclk_in;
  input RESET_IN;

  wire RESET_IN;
  wire cal_on_tx_reset_in_sync;
  wire [0:0]drpclk_in;
  (* async_reg = "true" *) wire rst_in_meta;
  (* async_reg = "true" *) wire rst_in_sync1;
  (* async_reg = "true" *) wire rst_in_sync2;
  (* async_reg = "true" *) wire rst_in_sync3;

  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDPE #(
    .INIT(1'b0)) 
    rst_in_meta_reg
       (.C(drpclk_in),
        .CE(1'b1),
        .D(1'b0),
        .PRE(RESET_IN),
        .Q(rst_in_meta));
  FDPE #(
    .INIT(1'b0)) 
    rst_in_out_reg
       (.C(drpclk_in),
        .CE(1'b1),
        .D(rst_in_sync3),
        .PRE(RESET_IN),
        .Q(cal_on_tx_reset_in_sync));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDPE #(
    .INIT(1'b0)) 
    rst_in_sync1_reg
       (.C(drpclk_in),
        .CE(1'b1),
        .D(rst_in_meta),
        .PRE(RESET_IN),
        .Q(rst_in_sync1));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDPE #(
    .INIT(1'b0)) 
    rst_in_sync2_reg
       (.C(drpclk_in),
        .CE(1'b1),
        .D(rst_in_sync1),
        .PRE(RESET_IN),
        .Q(rst_in_sync2));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDPE #(
    .INIT(1'b0)) 
    rst_in_sync3_reg
       (.C(drpclk_in),
        .CE(1'b1),
        .D(rst_in_sync2),
        .PRE(RESET_IN),
        .Q(rst_in_sync3));
endmodule

(* ORIG_REF_NAME = "gtwizard_ultrascale_v1_7_13_reset_synchronizer" *) 
module PCS_PMA_gtwizard_ultrascale_v1_7_13_reset_synchronizer_28
   (rst_in_out,
    txoutclkmon,
    out);
  output rst_in_out;
  input txoutclkmon;
  input out;

  wire out;
  (* async_reg = "true" *) wire rst_in_meta;
  wire rst_in_out;
  (* async_reg = "true" *) wire rst_in_sync1;
  (* async_reg = "true" *) wire rst_in_sync2;
  (* async_reg = "true" *) wire rst_in_sync3;
  wire txoutclkmon;

  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDPE #(
    .INIT(1'b0)) 
    rst_in_meta_reg
       (.C(txoutclkmon),
        .CE(1'b1),
        .D(1'b0),
        .PRE(out),
        .Q(rst_in_meta));
  FDPE #(
    .INIT(1'b0)) 
    rst_in_out_reg
       (.C(txoutclkmon),
        .CE(1'b1),
        .D(rst_in_sync3),
        .PRE(out),
        .Q(rst_in_out));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDPE #(
    .INIT(1'b0)) 
    rst_in_sync1_reg
       (.C(txoutclkmon),
        .CE(1'b1),
        .D(rst_in_meta),
        .PRE(out),
        .Q(rst_in_sync1));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDPE #(
    .INIT(1'b0)) 
    rst_in_sync2_reg
       (.C(txoutclkmon),
        .CE(1'b1),
        .D(rst_in_sync1),
        .PRE(out),
        .Q(rst_in_sync2));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDPE #(
    .INIT(1'b0)) 
    rst_in_sync3_reg
       (.C(txoutclkmon),
        .CE(1'b1),
        .D(rst_in_sync2),
        .PRE(out),
        .Q(rst_in_sync3));
endmodule

module PCS_PMA_reset_sync
   (reset_out,
    userclk2,
    enablealign);
  output reset_out;
  input userclk2;
  input enablealign;

  wire enablealign;
  wire reset_out;
  wire reset_sync_reg1;
  wire reset_sync_reg2;
  wire reset_sync_reg3;
  wire reset_sync_reg4;
  wire reset_sync_reg5;
  wire userclk2;

  (* ASYNC_REG *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FDP" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:CE" *) 
  (* box_type = "PRIMITIVE" *) 
  FDPE #(
    .INIT(1'b1)) 
    reset_sync1
       (.C(userclk2),
        .CE(1'b1),
        .D(1'b0),
        .PRE(enablealign),
        .Q(reset_sync_reg1));
  (* ASYNC_REG *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FDP" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:CE" *) 
  (* box_type = "PRIMITIVE" *) 
  FDPE #(
    .INIT(1'b1)) 
    reset_sync2
       (.C(userclk2),
        .CE(1'b1),
        .D(reset_sync_reg1),
        .PRE(enablealign),
        .Q(reset_sync_reg2));
  (* ASYNC_REG *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FDP" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:CE" *) 
  (* box_type = "PRIMITIVE" *) 
  FDPE #(
    .INIT(1'b1)) 
    reset_sync3
       (.C(userclk2),
        .CE(1'b1),
        .D(reset_sync_reg2),
        .PRE(enablealign),
        .Q(reset_sync_reg3));
  (* ASYNC_REG *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FDP" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:CE" *) 
  (* box_type = "PRIMITIVE" *) 
  FDPE #(
    .INIT(1'b1)) 
    reset_sync4
       (.C(userclk2),
        .CE(1'b1),
        .D(reset_sync_reg3),
        .PRE(enablealign),
        .Q(reset_sync_reg4));
  (* ASYNC_REG *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FDP" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:CE" *) 
  (* box_type = "PRIMITIVE" *) 
  FDPE #(
    .INIT(1'b1)) 
    reset_sync5
       (.C(userclk2),
        .CE(1'b1),
        .D(reset_sync_reg4),
        .PRE(enablealign),
        .Q(reset_sync_reg5));
  (* ASYNC_REG *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FDP" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:CE" *) 
  (* box_type = "PRIMITIVE" *) 
  FDPE #(
    .INIT(1'b1)) 
    reset_sync6
       (.C(userclk2),
        .CE(1'b1),
        .D(reset_sync_reg5),
        .PRE(1'b0),
        .Q(reset_out));
endmodule

module PCS_PMA_resets
   (pma_reset_out,
    independent_clock_bufg,
    reset);
  output pma_reset_out;
  input independent_clock_bufg;
  input reset;

  wire independent_clock_bufg;
  (* async_reg = "true" *) wire [3:0]pma_reset_pipe;
  wire reset;

  assign pma_reset_out = pma_reset_pipe[3];
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDPE \pma_reset_pipe_reg[0] 
       (.C(independent_clock_bufg),
        .CE(1'b1),
        .D(1'b0),
        .PRE(reset),
        .Q(pma_reset_pipe[0]));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDPE \pma_reset_pipe_reg[1] 
       (.C(independent_clock_bufg),
        .CE(1'b1),
        .D(pma_reset_pipe[0]),
        .PRE(reset),
        .Q(pma_reset_pipe[1]));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDPE \pma_reset_pipe_reg[2] 
       (.C(independent_clock_bufg),
        .CE(1'b1),
        .D(pma_reset_pipe[1]),
        .PRE(reset),
        .Q(pma_reset_pipe[2]));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDPE \pma_reset_pipe_reg[3] 
       (.C(independent_clock_bufg),
        .CE(1'b1),
        .D(pma_reset_pipe[2]),
        .PRE(reset),
        .Q(pma_reset_pipe[3]));
endmodule

(* EXAMPLE_SIMULATION = "0" *) (* downgradeipidentifiedwarnings = "yes" *) 
module PCS_PMA_support
   (gtrefclk_p,
    gtrefclk_n,
    gtrefclk_out,
    txp,
    txn,
    rxp,
    rxn,
    userclk_out,
    userclk2_out,
    rxuserclk_out,
    rxuserclk2_out,
    pma_reset_out,
    mmcm_locked_out,
    resetdone,
    independent_clock_bufg,
    gmii_txd,
    gmii_tx_en,
    gmii_tx_er,
    gmii_rxd,
    gmii_rx_dv,
    gmii_rx_er,
    gmii_isolate,
    configuration_vector,
    status_vector,
    reset,
    gtpowergood,
    signal_detect);
  input gtrefclk_p;
  input gtrefclk_n;
  output gtrefclk_out;
  output txp;
  output txn;
  input rxp;
  input rxn;
  output userclk_out;
  output userclk2_out;
  output rxuserclk_out;
  output rxuserclk2_out;
  output pma_reset_out;
  output mmcm_locked_out;
  output resetdone;
  input independent_clock_bufg;
  input [7:0]gmii_txd;
  input gmii_tx_en;
  input gmii_tx_er;
  output [7:0]gmii_rxd;
  output gmii_rx_dv;
  output gmii_rx_er;
  output gmii_isolate;
  input [4:0]configuration_vector;
  output [15:0]status_vector;
  input reset;
  output gtpowergood;
  input signal_detect;

  wire \<const0> ;
  wire [4:0]configuration_vector;
  wire gmii_isolate;
  wire gmii_rx_dv;
  wire gmii_rx_er;
  wire [7:0]gmii_rxd;
  wire gmii_tx_en;
  wire gmii_tx_er;
  wire [7:0]gmii_txd;
  wire gtpowergood;
  wire gtrefclk_n;
  wire gtrefclk_out;
  wire gtrefclk_p;
  wire independent_clock_bufg;
  wire lopt;
  wire lopt_1;
  wire lopt_2;
  wire lopt_3;
  wire lopt_4;
  wire lopt_5;
  wire pma_reset_out;
  wire reset;
  wire resetdone;
  wire rxn;
  wire rxoutclk;
  wire rxp;
  wire rxuserclk2_out;
  wire signal_detect;
  wire [6:0]\^status_vector ;
  wire txn;
  wire txoutclk;
  wire txp;
  wire userclk2_out;
  wire userclk_out;

  assign mmcm_locked_out = \<const0> ;
  assign rxuserclk_out = rxuserclk2_out;
  assign status_vector[15] = \<const0> ;
  assign status_vector[14] = \<const0> ;
  assign status_vector[13] = \<const0> ;
  assign status_vector[12] = \<const0> ;
  assign status_vector[11] = \<const0> ;
  assign status_vector[10] = \<const0> ;
  assign status_vector[9] = \<const0> ;
  assign status_vector[8] = \<const0> ;
  assign status_vector[7] = \<const0> ;
  assign status_vector[6:0] = \^status_vector [6:0];
  GND GND
       (.G(\<const0> ));
  PCS_PMA_clocking core_clocking_i
       (.gtrefclk_n(gtrefclk_n),
        .gtrefclk_out(gtrefclk_out),
        .gtrefclk_p(gtrefclk_p),
        .lopt(lopt),
        .lopt_1(lopt_1),
        .lopt_2(lopt_2),
        .lopt_3(lopt_3),
        .lopt_4(lopt_4),
        .lopt_5(lopt_5),
        .rxoutclk(rxoutclk),
        .rxuserclk2_out(rxuserclk2_out),
        .txoutclk(txoutclk),
        .userclk(userclk_out),
        .userclk2(userclk2_out));
  PCS_PMA_resets core_resets_i
       (.independent_clock_bufg(independent_clock_bufg),
        .pma_reset_out(pma_reset_out),
        .reset(reset));
  PCS_PMA_block pcs_pma_block_i
       (.CLK(userclk_out),
        .configuration_vector(configuration_vector[3:1]),
        .gmii_isolate(gmii_isolate),
        .gmii_rx_dv(gmii_rx_dv),
        .gmii_rx_er(gmii_rx_er),
        .gmii_rxd(gmii_rxd),
        .gmii_tx_en(gmii_tx_en),
        .gmii_tx_er(gmii_tx_er),
        .gmii_txd(gmii_txd),
        .gtpowergood(gtpowergood),
        .gtrefclk_out(gtrefclk_out),
        .independent_clock_bufg(independent_clock_bufg),
        .lopt(lopt),
        .lopt_1(lopt_1),
        .lopt_2(lopt_2),
        .lopt_3(lopt_3),
        .lopt_4(lopt_4),
        .lopt_5(lopt_5),
        .pma_reset_out(pma_reset_out),
        .resetdone(resetdone),
        .rxn(rxn),
        .rxoutclk_out(rxoutclk),
        .rxp(rxp),
        .signal_detect(signal_detect),
        .status_vector(\^status_vector ),
        .txn(txn),
        .txoutclk_out(txoutclk),
        .txp(txp),
        .userclk2(userclk2_out));
endmodule

module PCS_PMA_sync_block
   (resetdone,
    data_in,
    userclk2);
  output resetdone;
  input data_in;
  input userclk2;

  wire data_in;
  wire data_sync1;
  wire data_sync2;
  wire data_sync3;
  wire data_sync4;
  wire data_sync5;
  wire resetdone;
  wire userclk2;

  (* ASYNC_REG *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:CE GND:R" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg1
       (.C(userclk2),
        .CE(1'b1),
        .D(data_in),
        .Q(data_sync1),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:CE GND:R" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg2
       (.C(userclk2),
        .CE(1'b1),
        .D(data_sync1),
        .Q(data_sync2),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:CE GND:R" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg3
       (.C(userclk2),
        .CE(1'b1),
        .D(data_sync2),
        .Q(data_sync3),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:CE GND:R" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg4
       (.C(userclk2),
        .CE(1'b1),
        .D(data_sync3),
        .Q(data_sync4),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:CE GND:R" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg5
       (.C(userclk2),
        .CE(1'b1),
        .D(data_sync4),
        .Q(data_sync5),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:CE GND:R" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg6
       (.C(userclk2),
        .CE(1'b1),
        .D(data_sync5),
        .Q(resetdone),
        .R(1'b0));
endmodule

module PCS_PMA_transceiver
   (txn,
    txp,
    gtpowergood,
    rxoutclk_out,
    txoutclk_out,
    rxchariscomma,
    rxcharisk,
    rxdisperr,
    rxnotintable,
    rxbufstatus,
    txbuferr,
    Q,
    \rxdata_reg[7]_0 ,
    data_in,
    pma_reset_out,
    independent_clock_bufg,
    rxn,
    rxp,
    gtrefclk_out,
    CLK,
    userclk2,
    SR,
    powerdown,
    mgt_tx_reset,
    D,
    txchardispmode_reg_reg_0,
    txcharisk_reg_reg_0,
    enablealign,
    \txdata_reg_reg[7]_0 ,
    lopt,
    lopt_1,
    lopt_2,
    lopt_3,
    lopt_4,
    lopt_5);
  output txn;
  output txp;
  output gtpowergood;
  output [0:0]rxoutclk_out;
  output [0:0]txoutclk_out;
  output [0:0]rxchariscomma;
  output [0:0]rxcharisk;
  output [0:0]rxdisperr;
  output [0:0]rxnotintable;
  output [0:0]rxbufstatus;
  output txbuferr;
  output [1:0]Q;
  output [7:0]\rxdata_reg[7]_0 ;
  output data_in;
  input pma_reset_out;
  input independent_clock_bufg;
  input rxn;
  input rxp;
  input gtrefclk_out;
  input CLK;
  input userclk2;
  input [0:0]SR;
  input powerdown;
  input mgt_tx_reset;
  input [0:0]D;
  input [0:0]txchardispmode_reg_reg_0;
  input [0:0]txcharisk_reg_reg_0;
  input enablealign;
  input [7:0]\txdata_reg_reg[7]_0 ;
  input lopt;
  input lopt_1;
  output lopt_2;
  output lopt_3;
  output lopt_4;
  output lopt_5;

  wire CLK;
  wire [0:0]D;
  wire PCS_PMA_gt_i_n_117;
  wire PCS_PMA_gt_i_n_57;
  wire [1:0]Q;
  wire [0:0]SR;
  wire data_in;
  wire enablealign;
  wire encommaalign_int;
  wire gtpowergood;
  wire gtrefclk_out;
  wire gtwiz_reset_rx_datapath_in;
  wire gtwiz_reset_rx_done_out_int;
  wire gtwiz_reset_tx_datapath_in;
  wire gtwiz_reset_tx_done_out_int;
  wire independent_clock_bufg;
  wire lopt;
  wire lopt_1;
  wire lopt_2;
  wire lopt_3;
  wire lopt_4;
  wire lopt_5;
  wire mgt_tx_reset;
  wire p_0_in;
  wire pma_reset_out;
  wire powerdown;
  wire [0:0]rxbufstatus;
  wire [0:0]rxchariscomma;
  wire [1:0]rxchariscomma_double;
  wire rxchariscomma_i_1_n_0;
  wire [1:0]rxchariscomma_reg__0;
  wire [0:0]rxcharisk;
  wire [1:0]rxcharisk_double;
  wire rxcharisk_i_1_n_0;
  wire [1:0]rxcharisk_reg__0;
  wire [1:0]rxclkcorcnt_double;
  wire [1:0]rxclkcorcnt_int;
  wire [1:0]rxclkcorcnt_reg;
  wire [1:0]rxctrl0_out;
  wire [1:0]rxctrl1_out;
  wire [1:0]rxctrl2_out;
  wire [1:0]rxctrl3_out;
  wire \rxdata[0]_i_1_n_0 ;
  wire \rxdata[1]_i_1_n_0 ;
  wire \rxdata[2]_i_1_n_0 ;
  wire \rxdata[3]_i_1_n_0 ;
  wire \rxdata[4]_i_1_n_0 ;
  wire \rxdata[5]_i_1_n_0 ;
  wire \rxdata[6]_i_1_n_0 ;
  wire \rxdata[7]_i_1_n_0 ;
  wire [15:0]rxdata_double;
  wire [15:0]rxdata_int;
  wire [15:0]rxdata_reg;
  wire [7:0]\rxdata_reg[7]_0 ;
  wire [0:0]rxdisperr;
  wire [1:0]rxdisperr_double;
  wire rxdisperr_i_1_n_0;
  wire [1:0]rxdisperr_reg__0;
  wire rxn;
  wire [0:0]rxnotintable;
  wire [1:0]rxnotintable_double;
  wire rxnotintable_i_1_n_0;
  wire [1:0]rxnotintable_reg__0;
  wire [0:0]rxoutclk_out;
  wire rxp;
  wire rxpowerdown;
  wire rxpowerdown_double;
  wire rxpowerdown_reg__0;
  wire toggle;
  wire toggle_i_1_n_0;
  wire txbuferr;
  wire [1:1]txbufstatus_reg;
  wire [1:0]txchardispmode_double;
  wire [1:0]txchardispmode_int;
  wire txchardispmode_reg;
  wire [0:0]txchardispmode_reg_reg_0;
  wire [1:0]txchardispval_double;
  wire [1:0]txchardispval_int;
  wire txchardispval_reg;
  wire [1:0]txcharisk_double;
  wire [1:0]txcharisk_int;
  wire txcharisk_reg;
  wire [0:0]txcharisk_reg_reg_0;
  wire [15:0]txdata_double;
  wire [15:0]txdata_int;
  wire [7:0]txdata_reg;
  wire [7:0]\txdata_reg_reg[7]_0 ;
  wire txn;
  wire [0:0]txoutclk_out;
  wire txp;
  wire txpowerdown;
  wire txpowerdown_double;
  wire txpowerdown_reg__0;
  wire userclk2;
  wire [0:0]NLW_PCS_PMA_gt_i_cplllock_out_UNCONNECTED;
  wire [15:0]NLW_PCS_PMA_gt_i_dmonitorout_out_UNCONNECTED;
  wire [15:0]NLW_PCS_PMA_gt_i_drpdo_out_UNCONNECTED;
  wire [0:0]NLW_PCS_PMA_gt_i_drprdy_out_UNCONNECTED;
  wire [0:0]NLW_PCS_PMA_gt_i_eyescandataerror_out_UNCONNECTED;
  wire [0:0]NLW_PCS_PMA_gt_i_gtwiz_reset_rx_cdr_stable_out_UNCONNECTED;
  wire [1:0]NLW_PCS_PMA_gt_i_rxbufstatus_out_UNCONNECTED;
  wire [0:0]NLW_PCS_PMA_gt_i_rxbyteisaligned_out_UNCONNECTED;
  wire [0:0]NLW_PCS_PMA_gt_i_rxbyterealign_out_UNCONNECTED;
  wire [0:0]NLW_PCS_PMA_gt_i_rxcommadet_out_UNCONNECTED;
  wire [15:2]NLW_PCS_PMA_gt_i_rxctrl0_out_UNCONNECTED;
  wire [15:2]NLW_PCS_PMA_gt_i_rxctrl1_out_UNCONNECTED;
  wire [7:2]NLW_PCS_PMA_gt_i_rxctrl2_out_UNCONNECTED;
  wire [7:2]NLW_PCS_PMA_gt_i_rxctrl3_out_UNCONNECTED;
  wire [0:0]NLW_PCS_PMA_gt_i_rxpmaresetdone_out_UNCONNECTED;
  wire [0:0]NLW_PCS_PMA_gt_i_rxprbserr_out_UNCONNECTED;
  wire [0:0]NLW_PCS_PMA_gt_i_rxresetdone_out_UNCONNECTED;
  wire [0:0]NLW_PCS_PMA_gt_i_txbufstatus_out_UNCONNECTED;
  wire [0:0]NLW_PCS_PMA_gt_i_txpmaresetdone_out_UNCONNECTED;
  wire [0:0]NLW_PCS_PMA_gt_i_txprgdivresetdone_out_UNCONNECTED;
  wire [0:0]NLW_PCS_PMA_gt_i_txresetdone_out_UNCONNECTED;

  (* CHECK_LICENSE_TYPE = "PCS_PMA_gt,PCS_PMA_gt_gtwizard_top,{}" *) 
  (* X_CORE_INFO = "PCS_PMA_gt_gtwizard_top,Vivado 2022.1" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  PCS_PMA_gt PCS_PMA_gt_i
       (.cplllock_out(NLW_PCS_PMA_gt_i_cplllock_out_UNCONNECTED[0]),
        .cpllrefclksel_in({1'b0,1'b0,1'b1}),
        .dmonitorout_out(NLW_PCS_PMA_gt_i_dmonitorout_out_UNCONNECTED[15:0]),
        .drpaddr_in({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .drpclk_in(independent_clock_bufg),
        .drpdi_in({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .drpdo_out(NLW_PCS_PMA_gt_i_drpdo_out_UNCONNECTED[15:0]),
        .drpen_in(1'b0),
        .drprdy_out(NLW_PCS_PMA_gt_i_drprdy_out_UNCONNECTED[0]),
        .drpwe_in(1'b0),
        .eyescandataerror_out(NLW_PCS_PMA_gt_i_eyescandataerror_out_UNCONNECTED[0]),
        .eyescanreset_in(1'b0),
        .eyescantrigger_in(1'b0),
        .gthrxn_in(rxn),
        .gthrxp_in(rxp),
        .gthtxn_out(txn),
        .gthtxp_out(txp),
        .gtpowergood_out(gtpowergood),
        .gtrefclk0_in(gtrefclk_out),
        .gtrefclk1_in(1'b0),
        .gtwiz_reset_all_in(pma_reset_out),
        .gtwiz_reset_clk_freerun_in(1'b0),
        .gtwiz_reset_rx_cdr_stable_out(NLW_PCS_PMA_gt_i_gtwiz_reset_rx_cdr_stable_out_UNCONNECTED[0]),
        .gtwiz_reset_rx_datapath_in(gtwiz_reset_rx_datapath_in),
        .gtwiz_reset_rx_done_out(gtwiz_reset_rx_done_out_int),
        .gtwiz_reset_rx_pll_and_datapath_in(1'b0),
        .gtwiz_reset_tx_datapath_in(gtwiz_reset_tx_datapath_in),
        .gtwiz_reset_tx_done_out(gtwiz_reset_tx_done_out_int),
        .gtwiz_reset_tx_pll_and_datapath_in(1'b0),
        .gtwiz_userclk_rx_active_in(1'b0),
        .gtwiz_userclk_tx_active_in(1'b1),
        .gtwiz_userclk_tx_reset_in(1'b0),
        .gtwiz_userdata_rx_out(rxdata_int),
        .gtwiz_userdata_tx_in(txdata_int),
        .loopback_in({1'b0,1'b0,1'b0}),
        .lopt(lopt),
        .lopt_1(lopt_1),
        .lopt_2(lopt_2),
        .lopt_3(lopt_3),
        .lopt_4(lopt_4),
        .lopt_5(lopt_5),
        .pcsrsvdin_in({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .rx8b10ben_in(1'b1),
        .rxbufreset_in(1'b0),
        .rxbufstatus_out({PCS_PMA_gt_i_n_57,NLW_PCS_PMA_gt_i_rxbufstatus_out_UNCONNECTED[1:0]}),
        .rxbyteisaligned_out(NLW_PCS_PMA_gt_i_rxbyteisaligned_out_UNCONNECTED[0]),
        .rxbyterealign_out(NLW_PCS_PMA_gt_i_rxbyterealign_out_UNCONNECTED[0]),
        .rxcdrhold_in(1'b0),
        .rxclkcorcnt_out(rxclkcorcnt_int),
        .rxcommadet_out(NLW_PCS_PMA_gt_i_rxcommadet_out_UNCONNECTED[0]),
        .rxcommadeten_in(1'b1),
        .rxctrl0_out({NLW_PCS_PMA_gt_i_rxctrl0_out_UNCONNECTED[15:2],rxctrl0_out}),
        .rxctrl1_out({NLW_PCS_PMA_gt_i_rxctrl1_out_UNCONNECTED[15:2],rxctrl1_out}),
        .rxctrl2_out({NLW_PCS_PMA_gt_i_rxctrl2_out_UNCONNECTED[7:2],rxctrl2_out}),
        .rxctrl3_out({NLW_PCS_PMA_gt_i_rxctrl3_out_UNCONNECTED[7:2],rxctrl3_out}),
        .rxdfelpmreset_in(1'b0),
        .rxlpmen_in(1'b1),
        .rxmcommaalignen_in(encommaalign_int),
        .rxoutclk_out(rxoutclk_out),
        .rxpcommaalignen_in(1'b0),
        .rxpcsreset_in(1'b0),
        .rxpd_in({rxpowerdown,1'b0}),
        .rxpmareset_in(1'b0),
        .rxpmaresetdone_out(NLW_PCS_PMA_gt_i_rxpmaresetdone_out_UNCONNECTED[0]),
        .rxpolarity_in(1'b0),
        .rxprbscntreset_in(1'b0),
        .rxprbserr_out(NLW_PCS_PMA_gt_i_rxprbserr_out_UNCONNECTED[0]),
        .rxprbssel_in({1'b0,1'b0,1'b0,1'b0}),
        .rxrate_in({1'b0,1'b0,1'b0}),
        .rxresetdone_out(NLW_PCS_PMA_gt_i_rxresetdone_out_UNCONNECTED[0]),
        .rxusrclk2_in(1'b0),
        .rxusrclk_in(CLK),
        .tx8b10ben_in(1'b1),
        .txbufstatus_out({PCS_PMA_gt_i_n_117,NLW_PCS_PMA_gt_i_txbufstatus_out_UNCONNECTED[0]}),
        .txctrl0_in({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,txchardispval_int}),
        .txctrl1_in({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,txchardispmode_int}),
        .txctrl2_in({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,txcharisk_int}),
        .txdiffctrl_in({1'b1,1'b1,1'b0,1'b0,1'b0}),
        .txelecidle_in(txpowerdown),
        .txinhibit_in(1'b0),
        .txoutclk_out(txoutclk_out),
        .txpcsreset_in(1'b0),
        .txpd_in({1'b0,1'b0}),
        .txpmareset_in(1'b0),
        .txpmaresetdone_out(NLW_PCS_PMA_gt_i_txpmaresetdone_out_UNCONNECTED[0]),
        .txpolarity_in(1'b0),
        .txpostcursor_in({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .txprbsforceerr_in(1'b0),
        .txprbssel_in({1'b0,1'b0,1'b0,1'b0}),
        .txprecursor_in({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .txprgdivresetdone_out(NLW_PCS_PMA_gt_i_txprgdivresetdone_out_UNCONNECTED[0]),
        .txresetdone_out(NLW_PCS_PMA_gt_i_txresetdone_out_UNCONNECTED[0]),
        .txusrclk2_in(1'b0),
        .txusrclk_in(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair114" *) 
  LUT2 #(
    .INIT(4'h8)) 
    PCS_PMA_gt_i_i_1
       (.I0(mgt_tx_reset),
        .I1(gtwiz_reset_tx_done_out_int),
        .O(gtwiz_reset_tx_datapath_in));
  LUT2 #(
    .INIT(4'h8)) 
    PCS_PMA_gt_i_i_2
       (.I0(SR),
        .I1(gtwiz_reset_rx_done_out_int),
        .O(gtwiz_reset_rx_datapath_in));
  (* SOFT_HLUTNM = "soft_lutpair114" *) 
  LUT2 #(
    .INIT(4'h8)) 
    data_sync1_i_1
       (.I0(gtwiz_reset_tx_done_out_int),
        .I1(gtwiz_reset_rx_done_out_int),
        .O(data_in));
  PCS_PMA_reset_sync reclock_encommaalign
       (.enablealign(enablealign),
        .reset_out(encommaalign_int),
        .userclk2(userclk2));
  FDRE rxbuferr_reg
       (.C(userclk2),
        .CE(1'b1),
        .D(p_0_in),
        .Q(rxbufstatus),
        .R(1'b0));
  FDRE \rxbufstatus_reg_reg[2] 
       (.C(CLK),
        .CE(1'b1),
        .D(PCS_PMA_gt_i_n_57),
        .Q(p_0_in),
        .R(1'b0));
  FDRE \rxchariscomma_double_reg[0] 
       (.C(userclk2),
        .CE(toggle),
        .D(rxchariscomma_reg__0[0]),
        .Q(rxchariscomma_double[0]),
        .R(SR));
  FDRE \rxchariscomma_double_reg[1] 
       (.C(userclk2),
        .CE(toggle),
        .D(rxchariscomma_reg__0[1]),
        .Q(rxchariscomma_double[1]),
        .R(SR));
  (* SOFT_HLUTNM = "soft_lutpair112" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    rxchariscomma_i_1
       (.I0(rxchariscomma_double[1]),
        .I1(toggle),
        .I2(rxchariscomma_double[0]),
        .O(rxchariscomma_i_1_n_0));
  FDRE rxchariscomma_reg
       (.C(userclk2),
        .CE(1'b1),
        .D(rxchariscomma_i_1_n_0),
        .Q(rxchariscomma),
        .R(SR));
  FDRE \rxchariscomma_reg_reg[0] 
       (.C(CLK),
        .CE(1'b1),
        .D(rxctrl2_out[0]),
        .Q(rxchariscomma_reg__0[0]),
        .R(1'b0));
  FDRE \rxchariscomma_reg_reg[1] 
       (.C(CLK),
        .CE(1'b1),
        .D(rxctrl2_out[1]),
        .Q(rxchariscomma_reg__0[1]),
        .R(1'b0));
  FDRE \rxcharisk_double_reg[0] 
       (.C(userclk2),
        .CE(toggle),
        .D(rxcharisk_reg__0[0]),
        .Q(rxcharisk_double[0]),
        .R(SR));
  FDRE \rxcharisk_double_reg[1] 
       (.C(userclk2),
        .CE(toggle),
        .D(rxcharisk_reg__0[1]),
        .Q(rxcharisk_double[1]),
        .R(SR));
  (* SOFT_HLUTNM = "soft_lutpair112" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    rxcharisk_i_1
       (.I0(rxcharisk_double[1]),
        .I1(toggle),
        .I2(rxcharisk_double[0]),
        .O(rxcharisk_i_1_n_0));
  FDRE rxcharisk_reg
       (.C(userclk2),
        .CE(1'b1),
        .D(rxcharisk_i_1_n_0),
        .Q(rxcharisk),
        .R(SR));
  FDRE \rxcharisk_reg_reg[0] 
       (.C(CLK),
        .CE(1'b1),
        .D(rxctrl0_out[0]),
        .Q(rxcharisk_reg__0[0]),
        .R(1'b0));
  FDRE \rxcharisk_reg_reg[1] 
       (.C(CLK),
        .CE(1'b1),
        .D(rxctrl0_out[1]),
        .Q(rxcharisk_reg__0[1]),
        .R(1'b0));
  FDRE \rxclkcorcnt_double_reg[0] 
       (.C(userclk2),
        .CE(toggle),
        .D(rxclkcorcnt_reg[0]),
        .Q(rxclkcorcnt_double[0]),
        .R(SR));
  FDRE \rxclkcorcnt_double_reg[1] 
       (.C(userclk2),
        .CE(toggle),
        .D(rxclkcorcnt_reg[1]),
        .Q(rxclkcorcnt_double[1]),
        .R(SR));
  FDRE \rxclkcorcnt_reg[0] 
       (.C(userclk2),
        .CE(1'b1),
        .D(rxclkcorcnt_double[0]),
        .Q(Q[0]),
        .R(SR));
  FDRE \rxclkcorcnt_reg[1] 
       (.C(userclk2),
        .CE(1'b1),
        .D(rxclkcorcnt_double[1]),
        .Q(Q[1]),
        .R(SR));
  FDRE \rxclkcorcnt_reg_reg[0] 
       (.C(CLK),
        .CE(1'b1),
        .D(rxclkcorcnt_int[0]),
        .Q(rxclkcorcnt_reg[0]),
        .R(1'b0));
  FDRE \rxclkcorcnt_reg_reg[1] 
       (.C(CLK),
        .CE(1'b1),
        .D(rxclkcorcnt_int[1]),
        .Q(rxclkcorcnt_reg[1]),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair108" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \rxdata[0]_i_1 
       (.I0(rxdata_double[8]),
        .I1(toggle),
        .I2(rxdata_double[0]),
        .O(\rxdata[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair108" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \rxdata[1]_i_1 
       (.I0(rxdata_double[9]),
        .I1(toggle),
        .I2(rxdata_double[1]),
        .O(\rxdata[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair109" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \rxdata[2]_i_1 
       (.I0(rxdata_double[10]),
        .I1(toggle),
        .I2(rxdata_double[2]),
        .O(\rxdata[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair109" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \rxdata[3]_i_1 
       (.I0(rxdata_double[11]),
        .I1(toggle),
        .I2(rxdata_double[3]),
        .O(\rxdata[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair110" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \rxdata[4]_i_1 
       (.I0(rxdata_double[12]),
        .I1(toggle),
        .I2(rxdata_double[4]),
        .O(\rxdata[4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair110" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \rxdata[5]_i_1 
       (.I0(rxdata_double[13]),
        .I1(toggle),
        .I2(rxdata_double[5]),
        .O(\rxdata[5]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair111" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \rxdata[6]_i_1 
       (.I0(rxdata_double[14]),
        .I1(toggle),
        .I2(rxdata_double[6]),
        .O(\rxdata[6]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair111" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \rxdata[7]_i_1 
       (.I0(rxdata_double[15]),
        .I1(toggle),
        .I2(rxdata_double[7]),
        .O(\rxdata[7]_i_1_n_0 ));
  FDRE \rxdata_double_reg[0] 
       (.C(userclk2),
        .CE(toggle),
        .D(rxdata_reg[0]),
        .Q(rxdata_double[0]),
        .R(SR));
  FDRE \rxdata_double_reg[10] 
       (.C(userclk2),
        .CE(toggle),
        .D(rxdata_reg[10]),
        .Q(rxdata_double[10]),
        .R(SR));
  FDRE \rxdata_double_reg[11] 
       (.C(userclk2),
        .CE(toggle),
        .D(rxdata_reg[11]),
        .Q(rxdata_double[11]),
        .R(SR));
  FDRE \rxdata_double_reg[12] 
       (.C(userclk2),
        .CE(toggle),
        .D(rxdata_reg[12]),
        .Q(rxdata_double[12]),
        .R(SR));
  FDRE \rxdata_double_reg[13] 
       (.C(userclk2),
        .CE(toggle),
        .D(rxdata_reg[13]),
        .Q(rxdata_double[13]),
        .R(SR));
  FDRE \rxdata_double_reg[14] 
       (.C(userclk2),
        .CE(toggle),
        .D(rxdata_reg[14]),
        .Q(rxdata_double[14]),
        .R(SR));
  FDRE \rxdata_double_reg[15] 
       (.C(userclk2),
        .CE(toggle),
        .D(rxdata_reg[15]),
        .Q(rxdata_double[15]),
        .R(SR));
  FDRE \rxdata_double_reg[1] 
       (.C(userclk2),
        .CE(toggle),
        .D(rxdata_reg[1]),
        .Q(rxdata_double[1]),
        .R(SR));
  FDRE \rxdata_double_reg[2] 
       (.C(userclk2),
        .CE(toggle),
        .D(rxdata_reg[2]),
        .Q(rxdata_double[2]),
        .R(SR));
  FDRE \rxdata_double_reg[3] 
       (.C(userclk2),
        .CE(toggle),
        .D(rxdata_reg[3]),
        .Q(rxdata_double[3]),
        .R(SR));
  FDRE \rxdata_double_reg[4] 
       (.C(userclk2),
        .CE(toggle),
        .D(rxdata_reg[4]),
        .Q(rxdata_double[4]),
        .R(SR));
  FDRE \rxdata_double_reg[5] 
       (.C(userclk2),
        .CE(toggle),
        .D(rxdata_reg[5]),
        .Q(rxdata_double[5]),
        .R(SR));
  FDRE \rxdata_double_reg[6] 
       (.C(userclk2),
        .CE(toggle),
        .D(rxdata_reg[6]),
        .Q(rxdata_double[6]),
        .R(SR));
  FDRE \rxdata_double_reg[7] 
       (.C(userclk2),
        .CE(toggle),
        .D(rxdata_reg[7]),
        .Q(rxdata_double[7]),
        .R(SR));
  FDRE \rxdata_double_reg[8] 
       (.C(userclk2),
        .CE(toggle),
        .D(rxdata_reg[8]),
        .Q(rxdata_double[8]),
        .R(SR));
  FDRE \rxdata_double_reg[9] 
       (.C(userclk2),
        .CE(toggle),
        .D(rxdata_reg[9]),
        .Q(rxdata_double[9]),
        .R(SR));
  FDRE \rxdata_reg[0] 
       (.C(userclk2),
        .CE(1'b1),
        .D(\rxdata[0]_i_1_n_0 ),
        .Q(\rxdata_reg[7]_0 [0]),
        .R(SR));
  FDRE \rxdata_reg[1] 
       (.C(userclk2),
        .CE(1'b1),
        .D(\rxdata[1]_i_1_n_0 ),
        .Q(\rxdata_reg[7]_0 [1]),
        .R(SR));
  FDRE \rxdata_reg[2] 
       (.C(userclk2),
        .CE(1'b1),
        .D(\rxdata[2]_i_1_n_0 ),
        .Q(\rxdata_reg[7]_0 [2]),
        .R(SR));
  FDRE \rxdata_reg[3] 
       (.C(userclk2),
        .CE(1'b1),
        .D(\rxdata[3]_i_1_n_0 ),
        .Q(\rxdata_reg[7]_0 [3]),
        .R(SR));
  FDRE \rxdata_reg[4] 
       (.C(userclk2),
        .CE(1'b1),
        .D(\rxdata[4]_i_1_n_0 ),
        .Q(\rxdata_reg[7]_0 [4]),
        .R(SR));
  FDRE \rxdata_reg[5] 
       (.C(userclk2),
        .CE(1'b1),
        .D(\rxdata[5]_i_1_n_0 ),
        .Q(\rxdata_reg[7]_0 [5]),
        .R(SR));
  FDRE \rxdata_reg[6] 
       (.C(userclk2),
        .CE(1'b1),
        .D(\rxdata[6]_i_1_n_0 ),
        .Q(\rxdata_reg[7]_0 [6]),
        .R(SR));
  FDRE \rxdata_reg[7] 
       (.C(userclk2),
        .CE(1'b1),
        .D(\rxdata[7]_i_1_n_0 ),
        .Q(\rxdata_reg[7]_0 [7]),
        .R(SR));
  FDRE \rxdata_reg_reg[0] 
       (.C(CLK),
        .CE(1'b1),
        .D(rxdata_int[0]),
        .Q(rxdata_reg[0]),
        .R(1'b0));
  FDRE \rxdata_reg_reg[10] 
       (.C(CLK),
        .CE(1'b1),
        .D(rxdata_int[10]),
        .Q(rxdata_reg[10]),
        .R(1'b0));
  FDRE \rxdata_reg_reg[11] 
       (.C(CLK),
        .CE(1'b1),
        .D(rxdata_int[11]),
        .Q(rxdata_reg[11]),
        .R(1'b0));
  FDRE \rxdata_reg_reg[12] 
       (.C(CLK),
        .CE(1'b1),
        .D(rxdata_int[12]),
        .Q(rxdata_reg[12]),
        .R(1'b0));
  FDRE \rxdata_reg_reg[13] 
       (.C(CLK),
        .CE(1'b1),
        .D(rxdata_int[13]),
        .Q(rxdata_reg[13]),
        .R(1'b0));
  FDRE \rxdata_reg_reg[14] 
       (.C(CLK),
        .CE(1'b1),
        .D(rxdata_int[14]),
        .Q(rxdata_reg[14]),
        .R(1'b0));
  FDRE \rxdata_reg_reg[15] 
       (.C(CLK),
        .CE(1'b1),
        .D(rxdata_int[15]),
        .Q(rxdata_reg[15]),
        .R(1'b0));
  FDRE \rxdata_reg_reg[1] 
       (.C(CLK),
        .CE(1'b1),
        .D(rxdata_int[1]),
        .Q(rxdata_reg[1]),
        .R(1'b0));
  FDRE \rxdata_reg_reg[2] 
       (.C(CLK),
        .CE(1'b1),
        .D(rxdata_int[2]),
        .Q(rxdata_reg[2]),
        .R(1'b0));
  FDRE \rxdata_reg_reg[3] 
       (.C(CLK),
        .CE(1'b1),
        .D(rxdata_int[3]),
        .Q(rxdata_reg[3]),
        .R(1'b0));
  FDRE \rxdata_reg_reg[4] 
       (.C(CLK),
        .CE(1'b1),
        .D(rxdata_int[4]),
        .Q(rxdata_reg[4]),
        .R(1'b0));
  FDRE \rxdata_reg_reg[5] 
       (.C(CLK),
        .CE(1'b1),
        .D(rxdata_int[5]),
        .Q(rxdata_reg[5]),
        .R(1'b0));
  FDRE \rxdata_reg_reg[6] 
       (.C(CLK),
        .CE(1'b1),
        .D(rxdata_int[6]),
        .Q(rxdata_reg[6]),
        .R(1'b0));
  FDRE \rxdata_reg_reg[7] 
       (.C(CLK),
        .CE(1'b1),
        .D(rxdata_int[7]),
        .Q(rxdata_reg[7]),
        .R(1'b0));
  FDRE \rxdata_reg_reg[8] 
       (.C(CLK),
        .CE(1'b1),
        .D(rxdata_int[8]),
        .Q(rxdata_reg[8]),
        .R(1'b0));
  FDRE \rxdata_reg_reg[9] 
       (.C(CLK),
        .CE(1'b1),
        .D(rxdata_int[9]),
        .Q(rxdata_reg[9]),
        .R(1'b0));
  FDRE \rxdisperr_double_reg[0] 
       (.C(userclk2),
        .CE(toggle),
        .D(rxdisperr_reg__0[0]),
        .Q(rxdisperr_double[0]),
        .R(SR));
  FDRE \rxdisperr_double_reg[1] 
       (.C(userclk2),
        .CE(toggle),
        .D(rxdisperr_reg__0[1]),
        .Q(rxdisperr_double[1]),
        .R(SR));
  (* SOFT_HLUTNM = "soft_lutpair113" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    rxdisperr_i_1
       (.I0(rxdisperr_double[1]),
        .I1(toggle),
        .I2(rxdisperr_double[0]),
        .O(rxdisperr_i_1_n_0));
  FDRE rxdisperr_reg
       (.C(userclk2),
        .CE(1'b1),
        .D(rxdisperr_i_1_n_0),
        .Q(rxdisperr),
        .R(SR));
  FDRE \rxdisperr_reg_reg[0] 
       (.C(CLK),
        .CE(1'b1),
        .D(rxctrl1_out[0]),
        .Q(rxdisperr_reg__0[0]),
        .R(1'b0));
  FDRE \rxdisperr_reg_reg[1] 
       (.C(CLK),
        .CE(1'b1),
        .D(rxctrl1_out[1]),
        .Q(rxdisperr_reg__0[1]),
        .R(1'b0));
  FDRE \rxnotintable_double_reg[0] 
       (.C(userclk2),
        .CE(toggle),
        .D(rxnotintable_reg__0[0]),
        .Q(rxnotintable_double[0]),
        .R(SR));
  FDRE \rxnotintable_double_reg[1] 
       (.C(userclk2),
        .CE(toggle),
        .D(rxnotintable_reg__0[1]),
        .Q(rxnotintable_double[1]),
        .R(SR));
  (* SOFT_HLUTNM = "soft_lutpair113" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    rxnotintable_i_1
       (.I0(rxnotintable_double[1]),
        .I1(toggle),
        .I2(rxnotintable_double[0]),
        .O(rxnotintable_i_1_n_0));
  FDRE rxnotintable_reg
       (.C(userclk2),
        .CE(1'b1),
        .D(rxnotintable_i_1_n_0),
        .Q(rxnotintable),
        .R(SR));
  FDRE \rxnotintable_reg_reg[0] 
       (.C(CLK),
        .CE(1'b1),
        .D(rxctrl3_out[0]),
        .Q(rxnotintable_reg__0[0]),
        .R(1'b0));
  FDRE \rxnotintable_reg_reg[1] 
       (.C(CLK),
        .CE(1'b1),
        .D(rxctrl3_out[1]),
        .Q(rxnotintable_reg__0[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    rxpowerdown_double_reg
       (.C(userclk2),
        .CE(toggle),
        .D(rxpowerdown_reg__0),
        .Q(rxpowerdown_double),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    rxpowerdown_reg
       (.C(CLK),
        .CE(1'b1),
        .D(rxpowerdown_double),
        .Q(rxpowerdown),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    rxpowerdown_reg_reg
       (.C(userclk2),
        .CE(1'b1),
        .D(powerdown),
        .Q(rxpowerdown_reg__0),
        .R(SR));
  LUT1 #(
    .INIT(2'h1)) 
    toggle_i_1
       (.I0(toggle),
        .O(toggle_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    toggle_reg
       (.C(userclk2),
        .CE(1'b1),
        .D(toggle_i_1_n_0),
        .Q(toggle),
        .R(1'b0));
  FDRE txbuferr_reg
       (.C(userclk2),
        .CE(1'b1),
        .D(txbufstatus_reg),
        .Q(txbuferr),
        .R(1'b0));
  FDRE \txbufstatus_reg_reg[1] 
       (.C(CLK),
        .CE(1'b1),
        .D(PCS_PMA_gt_i_n_117),
        .Q(txbufstatus_reg),
        .R(1'b0));
  FDRE \txchardispmode_double_reg[0] 
       (.C(userclk2),
        .CE(toggle_i_1_n_0),
        .D(txchardispmode_reg),
        .Q(txchardispmode_double[0]),
        .R(mgt_tx_reset));
  FDRE \txchardispmode_double_reg[1] 
       (.C(userclk2),
        .CE(toggle_i_1_n_0),
        .D(txchardispmode_reg_reg_0),
        .Q(txchardispmode_double[1]),
        .R(mgt_tx_reset));
  FDRE \txchardispmode_int_reg[0] 
       (.C(CLK),
        .CE(1'b1),
        .D(txchardispmode_double[0]),
        .Q(txchardispmode_int[0]),
        .R(1'b0));
  FDRE \txchardispmode_int_reg[1] 
       (.C(CLK),
        .CE(1'b1),
        .D(txchardispmode_double[1]),
        .Q(txchardispmode_int[1]),
        .R(1'b0));
  FDRE txchardispmode_reg_reg
       (.C(userclk2),
        .CE(1'b1),
        .D(txchardispmode_reg_reg_0),
        .Q(txchardispmode_reg),
        .R(mgt_tx_reset));
  FDRE \txchardispval_double_reg[0] 
       (.C(userclk2),
        .CE(toggle_i_1_n_0),
        .D(txchardispval_reg),
        .Q(txchardispval_double[0]),
        .R(mgt_tx_reset));
  FDRE \txchardispval_double_reg[1] 
       (.C(userclk2),
        .CE(toggle_i_1_n_0),
        .D(D),
        .Q(txchardispval_double[1]),
        .R(mgt_tx_reset));
  FDRE \txchardispval_int_reg[0] 
       (.C(CLK),
        .CE(1'b1),
        .D(txchardispval_double[0]),
        .Q(txchardispval_int[0]),
        .R(1'b0));
  FDRE \txchardispval_int_reg[1] 
       (.C(CLK),
        .CE(1'b1),
        .D(txchardispval_double[1]),
        .Q(txchardispval_int[1]),
        .R(1'b0));
  FDRE txchardispval_reg_reg
       (.C(userclk2),
        .CE(1'b1),
        .D(D),
        .Q(txchardispval_reg),
        .R(mgt_tx_reset));
  FDRE \txcharisk_double_reg[0] 
       (.C(userclk2),
        .CE(toggle_i_1_n_0),
        .D(txcharisk_reg),
        .Q(txcharisk_double[0]),
        .R(mgt_tx_reset));
  FDRE \txcharisk_double_reg[1] 
       (.C(userclk2),
        .CE(toggle_i_1_n_0),
        .D(txcharisk_reg_reg_0),
        .Q(txcharisk_double[1]),
        .R(mgt_tx_reset));
  FDRE \txcharisk_int_reg[0] 
       (.C(CLK),
        .CE(1'b1),
        .D(txcharisk_double[0]),
        .Q(txcharisk_int[0]),
        .R(1'b0));
  FDRE \txcharisk_int_reg[1] 
       (.C(CLK),
        .CE(1'b1),
        .D(txcharisk_double[1]),
        .Q(txcharisk_int[1]),
        .R(1'b0));
  FDRE txcharisk_reg_reg
       (.C(userclk2),
        .CE(1'b1),
        .D(txcharisk_reg_reg_0),
        .Q(txcharisk_reg),
        .R(mgt_tx_reset));
  FDRE \txdata_double_reg[0] 
       (.C(userclk2),
        .CE(toggle_i_1_n_0),
        .D(txdata_reg[0]),
        .Q(txdata_double[0]),
        .R(mgt_tx_reset));
  FDRE \txdata_double_reg[10] 
       (.C(userclk2),
        .CE(toggle_i_1_n_0),
        .D(\txdata_reg_reg[7]_0 [2]),
        .Q(txdata_double[10]),
        .R(mgt_tx_reset));
  FDRE \txdata_double_reg[11] 
       (.C(userclk2),
        .CE(toggle_i_1_n_0),
        .D(\txdata_reg_reg[7]_0 [3]),
        .Q(txdata_double[11]),
        .R(mgt_tx_reset));
  FDRE \txdata_double_reg[12] 
       (.C(userclk2),
        .CE(toggle_i_1_n_0),
        .D(\txdata_reg_reg[7]_0 [4]),
        .Q(txdata_double[12]),
        .R(mgt_tx_reset));
  FDRE \txdata_double_reg[13] 
       (.C(userclk2),
        .CE(toggle_i_1_n_0),
        .D(\txdata_reg_reg[7]_0 [5]),
        .Q(txdata_double[13]),
        .R(mgt_tx_reset));
  FDRE \txdata_double_reg[14] 
       (.C(userclk2),
        .CE(toggle_i_1_n_0),
        .D(\txdata_reg_reg[7]_0 [6]),
        .Q(txdata_double[14]),
        .R(mgt_tx_reset));
  FDRE \txdata_double_reg[15] 
       (.C(userclk2),
        .CE(toggle_i_1_n_0),
        .D(\txdata_reg_reg[7]_0 [7]),
        .Q(txdata_double[15]),
        .R(mgt_tx_reset));
  FDRE \txdata_double_reg[1] 
       (.C(userclk2),
        .CE(toggle_i_1_n_0),
        .D(txdata_reg[1]),
        .Q(txdata_double[1]),
        .R(mgt_tx_reset));
  FDRE \txdata_double_reg[2] 
       (.C(userclk2),
        .CE(toggle_i_1_n_0),
        .D(txdata_reg[2]),
        .Q(txdata_double[2]),
        .R(mgt_tx_reset));
  FDRE \txdata_double_reg[3] 
       (.C(userclk2),
        .CE(toggle_i_1_n_0),
        .D(txdata_reg[3]),
        .Q(txdata_double[3]),
        .R(mgt_tx_reset));
  FDRE \txdata_double_reg[4] 
       (.C(userclk2),
        .CE(toggle_i_1_n_0),
        .D(txdata_reg[4]),
        .Q(txdata_double[4]),
        .R(mgt_tx_reset));
  FDRE \txdata_double_reg[5] 
       (.C(userclk2),
        .CE(toggle_i_1_n_0),
        .D(txdata_reg[5]),
        .Q(txdata_double[5]),
        .R(mgt_tx_reset));
  FDRE \txdata_double_reg[6] 
       (.C(userclk2),
        .CE(toggle_i_1_n_0),
        .D(txdata_reg[6]),
        .Q(txdata_double[6]),
        .R(mgt_tx_reset));
  FDRE \txdata_double_reg[7] 
       (.C(userclk2),
        .CE(toggle_i_1_n_0),
        .D(txdata_reg[7]),
        .Q(txdata_double[7]),
        .R(mgt_tx_reset));
  FDRE \txdata_double_reg[8] 
       (.C(userclk2),
        .CE(toggle_i_1_n_0),
        .D(\txdata_reg_reg[7]_0 [0]),
        .Q(txdata_double[8]),
        .R(mgt_tx_reset));
  FDRE \txdata_double_reg[9] 
       (.C(userclk2),
        .CE(toggle_i_1_n_0),
        .D(\txdata_reg_reg[7]_0 [1]),
        .Q(txdata_double[9]),
        .R(mgt_tx_reset));
  FDRE \txdata_int_reg[0] 
       (.C(CLK),
        .CE(1'b1),
        .D(txdata_double[0]),
        .Q(txdata_int[0]),
        .R(1'b0));
  FDRE \txdata_int_reg[10] 
       (.C(CLK),
        .CE(1'b1),
        .D(txdata_double[10]),
        .Q(txdata_int[10]),
        .R(1'b0));
  FDRE \txdata_int_reg[11] 
       (.C(CLK),
        .CE(1'b1),
        .D(txdata_double[11]),
        .Q(txdata_int[11]),
        .R(1'b0));
  FDRE \txdata_int_reg[12] 
       (.C(CLK),
        .CE(1'b1),
        .D(txdata_double[12]),
        .Q(txdata_int[12]),
        .R(1'b0));
  FDRE \txdata_int_reg[13] 
       (.C(CLK),
        .CE(1'b1),
        .D(txdata_double[13]),
        .Q(txdata_int[13]),
        .R(1'b0));
  FDRE \txdata_int_reg[14] 
       (.C(CLK),
        .CE(1'b1),
        .D(txdata_double[14]),
        .Q(txdata_int[14]),
        .R(1'b0));
  FDRE \txdata_int_reg[15] 
       (.C(CLK),
        .CE(1'b1),
        .D(txdata_double[15]),
        .Q(txdata_int[15]),
        .R(1'b0));
  FDRE \txdata_int_reg[1] 
       (.C(CLK),
        .CE(1'b1),
        .D(txdata_double[1]),
        .Q(txdata_int[1]),
        .R(1'b0));
  FDRE \txdata_int_reg[2] 
       (.C(CLK),
        .CE(1'b1),
        .D(txdata_double[2]),
        .Q(txdata_int[2]),
        .R(1'b0));
  FDRE \txdata_int_reg[3] 
       (.C(CLK),
        .CE(1'b1),
        .D(txdata_double[3]),
        .Q(txdata_int[3]),
        .R(1'b0));
  FDRE \txdata_int_reg[4] 
       (.C(CLK),
        .CE(1'b1),
        .D(txdata_double[4]),
        .Q(txdata_int[4]),
        .R(1'b0));
  FDRE \txdata_int_reg[5] 
       (.C(CLK),
        .CE(1'b1),
        .D(txdata_double[5]),
        .Q(txdata_int[5]),
        .R(1'b0));
  FDRE \txdata_int_reg[6] 
       (.C(CLK),
        .CE(1'b1),
        .D(txdata_double[6]),
        .Q(txdata_int[6]),
        .R(1'b0));
  FDRE \txdata_int_reg[7] 
       (.C(CLK),
        .CE(1'b1),
        .D(txdata_double[7]),
        .Q(txdata_int[7]),
        .R(1'b0));
  FDRE \txdata_int_reg[8] 
       (.C(CLK),
        .CE(1'b1),
        .D(txdata_double[8]),
        .Q(txdata_int[8]),
        .R(1'b0));
  FDRE \txdata_int_reg[9] 
       (.C(CLK),
        .CE(1'b1),
        .D(txdata_double[9]),
        .Q(txdata_int[9]),
        .R(1'b0));
  FDRE \txdata_reg_reg[0] 
       (.C(userclk2),
        .CE(1'b1),
        .D(\txdata_reg_reg[7]_0 [0]),
        .Q(txdata_reg[0]),
        .R(mgt_tx_reset));
  FDRE \txdata_reg_reg[1] 
       (.C(userclk2),
        .CE(1'b1),
        .D(\txdata_reg_reg[7]_0 [1]),
        .Q(txdata_reg[1]),
        .R(mgt_tx_reset));
  FDRE \txdata_reg_reg[2] 
       (.C(userclk2),
        .CE(1'b1),
        .D(\txdata_reg_reg[7]_0 [2]),
        .Q(txdata_reg[2]),
        .R(mgt_tx_reset));
  FDRE \txdata_reg_reg[3] 
       (.C(userclk2),
        .CE(1'b1),
        .D(\txdata_reg_reg[7]_0 [3]),
        .Q(txdata_reg[3]),
        .R(mgt_tx_reset));
  FDRE \txdata_reg_reg[4] 
       (.C(userclk2),
        .CE(1'b1),
        .D(\txdata_reg_reg[7]_0 [4]),
        .Q(txdata_reg[4]),
        .R(mgt_tx_reset));
  FDRE \txdata_reg_reg[5] 
       (.C(userclk2),
        .CE(1'b1),
        .D(\txdata_reg_reg[7]_0 [5]),
        .Q(txdata_reg[5]),
        .R(mgt_tx_reset));
  FDRE \txdata_reg_reg[6] 
       (.C(userclk2),
        .CE(1'b1),
        .D(\txdata_reg_reg[7]_0 [6]),
        .Q(txdata_reg[6]),
        .R(mgt_tx_reset));
  FDRE \txdata_reg_reg[7] 
       (.C(userclk2),
        .CE(1'b1),
        .D(\txdata_reg_reg[7]_0 [7]),
        .Q(txdata_reg[7]),
        .R(mgt_tx_reset));
  FDRE #(
    .INIT(1'b0)) 
    txpowerdown_double_reg
       (.C(userclk2),
        .CE(1'b1),
        .D(txpowerdown_reg__0),
        .Q(txpowerdown_double),
        .R(mgt_tx_reset));
  FDRE #(
    .INIT(1'b0)) 
    txpowerdown_reg
       (.C(CLK),
        .CE(1'b1),
        .D(txpowerdown_double),
        .Q(txpowerdown),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    txpowerdown_reg_reg
       (.C(userclk2),
        .CE(1'b1),
        .D(powerdown),
        .Q(txpowerdown_reg__0),
        .R(mgt_tx_reset));
endmodule
`pragma protect begin_protected
`pragma protect version = 1
`pragma protect encrypt_agent = "XILINX"
`pragma protect encrypt_agent_info = "Xilinx Encryption Tool 2022.1"
`pragma protect key_keyowner="Synopsys", key_keyname="SNPS-VCS-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
XL0vCpwJkpY29C2iE4LPlf/odeUNPw9BVX/J5pEuKj2Daef6TwO4W44ER/rohRxort+oJ1FEnjTl
dO9suKxGx6l5qoEu601AYmdQx5qtrjpt5ZGKiDiqJHQu0sNZj2OpRSMBF2+xpK6q1k0YwWEsL2yM
Dk14qp/TPBMp5RE5dog=

`pragma protect key_keyowner="Aldec", key_keyname="ALDEC15_001", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
Pk367+A7d85WWbWihXnmNhli57Ii8GCSlPvH8qHqwzR/ezoXFHJelkpzH2yVZqsPrfmk2NFaOsEs
M1axqfiNh0tU1KMP7/T8Z8SUUXEL8RHmFLGRFGDFU09+/htgWkyd52BTRgIK4xxqdNeHRvHuh9eO
Xoc91nJGkr5lyxxTROPFBa+JdoqRs9bDqyz3atfFQej6vJovFHG2okDG/vCx1XB1qvN+e1+epX31
2giRBGffUGfZdshykZtf0S0Kj1hobLe34cMhJaDdZ+jhjN6QiA9PF+Uhp/S/A8APv5yY2pLwZJi/
lx733RyXkWqUcnNtuuQXd+cbVvDu8Nkgy8Wrqg==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VELOCE-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
PSDriSbxCGy1IkAQGX1Dpf4e+G70LYZYfQvHhkTdWu3f8dIzce38bnZUYwJ3PFkbLPD9xdrPHXpc
YHffwh/sskJmoWdc3xCXegJzAt03leKM0XeW0QDeuMElufJyRoPGciV0ISzDtCccOegxRPMnXkzI
kE04JwwijsIe2HS3mWA=

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VERIF-SIM-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
mY+SycwdugcaAAgVirnNdFm8EBfn62CPaeo94BjJZ+vU9m28AxCSwDD3tD06N21maLpla50ThHcZ
2+106fXzJsWtL9Pz+RPRWduaY/aqQj9DI1lsK962ves+UJ55hZpmrK6XQ0LbTkTACnJ+rbn1XOr6
Sy6zYwJAJc8qnHmIgrQxv5S9PmPs3PD3w/KTPcknzXMtlxwEyfFFJv3qUPbJf4hQiKWId/2N0keC
yuxY3jIMroLsnWmLHYAHDH+KBlPKhm0T47WRfD7mAEUsdvMGdJJMQSAz7kZj14OUMXw4DFxp31LM
Mdw8lsakafIjy2kkFUJbghSGrmLhS9eejA4drA==

`pragma protect key_keyowner="Real Intent", key_keyname="RI-RSA-KEY-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
XD7l6Li/98UDd4ASpKYFRLL/Bm3DF1ctodfSWQQYkOkHw+iPJrP4dUeL4uxbw5cmd13HI9d/+bl7
flwuZn1ZsI8+fTLM3T0oYPyVEcleZHq0WhbH4/fAZVtG1KCzFHAkmPbLs7uv7CMumqjJdmtmn5+j
xPyobFsdk7JkDBGTpiw6sLLYNRajRDRO+TtCCooQg1oZ9mbnKEQn+ccjBbpltTTovGTXxvIys5QE
AyX9dO8uSwtGll4an6rSWFnl0uDG8mKULJjCoJCx5igXn5MfbZyoun9fmtC0oBi6/z70Bc7Ngf/X
BxC2PFv9du+wdtufsrRExX5CtLY6SrrVbYmgsg==

`pragma protect key_keyowner="Xilinx", key_keyname="xilinxt_2021_07", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
NnkpyUpgSR1m9dLBiJuJuOGCGzGq+qYsW2dFPuHEdelcqcyBjCfhAHOxsPTg47uYbXrmZKPQT9oB
mF2IFSybwtNxfbYFoozuT0BNJ/5tM80X+LXJbFfCwvgBsytlBfwh0uSzLrHE/8Rj8J7mLWry0qh3
iJAr2rFe8K6RVUpdeiifjliMaSreWEgvFSdo2esnYOcHcjY+Hu8svZHAEUWDKh73U70IF7FdFvqF
XO1yYXuXJRiceHuJPwpgh+dKsPDerxr30wA8JeIZXlrJf9HlT+0dlKVBCNqzJaYEpnPDQJz729Ff
Z07YHgx5oCRnxKUnnjT955+n0UO5Bm0CbNM98g==

`pragma protect key_keyowner="Metrics Technologies Inc.", key_keyname="DSim", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
C8Tp/eDRRCMOwHxdxcUmbuASA2jQT5JtPZgfJpftbLH97GxlWZMNcwUflF51EUdAwd7Ir0jGS4SN
cr6Uva26gsckiDjhmtq68IVcUBq8iifyFtfwFTkAYsSR9t4iFExJQmqmJhRj/kjacbUMGJYAC6zR
h3ljNiQdmkYQpOt5jaSWP95maYRqXft/7eCGmAeaT/hsFmBP3RQOCK0k9gUhLLR1PO5xnTyZjGQJ
VCk/JVMUOSmN3A3j8uruhVvih7YMqPc9iQBC+HtbR5h4rhfWuy61XFdNoAJHjYVA1tYMqW+AEV+Q
1VtSSnB2mmxlGlAt5Neajfvuyy7rlpFsJ45pjQ==

`pragma protect key_keyowner="Atrenta", key_keyname="ATR-SG-RSA-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=384)
`pragma protect key_block
xpgEYrMDyzTrppjK9pdbdERRVcGsOM1wehgNM05p7/GPYcE/Ldlf0NddSTOkeI7hjbtKJh5O+mOM
1DBGpPYqiLVAGGEkWOjemutvTwnFlOgFP/jBtscvT0xoJBauy19XM/qMu2zEdGpo+cTuJWzONd/i
3ghZO49KQIulbxfD2jQCC9rH6BOq1q57AbVoYFrWhtZyeWmQYWqoBBCoKhU0mW4HcQbiWcYymJHT
F7Wl3c/rvmZ19HaO7JHZa6PyhFnE8YeyhkUhNO5fcvZ7gFHlRumoJS365hjRroAoOu/CLJR/eLzy
ipT4tHFj/T7mhSJUeLz7A/6hK8fdFLzSZwEuZVstx+LDWxZ6pst0+57+uQ0enpOHMLlWG7IDZ9AV
vnJhH0UrMMbR196CYsdG3cIByN27DizesnW+jNkMQBaswtDLtVZnbdkXy8Zk9SXNXJvTwQegCw/a
5CAl8y//34XRWeFt4Wtkeso5A1iTLvpgBuH+GJMSKXA7KSxJoCnBU8Fi

`pragma protect key_keyowner="Cadence Design Systems.", key_keyname="CDS_RSA_KEY_VER_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
PtXIj+hfSzAR7L3qE+PnK05Exl2JklQ0WEvqE/2UzQ6NMKlYocvT6ipW6HQPMOEIcQZ0yLsnPM3H
AJTKwnCXBrDf9LrsG68+NcVRqGYlmQxBA+B/Wz13Is/n6cNLZF0gc3NyuJtBtL2Uxe3MwscxIw7q
kdbu2/O6Cyl0g687jBXJycalF9NXdTP1rxdkEcnqKylZS7CE4cy54owMRjqGSecZkwM9W6KM/LnC
gXlHpN84ld6K+TZYDQX69vk5C2jSfvikiyv+hOQBT9MYZBs7WpN6ZB7rzEIftz7mRrfVTftis8ny
vl11eoBQKss+QRJIL8eXborkKe8di5p1yilcPQ==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 149120)
`pragma protect data_block
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
gKk9ZzEPYfU=
`pragma protect end_protected
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;
    parameter GRES_WIDTH = 10000;
    parameter GRES_START = 10000;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    wire GRESTORE;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;
    reg GRESTORE_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;
    assign (strong1, weak0) GRESTORE = GRESTORE_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

    initial begin 
	GRESTORE_int = 1'b0;
	#(GRES_START);
	GRESTORE_int = 1'b1;
	#(GRES_WIDTH);
	GRESTORE_int = 1'b0;
    end

endmodule
`endif
