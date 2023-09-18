library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_misc.all;
use ieee.numeric_std.all;
use work.utility_pkg.all;
use work.gt_pkg.all;

library unisim;
use unisim.vcomponents.all;

entity m_gt is
  generic (
    N_CH        : positive:=1;
    MTX         : positive range 0 to 3:= 0
  );
  port(
    clk_sys     : in  std_logic;
    gt_refclk_p : in  std_logic;
    gt_refclk_n : in  std_logic;
    gt_rx_p     : in  std_logic_vector(0 to N_CH-1);
    gt_rx_n     : in  std_logic_vector(0 to N_CH-1);
    gt_tx_p     : out std_logic_vector(0 to N_CH-1);
    gt_tx_n     : out std_logic_vector(0 to N_CH-1);
    gt_ctrl_i   : in  gt_ctrl_array_t (0 to N_CH-1);
    gt_stat_o   : out gt_stat_array_t (0 to N_CH-1);
    gt_i        : in  to_gt_array_t   (0 to N_CH-1);
    gt_o        : out from_gt_array_t (0 to N_CH-1);
    refclk      : out std_logic
  );
end m_gt;

architecture rtl of m_gt is
  
  signal gt_refclk          : std_logic;
  
  signal gt_ctrl            : gt_ctrl_array_t(0 to N_CH-1);
  signal gt_stat            : gt_stat_array_t(0 to N_CH-1);
  
  signal qpll_reset_from_gt : std_logic_vector(0 to N_CH-1);
  signal qpll_reset         : std_logic;
  signal qpll_lock          : std_logic;
  signal qpll_clk           : std_logic;
  signal qpll_refclk        : std_logic;   
  
  signal txoutclk           : std_logic_vector(0 to N_CH-1);    
  signal txusrclk           : std_logic;      
  
  signal rxoutclk           : std_logic_vector(0 to N_CH-1);    
  signal rxusrclk           : std_logic_vector(0 to N_CH-1);      
  
  signal txreset            : std_logic_vector(0 to N_CH-1);
  signal rxreset            : std_logic_vector(0 to N_CH-1);
  signal txactive           : std_logic_vector(0 to N_CH-1);
  signal txactive_meta      : std_logic_vector(0 to N_CH-1);
  
  signal rxactive           : std_logic_vector(0 to N_CH-1);
  signal rxactive_meta      : std_logic_vector(0 to N_CH-1);
  signal rxreset_buffbypass : std_logic_vector(0 to N_CH-1);
  
  signal tx_data            : std_logic_vector_array_t(0 to N_CH-1)(39 downto 0);        

