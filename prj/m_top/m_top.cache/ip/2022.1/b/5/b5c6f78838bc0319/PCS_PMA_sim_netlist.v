// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2022.1 (win64) Build 3526262 Mon Apr 18 15:48:16 MDT 2022
// Date        : Mon Jun 19 12:28:20 2023
// Host        : PCPHESE71 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ PCS_PMA_sim_netlist.v
// Design      : PCS_PMA
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xczu9eg-ffvb1156-2-e
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* EXAMPLE_SIMULATION = "0" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "gig_ethernet_pcs_pma_v16_2_8,Vivado 2022.1" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
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
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_PCS_PMA_support U0
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

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_PCS_PMA_block
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
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_gig_ethernet_pcs_pma_v16_2_8 PCS_PMA_core
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
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_PCS_PMA_sync_block sync_block_reset_done
       (.data_in(resetdone_i),
        .resetdone(resetdone),
        .userclk2(userclk2));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_PCS_PMA_transceiver transceiver_inst
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

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_PCS_PMA_clocking
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
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_PCS_PMA_gt
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
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_PCS_PMA_gt_gtwizard_top inst
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

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_PCS_PMA_gt_gthe4_channel_wrapper
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

  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_gtwizard_ultrascale_v1_7_13_gthe4_channel channel_inst
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

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_PCS_PMA_gt_gtwizard_gthe4
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

  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_PCS_PMA_gt_gthe4_channel_wrapper \gen_gtwizard_gthe4.gen_channel_container[27].gen_enabled_channel.gthe4_channel_wrapper_inst 
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
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_gtwizard_ultrascale_v1_7_13_gthe4_cpll_cal \gen_gtwizard_gthe4.gen_cpll_cal_gthe4.gen_cpll_cal_inst[0].gen_inst_cpll_cal.gtwizard_ultrascale_v1_7_13_gthe4_cpll_cal_inst 
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
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_gtwizard_ultrascale_v1_7_13_gthe4_delay_powergood \gen_gtwizard_gthe4.gen_pwrgood_delay_inst[0].delay_powergood_inst 
       (.RXPD(\gen_gtwizard_gthe4.gen_pwrgood_delay_inst[0].delay_powergood_inst_n_1 ),
        .RXRATE(\gen_gtwizard_gthe4.rxratemode_ch_int ),
        .\gen_powergood_delay.intclk_rrst_n_r_reg[4]_0 (\gen_gtwizard_gthe4.gen_channel_container[27].gen_enabled_channel.gthe4_channel_wrapper_inst_n_57 ),
        .out(gtpowergood_out),
        .rxoutclkpcs_out(\gen_gtwizard_gthe4.gen_channel_container[27].gen_enabled_channel.gthe4_channel_wrapper_inst_n_7 ),
        .rxpd_in(rxpd_in));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_gtwizard_ultrascale_v1_7_13_bit_synchronizer \gen_gtwizard_gthe4.gen_reset_controller_internal.gen_single_instance.gen_ch_xrd[0].bit_synchronizer_rxresetdone_inst 
       (.drpclk_in(drpclk_in),
        .\gen_gtwizard_gthe4.gen_reset_controller_internal.gen_single_instance.rxresetdone_sync (\gen_gtwizard_gthe4.gen_reset_controller_internal.gen_single_instance.rxresetdone_sync ),
        .rxresetdone_out(\gen_gtwizard_gthe4.gen_channel_container[27].gen_enabled_channel.gthe4_channel_wrapper_inst_n_9 ));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_gtwizard_ultrascale_v1_7_13_bit_synchronizer_0 \gen_gtwizard_gthe4.gen_reset_controller_internal.gen_single_instance.gen_ch_xrd[0].bit_synchronizer_txresetdone_inst 
       (.drpclk_in(drpclk_in),
        .\gen_gtwizard_gthe4.gen_reset_controller_internal.gen_single_instance.txresetdone_sync (\gen_gtwizard_gthe4.gen_reset_controller_internal.gen_single_instance.txresetdone_sync ),
        .txresetdone_out(\gen_gtwizard_gthe4.gen_channel_container[27].gen_enabled_channel.gthe4_channel_wrapper_inst_n_12 ));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_gtwizard_ultrascale_v1_7_13_gtwiz_reset \gen_gtwizard_gthe4.gen_reset_controller_internal.gen_single_instance.gtwiz_reset_inst 
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
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_PCS_PMA_gt_gtwizard_top
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
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_PCS_PMA_gt_gtwizard_gthe4 \gen_gtwizard_gthe4_top.PCS_PMA_gt_gtwizard_gthe4_inst 
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

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_PCS_PMA_reset_sync
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

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_PCS_PMA_resets
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
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_PCS_PMA_support
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
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_PCS_PMA_clocking core_clocking_i
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
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_PCS_PMA_resets core_resets_i
       (.independent_clock_bufg(independent_clock_bufg),
        .pma_reset_out(pma_reset_out),
        .reset(reset));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_PCS_PMA_block pcs_pma_block_i
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

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_PCS_PMA_sync_block
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

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_PCS_PMA_transceiver
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
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_PCS_PMA_gt PCS_PMA_gt_i
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
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_PCS_PMA_reset_sync reclock_encommaalign
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

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_gtwizard_ultrascale_v1_7_13_bit_synchronizer
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
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_gtwizard_ultrascale_v1_7_13_bit_synchronizer_0
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
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_gtwizard_ultrascale_v1_7_13_bit_synchronizer_1
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
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_gtwizard_ultrascale_v1_7_13_bit_synchronizer_10
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
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_gtwizard_ultrascale_v1_7_13_bit_synchronizer_19
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
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_gtwizard_ultrascale_v1_7_13_bit_synchronizer_2
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
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_gtwizard_ultrascale_v1_7_13_bit_synchronizer_22
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
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_gtwizard_ultrascale_v1_7_13_bit_synchronizer_23
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
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_gtwizard_ultrascale_v1_7_13_bit_synchronizer_24
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
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_gtwizard_ultrascale_v1_7_13_bit_synchronizer_25
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
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_gtwizard_ultrascale_v1_7_13_bit_synchronizer_26
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
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_gtwizard_ultrascale_v1_7_13_bit_synchronizer_27
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
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_gtwizard_ultrascale_v1_7_13_bit_synchronizer_3
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
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_gtwizard_ultrascale_v1_7_13_bit_synchronizer_4
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
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_gtwizard_ultrascale_v1_7_13_bit_synchronizer_5
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
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_gtwizard_ultrascale_v1_7_13_bit_synchronizer_6
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
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_gtwizard_ultrascale_v1_7_13_bit_synchronizer_7
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
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_gtwizard_ultrascale_v1_7_13_bit_synchronizer_8
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
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_gtwizard_ultrascale_v1_7_13_bit_synchronizer_9
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

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_gtwizard_ultrascale_v1_7_13_gte4_drp_arb
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

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_gtwizard_ultrascale_v1_7_13_gthe4_channel
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

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_gtwizard_ultrascale_v1_7_13_gthe4_cpll_cal
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

  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_gtwizard_ultrascale_v1_7_13_bit_synchronizer_19 bit_synchronizer_drprst_inst
       (.drpclk_in(drpclk_in),
        .drprst_in_sync(drprst_in_sync));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_gtwizard_ultrascale_v1_7_13_gte4_drp_arb gtwizard_ultrascale_v1_7_13_gte4_drp_arb_i
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
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_gtwizard_ultrascale_v1_7_13_gthe4_cpll_cal_tx gtwizard_ultrascale_v1_7_13_gthe4_cpll_cal_tx_i
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
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_gtwizard_ultrascale_v1_7_13_reset_synchronizer_20 reset_synchronizer_resetin_rx_inst
       (.drpclk_in(drpclk_in));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_gtwizard_ultrascale_v1_7_13_reset_synchronizer_21 reset_synchronizer_resetin_tx_inst
       (.RESET_IN(RESET_IN),
        .cal_on_tx_reset_in_sync(cal_on_tx_reset_in_sync),
        .drpclk_in(drpclk_in));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_gtwizard_ultrascale_v1_7_13_gthe4_cpll_cal_freq_counter
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
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_gtwizard_ultrascale_v1_7_13_reset_synchronizer_28 reset_synchronizer_testclk_rst_inst
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

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_gtwizard_ultrascale_v1_7_13_gthe4_cpll_cal_tx
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
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_gtwizard_ultrascale_v1_7_13_gthe4_cpll_cal_freq_counter U_TXOUTCLK_FREQ_COUNTER
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
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_gtwizard_ultrascale_v1_7_13_bit_synchronizer_22 bit_synchronizer_cplllock_inst
       (.Q({\cpll_cal_state_reg_n_0_[30] ,\cpll_cal_state_reg_n_0_[0] }),
        .USER_CPLLLOCK_OUT_reg(mask_user_in_reg_n_0),
        .cal_on_tx_reset_in_sync(cal_on_tx_reset_in_sync),
        .\cpll_cal_state_reg[0] (bit_synchronizer_cplllock_inst_n_1),
        .drpclk_in(drpclk_in),
        .i_in_out_reg_0(bit_synchronizer_cplllock_inst_n_0),
        .in0(in0));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_gtwizard_ultrascale_v1_7_13_bit_synchronizer_23 bit_synchronizer_txoutclksel_inst0
       (.D(bit_synchronizer_txoutclksel_inst0_n_0),
        .drpclk_in(drpclk_in),
        .\non_pcie_txoutclksel.GTHE4_TXOUTCLKSEL_OUT_reg[0] (mask_user_in_reg_n_0),
        .txoutclksel_int(txoutclksel_int));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_gtwizard_ultrascale_v1_7_13_bit_synchronizer_24 bit_synchronizer_txoutclksel_inst1
       (.D(bit_synchronizer_txoutclksel_inst1_n_0),
        .drpclk_in(drpclk_in),
        .\non_pcie_txoutclksel.GTHE4_TXOUTCLKSEL_OUT_reg[1] (mask_user_in_reg_n_0));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_gtwizard_ultrascale_v1_7_13_bit_synchronizer_25 bit_synchronizer_txoutclksel_inst2
       (.D(bit_synchronizer_txoutclksel_inst2_n_0),
        .drpclk_in(drpclk_in),
        .\non_pcie_txoutclksel.GTHE4_TXOUTCLKSEL_OUT_reg[2] (mask_user_in_reg_n_0),
        .txoutclksel_int(txoutclksel_int));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_gtwizard_ultrascale_v1_7_13_bit_synchronizer_26 bit_synchronizer_txprgdivresetdone_inst
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
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_gtwizard_ultrascale_v1_7_13_bit_synchronizer_27 bit_synchronizer_txprogdivreset_inst
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

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_gtwizard_ultrascale_v1_7_13_gthe4_delay_powergood
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

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_gtwizard_ultrascale_v1_7_13_gtwiz_reset
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
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_gtwizard_ultrascale_v1_7_13_bit_synchronizer_1 bit_synchronizer_gtpowergood_inst
       (.E(bit_synchronizer_gtpowergood_inst_n_0),
        .\FSM_sequential_sm_reset_all_reg[0] (\FSM_sequential_sm_reset_all[2]_i_3_n_0 ),
        .\FSM_sequential_sm_reset_all_reg[0]_0 (\FSM_sequential_sm_reset_all[2]_i_4_n_0 ),
        .Q(sm_reset_all),
        .drpclk_in(drpclk_in),
        .gtpowergood_out(gtpowergood_out));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_gtwizard_ultrascale_v1_7_13_bit_synchronizer_2 bit_synchronizer_gtwiz_reset_rx_datapath_dly_inst
       (.drpclk_in(drpclk_in),
        .gtwiz_reset_rx_datapath_dly(gtwiz_reset_rx_datapath_dly),
        .in0(gtwiz_reset_rx_datapath_sync));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_gtwizard_ultrascale_v1_7_13_bit_synchronizer_3 bit_synchronizer_gtwiz_reset_rx_pll_and_datapath_dly_inst
       (.D(sm_reset_rx__0),
        .\FSM_sequential_sm_reset_rx[2]_i_3 (sm_reset_rx_pll_timer_clr_reg_n_0),
        .Q(sm_reset_rx),
        .drpclk_in(drpclk_in),
        .gtwiz_reset_rx_datapath_dly(gtwiz_reset_rx_datapath_dly),
        .in0(gtwiz_reset_rx_pll_and_datapath_sync),
        .p_0_in11_out__0(p_0_in11_out__0),
        .sm_reset_rx_pll_timer_sat(sm_reset_rx_pll_timer_sat),
        .sm_reset_rx_pll_timer_sat_reg(bit_synchronizer_gtwiz_reset_rx_pll_and_datapath_dly_inst_n_2));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_gtwizard_ultrascale_v1_7_13_bit_synchronizer_4 bit_synchronizer_gtwiz_reset_tx_datapath_dly_inst
       (.drpclk_in(drpclk_in),
        .gtwiz_reset_tx_datapath_dly(gtwiz_reset_tx_datapath_dly),
        .in0(gtwiz_reset_tx_datapath_sync));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_gtwizard_ultrascale_v1_7_13_bit_synchronizer_5 bit_synchronizer_gtwiz_reset_tx_pll_and_datapath_dly_inst
       (.D(sm_reset_tx__0[1:0]),
        .\FSM_sequential_sm_reset_tx[2]_i_3 (sm_reset_tx_pll_timer_clr_reg_n_0),
        .Q(sm_reset_tx),
        .drpclk_in(drpclk_in),
        .gtwiz_reset_tx_datapath_dly(gtwiz_reset_tx_datapath_dly),
        .in0(gtwiz_reset_tx_pll_and_datapath_sync),
        .sm_reset_tx_pll_timer_sat(sm_reset_tx_pll_timer_sat),
        .sm_reset_tx_pll_timer_sat_reg(bit_synchronizer_gtwiz_reset_tx_pll_and_datapath_dly_inst_n_0));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_gtwizard_ultrascale_v1_7_13_bit_synchronizer_6 bit_synchronizer_gtwiz_reset_userclk_rx_active_inst
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
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_gtwizard_ultrascale_v1_7_13_bit_synchronizer_7 bit_synchronizer_gtwiz_reset_userclk_tx_active_inst
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
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_gtwizard_ultrascale_v1_7_13_bit_synchronizer_8 bit_synchronizer_plllock_rx_inst
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
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_gtwizard_ultrascale_v1_7_13_bit_synchronizer_9 bit_synchronizer_plllock_tx_inst
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
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_gtwizard_ultrascale_v1_7_13_bit_synchronizer_10 bit_synchronizer_rxcdrlock_inst
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
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_gtwizard_ultrascale_v1_7_13_reset_synchronizer reset_synchronizer_gtwiz_reset_all_inst
       (.drpclk_in(drpclk_in),
        .gtwiz_reset_all_in(gtwiz_reset_all_in),
        .gtwiz_reset_all_sync(gtwiz_reset_all_sync));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_gtwizard_ultrascale_v1_7_13_reset_synchronizer_11 reset_synchronizer_gtwiz_reset_rx_any_inst
       (.\FSM_sequential_sm_reset_rx_reg[1] (reset_synchronizer_gtwiz_reset_rx_any_inst_n_1),
        .Q(sm_reset_rx),
        .drpclk_in(drpclk_in),
        .\gen_gtwizard_gthe4.gen_reset_controller_internal.gen_single_instance.gtwiz_reset_pllreset_rx_int (\gen_gtwizard_gthe4.gen_reset_controller_internal.gen_single_instance.gtwiz_reset_pllreset_rx_int ),
        .gtwiz_reset_rx_any_sync(gtwiz_reset_rx_any_sync),
        .gtwiz_reset_rx_datapath_in(gtwiz_reset_rx_datapath_in),
        .rst_in_out_reg_0(gtwiz_reset_rx_datapath_int_reg_n_0),
        .rst_in_out_reg_1(gtwiz_reset_rx_pll_and_datapath_int_reg_n_0));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_gtwizard_ultrascale_v1_7_13_reset_synchronizer_12 reset_synchronizer_gtwiz_reset_rx_datapath_inst
       (.drpclk_in(drpclk_in),
        .gtwiz_reset_rx_datapath_in(gtwiz_reset_rx_datapath_in),
        .in0(gtwiz_reset_rx_datapath_sync),
        .rst_in_out_reg_0(gtwiz_reset_rx_datapath_int_reg_n_0));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_gtwizard_ultrascale_v1_7_13_reset_synchronizer_13 reset_synchronizer_gtwiz_reset_rx_pll_and_datapath_inst
       (.drpclk_in(drpclk_in),
        .in0(gtwiz_reset_rx_pll_and_datapath_sync),
        .rst_in_meta_reg_0(gtwiz_reset_rx_pll_and_datapath_int_reg_n_0));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_gtwizard_ultrascale_v1_7_13_reset_synchronizer_14 reset_synchronizer_gtwiz_reset_tx_any_inst
       (.\FSM_sequential_sm_reset_tx_reg[1] (reset_synchronizer_gtwiz_reset_tx_any_inst_n_1),
        .Q(sm_reset_tx),
        .drpclk_in(drpclk_in),
        .\gen_gtwizard_gthe4.gen_reset_controller_internal.gen_single_instance.gtwiz_reset_pllreset_tx_int (\gen_gtwizard_gthe4.gen_reset_controller_internal.gen_single_instance.gtwiz_reset_pllreset_tx_int ),
        .gtwiz_reset_tx_any_sync(gtwiz_reset_tx_any_sync),
        .gtwiz_reset_tx_datapath_in(gtwiz_reset_tx_datapath_in),
        .rst_in_out_reg_0(gtwiz_reset_tx_pll_and_datapath_int_reg_n_0));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_gtwizard_ultrascale_v1_7_13_reset_synchronizer_15 reset_synchronizer_gtwiz_reset_tx_datapath_inst
       (.drpclk_in(drpclk_in),
        .gtwiz_reset_tx_datapath_in(gtwiz_reset_tx_datapath_in),
        .in0(gtwiz_reset_tx_datapath_sync));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_gtwizard_ultrascale_v1_7_13_reset_synchronizer_16 reset_synchronizer_gtwiz_reset_tx_pll_and_datapath_inst
       (.drpclk_in(drpclk_in),
        .in0(gtwiz_reset_tx_pll_and_datapath_sync),
        .rst_in_meta_reg_0(gtwiz_reset_tx_pll_and_datapath_int_reg_n_0));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_gtwizard_ultrascale_v1_7_13_reset_inv_synchronizer reset_synchronizer_rx_done_inst
       (.gtwiz_reset_rx_done_out(gtwiz_reset_rx_done_out),
        .rst_in_sync2_reg_0(gtwiz_reset_rx_done_int_reg_n_0),
        .rxusrclk_in(rxusrclk_in));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_gtwizard_ultrascale_v1_7_13_reset_inv_synchronizer_17 reset_synchronizer_tx_done_inst
       (.gtwiz_reset_tx_done_out(gtwiz_reset_tx_done_out),
        .rst_in_sync2_reg_0(gtwiz_reset_tx_done_int_reg_n_0),
        .rxusrclk_in(rxusrclk_in));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_gtwizard_ultrascale_v1_7_13_reset_synchronizer_18 reset_synchronizer_txprogdivreset_inst
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

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_gtwizard_ultrascale_v1_7_13_reset_inv_synchronizer
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
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_gtwizard_ultrascale_v1_7_13_reset_inv_synchronizer_17
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

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_gtwizard_ultrascale_v1_7_13_reset_synchronizer
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
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_gtwizard_ultrascale_v1_7_13_reset_synchronizer_11
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
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_gtwizard_ultrascale_v1_7_13_reset_synchronizer_12
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
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_gtwizard_ultrascale_v1_7_13_reset_synchronizer_13
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
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_gtwizard_ultrascale_v1_7_13_reset_synchronizer_14
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
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_gtwizard_ultrascale_v1_7_13_reset_synchronizer_15
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
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_gtwizard_ultrascale_v1_7_13_reset_synchronizer_16
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
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_gtwizard_ultrascale_v1_7_13_reset_synchronizer_18
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
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_gtwizard_ultrascale_v1_7_13_reset_synchronizer_20
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
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_gtwizard_ultrascale_v1_7_13_reset_synchronizer_21
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
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_gtwizard_ultrascale_v1_7_13_reset_synchronizer_28
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
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 149488)
`pragma protect data_block
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
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
