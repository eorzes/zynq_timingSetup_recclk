library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use ieee.math_real.all;

entity ddmtd_wrap is
    generic (
        in_freq            : real := 240.000e6;
        dmtd_freq          : real := 239.990e6;
        navg               : std_logic_vector(11 downto 0) := x"001";
        deglitch_threshold : std_logic_vector(15 downto 0) := x"0B40";
        g_counter_bits     : integer := 20
    );
    port ( 
        rdy              : in  std_logic;
        clk_sys          : in  std_logic;
        gtfanout_in_p    : in  std_logic;
        gtfanout_in_n    : in  std_logic;
--        clnrxusrclk_in_p : in  std_logic;
--        clnrxusrclk_in_n : in  std_logic;
        hoptxusr         : in  std_logic;
        rxusrclk_in      : in  std_logic;
        ddmtdclk_in_p    : in  std_logic;
        ddmtdclk_in_n    : in  std_logic;
        phase_c          : out std_logic_vector(31 downto 0);
        phase_check_c    : out std_logic_vector(31 downto 0);
        phase_hop        : out std_logic_vector(31 downto 0);
        freq_gtfan       : out std_logic_vector(7 downto 0);
        freq_clnrxusr    : out std_logic_vector(7 downto 0)
    );
end ddmtd_wrap;

architecture Behavioral of ddmtd_wrap is

    signal gtfanout    : std_logic;
    signal clnrxusrclk : std_logic;
    signal clk_dmtd    : std_logic;

    signal rst_n_asynch : std_logic := '0';
    signal rst_n        : std_logic := '0';
    signal dmtd_rst_n   : std_logic := '0';
    
    --constant ddmtd_unit : real := 1.0e12 * (in_freq - dmtd_freq) / (in_freq * dmtd_freq);
    --constant counter_bits : integer := integer(ceil(log2(in_freq / abs(in_freq - dmtd_freq)))) + 1;

begin

  fanout_buf_inst: entity work.gt_buf
    port map(
      i     => gtfanout_in_p,  
      ib    => gtfanout_in_n,
      clk_o => gtfanout      -- Only way to use a GT Ref as a GPIO: GBTCLK pins -> IBUFGTE4.odiv2 -> BUFG_GT -> logic
    );
--  clnrxusr_buf_inst: entity work.gt_buf
--    port map(
--      i     => clnrxusrclk_in_p,  
--      ib    => clnrxusrclk_in_n,
--      clk_o => clnrxusrclk     -- Only way to use a GT Ref as a GPIO: GBTCLK pins -> IBUFGTE4.odiv2 -> BUFG_GT -> logic
--    );
  ddmtdclk_buf_inst: entity work.gt_buf
    port map(
      i     => ddmtdclk_in_p,  
      ib    => ddmtdclk_in_n,
      clk_o => clk_dmtd     -- Only way to use a GT Ref as a GPIO: GBTCLK pins -> IBUFGTE4.odiv2 -> BUFG_GT -> logic
    );
--  ddmtdclk_buf_inst: ibufds
--    port map(
--      i     => ddmtdclk_in_p,  
--      ib    => ddmtdclk_in_n,
--      o     => clk_dmtd     
--    );

    rst_n_asynch <= rdy;
    
    bit_synch_sys: entity work.bit_synch
    port map (
        bit_in  => rst_n_asynch, 
        clk     => clk_sys, 
        bit_out => rst_n   
    ); 
    bit_synch_dmtd: entity work.bit_synch
    port map (
        bit_in  => rst_n, 
        clk     => clk_dmtd, 
        bit_out => dmtd_rst_n   
    ); 
    
--   vio_dmtd_inst: entity work.vio_1
--    port map(
--      clk           => clk_sys,
--      probe_in0(0)  => rst_n,
--      probe_out0(0) => open,
--      probe_out1(0) => open
--    );  

    ddmtd: entity work.dmtd_phase_meas
        generic map ( g_counter_bits => g_counter_bits ) --counter_bits
        port map (
            -- resets
            rst_sys_n_i         => rst_n,        -- sys_clk
            rst_dmtd_n_i        => dmtd_rst_n,   -- dmtd_clk
    
            -- system clock 
            clk_sys_i            => clk_sys,
            -- Input clocks  
            clk_a_i              => gtfanout,
            clk_b_i              => rxusrclk_in,
            clk_dmtd_i           => clk_dmtd,
    
            deglitch_threshold_i => deglitch_threshold,
            en_i                 => '1',
    
            navg_i               => navg,
            phase_meas_o         => phase_c,
            phase_meas_p_o       => open
        );
        
--      ddmtd_hop: entity work.dmtd_phase_meas
--        generic map ( g_counter_bits => g_counter_bits ) --counter_bits
--        port map (
--            -- resets
--            rst_sys_n_i         => rst_n,        -- sys_clk
--            rst_dmtd_n_i        => dmtd_rst_n,   -- dmtd_clk
    
--            -- system clock 
--            clk_sys_i            => clk_sys,
--            -- Input clocks  
--            clk_a_i              => rxusrclk_in,
--            clk_b_i              => hoptxusr,
--            clk_dmtd_i           => clk_dmtd,
    
--            deglitch_threshold_i => deglitch_threshold,
--            en_i                 => '1',
    
--            navg_i               => navg,
--            phase_meas_o         => phase_hop,
--            phase_meas_p_o       => open
--        );
        
--  freq_meas_fanout : entity work.clock_monitor_full
--    port map (
--        clk_ref         => clk_sys, -- The reference clock
--        clk_monitored   => gtfanout, -- The clock to measure
--        measured_period => freq_gtfan
--    );
--  freq_meas_clnrxusr : entity work.clock_monitor_full
--    port map (
--        clk_ref         => clk_sys, -- The reference clock
--        clk_monitored   => clnrxusrclk, -- The clock to measure
--        measured_period => freq_clnrxusr
--    );
    
end Behavioral;
