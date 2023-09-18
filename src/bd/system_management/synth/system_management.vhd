--Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
----------------------------------------------------------------------------------
--Tool Version: Vivado v.2022.1 (win64) Build 3526262 Mon Apr 18 15:48:16 MDT 2022
--Date        : Mon Jun 19 12:24:36 2023
--Host        : PCPHESE71 running 64-bit major release  (build 9200)
--Command     : generate_target system_management.bd
--Design      : system_management
--Purpose     : IP block netlist
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity system_management is
  port (
    rstn : in STD_LOGIC;
    sys_man_clk : in STD_LOGIC;
    temp_out : out STD_LOGIC_VECTOR ( 9 downto 0 )
  );
  attribute CORE_GENERATION_INFO : string;
  attribute CORE_GENERATION_INFO of system_management : entity is "system_management,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=system_management,x_ipVersion=1.00.a,x_ipLanguage=VHDL,numBlks=1,numReposBlks=1,numNonXlnxBlks=0,numHierBlks=0,maxHierDepth=0,numSysgenBlks=0,numHlsBlks=0,numHdlrefBlks=0,numPkgbdBlks=0,bdsource=USER,synth_mode=OOC_per_IP}";
  attribute HW_HANDOFF : string;
  attribute HW_HANDOFF of system_management : entity is "system_management.hwdef";
end system_management;

architecture STRUCTURE of system_management is
  component system_management_sys_man_wiz_0 is
  port (
    s_axi_aclk : in STD_LOGIC;
    s_axi_aresetn : in STD_LOGIC;
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 12 downto 0 );
    s_axi_awvalid : in STD_LOGIC;
    s_axi_awready : out STD_LOGIC;
    s_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_wvalid : in STD_LOGIC;
    s_axi_wready : out STD_LOGIC;
    s_axi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_bvalid : out STD_LOGIC;
    s_axi_bready : in STD_LOGIC;
    s_axi_araddr : in STD_LOGIC_VECTOR ( 12 downto 0 );
    s_axi_arvalid : in STD_LOGIC;
    s_axi_arready : out STD_LOGIC;
    s_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_rvalid : out STD_LOGIC;
    s_axi_rready : in STD_LOGIC;
    ip2intc_irpt : out STD_LOGIC;
    user_temp_alarm_out : out STD_LOGIC;
    vccint_alarm_out : out STD_LOGIC;
    vccpsintlp_alarm_out : out STD_LOGIC;
    vccpsintfp_alarm_out : out STD_LOGIC;
    vccpsaux_alarm_out : out STD_LOGIC;
    vccaux_alarm_out : out STD_LOGIC;
    ot_out : out STD_LOGIC;
    channel_out : out STD_LOGIC_VECTOR ( 5 downto 0 );
    eoc_out : out STD_LOGIC;
    alarm_out : out STD_LOGIC;
    eos_out : out STD_LOGIC;
    busy_out : out STD_LOGIC;
    temp_out : out STD_LOGIC_VECTOR ( 9 downto 0 )
  );
  end component system_management_sys_man_wiz_0;
  signal rstn_1 : STD_LOGIC;
  signal sys_man_clk_1 : STD_LOGIC;
  signal system_management_wiz_0_temp_out : STD_LOGIC_VECTOR ( 9 downto 0 );
  signal NLW_sys_man_wiz_alarm_out_UNCONNECTED : STD_LOGIC;
  signal NLW_sys_man_wiz_busy_out_UNCONNECTED : STD_LOGIC;
  signal NLW_sys_man_wiz_eoc_out_UNCONNECTED : STD_LOGIC;
  signal NLW_sys_man_wiz_eos_out_UNCONNECTED : STD_LOGIC;
  signal NLW_sys_man_wiz_ip2intc_irpt_UNCONNECTED : STD_LOGIC;
  signal NLW_sys_man_wiz_ot_out_UNCONNECTED : STD_LOGIC;
  signal NLW_sys_man_wiz_s_axi_arready_UNCONNECTED : STD_LOGIC;
  signal NLW_sys_man_wiz_s_axi_awready_UNCONNECTED : STD_LOGIC;
  signal NLW_sys_man_wiz_s_axi_bvalid_UNCONNECTED : STD_LOGIC;
  signal NLW_sys_man_wiz_s_axi_rvalid_UNCONNECTED : STD_LOGIC;
  signal NLW_sys_man_wiz_s_axi_wready_UNCONNECTED : STD_LOGIC;
  signal NLW_sys_man_wiz_user_temp_alarm_out_UNCONNECTED : STD_LOGIC;
  signal NLW_sys_man_wiz_vccaux_alarm_out_UNCONNECTED : STD_LOGIC;
  signal NLW_sys_man_wiz_vccint_alarm_out_UNCONNECTED : STD_LOGIC;
  signal NLW_sys_man_wiz_vccpsaux_alarm_out_UNCONNECTED : STD_LOGIC;
  signal NLW_sys_man_wiz_vccpsintfp_alarm_out_UNCONNECTED : STD_LOGIC;
  signal NLW_sys_man_wiz_vccpsintlp_alarm_out_UNCONNECTED : STD_LOGIC;
  signal NLW_sys_man_wiz_channel_out_UNCONNECTED : STD_LOGIC_VECTOR ( 5 downto 0 );
  signal NLW_sys_man_wiz_s_axi_bresp_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_sys_man_wiz_s_axi_rdata_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_sys_man_wiz_s_axi_rresp_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of rstn : signal is "xilinx.com:signal:reset:1.0 RST.RSTN RST";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of rstn : signal is "XIL_INTERFACENAME RST.RSTN, INSERT_VIP 0, POLARITY ACTIVE_LOW";
  attribute X_INTERFACE_INFO of sys_man_clk : signal is "xilinx.com:signal:clock:1.0 CLK.SYS_MAN_CLK CLK";
  attribute X_INTERFACE_PARAMETER of sys_man_clk : signal is "XIL_INTERFACENAME CLK.SYS_MAN_CLK, ASSOCIATED_RESET rstn, CLK_DOMAIN system_management_sys_man_clk, FREQ_HZ 125000000, FREQ_TOLERANCE_HZ 0, INSERT_VIP 0, PHASE 0.0";
  attribute X_INTERFACE_INFO of temp_out : signal is "xilinx.com:signal:data:1.0 DATA.TEMP_OUT DATA";
  attribute X_INTERFACE_PARAMETER of temp_out : signal is "XIL_INTERFACENAME DATA.TEMP_OUT, LAYERED_METADATA undef";
