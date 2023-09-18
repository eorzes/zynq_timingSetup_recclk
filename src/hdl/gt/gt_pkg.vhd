library ieee;
use ieee.std_logic_1164.all;

package gt_pkg is

  type from_gt_t is record  -- from the GT to the user logic
    tx_usrclk : std_logic;
    rx_usrclk : std_logic;
    rx_data   : std_logic_vector(31 downto 0);
    rx_ctrl0  : std_logic_vector( 3 downto 0); -- 1 bit per data byte   
    rx_ctrl1  : std_logic_vector( 3 downto 0); -- 1 bit per data byte   
    rx_ctrl2  : std_logic_vector( 3 downto 0); -- 1 bit per data byte   
    rx_ctrl3  : std_logic_vector( 3 downto 0); -- 1 bit per data byte
    rx_rdy    : std_logic;
    tx_rdy    : std_logic;
    rx_aligned: std_logic; -- 1 bit connected to rxbyteisaligned_out
    rxrecclk  : std_logic; -- recovered clk directly from data stream (divided): doesn't go in fpga logic, has 10 times less jitter than rxoutclk
  end record;
  
  type gt_eq_t is record  -- rx LPM equalizer configuration values
    lpmlf   : std_logic_vector(1 downto 0);
    lpmhf   : std_logic_vector(1 downto 0);
    lpmos   : std_logic_vector(1 downto 0);
    lpmgc   : std_logic_vector(1 downto 0);
  end record;
  
  type to_txpi_t is record
    stepsize : std_logic_vector(4 downto 0);
    ppmen    : std_logic;
  end record;
  
  type from_axi_t is record  -- ethernet gpio data, from python to axi
    rx_reset      : std_logic;
    tx_enc_bypass : std_logic;
    rx_aligner_en : std_logic;
    tx_reset      : std_logic;
    gt_eq         : gt_eq_t;
    pi_ctrl       : std_logic_vector(5 downto 0);
    hop_gt_tx_rst : std_logic;
    hop_ali_calib : std_logic;
    hop_fine_rea  : std_logic;
    hopgt_pi_rstH : std_logic;
    hop_pi_ctrl   : std_logic_vector(5 downto 0);
    hop_gt_nUI    : std_logic_vector(5 downto 0);
  end record;

  type to_axi_t is record  -- ethernet gpio data, from python to axi
    ready       : std_logic;
    slide_count : std_logic_vector(14 downto 0);
    odds_count  : std_logic_vector(14 downto 0);
    temp        : std_logic_vector(9 downto 0);
    lol_count   : std_logic_vector(7 downto 0);
    lol_ovf     : std_logic;
    ddmtd_phase : std_logic_vector(31 downto 0);
    hop_acc_phase   : std_logic_vector(6 downto 0);
    hop_ali_done    : std_logic;
    hop_step_done   : std_logic;
    hop_tx_gt_rdy   : std_logic;
    ddmtd_hop       : std_logic_vector(31 downto 0);
  end record;

  type to_gt_t is record -- from the user logic to GT
    tx_data  : std_logic_vector(39 downto 0);
  end record;

  type gt_stat_t is record
    dmonitorout                     : std_logic_vector(15 downto 0);
    drpdo                           : std_logic_vector(15 downto 0);
    drprdy                          : std_logic;
    rxprbserr                       : std_logic;
    rxprbslocked                    : std_logic;
    txbufstatus                     : std_logic_vector( 1 downto 0);
    txplllock                       : std_logic;
    rxplllock                       : std_logic;
    gtwiz_buffbypass_rx_done        : std_logic;
    gtwiz_buffbypass_rx_error       : std_logic;
    gtwiz_reset_rx_cdr_stable       : std_logic;
    gtwiz_reset_tx_done             : std_logic;
    gtwiz_reset_rx_done             : std_logic;
    txpmaresetdone                  : std_logic;
    rxpmaresetdone                  : std_logic;
    gtpowergood                     : std_logic;
  end record;

  type gt_ctrl_t is record
    rxslide                         : std_logic;
    gtwiz_reset_all                 : std_logic;
    gtwiz_reset_tx_pll_and_datapath : std_logic;
    gtwiz_reset_rx_pll_and_datapath : std_logic;
    gtwiz_reset_tx_datapath         : std_logic;
    gtwiz_reset_rx_datapath         : std_logic;
    drpaddr                         : std_logic_vector( 9 downto 0);
    drpclk                          : std_logic;
    drpdi                           : std_logic_vector(15 downto 0);
    drpen                           : std_logic;
    drpwe                           : std_logic;
    dmonitorclk                     : std_logic;
    eyescanreset                    : std_logic;
    rxpolarity                      : std_logic;
    rxprbscntreset                  : std_logic;
    rxprbssel                       : std_logic_vector( 3 downto 0);
    txpippmen                       : std_logic;
    txpippmovrden                   : std_logic;
    txpippmpd                       : std_logic;
    txpippmsel                      : std_logic;
    txpippmstepsize                 : std_logic_vector( 4 downto 0);
    txpolarity                      : std_logic;
    txprbsforceerr                  : std_logic;
    txprbssel                       : std_logic_vector( 3 downto 0);
    loopback                        : std_logic_vector( 2 downto 0);
    rxcommadeten                    : std_logic;    
    rxmcommaalignen                 : std_logic; 
    rxpcommaalignen                 : std_logic; 
