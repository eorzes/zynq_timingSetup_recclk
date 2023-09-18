----------------------------------------------------------------------------------
-- Company: CERN - HPTD
-- Engineer: Edoardo Orzes
-- 
-- Create Date: 02/01/2023
-- Module Name: m_top

--  Top level of RecClk/Fanout project.
--  Implementation of GTH/Y Trasceiver at 9.6GHz with an internal 40bit bus, 240MHz reference.
--  The goal is to reach picosecond-level phase determinism in a multi-hop system based on this node.
--  Tx resets induce UI Jumps - solved by Tx Phase Aligner. Requires Elastic Buffer.
--  Rx resets may induce sub-UI Jumps. Solutions:
--  A. Using an external fanout to send an unencoded data stream representing the 240MHz clock, after a reset of the transceiver, 
--  to be compared on the DDMTD with the RxUsrClk and apply a phase shift on the transmitter uning the Phase Interpolator (PI).
--  B. Using RxRecClk signal as a pure reference for the DDMTD phase measurement.

-- Revision: v1.0
----------------------------------------------------------------------------------

library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_misc.all;
use ieee.numeric_std.all;
use work.gt_pkg.all;

library unisim;
use unisim.vcomponents.all;

entity m_top is
  port(
    clk_125_p   : in  std_logic;  -- 125 MHz system clock (freerun)
    clk_125_n   : in  std_logic;
    
--    si5328_en   : out std_logic;  -- Skyworks PLL enable (Main GT reference clock when using vcu118's FireFly) 
--    firefly_en  : out std_logic;  -- vcu118's FireFly enable

    -- Main GT lane
    gt_refclk_p : in  std_logic;  -- reference clock (240 MHz)
    gt_refclk_n : in  std_logic;
    gt_rx_p     : in  std_logic;
    gt_rx_n     : in  std_logic;
    gt_tx_p     : out std_logic;
    gt_tx_n     : out std_logic;
    
    -- TxPI Auxiliary GT - not used, shift directly the HOP GT (via its PI)
--    txpi_refclk_p : in std_logic;  -- reference clock (240 MHz)
--    txpi_refclk_n : in std_logic;
--    pi_gt_rx_p  : in  std_logic;
--    pi_gt_rx_n  : in  std_logic;
--    pi_gt_tx_p  : out std_logic;
--    pi_gt_tx_n  : out std_logic;
    
    -- HOP GT lane
--    hop_gt_refclk_p : in std_logic; -- reference clock (240 MHz) - connect to Jitter Cleaner output (Cln RxUsrClk)
--    hop_gt_refclk_n : in std_logic;
--    hop_gt_rx_p : in  std_logic;
--    hop_gt_rx_n : in  std_logic;
--    hop_gt_tx_p : out std_logic;
--    hop_gt_tx_n : out std_logic;
    
    -- I/O Clocking
    rxUserClk_p   : out std_logic;  -- 40MHz LVDS      RxUsrClk of Main GT (for Jitter Cleaner)
    rxUserClk_n   : out std_logic;
    rxUserClk_1   : out std_logic;  -- 240MHz LVCMOS18 RxUsrClk of Main GT (for Scope)
    
    rxrecclk_p    : out std_logic;  -- 240MHz LVDS     RxRecClk of Main GT (for FPGA use with DDMTD)
    rxrecclk_n    : out std_logic;

    gtfanout_in_p : in std_logic;   -- 240MHz LVDS     GT Fanout or RxRecClk input (for FPGA use with DDMTD)
    gtfanout_in_n : in std_logic;
    
--    clnrxusrclk_in_p : in std_logic;  -- 240MHz LVDS   Clean RxUsrClk input (for FPGA use with DDMTD) - replaced by hop_gt_refclk
--    clnrxusrclk_in_n : in std_logic;
    
    ddmtdclk_in_p  : in std_logic;  -- 239.99MHz LVDS  DDMTD helper clock
    ddmtdclk_in_n  : in std_logic;
    
    SFP1_enable : out std_logic;
    SFP2_enable : out std_logic;
    
    -- UDP Interface for controlling the FPGA from the computer with AXI-Ethernet
    -- Ethernet SFP 625 MHz reference clock 
    eth_gtrefclk_p : in std_logic; -- reference clock (625 MHz) - from PHY
    eth_gtrefclk_n : in std_logic;
    -- PHY
--    phy_mdio   : inout std_logic;
--    phy_mdc    : out   std_logic;
--    phy_resetb : out   std_logic;
--    phy_pwdn   : out   std_logic;  -- power down (active low)
    -- Ethernet SFP lane (on vcu118 is not SFP but PHY)
    txn_eth_sfp : out std_logic;
    txp_eth_sfp : out std_logic;
    rxn_eth_sfp : in  std_logic;
    rxp_eth_sfp : in  std_logic;
    -- IIC
    sda : inout std_logic;
    scl : inout std_logic;
    
    -- Switch PINs selections
    tx_eth_addr_sel  : in std_logic;
    rx_eth_addr_sel  : in std_logic;
    switchPIN_ali_en_asynch : in std_logic
  );
end m_top;

architecture rtl of m_top is
  
  signal clk_sys       : std_logic;
  signal gen_rst_asynch : std_logic;
  signal axi_gen_rst   : std_logic;
  signal gen_data      : std_logic_vector(31 downto 0); 
  signal gen_ctrl      : std_logic_vector( 3 downto 0); 
  
  signal enc_bypass    : std_logic; -- from external controller (e.g. VIO), must be synced with gt_tx_usrclk
  signal disp_from_enc : std_logic;  
  signal disp_to_enc   : std_logic;  
  
  signal gt_ctrl       : gt_ctrl_t:= GT_CTRL_NULL;
  signal gt_stat       : gt_stat_t;
  signal to_gt         : to_gt_t;
  signal from_gt       : from_gt_t;
  signal from_axi      : from_axi_t;
  signal to_axi        : to_axi_t;
  
  -- GT HOP
  signal hop_ali_done       : std_logic;
  signal gen_rst_hop        : std_logic;
  signal vio_gen_rst_hop    : std_logic;
  signal gen_rst_hop_asynch : std_logic;
  signal gen_data_hop       : std_logic_vector(31 downto 0); 
  signal gen_ctrl_hop       : std_logic_vector( 3 downto 0); 
  signal disp_from_enc_hop  : std_logic;  
  signal disp_to_enc_hop    : std_logic; 
  signal hop_gt_ctrl        : gt_ctrl_t:= GT_CTRL_NULL;
  signal to_hop_gt          : to_gt_t;
  signal from_hop_gt        : from_gt_t;
  signal hop_gt_stat        : gt_stat_t;
  signal vio_hop_tx_reset   : std_logic;
  
  --HOP PI phase aligner
  signal hop_tx_ui_align_calib   : std_logic;
  signal vio_hop_ali_calib       : std_logic;
  signal hop_tx_fine_realign     : std_logic;
  signal vio_hop_tx_fine_realign : std_logic;
  signal hop_tx_pi_phase         : std_logic_vector(6  downto 0);   
  signal hop_frst_r_txpi_phase   : std_logic_vector(6  downto 0);                          
  signal hop_tx_fifo_fill_pd     : std_logic_vector(31 downto 0); 
  signal hop_step_done           : std_logic;
  signal hop_step_done_stiky     : std_logic;
  signal vio_hop_send_clk        : std_logic;
  signal aligner_strobe          : std_logic;
  signal aligner_inc             : std_logic;
  signal aligner_step            : std_logic_vector(3 downto 0); 
  signal pi_ctrl_strobe          : std_logic;
  signal pi_ctrl_inc             : std_logic;
  signal pi_ctrl_step            : std_logic_vector(3 downto 0); 
  
  --signals for data checker at receiver
  signal resetCheck    : std_logic;
  signal valid         : std_logic;  
  signal data_check    : std_logic_vector(31 downto 0);
  --
  
  signal vio_rx_reset       : std_logic := '0';
  signal vio_enc_bypass     : std_logic := '0';
  signal vio_ali_en         : std_logic := '1';
  signal ali_en             : std_logic := '1';
  
  signal alignerSlide       : std_logic := '0';
  signal vioSlide           : std_logic := '0';
  signal singleVIOSlide     : std_logic := '0'; 
  signal slideCount         : std_logic_vector(14 downto 0); 
  signal oddsCount          : std_logic_vector(14 downto 0); 
  signal aligned            : std_logic;
  signal rxreset_from_ali   : std_logic;
  signal rst_also_oddC_asynch : std_logic;
  --debug from fsm aligner
  signal st          : std_logic_vector(2 downto 0); 
  signal alignCount  : std_logic_vector(14 downto 0);
  signal rst_timeout : std_logic;
  ---
   
  signal rxUserClk   : std_logic;
  signal recclk40    : std_logic;
  
  -- freq measure
  signal refclk      : std_logic;
  signal refclk_freq : std_logic_vector(7 downto 0);
        
  signal hop_ref_m      : std_logic;
  signal hop_ref_freq   : std_logic_vector(7 downto 0);
  signal hop_txusr_freq : std_logic_vector(7 downto 0); 
  
  signal freq_gtfanout    : std_logic_vector(7 downto 0);
  signal freq_clnrxusrclk : std_logic_vector(7 downto 0);
  
  signal reset_gt_nolock : std_logic; 
  signal nolock_cnt      : integer range 0 to 1e9 := 0;
  signal aligned_sys     : std_logic;
  signal rxrdy_sys       : std_logic;
  signal axi_gpio_ctrl_rxsynch : std_logic_vector(7 downto 0); 
  signal temperature : std_logic_vector(9 downto 0);
  
  -- Ethernet addresses selection (group1 [1, Tx], group2 [2, Rx] or VIO [0])
  signal eth_addr_sel : std_logic_vector(1 downto 0); --:= "10";
  signal switchPIN_ali_en : std_logic;-- := '1';
    
begin

--  si5328_en  <= '1';  -- Skyworks PLL enable (Main GT reference clock when using vcu118's FireFly) 
--  firefly_en <= '1';  -- vcu118's FireFly enable
--  phy_pwdn   <= '1';  -- PHY power down (active low)

  SFP1_enable <= '1'; --not necessary if jumper J17 is present
  SFP2_enable <= '1'; --not necessary if jumper J42 is present
  
  -- switchPIN_ali_en is form the physical switch 8 on the board, if Rx is used must be tied up, else down.
  -- controls the FSM_Aligner enable, which may control the Main GT reset, so the shared QPLL reset.
  ali_en <= vio_ali_en and switchPIN_ali_en;
  
  gt_ctrl.rxslide <= alignerSlide or singleVIOSlide;
  
  -- AXI state signals to Python
  to_axi.ready       <= valid;       -- from data checker (based on test sequence sent by data generator)
  to_axi.slide_count <= slideCount;  -- from FSM_Aligner: count of bit slide used to frame align with the 8b10b comma x"BC"
  to_axi.odds_count  <= oddsCount;   -- from FSM_Aligner: count of resets sent by FSM_Aligner to have an even number of slideCount
  to_axi.temp        <= temperature; -- Die temperature from BandGap SYSMON sensor, averaged over 250 values eavenly spread in a 10s window
  --
  -- Rx GT Equalizer configuration
  gt_ctrl.rxlpmgchold     <= from_axi.gt_eq.lpmgc(1); --axi_gpio_ctrl_async(11)
  gt_ctrl.rxlpmgcovrden   <= from_axi.gt_eq.lpmgc(0); --axi_gpio_ctrl_async(10)
  gt_ctrl.rxlpmhfhold     <= from_axi.gt_eq.lpmhf(1); --axi_gpio_ctrl_async( 9)
  gt_ctrl.rxlpmhfovrden   <= from_axi.gt_eq.lpmhf(0); --axi_gpio_ctrl_async( 8)
  gt_ctrl.rxlpmlfklhold   <= from_axi.gt_eq.lpmlf(1); --axi_gpio_ctrl_async( 7)
  gt_ctrl.rxlpmlfklovrden <= from_axi.gt_eq.lpmlf(0); --axi_gpio_ctrl_async( 6)
  gt_ctrl.rxlpmoshold     <= from_axi.gt_eq.lpmos(1); --axi_gpio_ctrl_async( 5)
  gt_ctrl.rxlpmosovrden   <= from_axi.gt_eq.lpmos(0); --axi_gpio_ctrl_async( 4)
  --
  
  gt_ctrl.gtwiz_reset_rx_pll_and_datapath <= vio_rx_reset or from_axi.rx_reset or reset_gt_nolock or rxreset_from_ali;
  rst_also_oddC_asynch                    <= vio_rx_reset or from_axi.rx_reset or reset_gt_nolock; -- exclude rxreset_from_ali to not reset the odds counter of the FSM_Aligner
  
  enc_bypass <= vio_enc_bypass or from_axi.tx_enc_bypass;
  
  -- selection with switches of ethernet addresses of Tx and Rx FPGA (for using the same firmware)
  process(tx_eth_addr_sel, rx_eth_addr_sel) begin
    eth_addr_sel <= "00";
    if tx_eth_addr_sel = '1' then
        eth_addr_sel <= "01";
    end if;
    if rx_eth_addr_sel = '1' then
        eth_addr_sel <= "10";
    end if;
  end process;
  bit_synch_sw_to_rx: entity work.bit_synch
    port map (
      bit_in  => switchPIN_ali_en_asynch, 
      clk     => from_gt.rx_usrclk, 
      bit_out => switchPIN_ali_en   
    ); 
  
  sys_clk_inst: entity work.clk_buf
    port map (
      i  => clk_125_p,  
      ib => clk_125_n,  
      o  => clk_sys
    );
  
  
------------------------------------------------------------------------
----- Main GT - Tx data generator & 8b10b encoder & data checker
------------------------------------------------------------------------
  
  bit_synch_sys_to_tx: entity work.bit_synch
    port map (
      bit_in  => from_axi.tx_reset, 
      clk     => from_gt.tx_usrclk, 
      bit_out => axi_gen_rst
    ); 
  gen_inst: entity work.data_generator
    port map(
      rst_i   => gen_rst_asynch, 
      clk_i   => from_gt.tx_usrclk,
      data_o  => gen_data,
      ctrl_o  => gen_ctrl
    );
      gen_rst_asynch <= axi_gen_rst;

  enc_inst: entity work.multibyte_enc8b10b
    port map(
      clk_i         => from_gt.tx_usrclk,
      ctrl_i        => gen_ctrl,
      data_i        => gen_data,
      rundp_o       => disp_from_enc,
      rundp_i       => disp_to_enc,
      bypass_en_i   => enc_bypass,
      bypass_data_i => x"FFFFF00000",
      data_o        => to_gt.tx_data
    );
      disp_to_enc <= disp_from_enc;
      
  check_inst: entity work.data_checker
    port map(
      rst_i     => resetCheck,
      clk_i     => from_gt.rx_usrclk,
      comDet    => from_gt.rx_ctrl2(0),
      aligned   => aligned,  
      data_in   => from_gt.rx_data,
      valid     => valid,
      data_gen  => data_check
    );
      resetCheck <= not aligned; 

  gt_inst: entity work.m_gt
    port map(
      clk_sys      => clk_sys,
      gt_refclk_p  => gt_refclk_p,
      gt_refclk_n  => gt_refclk_n,
      gt_rx_p(0)   => gt_rx_p,  
      gt_rx_n(0)   => gt_rx_n,  
      gt_tx_p(0)   => gt_tx_p,  
      gt_tx_n(0)   => gt_tx_n,  
      gt_ctrl_i(0) => gt_ctrl, --> record containing signals that could be driven  by an external controller (e.g. VIO)  
      gt_stat_o(0) => gt_stat, --> record containing signals that could be checked by an external controller (e.g. VIO)
      gt_i(0)      => to_gt,   --> record containing signals from the user logic to the GT 
      gt_o(0)      => from_gt, --> record containing signals from the GT to the user logic
      refclk       => refclk
    );
    
    
------------------------------------------------------------------------
----- HOP GT - Tx data generator & 8b10b encoder
------------------------------------------------------------------------
    
--  bit_synch_sys_to_txhop: entity work.bit_synch
--    port map (
--      bit_in  => gen_rst_hop_asynch, 
--      clk     => from_hop_gt.tx_usrclk, 
--      bit_out => gen_rst_hop
--    ); 
--  gen_hop_inst: entity work.data_generator
--    port map(
--      rst_i   => gen_rst_hop, -- from VIO
--      clk_i   => from_hop_gt.tx_usrclk,
--      data_o  => gen_data_hop,
--      ctrl_o  => gen_ctrl_hop
--    );
--      gen_rst_hop_asynch <= from_axi.hop_gt_tx_rst or vio_gen_rst_hop or not(hop_ali_done);
  
--  enc_hop_inst: entity work.multibyte_enc8b10b
--    port map(
--      clk_i         => from_hop_gt.tx_usrclk,
--      ctrl_i        => gen_ctrl_hop,
--      data_i        => gen_data_hop,
--      rundp_o       => disp_from_enc_hop,
--      rundp_i       => disp_to_enc_hop,
--      bypass_en_i   => vio_hop_send_clk,
--      bypass_data_i => x"FFFFF00000",
--      data_o        => to_hop_gt.tx_data
--    );
--      disp_to_enc_hop <= disp_from_enc_hop;
    
--  -- for proper bring up of the CPLL, drpclk must be connected to the free running clock (defined in the IP Core wizard)
--  hop_gt_ctrl.drpclk <= clk_sys;
  
--  hop_gt_inst: entity work.hop_m_gt
--    port map(
--      clk_sys      => clk_sys,
--      gt_refclk_p  => hop_gt_refclk_p,
--      gt_refclk_n  => hop_gt_refclk_n,
--      gt_rx_p(0)   => hop_gt_rx_p,  
--      gt_rx_n(0)   => hop_gt_rx_n,  
--      gt_tx_p(0)   => hop_gt_tx_p,  
--      gt_tx_n(0)   => hop_gt_tx_n,  
--      gt_ctrl_i(0) => hop_gt_ctrl, --> record containing signals that could be driven  by an external controller (e.g. VIO)  
--      gt_stat_o(0) => hop_gt_stat, --> record containing signals that could be checked by an external controller (e.g. VIO)
--      gt_i(0)      => to_hop_gt,   --> record containing signals from the user logic to the GT 
--      gt_o(0)      => from_hop_gt, --> record containing signals from the GT to the user logic
--      refclk       => hop_ref_m
--    );
      
--  hop_gt_ctrl.gtwiz_reset_tx_pll_and_datapath <= from_axi.hop_gt_tx_rst or vio_hop_tx_reset;
   
--  bit_synch_txhop_to_sys: entity work.bit_synch
--    port map (
--      bit_in  => from_hop_gt.tx_rdy, 
--      clk     => clk_sys, 
--      bit_out => to_axi.hop_tx_gt_rdy
--    ); 
    
    
------------------------------------------------------------------------
----- Main GT - Rx FSM_Aligner and GT reset
------------------------------------------------------------------------

  fsm_aligner_inst: entity work.fsm_aligner
    port map(
      clk             => from_gt.rx_usrclk,
      rst             => not(ali_en and from_gt.rx_rdy), 
      en              => from_axi.rx_aligner_en and ali_en, -- en default to 0, on Rx FPGA has to be manually setted to 1 from switch or VIO.
      rxdata          => from_gt.rx_data,
      ctrl            => from_gt.rx_ctrl2,
      rxSlide         => alignerSlide,
      slideCount      => slideCount,
      oddsCount       => oddsCount,
      byteAligned     => aligned,  
      rxreset_out     => rxreset_from_ali,
      rst_also_oddC_i => rst_also_oddC_asynch, 
      lol_count_o     => to_axi.lol_count,
      lol_ovf         => to_axi.lol_ovf,
      -- debug purpose
      st   => st,
      aliC => alignCount,
      r_t  => rst_timeout
    );
    
  bit_synch_rx_to_sys: entity work.bit_synch
    port map ( bit_in => aligned, clk => clk_sys, bit_out => aligned_sys ); 
  bit_synch_rx_to_sys2: entity work.bit_synch
    port map ( bit_in => from_gt.rx_rdy, clk => clk_sys, bit_out => rxrdy_sys ); 
    
  -- If the Main GT Rx does not start or if it does not align, then after 8 seconds the GT is reset.
  GT_reset: process(clk_sys) begin
	if rising_edge(clk_sys) then
        if (rxrdy_sys = '0' or aligned_sys = '0') and ali_en = '1' then
			nolock_cnt <= nolock_cnt + 1;
		elsif aligned_sys = '1' then
			nolock_cnt <= 0;
		end if;
	end if;
  end process;
  reset_gt_nolock <= '1' when nolock_cnt = 1e9 else '0';
  
  
------------------------------------------------------------------------
----- I/O Clocking
------------------------------------------------------------------------
  
  -- rxrecclk dedicated clock buffer
  obufds_gte4_inst : obufds_gte4
      generic map (
        REFCLK_EN_TX_PATH => '1',  
        REFCLK_ICNTL_TX => "00111"  
      ) port map (
        O => rxrecclk_p,  
        OB => rxrecclk_n,   
        CEB => '0', -- active low
        I =>  from_gt.rxrecclk    
      );
    
  -- rxusrclk's ODDR's data pilot to have 40MHz from 240MHz
  rxusrclk40: entity work.divide6
      port map(
        clock_in    => from_gt.rx_usrclk,
        data_out    => recclk40,
        rdy_in      => aligned,
        frame_start => from_gt.rx_ctrl2(0)
      );
  -- differential rxusrclk ODDR output (40MHz) -> to Jitter Cleaner
  rxuserclk_d_oddr_inst: entity work.oddr40
    port map(
      d_in    => recclk40, 
      clk_in  => from_gt.rx_usrclk,
      clk_out => rxUserClk 
    );
--  rxuserclk_d_oddr_inst: entity work.oddr
--    port map(
--      clk_in  => from_gt.rx_usrclk,
--      clk_out => rxUserClk
--    );
  obufds_inst : obufds
    port map (
      O  => rxUserClk_p, 
      OB => rxUserClk_n,
      I  => rxUserClk 
    );
    
  -- single ended rxusrclk ODDR output (240MHz) -> to Scope
  rxuserclk_s_oddr_inst: entity work.oddr
    port map(
      clk_in  => from_gt.rx_usrclk,
      clk_out => rxUserClk_1
    );
  
  
------------------------------------------------------------------------
----- HOP GT - Tx Phase Aligner 
------------------------------------------------------------------------

--  hop_tx_aligner_inst: entity work.tx_phase_aligner
--   generic map (
--      -- User choice of DRP control or port control
--      -- Recommended nowadays to use in DRP control as a strange behaviour was observed using the port in PI code stepping mode
--      g_DRP_NPORT_CTRL        => true,  --! Uses DRP control of port control for the transmitter PI
--      g_DRP_ADDR_TXPI_PPM_CFG => ("010011010")  --! Check the transceiver user guide of your device for this address               
--    ) port map (
--      --==============================================================================
--      --! User control/monitor ports
--      --==============================================================================    
--      -- Clock / reset                                                       
--      clk_sys_i => clk_sys,           --! system clock input
--      reset_i   => not(from_hop_gt.tx_rdy) or from_axi.hopgt_pi_rstH, --txplllock is sys_clk domain --! active high sync. reset (recommended to keep reset_i=1 while transceiver reset initialization is being performed)

--      -- Top level interface                                                 
--      tx_aligned_o => hop_ali_done,  --! Use it as a reset for the user transmitter logic

--      -- Config (for different flavours)
--      tx_pi_phase_calib_i   => hop_frst_r_txpi_phase, --! previous calibrated tx pi phase (tx_pi_phase_o after first reset calibration)
--      tx_ui_align_calib_i   => hop_tx_ui_align_calib, --! align with previous calibrated tx pi phase
--      tx_fifo_fill_pd_max_i => x"00040000",  --! phase detector accumulated max output, sets precision of phase detector
--                                             --! this is supposedly a static signal, this block shall be reset whenever this signal changes
--                                             --! the time for each phase detection after a clear is given by tx_fifo_fill_pd_max_i * PERIOD_clk_txusr_i
--      tx_fine_realign_i     => hop_tx_fine_realign,  --! A rising edge will cause the Tx to perform a fine realignment to the half-response

--      -- It is only valid to re-shift clock once aligned (tx_aligned_o = '1') 
--      ps_strobe_i     => from_axi.hop_pi_ctrl(0), --! pulse synchronous to clk_sys_i to activate a shift in the phase (only captured rising edge, so a signal larger than a pulse is also fine)
--      ps_inc_ndec_i   => from_axi.hop_pi_ctrl(5),  --! 1 increments phase by phase_step_i units, 0 decrements phase by phase_step_i units
--      ps_phase_step_i => from_axi.hop_pi_ctrl(4 downto 1), --! number of units to shift the phase of the receiver clock (see Xilinx transceiver User Guide to convert units in time)       
--      ps_done_o       => hop_step_done,  --! pulse synchronous to clk_sys_i to indicate a phase shift was performed

--      -- Tx PI phase value
--      tx_pi_phase_o => hop_tx_pi_phase,  --! phase shift accumulated

--      -- Tx fifo fill level phase detector                                   
--      tx_fifo_fill_pd_o => hop_tx_fifo_fill_pd, --! phase detector output, when aligned this value should be close to (0x2_0000)

--      --==============================================================================
--      --! MGT ports
--      --==============================================================================
--      clk_txusr_i          => from_hop_gt.tx_usrclk,  --! txusr2clk                
--      -- Tx fifo fill level - see Xilinx transceiver User Guide for more information      
--      tx_fifo_fill_level_i => hop_gt_stat.txbufstatus(0),  --! connect to txbufstatus[0]

--      -- Transmitter PI ports - see Xilinx transceiver User Guide for more information
--      -- obs1: all txpi ports shall be connected to the transceiver even when using this block in DRP-mode                
--      txpippmen_o       => hop_gt_ctrl.txpippmen,  --! enable tx phase interpolator controller
--      txpippmovrden_o   => hop_gt_ctrl.txpippmovrden,  --! enable DRP control of tx phase interpolator
--      txpippmsel_o      => hop_gt_ctrl.txpippmsel,  --! set to 1 when using tx pi ppm controler
--      txpippmpd_o       => hop_gt_ctrl.txpippmpd,  --! power down transmitter phase interpolator 
--      txpippmstepsize_o => hop_gt_ctrl.txpippmstepsize,  --! sets step size and direction of phase shift with port control PI code stepping mode

--      -- DRP interface - see Xilinx transceiver User Guide for more information
--      -- obs2: connect clk_sys_i to drpclk
--      -- obs3: if using this block in port-mode, DRP output can be left floating and input connected to '0'               
--      drpaddr_o => hop_gt_ctrl.drpaddr(8 downto 0),  --! For devices with a 10-bit DRP address interface, connect MSB to '0'
--      drpen_o   => hop_gt_ctrl.drpen,         --! DRP enable transaction
--      drpdi_o   => hop_gt_ctrl.drpdi,  --! DRP data write
--      drprdy_i  => hop_gt_stat.drprdy,          --! DRP finished transaction
--      drpdo_i   => hop_gt_stat.drpdo,  --! DRP data read; not used nowadays, write only interface
--      drpwe_o   => hop_gt_ctrl.drpwe      --! DRP write enable
--    );
--    --hop_gt_ctrl.drpclk <= clk_sys; already connected, cpll requires it anyway
--    hop_tx_ui_align_calib <= from_axi.hop_ali_calib or vio_hop_ali_calib; -- if '0' does calib (first reset), if '1' uses that calibration to UI align (most precise way).
--    hop_tx_fine_realign   <= from_axi.hop_fine_rea or vio_hop_tx_fine_realign;
    
--    to_axi.hop_acc_phase <= hop_tx_pi_phase;
--    to_axi.hop_ali_done  <= hop_ali_done;
--    to_axi.hop_step_done <= hop_step_done_stiky;
    
--  process(clk_sys) begin
--    if rising_edge(clk_sys) then
--        if hop_tx_ui_align_calib = '0' then
--            hop_frst_r_txpi_phase <= hop_tx_pi_phase;
--        end if;
--    end if;
--  end process;
  
--  process(clk_sys) begin
--    if rising_edge(clk_sys) then
--        if hop_step_done = '1' then
--            hop_step_done_stiky <= '1';
--        elsif from_axi.hop_pi_ctrl(0) = '0' or from_hop_gt.tx_rdy = '0' or from_axi.hopgt_pi_rstH = '1' then
--            hop_step_done_stiky <= '0';
--        end if;
--    end if;
--  end process;
  
  
------------------------------------------------------------------------
----- DDMTD Phase measuremet(s)
------------------------------------------------------------------------
    
   DDMTD_inst : entity work.ddmtd_wrap
    generic map (
      in_freq            => 240.000e6,
      dmtd_freq          => 239.990e6,
      navg               => x"001",
      deglitch_threshold => x"0B40",
      g_counter_bits     => 20
    ) port map ( 
    -- not(from_axi.tx_enc_bypass) is used in RxFPGA to reset the DDMTD if remote reset is needed.
      rdy              => aligned and not(from_axi.tx_enc_bypass),  -- will be synchronized inside
      clk_sys          => clk_sys,
      gtfanout_in_p    => gtfanout_in_p,
      gtfanout_in_n    => gtfanout_in_n,
      hoptxusr         => '0',--from_hop_gt.tx_usrclk,
      rxusrclk_in      => from_gt.rx_usrclk,--hop_ref_m,
      ddmtdclk_in_p    => ddmtdclk_in_p,
      ddmtdclk_in_n    => ddmtdclk_in_n,
      phase_c          => to_axi.ddmtd_phase,
      phase_hop        => to_axi.ddmtd_hop
    );
  
  
------------------------------------------------------------------------
----- AXI - Ethernet Interface
------------------------------------------------------------------------
    
   AXI_inst: entity work.AXI_interface
    port map( 
      eth_gtrefclk_p => eth_gtrefclk_p,
      eth_gtrefclk_n => eth_gtrefclk_n,
--      phy_resetb  => phy_resetb,
--      phy_mdio    => phy_mdio,
--      phy_mdc     => phy_mdc,
      -- Ethernet SFP lane
      txn_eth_sfp => txn_eth_sfp,
      txp_eth_sfp => txp_eth_sfp,
      rxn_eth_sfp => rxn_eth_sfp,
      rxp_eth_sfp => rxp_eth_sfp,
      -- Ethernet addresses selection (group1 [1, Tx], group2 [2, Rx] or VIO [0])
      eth_addr_sel => eth_addr_sel,
      -- IIC
      sda => sda,
      scl => scl,
      -- synch and shared data
      clk_sys  => clk_sys,
      rxusrclk => from_gt.rx_usrclk,
      txusrclk => from_gt.tx_usrclk,
      to_axi   => to_axi,
      from_axi => from_axi
    );
    
    
------------------------------------------------------------------------
----- Temperature sensor moving average filter 
------------------------------------------------------------------------
    
  temp_sense: entity work.sys_man_wrap
    port map(
      clk          => clk_sys,
      rst          => '0',
      temp_avg_out => temperature -- accurate after 10 seconds from startup
    );
    
    
------------------------------------------------------------------------
----- Debug cores and other debug circuitry
------------------------------------------------------------------------ 
  
  ila_tx_inst: entity work.ila_1
    port map(
      clk           => from_gt.tx_usrclk,
      probe0        => gen_data,
      probe1        => to_gt.tx_data,
      probe2(0)     => enc_bypass
  );   
  
--  ila_hop_tx_inst: entity work.ila_1
--    port map(
--      clk           => from_hop_gt.tx_usrclk,
--      probe0        => gen_data_hop,
--      probe1        => to_hop_gt.tx_data,
--      probe2(0)     => '0'
--  );  

  ila_rx_inst: entity work.ila_0
    port map(
      clk           => from_gt.rx_usrclk,
      probe0        => from_gt.rx_data,
      probe1        => from_gt.rx_ctrl0, -- rxbyte is a K character
      probe2(0)     => rxreset_from_ali,
      probe3(0)     => valid,
      probe4        => data_check,
      probe5(0)     => aligned, 
      probe6(0)     => gt_ctrl.rxslide,
      probe7        => from_gt.rx_ctrl2,
      probe8        => slideCount,
      probe9        => st,
      probe10(0)    => rst_timeout,
      probe11       => oddsCount,
      probe12       => axi_gpio_ctrl_rxsynch(3 downto 0),
      probe13       => alignCount,
      probe14       => to_axi.lol_count,
      probe15(0)    => ali_en
  );
    
  vio_sys_inst: entity work.vio_0
    port map(
      clk           => clk_sys,  
      probe_in0(0)  => hop_gt_stat.gtpowergood, probe_in0(1) => hop_gt_stat.txplllock, 
      probe_in0(2)  => hop_gt_stat.txpmaresetdone, probe_in0(3) => hop_gt_stat.rxpmaresetdone,
      probe_in0(4)  => '0', probe_in0(5) => to_axi.hop_tx_gt_rdy,
      probe_in0(6)  => from_axi.hop_gt_tx_rst, probe_in0(7) => '0',
      probe_in1     => refclk_freq,
      probe_out0(0) => gt_ctrl.gtwiz_reset_all,
      probe_out1(0) => open,
      probe_out2(0) => vio_rx_reset
    );
  
--  vio_hop_inst: entity work.vio_0
--    port map(
--      clk           => clk_sys, 
--      probe_in0     => hop_txusr_freq,
--      probe_in1     => hop_ref_freq,
--      probe_out0(0) => vio_gen_rst_hop,
--      probe_out1(0) => hop_gt_ctrl.gtwiz_reset_all,
--      probe_out2(0) => vio_hop_tx_reset
--    );
        
--  vio_hop_tx_inst: entity work.vio_0
--    port map(
--      clk           => from_hop_gt.tx_usrclk,
--      probe_in0     => to_hop_gt.tx_data(7 downto 0),
--      probe_in1     => to_hop_gt.tx_data(39 downto 32),
--      probe_out0(0) => vio_hop_send_clk,
--      probe_out1(0) => open,
--      probe_out2(0) => open
--    );
    
  vio_rx_inst: entity work.vio_1
    port map(
      clk           => from_gt.rx_usrclk,
      probe_in0(0)  => from_gt.rx_rdy,
      probe_out0(0) => vioSlide,
      probe_out1(0) => vio_ali_en  -- active high
    );  
    
--  vio_hoptx_aligner: entity work.vio_3
--    port map (
--      clk           => clk_sys,
--      probe_in0     => hop_tx_fifo_fill_pd,
--      probe_in1     => hop_tx_pi_phase,
--      probe_in2(0)  => '0',
--      probe_in3(0)  => hop_ali_done,
--      probe_in4(0)  => hop_tx_ui_align_calib,
--      probe_out0(0) => vio_hop_ali_calib,
--      probe_out1(0) => vio_hop_tx_fine_realign
--    );
    
  freq_meas_ref : entity work.clock_monitor_full
    port map (
      clk_ref         => clk_sys, -- The reference clock
      clk_monitored   => refclk, -- The clock to measure
      measured_period => refclk_freq
    );
    
--  freq_meas_hopref : entity work.clock_monitor_full
--    port map (
--      clk_ref         => clk_sys, -- The reference clock
--      clk_monitored   => hop_ref_m, -- The clock to measure
--      measured_period => hop_ref_freq
--    );
    
--   freq_meas_hoptxusr : entity work.clock_monitor_full
--    port map (
--      clk_ref         => clk_sys, -- The reference clock
--      clk_monitored   => from_hop_gt.tx_usrclk, -- The clock to measure
--      measured_period => hop_txusr_freq
--    );

  mono_inst: entity work.hysteresis_monostable
    port map (
      rst                      => '0',
      clk                      => from_gt.rx_usrclk,
      monostable_trigger_async => vioSlide,
      monostable_out           => singleVIOSlide
    );
        
end architecture;