begin
  rstn_1 <= rstn;
  sys_man_clk_1 <= sys_man_clk;
  temp_out(9 downto 0) <= system_management_wiz_0_temp_out(9 downto 0);
sys_man_wiz: component system_management_sys_man_wiz_0
     port map (
      alarm_out => NLW_sys_man_wiz_alarm_out_UNCONNECTED,
      busy_out => NLW_sys_man_wiz_busy_out_UNCONNECTED,
      channel_out(5 downto 0) => NLW_sys_man_wiz_channel_out_UNCONNECTED(5 downto 0),
      eoc_out => NLW_sys_man_wiz_eoc_out_UNCONNECTED,
      eos_out => NLW_sys_man_wiz_eos_out_UNCONNECTED,
      ip2intc_irpt => NLW_sys_man_wiz_ip2intc_irpt_UNCONNECTED,
      ot_out => NLW_sys_man_wiz_ot_out_UNCONNECTED,
      s_axi_aclk => sys_man_clk_1,
      s_axi_araddr(12 downto 0) => B"0000000000000",
      s_axi_aresetn => rstn_1,
      s_axi_arready => NLW_sys_man_wiz_s_axi_arready_UNCONNECTED,
      s_axi_arvalid => '0',
      s_axi_awaddr(12 downto 0) => B"0000000000000",
      s_axi_awready => NLW_sys_man_wiz_s_axi_awready_UNCONNECTED,
      s_axi_awvalid => '0',
      s_axi_bready => '0',
      s_axi_bresp(1 downto 0) => NLW_sys_man_wiz_s_axi_bresp_UNCONNECTED(1 downto 0),
      s_axi_bvalid => NLW_sys_man_wiz_s_axi_bvalid_UNCONNECTED,
      s_axi_rdata(31 downto 0) => NLW_sys_man_wiz_s_axi_rdata_UNCONNECTED(31 downto 0),
      s_axi_rready => '0',
      s_axi_rresp(1 downto 0) => NLW_sys_man_wiz_s_axi_rresp_UNCONNECTED(1 downto 0),
      s_axi_rvalid => NLW_sys_man_wiz_s_axi_rvalid_UNCONNECTED,
      s_axi_wdata(31 downto 0) => B"00000000000000000000000000000000",
      s_axi_wready => NLW_sys_man_wiz_s_axi_wready_UNCONNECTED,
      s_axi_wstrb(3 downto 0) => B"1111",
      s_axi_wvalid => '0',
      temp_out(9 downto 0) => system_management_wiz_0_temp_out(9 downto 0),
      user_temp_alarm_out => NLW_sys_man_wiz_user_temp_alarm_out_UNCONNECTED,
      vccaux_alarm_out => NLW_sys_man_wiz_vccaux_alarm_out_UNCONNECTED,
      vccint_alarm_out => NLW_sys_man_wiz_vccint_alarm_out_UNCONNECTED,
      vccpsaux_alarm_out => NLW_sys_man_wiz_vccpsaux_alarm_out_UNCONNECTED,
      vccpsintfp_alarm_out => NLW_sys_man_wiz_vccpsintfp_alarm_out_UNCONNECTED,
      vccpsintlp_alarm_out => NLW_sys_man_wiz_vccpsintlp_alarm_out_UNCONNECTED
    );
end STRUCTURE;