--  rxdfeagcovrden                  : std_logic;
--  rxdfelfovrden                   : std_logic;
--  rxdfelpmreset                   : std_logic;
--  rxdfeutovrden                   : std_logic;
--  rxdfevpovrden                   : std_logic;
--  rxlpmen                         : std_logic;
    rxlpmgcovrden                   : std_logic;
    rxlpmhfovrden                   : std_logic;
    rxlpmlfklovrden                 : std_logic;
    rxlpmosovrden                   : std_logic;
    rxlpmgchold                     : std_logic;
    rxlpmhfhold                     : std_logic;
    rxlpmlfklhold                   : std_logic;
    rxlpmoshold                     : std_logic;
--  rxosovrden                      : std_logic;
    gtwiz_buffbypass_rx_reset       : std_logic;
    gtwiz_buffbypass_rx_start_user  : std_logic;
    gtwiz_userclk_tx_active         : std_logic;
    gtwiz_userclk_rx_active         : std_logic;
  end record;

  constant GT_CTRL_NULL : gt_ctrl_t := (
    rxslide                         => '0',
    gtwiz_reset_all                 => '0',
    gtwiz_reset_tx_pll_and_datapath => '0',
    gtwiz_reset_rx_pll_and_datapath => '0',
    gtwiz_reset_tx_datapath         => '0',
    gtwiz_reset_rx_datapath         => '0',
    drpaddr                         => (others => '0'),
    drpclk                          => '0',
    drpdi                           => (others => '0'),
    drpen                           => '0',
    drpwe                           => '0',
    dmonitorclk                     => '0',
    eyescanreset                    => '0',
    rxpolarity                      => '0',
    rxprbscntreset                  => '0',
    rxprbssel                       => (others => '0'),
    txpippmen                       => '0',
    txpippmovrden                   => '0',
    txpippmpd                       => '0',
    txpippmsel                      => '0',
    txpippmstepsize                 => (others => '0'),
    txpolarity                      => '0',
    txprbsforceerr                  => '0',
    txprbssel                       => (others => '0'),
    rxcommadeten                    => '1',
    rxmcommaalignen                 => '0', --'1'
    rxpcommaalignen                 => '0', --'1'
    loopback                        => (others => '0'),
    
    rxlpmgcovrden                   => '0',
    rxlpmhfovrden                   => '0',
    rxlpmlfklovrden                 => '0',
    rxlpmosovrden                   => '0',
    rxlpmgchold                     => '0',
    rxlpmhfhold                     => '0',
    rxlpmlfklhold                   => '0',
    rxlpmoshold                     => '0',
    
    gtwiz_buffbypass_rx_reset       => '0',
    gtwiz_buffbypass_rx_start_user  => '0',
    gtwiz_userclk_tx_active         => '0',
    gtwiz_userclk_rx_active         => '0'
  );
  

  -- record array definitions  
  type to_gt_array_t    is array (natural range <>) of to_gt_t;
  type from_gt_array_t  is array (natural range <>) of from_gt_t;

  type gt_ctrl_array_t  is array (natural range <>) of gt_ctrl_t;
  type gt_stat_array_t  is array (natural range <>) of gt_stat_t;
  
  --type from_axi_array_t is array (natural range <>) of from_axi_t;
  --type to_axi_array_t   is array (natural range <>) of to_axi_t;

end package gt_pkg;

package body gt_pkg is
end package body gt_pkg;
