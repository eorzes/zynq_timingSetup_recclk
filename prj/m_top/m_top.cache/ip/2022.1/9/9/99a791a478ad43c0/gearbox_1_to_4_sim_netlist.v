// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2022.1 (win64) Build 3526262 Mon Apr 18 15:48:16 MDT 2022
// Date        : Mon Jun 19 12:27:39 2023
// Host        : PCPHESE71 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ gearbox_1_to_4_sim_netlist.v
// Design      : gearbox_1_to_4
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xczu9eg-ffvb1156-2-e
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* C_AXIS_SIGNAL_SET = "19" *) (* C_AXIS_TDEST_WIDTH = "1" *) (* C_AXIS_TID_WIDTH = "1" *) 
(* C_FAMILY = "zynquplus" *) (* C_M_AXIS_TDATA_WIDTH = "32" *) (* C_M_AXIS_TUSER_WIDTH = "1" *) 
(* C_S_AXIS_TDATA_WIDTH = "8" *) (* C_S_AXIS_TUSER_WIDTH = "1" *) (* DowngradeIPIdentifiedWarnings = "yes" *) 
(* G_INDX_SS_TDATA = "1" *) (* G_INDX_SS_TDEST = "6" *) (* G_INDX_SS_TID = "5" *) 
(* G_INDX_SS_TKEEP = "3" *) (* G_INDX_SS_TLAST = "4" *) (* G_INDX_SS_TREADY = "0" *) 
(* G_INDX_SS_TSTRB = "2" *) (* G_INDX_SS_TUSER = "7" *) (* G_MASK_SS_TDATA = "2" *) 
(* G_MASK_SS_TDEST = "64" *) (* G_MASK_SS_TID = "32" *) (* G_MASK_SS_TKEEP = "8" *) 
(* G_MASK_SS_TLAST = "16" *) (* G_MASK_SS_TREADY = "1" *) (* G_MASK_SS_TSTRB = "4" *) 
(* G_MASK_SS_TUSER = "128" *) (* G_TASK_SEVERITY_ERR = "2" *) (* G_TASK_SEVERITY_INFO = "0" *) 
(* G_TASK_SEVERITY_WARNING = "1" *) (* P_AXIS_SIGNAL_SET = "32'b00000000000000000000000000011011" *) (* P_D1_REG_CONFIG = "0" *) 
(* P_D1_TUSER_WIDTH = "1" *) (* P_D2_TDATA_WIDTH = "32" *) (* P_D2_TUSER_WIDTH = "4" *) 
(* P_D3_REG_CONFIG = "0" *) (* P_D3_TUSER_WIDTH = "4" *) (* P_M_RATIO = "1" *) 
(* P_SS_TKEEP_REQUIRED = "8" *) (* P_S_RATIO = "4" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axis_dwidth_converter_v1_1_25_axis_dwidth_converter
   (aclk,
    aresetn,
    aclken,
    s_axis_tvalid,
    s_axis_tready,
    s_axis_tdata,
    s_axis_tstrb,
    s_axis_tkeep,
    s_axis_tlast,
    s_axis_tid,
    s_axis_tdest,
    s_axis_tuser,
    m_axis_tvalid,
    m_axis_tready,
    m_axis_tdata,
    m_axis_tstrb,
    m_axis_tkeep,
    m_axis_tlast,
    m_axis_tid,
    m_axis_tdest,
    m_axis_tuser);
  input aclk;
  input aresetn;
  input aclken;
  input s_axis_tvalid;
  output s_axis_tready;
  input [7:0]s_axis_tdata;
  input [0:0]s_axis_tstrb;
  input [0:0]s_axis_tkeep;
  input s_axis_tlast;
  input [0:0]s_axis_tid;
  input [0:0]s_axis_tdest;
  input [0:0]s_axis_tuser;
  output m_axis_tvalid;
  input m_axis_tready;
  output [31:0]m_axis_tdata;
  output [3:0]m_axis_tstrb;
  output [3:0]m_axis_tkeep;
  output m_axis_tlast;
  output [0:0]m_axis_tid;
  output [0:0]m_axis_tdest;
  output [0:0]m_axis_tuser;

  wire \<const0> ;
  wire aclk;
  wire areset_r;
  wire aresetn;
  wire [31:0]m_axis_tdata;
  wire [3:1]\^m_axis_tkeep ;
  wire m_axis_tlast;
  wire m_axis_tready;
  wire m_axis_tvalid;
  wire p_0_in;
  wire [7:0]s_axis_tdata;
  wire s_axis_tlast;
  wire s_axis_tready;
  wire s_axis_tvalid;

  assign m_axis_tdest[0] = \<const0> ;
  assign m_axis_tid[0] = \<const0> ;
  assign m_axis_tkeep[3:1] = \^m_axis_tkeep [3:1];
  assign m_axis_tkeep[0] = \<const0> ;
  assign m_axis_tstrb[3] = \<const0> ;
  assign m_axis_tstrb[2] = \<const0> ;
  assign m_axis_tstrb[1] = \<const0> ;
  assign m_axis_tstrb[0] = \<const0> ;
  assign m_axis_tuser[0] = \<const0> ;
  GND GND
       (.G(\<const0> ));
  LUT1 #(
    .INIT(2'h1)) 
    areset_r_i_1
       (.I0(aresetn),
        .O(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    areset_r_reg
       (.C(aclk),
        .CE(1'b1),
        .D(p_0_in),
        .Q(areset_r),
        .R(1'b0));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axis_dwidth_converter_v1_1_25_axisc_upsizer \gen_upsizer_conversion.axisc_upsizer_0 
       (.aclk(aclk),
        .areset_r(areset_r),
        .m_axis_tdata(m_axis_tdata),
        .m_axis_tkeep(\^m_axis_tkeep ),
        .m_axis_tlast(m_axis_tlast),
        .m_axis_tready(m_axis_tready),
        .s_axis_tdata(s_axis_tdata),
        .s_axis_tlast(s_axis_tlast),
        .s_axis_tvalid(s_axis_tvalid),
        .\state_reg[0]_0 (s_axis_tready),
        .\state_reg[1]_0 (m_axis_tvalid));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axis_dwidth_converter_v1_1_25_axisc_upsizer
   (\state_reg[0]_0 ,
    m_axis_tkeep,
    m_axis_tlast,
    \state_reg[1]_0 ,
    m_axis_tdata,
    s_axis_tlast,
    aclk,
    areset_r,
    m_axis_tready,
    s_axis_tdata,
    s_axis_tvalid);
  output \state_reg[0]_0 ;
  output [2:0]m_axis_tkeep;
  output m_axis_tlast;
  output \state_reg[1]_0 ;
  output [31:0]m_axis_tdata;
  input s_axis_tlast;
  input aclk;
  input areset_r;
  input m_axis_tready;
  input [7:0]s_axis_tdata;
  input s_axis_tvalid;

  wire acc_data0;
  wire \acc_keep[3]_i_1_n_0 ;
  wire acc_last_i_1_n_0;
  wire aclk;
  wire areset_r;
  wire \gen_data_accumulator[1].acc_keep[1]_i_1_n_0 ;
  wire \gen_data_accumulator[2].acc_keep[2]_i_1_n_0 ;
  wire [31:0]m_axis_tdata;
  wire [2:0]m_axis_tkeep;
  wire m_axis_tlast;
  wire m_axis_tready;
  wire p_0_in;
  wire p_0_in4_in;
  wire p_0_in6_in;
  wire p_1_in2_in;
  wire [7:0]r0_data;
  wire r0_last;
  wire \r0_reg_sel[0]_i_1_n_0 ;
  wire \r0_reg_sel[3]_i_1_n_0 ;
  wire \r0_reg_sel[3]_i_2_n_0 ;
  wire \r0_reg_sel_reg_n_0_[0] ;
  wire \r0_reg_sel_reg_n_0_[1] ;
  wire \r0_reg_sel_reg_n_0_[2] ;
  wire [7:0]s_axis_tdata;
  wire s_axis_tlast;
  wire s_axis_tvalid;
  wire [2:0]state;
  wire \state[1]_i_2_n_0 ;
  wire \state[1]_i_3_n_0 ;
  wire \state[2]_i_2_n_0 ;
  wire \state[2]_i_3_n_0 ;
  wire \state_reg[0]_0 ;
  wire \state_reg[1]_0 ;
  wire \state_reg_n_0_[2] ;

  LUT2 #(
    .INIT(4'h2)) 
    \acc_data[31]_i_1 
       (.I0(\state_reg[0]_0 ),
        .I1(\state_reg[1]_0 ),
        .O(acc_data0));
  LUT4 #(
    .INIT(16'h0800)) 
    \acc_data[7]_i_1 
       (.I0(\r0_reg_sel_reg_n_0_[0] ),
        .I1(\state_reg[0]_0 ),
        .I2(\state_reg[1]_0 ),
        .I3(\state_reg_n_0_[2] ),
        .O(p_0_in));
  FDRE \acc_data_reg[0] 
       (.C(aclk),
        .CE(p_0_in),
        .D(r0_data[0]),
        .Q(m_axis_tdata[0]),
        .R(1'b0));
  FDRE \acc_data_reg[1] 
       (.C(aclk),
        .CE(p_0_in),
        .D(r0_data[1]),
        .Q(m_axis_tdata[1]),
        .R(1'b0));
  FDRE \acc_data_reg[24] 
       (.C(aclk),
        .CE(acc_data0),
        .D(s_axis_tdata[0]),
        .Q(m_axis_tdata[24]),
        .R(1'b0));
  FDRE \acc_data_reg[25] 
       (.C(aclk),
        .CE(acc_data0),
        .D(s_axis_tdata[1]),
        .Q(m_axis_tdata[25]),
        .R(1'b0));
  FDRE \acc_data_reg[26] 
       (.C(aclk),
        .CE(acc_data0),
        .D(s_axis_tdata[2]),
        .Q(m_axis_tdata[26]),
        .R(1'b0));
  FDRE \acc_data_reg[27] 
       (.C(aclk),
        .CE(acc_data0),
        .D(s_axis_tdata[3]),
        .Q(m_axis_tdata[27]),
        .R(1'b0));
  FDRE \acc_data_reg[28] 
       (.C(aclk),
        .CE(acc_data0),
        .D(s_axis_tdata[4]),
        .Q(m_axis_tdata[28]),
        .R(1'b0));
  FDRE \acc_data_reg[29] 
       (.C(aclk),
        .CE(acc_data0),
        .D(s_axis_tdata[5]),
        .Q(m_axis_tdata[29]),
        .R(1'b0));
  FDRE \acc_data_reg[2] 
       (.C(aclk),
        .CE(p_0_in),
        .D(r0_data[2]),
        .Q(m_axis_tdata[2]),
        .R(1'b0));
  FDRE \acc_data_reg[30] 
       (.C(aclk),
        .CE(acc_data0),
        .D(s_axis_tdata[6]),
        .Q(m_axis_tdata[30]),
        .R(1'b0));
  FDRE \acc_data_reg[31] 
       (.C(aclk),
        .CE(acc_data0),
        .D(s_axis_tdata[7]),
        .Q(m_axis_tdata[31]),
        .R(1'b0));
  FDRE \acc_data_reg[3] 
       (.C(aclk),
        .CE(p_0_in),
        .D(r0_data[3]),
        .Q(m_axis_tdata[3]),
        .R(1'b0));
  FDRE \acc_data_reg[4] 
       (.C(aclk),
        .CE(p_0_in),
        .D(r0_data[4]),
        .Q(m_axis_tdata[4]),
        .R(1'b0));
  FDRE \acc_data_reg[5] 
       (.C(aclk),
        .CE(p_0_in),
        .D(r0_data[5]),
        .Q(m_axis_tdata[5]),
        .R(1'b0));
  FDRE \acc_data_reg[6] 
       (.C(aclk),
        .CE(p_0_in),
        .D(r0_data[6]),
        .Q(m_axis_tdata[6]),
        .R(1'b0));
  FDRE \acc_data_reg[7] 
       (.C(aclk),
        .CE(p_0_in),
        .D(r0_data[7]),
        .Q(m_axis_tdata[7]),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hFF1FFFFF001F0000)) 
    \acc_keep[3]_i_1 
       (.I0(r0_last),
        .I1(\r0_reg_sel_reg_n_0_[0] ),
        .I2(\state_reg_n_0_[2] ),
        .I3(\state_reg[1]_0 ),
        .I4(\state_reg[0]_0 ),
        .I5(m_axis_tkeep[2]),
        .O(\acc_keep[3]_i_1_n_0 ));
  FDRE \acc_keep_reg[3] 
       (.C(aclk),
        .CE(1'b1),
        .D(\acc_keep[3]_i_1_n_0 ),
        .Q(m_axis_tkeep[2]),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hFF0FFF80F000FF80)) 
    acc_last_i_1
       (.I0(r0_last),
        .I1(\state_reg[0]_0 ),
        .I2(\state_reg_n_0_[2] ),
        .I3(s_axis_tlast),
        .I4(\state_reg[1]_0 ),
        .I5(m_axis_tlast),
        .O(acc_last_i_1_n_0));
  FDRE acc_last_reg
       (.C(aclk),
        .CE(1'b1),
        .D(acc_last_i_1_n_0),
        .Q(m_axis_tlast),
        .R(1'b0));
  LUT4 #(
    .INIT(16'h0800)) 
    \gen_data_accumulator[1].acc_data[15]_i_1 
       (.I0(\state_reg_n_0_[2] ),
        .I1(\state_reg[0]_0 ),
        .I2(\state_reg[1]_0 ),
        .I3(\r0_reg_sel_reg_n_0_[1] ),
        .O(p_0_in6_in));
  FDRE \gen_data_accumulator[1].acc_data_reg[10] 
       (.C(aclk),
        .CE(p_0_in6_in),
        .D(r0_data[2]),
        .Q(m_axis_tdata[10]),
        .R(1'b0));
  FDRE \gen_data_accumulator[1].acc_data_reg[11] 
       (.C(aclk),
        .CE(p_0_in6_in),
        .D(r0_data[3]),
        .Q(m_axis_tdata[11]),
        .R(1'b0));
  FDRE \gen_data_accumulator[1].acc_data_reg[12] 
       (.C(aclk),
        .CE(p_0_in6_in),
        .D(r0_data[4]),
        .Q(m_axis_tdata[12]),
        .R(1'b0));
  FDRE \gen_data_accumulator[1].acc_data_reg[13] 
       (.C(aclk),
        .CE(p_0_in6_in),
        .D(r0_data[5]),
        .Q(m_axis_tdata[13]),
        .R(1'b0));
  FDRE \gen_data_accumulator[1].acc_data_reg[14] 
       (.C(aclk),
        .CE(p_0_in6_in),
        .D(r0_data[6]),
        .Q(m_axis_tdata[14]),
        .R(1'b0));
  FDRE \gen_data_accumulator[1].acc_data_reg[15] 
       (.C(aclk),
        .CE(p_0_in6_in),
        .D(r0_data[7]),
        .Q(m_axis_tdata[15]),
        .R(1'b0));
  FDRE \gen_data_accumulator[1].acc_data_reg[8] 
       (.C(aclk),
        .CE(p_0_in6_in),
        .D(r0_data[0]),
        .Q(m_axis_tdata[8]),
        .R(1'b0));
  FDRE \gen_data_accumulator[1].acc_data_reg[9] 
       (.C(aclk),
        .CE(p_0_in6_in),
        .D(r0_data[1]),
        .Q(m_axis_tdata[9]),
        .R(1'b0));
  LUT5 #(
    .INIT(32'hFFFF2000)) 
    \gen_data_accumulator[1].acc_keep[1]_i_1 
       (.I0(\r0_reg_sel_reg_n_0_[1] ),
        .I1(\state_reg[1]_0 ),
        .I2(\state_reg[0]_0 ),
        .I3(\state_reg_n_0_[2] ),
        .I4(m_axis_tkeep[0]),
        .O(\gen_data_accumulator[1].acc_keep[1]_i_1_n_0 ));
  FDRE \gen_data_accumulator[1].acc_keep_reg[1] 
       (.C(aclk),
        .CE(1'b1),
        .D(\gen_data_accumulator[1].acc_keep[1]_i_1_n_0 ),
        .Q(m_axis_tkeep[0]),
        .R(p_0_in));
  LUT4 #(
    .INIT(16'h4000)) 
    \gen_data_accumulator[2].acc_data[23]_i_1 
       (.I0(\state_reg[1]_0 ),
        .I1(\state_reg[0]_0 ),
        .I2(\r0_reg_sel_reg_n_0_[2] ),
        .I3(\state_reg_n_0_[2] ),
        .O(p_0_in4_in));
  FDRE \gen_data_accumulator[2].acc_data_reg[16] 
       (.C(aclk),
        .CE(p_0_in4_in),
        .D(r0_data[0]),
        .Q(m_axis_tdata[16]),
        .R(1'b0));
  FDRE \gen_data_accumulator[2].acc_data_reg[17] 
       (.C(aclk),
        .CE(p_0_in4_in),
        .D(r0_data[1]),
        .Q(m_axis_tdata[17]),
        .R(1'b0));
  FDRE \gen_data_accumulator[2].acc_data_reg[18] 
       (.C(aclk),
        .CE(p_0_in4_in),
        .D(r0_data[2]),
        .Q(m_axis_tdata[18]),
        .R(1'b0));
  FDRE \gen_data_accumulator[2].acc_data_reg[19] 
       (.C(aclk),
        .CE(p_0_in4_in),
        .D(r0_data[3]),
        .Q(m_axis_tdata[19]),
        .R(1'b0));
  FDRE \gen_data_accumulator[2].acc_data_reg[20] 
       (.C(aclk),
        .CE(p_0_in4_in),
        .D(r0_data[4]),
        .Q(m_axis_tdata[20]),
        .R(1'b0));
  FDRE \gen_data_accumulator[2].acc_data_reg[21] 
       (.C(aclk),
        .CE(p_0_in4_in),
        .D(r0_data[5]),
        .Q(m_axis_tdata[21]),
        .R(1'b0));
  FDRE \gen_data_accumulator[2].acc_data_reg[22] 
       (.C(aclk),
        .CE(p_0_in4_in),
        .D(r0_data[6]),
        .Q(m_axis_tdata[22]),
        .R(1'b0));
  FDRE \gen_data_accumulator[2].acc_data_reg[23] 
       (.C(aclk),
        .CE(p_0_in4_in),
        .D(r0_data[7]),
        .Q(m_axis_tdata[23]),
        .R(1'b0));
  LUT5 #(
    .INIT(32'hFFFF0080)) 
    \gen_data_accumulator[2].acc_keep[2]_i_1 
       (.I0(\state_reg_n_0_[2] ),
        .I1(\r0_reg_sel_reg_n_0_[2] ),
        .I2(\state_reg[0]_0 ),
        .I3(\state_reg[1]_0 ),
        .I4(m_axis_tkeep[1]),
        .O(\gen_data_accumulator[2].acc_keep[2]_i_1_n_0 ));
  FDRE \gen_data_accumulator[2].acc_keep_reg[2] 
       (.C(aclk),
        .CE(1'b1),
        .D(\gen_data_accumulator[2].acc_keep[2]_i_1_n_0 ),
        .Q(m_axis_tkeep[1]),
        .R(p_0_in));
  FDRE \r0_data_reg[0] 
       (.C(aclk),
        .CE(\state_reg[0]_0 ),
        .D(s_axis_tdata[0]),
        .Q(r0_data[0]),
        .R(1'b0));
  FDRE \r0_data_reg[1] 
       (.C(aclk),
        .CE(\state_reg[0]_0 ),
        .D(s_axis_tdata[1]),
        .Q(r0_data[1]),
        .R(1'b0));
  FDRE \r0_data_reg[2] 
       (.C(aclk),
        .CE(\state_reg[0]_0 ),
        .D(s_axis_tdata[2]),
        .Q(r0_data[2]),
        .R(1'b0));
  FDRE \r0_data_reg[3] 
       (.C(aclk),
        .CE(\state_reg[0]_0 ),
        .D(s_axis_tdata[3]),
        .Q(r0_data[3]),
        .R(1'b0));
  FDRE \r0_data_reg[4] 
       (.C(aclk),
        .CE(\state_reg[0]_0 ),
        .D(s_axis_tdata[4]),
        .Q(r0_data[4]),
        .R(1'b0));
  FDRE \r0_data_reg[5] 
       (.C(aclk),
        .CE(\state_reg[0]_0 ),
        .D(s_axis_tdata[5]),
        .Q(r0_data[5]),
        .R(1'b0));
  FDRE \r0_data_reg[6] 
       (.C(aclk),
        .CE(\state_reg[0]_0 ),
        .D(s_axis_tdata[6]),
        .Q(r0_data[6]),
        .R(1'b0));
  FDRE \r0_data_reg[7] 
       (.C(aclk),
        .CE(\state_reg[0]_0 ),
        .D(s_axis_tdata[7]),
        .Q(r0_data[7]),
        .R(1'b0));
  FDRE r0_last_reg
       (.C(aclk),
        .CE(\state_reg[0]_0 ),
        .D(s_axis_tlast),
        .Q(r0_last),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hFFFFFFF0FF70FF70)) 
    \r0_reg_sel[0]_i_1 
       (.I0(\state_reg[0]_0 ),
        .I1(\state_reg_n_0_[2] ),
        .I2(\r0_reg_sel_reg_n_0_[0] ),
        .I3(areset_r),
        .I4(m_axis_tready),
        .I5(\state_reg[1]_0 ),
        .O(\r0_reg_sel[0]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hF8)) 
    \r0_reg_sel[3]_i_1 
       (.I0(\state_reg[1]_0 ),
        .I1(m_axis_tready),
        .I2(areset_r),
        .O(\r0_reg_sel[3]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h40)) 
    \r0_reg_sel[3]_i_2 
       (.I0(\state_reg[1]_0 ),
        .I1(\state_reg[0]_0 ),
        .I2(\state_reg_n_0_[2] ),
        .O(\r0_reg_sel[3]_i_2_n_0 ));
  FDRE #(
    .INIT(1'b1)) 
    \r0_reg_sel_reg[0] 
       (.C(aclk),
        .CE(1'b1),
        .D(\r0_reg_sel[0]_i_1_n_0 ),
        .Q(\r0_reg_sel_reg_n_0_[0] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \r0_reg_sel_reg[1] 
       (.C(aclk),
        .CE(\r0_reg_sel[3]_i_2_n_0 ),
        .D(\r0_reg_sel_reg_n_0_[0] ),
        .Q(\r0_reg_sel_reg_n_0_[1] ),
        .R(\r0_reg_sel[3]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \r0_reg_sel_reg[2] 
       (.C(aclk),
        .CE(\r0_reg_sel[3]_i_2_n_0 ),
        .D(\r0_reg_sel_reg_n_0_[1] ),
        .Q(\r0_reg_sel_reg_n_0_[2] ),
        .R(\r0_reg_sel[3]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \r0_reg_sel_reg[3] 
       (.C(aclk),
        .CE(\r0_reg_sel[3]_i_2_n_0 ),
        .D(\r0_reg_sel_reg_n_0_[2] ),
        .Q(p_1_in2_in),
        .R(\r0_reg_sel[3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFCFCFFFC77FFFFFF)) 
    \state[0]_i_1 
       (.I0(r0_last),
        .I1(\state_reg_n_0_[2] ),
        .I2(m_axis_tready),
        .I3(\state_reg[0]_0 ),
        .I4(s_axis_tvalid),
        .I5(\state_reg[1]_0 ),
        .O(state[0]));
  LUT5 #(
    .INIT(32'h74444444)) 
    \state[1]_i_2 
       (.I0(m_axis_tready),
        .I1(\state_reg[1]_0 ),
        .I2(s_axis_tvalid),
        .I3(p_1_in2_in),
        .I4(\state_reg[0]_0 ),
        .O(\state[1]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h00000000CC88C888)) 
    \state[1]_i_3 
       (.I0(r0_last),
        .I1(\state_reg[0]_0 ),
        .I2(p_1_in2_in),
        .I3(s_axis_tvalid),
        .I4(\r0_reg_sel_reg_n_0_[2] ),
        .I5(\state_reg[1]_0 ),
        .O(\state[1]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'h8B008888)) 
    \state[2]_i_2 
       (.I0(m_axis_tready),
        .I1(\state_reg[1]_0 ),
        .I2(p_1_in2_in),
        .I3(s_axis_tvalid),
        .I4(\state_reg[0]_0 ),
        .O(\state[2]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000040)) 
    \state[2]_i_3 
       (.I0(\state_reg[1]_0 ),
        .I1(\state_reg[0]_0 ),
        .I2(s_axis_tvalid),
        .I3(p_1_in2_in),
        .I4(\r0_reg_sel_reg_n_0_[2] ),
        .I5(r0_last),
        .O(\state[2]_i_3_n_0 ));
  (* FSM_ENCODING = "none" *) 
  FDRE #(
    .INIT(1'b0)) 
    \state_reg[0] 
       (.C(aclk),
        .CE(1'b1),
        .D(state[0]),
        .Q(\state_reg[0]_0 ),
        .R(areset_r));
  (* FSM_ENCODING = "none" *) 
  FDRE #(
    .INIT(1'b0)) 
    \state_reg[1] 
       (.C(aclk),
        .CE(1'b1),
        .D(state[1]),
        .Q(\state_reg[1]_0 ),
        .R(areset_r));
  MUXF7 \state_reg[1]_i_1 
       (.I0(\state[1]_i_2_n_0 ),
        .I1(\state[1]_i_3_n_0 ),
        .O(state[1]),
        .S(\state_reg_n_0_[2] ));
  (* FSM_ENCODING = "none" *) 
  FDRE #(
    .INIT(1'b0)) 
    \state_reg[2] 
       (.C(aclk),
        .CE(1'b1),
        .D(state[2]),
        .Q(\state_reg_n_0_[2] ),
        .R(areset_r));
  MUXF7 \state_reg[2]_i_1 
       (.I0(\state[2]_i_2_n_0 ),
        .I1(\state[2]_i_3_n_0 ),
        .O(state[2]),
        .S(\state_reg_n_0_[2] ));
endmodule

(* CHECK_LICENSE_TYPE = "gearbox_1_to_4,axis_dwidth_converter_v1_1_25_axis_dwidth_converter,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* X_CORE_INFO = "axis_dwidth_converter_v1_1_25_axis_dwidth_converter,Vivado 2022.1" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
   (aclk,
    aresetn,
    s_axis_tvalid,
    s_axis_tready,
    s_axis_tdata,
    s_axis_tlast,
    m_axis_tvalid,
    m_axis_tready,
    m_axis_tdata,
    m_axis_tkeep,
    m_axis_tlast);
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLKIF CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLKIF, FREQ_HZ 10000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, INSERT_VIP 0" *) input aclk;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 RSTIF RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME RSTIF, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input aresetn;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 S_AXIS TVALID" *) input s_axis_tvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 S_AXIS TREADY" *) output s_axis_tready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 S_AXIS TDATA" *) input [7:0]s_axis_tdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 S_AXIS TLAST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME S_AXIS, TDATA_NUM_BYTES 1, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 1, FREQ_HZ 100000000, PHASE 0.0, LAYERED_METADATA undef, INSERT_VIP 0" *) input s_axis_tlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS TVALID" *) output m_axis_tvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS TREADY" *) input m_axis_tready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS TDATA" *) output [31:0]m_axis_tdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS TKEEP" *) output [3:0]m_axis_tkeep;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS TLAST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME M_AXIS, TDATA_NUM_BYTES 4, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 1, HAS_TLAST 1, FREQ_HZ 100000000, PHASE 0.0, LAYERED_METADATA undef, INSERT_VIP 0" *) output m_axis_tlast;

  wire \<const1> ;
  wire aclk;
  wire aresetn;
  wire [31:0]m_axis_tdata;
  wire [3:1]\^m_axis_tkeep ;
  wire m_axis_tlast;
  wire m_axis_tready;
  wire m_axis_tvalid;
  wire [7:0]s_axis_tdata;
  wire s_axis_tlast;
  wire s_axis_tready;
  wire s_axis_tvalid;
  wire [0:0]NLW_inst_m_axis_tdest_UNCONNECTED;
  wire [0:0]NLW_inst_m_axis_tid_UNCONNECTED;
  wire [0:0]NLW_inst_m_axis_tkeep_UNCONNECTED;
  wire [3:0]NLW_inst_m_axis_tstrb_UNCONNECTED;
  wire [0:0]NLW_inst_m_axis_tuser_UNCONNECTED;

  assign m_axis_tkeep[3:1] = \^m_axis_tkeep [3:1];
  assign m_axis_tkeep[0] = \<const1> ;
  VCC VCC
       (.P(\<const1> ));
  (* C_AXIS_SIGNAL_SET = "19" *) 
  (* C_AXIS_TDEST_WIDTH = "1" *) 
  (* C_AXIS_TID_WIDTH = "1" *) 
  (* C_FAMILY = "zynquplus" *) 
  (* C_M_AXIS_TDATA_WIDTH = "32" *) 
  (* C_M_AXIS_TUSER_WIDTH = "1" *) 
  (* C_S_AXIS_TDATA_WIDTH = "8" *) 
  (* C_S_AXIS_TUSER_WIDTH = "1" *) 
  (* DowngradeIPIdentifiedWarnings = "yes" *) 
  (* G_INDX_SS_TDATA = "1" *) 
  (* G_INDX_SS_TDEST = "6" *) 
  (* G_INDX_SS_TID = "5" *) 
  (* G_INDX_SS_TKEEP = "3" *) 
  (* G_INDX_SS_TLAST = "4" *) 
  (* G_INDX_SS_TREADY = "0" *) 
  (* G_INDX_SS_TSTRB = "2" *) 
  (* G_INDX_SS_TUSER = "7" *) 
  (* G_MASK_SS_TDATA = "2" *) 
  (* G_MASK_SS_TDEST = "64" *) 
  (* G_MASK_SS_TID = "32" *) 
  (* G_MASK_SS_TKEEP = "8" *) 
  (* G_MASK_SS_TLAST = "16" *) 
  (* G_MASK_SS_TREADY = "1" *) 
  (* G_MASK_SS_TSTRB = "4" *) 
  (* G_MASK_SS_TUSER = "128" *) 
  (* G_TASK_SEVERITY_ERR = "2" *) 
  (* G_TASK_SEVERITY_INFO = "0" *) 
  (* G_TASK_SEVERITY_WARNING = "1" *) 
  (* P_AXIS_SIGNAL_SET = "32'b00000000000000000000000000011011" *) 
  (* P_D1_REG_CONFIG = "0" *) 
  (* P_D1_TUSER_WIDTH = "1" *) 
  (* P_D2_TDATA_WIDTH = "32" *) 
  (* P_D2_TUSER_WIDTH = "4" *) 
  (* P_D3_REG_CONFIG = "0" *) 
  (* P_D3_TUSER_WIDTH = "4" *) 
  (* P_M_RATIO = "1" *) 
  (* P_SS_TKEEP_REQUIRED = "8" *) 
  (* P_S_RATIO = "4" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axis_dwidth_converter_v1_1_25_axis_dwidth_converter inst
       (.aclk(aclk),
        .aclken(1'b1),
        .aresetn(aresetn),
        .m_axis_tdata(m_axis_tdata),
        .m_axis_tdest(NLW_inst_m_axis_tdest_UNCONNECTED[0]),
        .m_axis_tid(NLW_inst_m_axis_tid_UNCONNECTED[0]),
        .m_axis_tkeep({\^m_axis_tkeep ,NLW_inst_m_axis_tkeep_UNCONNECTED[0]}),
        .m_axis_tlast(m_axis_tlast),
        .m_axis_tready(m_axis_tready),
        .m_axis_tstrb(NLW_inst_m_axis_tstrb_UNCONNECTED[3:0]),
        .m_axis_tuser(NLW_inst_m_axis_tuser_UNCONNECTED[0]),
        .m_axis_tvalid(m_axis_tvalid),
        .s_axis_tdata(s_axis_tdata),
        .s_axis_tdest(1'b0),
        .s_axis_tid(1'b0),
        .s_axis_tkeep(1'b1),
        .s_axis_tlast(s_axis_tlast),
        .s_axis_tready(s_axis_tready),
        .s_axis_tstrb(1'b1),
        .s_axis_tuser(1'b0),
        .s_axis_tvalid(s_axis_tvalid));
endmodule
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