begin
  
  ---------------------------
  gtclk_inst: entity work.gt_buf
  ---------------------------
    port map(
      i  => gt_refclk_p,  
      ib => gt_refclk_n,  
      o  => gt_refclk,
      clk_o => refclk
    );
  
  qpll_reset <= or_reduce(qpll_reset_from_gt);
  ---------------------------
  qpll_inst: entity work.m_gt_qpll
  ---------------------------
    port map(
      sysclk_i          => clk_sys,  
      refclk_i          => gt_refclk,
      reset_i           => qpll_reset,
      lock_o            => qpll_lock,
      outclk_o          => qpll_clk,
      outrefclk_o       => qpll_refclk
    ); 
     
  ---------------------------
  -- clock scheme
  ---------------------------
  tx_usrclk_bufg_gt : bufg_gt 
    port map( 
      i       => txoutclk(MTX),
      o       => txusrclk,
      ce      => '1',     
      cemask  => '0',     
      clr     => '0',     
      clrmask => '0',     
      div     => "000"   
    );

  ch: for i in 0 to N_CH-1 generate
    ---------------------------
    -- io map
    ---------------------------
    gt_ctrl(i)   <= gt_ctrl_i(i);
    gt_stat_o(i) <= gt_stat(i);

    gt_stat(i).txplllock <= qpll_lock;
    
    gt_o(i).rx_usrclk <= rxusrclk(i);
    gt_o(i).tx_usrclk <= txusrclk;

    rx_usrclk_bufg_gt : bufg_gt 
      port map( 
        i       => rxoutclk(i),
        o       => rxusrclk(i),
        ce      => '1',     
        cemask  => '0',     
        clr     => '0',     
        clrmask => '0',     
        div     => "000"   
       );
    
    ---------------------------
    -- ready
    ---------------------------
    gt_o(i).tx_rdy <= gt_stat(i).gtwiz_reset_tx_done;
    gt_o(i).rx_rdy <= gt_stat(i).gtwiz_reset_rx_done;
      
    ---------------------------
    -- reset scheme
    ---------------------------
    -- User clock reset
    -- Keep user clock in reset mode until PMA reset is finished
    txreset(i) <= not gt_stat(i).txpmaresetdone;
    rxreset(i) <= not gt_stat(i).rxpmaresetdone;
    
    -- tx active process
    p_userclk_tx_active : process (txusrclk, txreset(i))
    begin
      if(txreset(i) = '1') then
        txactive_meta(i) <= '0';
        txactive(i)      <= '0';		
      elsif rising_edge(txusrclk) then
        txactive_meta(i) <= '1';
        txactive(i)      <= txactive_meta(i);	
      end if;
    end process;
    
    -- rx active process
    p_userclk_rx_active : process (rxusrclk(i), rxreset(i))
    begin
      if(rxreset(i) = '1') then
          rxactive_meta(i) <= '0';
          rxactive(i)      <= '0';		
      elsif rising_edge(rxusrclk(i)) then
          rxactive_meta(i) <= '1';
          rxactive(i)      <= rxactive_meta(i);	
      end if;
    end process;
    
    -- Rx buffer-bypass reset
    -- Keep Rx bufferbypass in reset mode until user clock is not active  
    cmp_rx_buffbypass_reset_synchronizer : entity work.reset_sync
      generic map (RST_ACTIVE_HIGH => 1)
      port map(
        clk_i  => rxusrclk(i),
        arst_i  => not(rxactive(i)),
        rst_sync_o => rxreset_buffbypass(i)
    );
    
    ---------------------------
    inst : entity work.m_gth
    ---------------------------
      port map(
        gtwiz_reset_clk_freerun_in(0)         => clk_sys,  
        gtwiz_reset_all_in(0)                 => gt_ctrl(i).gtwiz_reset_all, 
        gtwiz_reset_tx_pll_and_datapath_in(0) => gt_ctrl(i).gtwiz_reset_tx_pll_and_datapath, 
        gtwiz_reset_rx_pll_and_datapath_in(0) => gt_ctrl(i).gtwiz_reset_rx_pll_and_datapath,       
        gtwiz_reset_tx_datapath_in(0)         => gt_ctrl(i).gtwiz_reset_tx_datapath, 
        gtwiz_reset_rx_datapath_in(0)         => gt_ctrl(i).gtwiz_reset_rx_datapath, 
        gtwiz_reset_qpll1lock_in(0)           => qpll_lock,
        gtwiz_reset_qpll1reset_out(0)         => qpll_reset_from_gt(i),
        qpll0clk_in(0)                        => '0',
        qpll0refclk_in(0)                     => '0',
        qpll1clk_in(0)                        => qpll_clk,
        qpll1refclk_in(0)                     => qpll_refclk,
    
        -- User_clocking
        rxusrclk_in(0)                        => rxusrclk(i),
        rxusrclk2_in(0)                       => rxusrclk(i),
        txusrclk_in(0)                        => txusrclk,
        txusrclk2_in(0)                       => txusrclk,
        rxoutclk_out(0)                       => rxoutclk(i),
        txoutclk_out(0)                       => txoutclk(i),

        -- Channel                                                                                                  
        gtwiz_userclk_tx_active_in(0)         => txactive(i),   
        gtwiz_userclk_rx_active_in(0)         => rxactive(i),
        gtwiz_buffbypass_rx_reset_in(0)       => rxreset_buffbypass(i),
        gtwiz_buffbypass_rx_start_user_in(0)  => gt_ctrl(i).gtwiz_buffbypass_rx_start_user,
        gtwiz_buffbypass_rx_done_out(0)       => gt_stat(i).gtwiz_buffbypass_rx_done, 
        gtwiz_buffbypass_rx_error_out(0)      => gt_stat(i).gtwiz_buffbypass_rx_error, 
        gtwiz_reset_rx_cdr_stable_out(0)      => gt_stat(i).gtwiz_reset_rx_cdr_stable, 
        gtwiz_reset_tx_done_out(0)            => gt_stat(i).gtwiz_reset_tx_done, 
        gtwiz_reset_rx_done_out(0)            => gt_stat(i).gtwiz_reset_rx_done,  
        loopback_in                           => gt_ctrl(i).loopback, 
        
        -- Rx Equalizer
        rxlpmgchold_in(0)                     => gt_ctrl(i).rxlpmgchold,    
        rxlpmgcovrden_in(0)                   => gt_ctrl(i).rxlpmgcovrden,  
        rxlpmhfhold_in(0)                     => gt_ctrl(i).rxlpmhfhold,   
        rxlpmhfovrden_in(0)                   => gt_ctrl(i).rxlpmhfovrden,  
        rxlpmlfhold_in(0)                     => gt_ctrl(i).rxlpmlfklhold, 
        rxlpmlfklovrden_in(0)                 => gt_ctrl(i).rxlpmlfklovrden, 
        rxlpmoshold_in(0)                     => gt_ctrl(i).rxlpmoshold,   
        rxlpmosovrden_in(0)                   => gt_ctrl(i).rxlpmosovrden,  
        
        rxslide_in(0)                         => gt_ctrl(i).rxslide, 
        dmonitorclk_in(0)                     => gt_ctrl(i).dmonitorclk,       
        drpaddr_in                            => gt_ctrl(i).drpaddr(9 downto 0),  
        drpclk_in(0)                          => gt_ctrl(i).drpclk,  
        drpdi_in                              => gt_ctrl(i).drpdi,  
        drpen_in(0)                           => gt_ctrl(i).drpen,  
        drpwe_in(0)                           => gt_ctrl(i).drpwe,  
        eyescanreset_in(0)                    => gt_ctrl(i).eyescanreset,   
        rxpolarity_in(0)                      => gt_ctrl(i).rxpolarity, 
        rxprbscntreset_in(0)                  => gt_ctrl(i).rxprbscntreset, 
        rxprbssel_in                          => gt_ctrl(i).rxprbssel, 
        txpippmen_in(0)                       => gt_ctrl(i).txpippmen, 
        txpippmovrden_in(0)                   => gt_ctrl(i).txpippmovrden, 
        txpippmpd_in(0)                       => gt_ctrl(i).txpippmpd, 
        txpippmsel_in(0)                      => gt_ctrl(i).txpippmsel, 
        txpippmstepsize_in                    => gt_ctrl(i).txpippmstepsize,                                
        txpolarity_in(0)                      => gt_ctrl(i).txpolarity, 
        txprbsforceerr_in(0)                  => gt_ctrl(i).txprbsforceerr, 
        txprbssel_in                          => gt_ctrl(i).txprbssel,                                 
        dmonitorout_out(15 downto 0)          => gt_stat(i).dmonitorout(15 downto 0),   
      --dmonitorout_out(15)                   => open,                               
        drpdo_out                             => gt_stat(i).drpdo,  
        drprdy_out(0)                         => gt_stat(i).drprdy,  
        rxprbserr_out(0)                      => gt_stat(i).rxprbserr,  
        rxprbslocked_out(0)                   => gt_stat(i).rxprbslocked,  
        txbufstatus_out                       => gt_stat(i).txbufstatus,  
        txpmaresetdone_out(0)                 => gt_stat(i).txpmaresetdone, 
        rxpmaresetdone_out(0)                 => gt_stat(i).rxpmaresetdone, 
        gtpowergood_out(0)                    => gt_stat(i).gtpowergood,                     
        gtwiz_userdata_tx_in                  => gt_i(i).tx_data,
        gtwiz_userdata_rx_out                 => gt_o(i).rx_data,
        gthrxn_in(0)                          => gt_rx_n(i), 
        gthrxp_in(0)                          => gt_rx_p(i), 
        gthtxn_out(0)                         => gt_tx_n(i), 
        gthtxp_out(0)                         => gt_tx_p(i),
        -- extras (CPLL related)
--      gtrefclk0_in(0)                       => gt_refclk,
--      gtwiz_userclk_tx_reset_in(0)          => '0',
--      gtwiz_userclk_rx_reset_in(0)          => '0',
        cplllock_out(0)                       => gt_stat(i).rxplllock,
        cplllockdetclk_in(0)                  => clk_sys,
        cpllrefclklost_out(0)                 => open,
        -- 8b10b related -----------------
        rxcommadeten_in(0)                    => gt_ctrl(i).rxcommadeten,    --'1'
        rxmcommaalignen_in(0)                 => gt_ctrl(i).rxmcommaalignen, --'1'
        rxpcommaalignen_in(0)                 => gt_ctrl(i).rxpcommaalignen, --'1'
        rxbyterealign_out(0)                  => open,
        rxbyteisaligned_out(0)                => gt_o(i).rx_aligned,
        rxcommadet_out(0)                     => open,
        rx8b10ben_in(0)                       => '1',
--      tx8b10ben_in(0)                       => '1',
        --
--      txctrl0_in                            => (others => '0'),
--      txctrl1_in                            => (others => '0'),
--      txctrl2_in                            => "0000" & tx_ctrl2, -- gt_i.tx_ctrl2,
        --
        rxctrl0_out( 3 downto 0)              => gt_o(i).rx_ctrl0, rxctrl0_out(15 downto 4) => open,            
        rxctrl1_out( 3 downto 0)              => gt_o(i).rx_ctrl1, rxctrl1_out(15 downto 4) => open,            
        rxctrl2_out( 3 downto 0)              => gt_o(i).rx_ctrl2, rxctrl2_out( 7 downto 4) => open,            
        rxctrl3_out( 3 downto 0)              => gt_o(i).rx_ctrl3, rxctrl3_out( 7 downto 4) => open,
        
        rxrecclkout_out(0)                    => gt_o(i).rxrecclk                           
      );    

  end generate ch;

end rtl;
