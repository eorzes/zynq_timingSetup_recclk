library ieee;
use ieee.std_logic_1164.all;
use ieee.NUMERIC_STD.all;

entity freq_meas is
  generic(
    mclk_freq: integer:= 100000000
  );
  port(
    mclk_i     : in  std_logic;
    rstn_i     : in  std_logic;
    clk_uut_i  : in  std_logic;
    freq_o     : out std_logic_vector(31 downto 0)
  );
end freq_meas;

architecture rtl of freq_meas is

  signal trig_sr       : unsigned( 7 downto 0);
  signal trig          : std_logic;
  signal trig_uut      : std_logic;
  signal trig_uut_prev : std_logic;
  
  signal freq_uut      : std_logic_vector(31 downto 0);
  
  signal timer         : integer;    
  signal cnt_uut       : unsigned(31 downto 0);

  signal rstn_mclk     : std_logic;
  signal rstn_clk_uut  : std_logic;
  
begin


  rst_sync_mclk: entity work.reset_sync
    generic map( 
      RST_ACTIVE_HIGH => 0
    )
    port map(
      clk_i      => mclk_i,
      arst_i     => rstn_i,
      rst_sync_o => rstn_mclk
    );

  rst_sync_clk_uut: entity work.reset_sync
    generic map( 
      RST_ACTIVE_HIGH => 0
    )
    port map(
      clk_i      => clk_uut_i,
      arst_i     => rstn_i,
      rst_sync_o => rstn_clk_uut
    );

--======================================--
mclk_timer: process (mclk_i)
--======================================--
begin
if rising_edge(mclk_i) then 
  if rstn_mclk = '0' then
    timer   <= mclk_freq-1;
    trig_sr <= (others => '0');
    trig    <= '0'; 
  else
    -- extend the trig pulse for slow clock measurements
    if trig_sr /=0 then
      trig <= '1';
    else 
      trig <= '0'; 
    end if; 
    --     
    trig_sr <= trig_sr(trig_sr'length-2 downto 0) & '0';
    --
    if timer=0 then 
      trig_sr <= x"ff";
      timer <= mclk_freq-1; 
    else 
      timer <= timer-1; 
    end if;
    -- 
  end if;  
end if;
end process;
--======================================--

--======================================--
sync_trig: entity work.cdc_bit 
--======================================--
  port map ( 
    CLK => clk_uut_i, 
    I   => trig, 
    O   => trig_uut
  );
--======================================--

--======================================--
clk_uut_tick_counter: process (clk_uut_i) -- count clk_uut nbr of ticks between trig pulses
--======================================--
begin
  if rising_edge(clk_uut_i) then 
    if rstn_clk_uut = '0' then
      trig_uut_prev <='0';
      cnt_uut       <= x"00000001";
      freq_uut      <= x"00000000";
    else
      --
      if trig_uut='1' and trig_uut_prev='0' then 
        freq_uut <= std_logic_vector(cnt_uut); 
        cnt_uut  <= x"00000001"; 
      else 
        cnt_uut <= cnt_uut+1; 
      end if; 
      --
      trig_uut_prev <= trig_uut;
    end if;
  end if;
end process;
--======================================--

--======================================--
sync_freq: entity work.cdc_vec 
--======================================--
  generic map (W => 32) 
  port map (
    ARSTN   => rstn_clk_uut, --rstn_i,
    SRC_CLK => clk_uut_i,
    I       => freq_uut, 
    DST_CLK => mclk_i, 
    O       => freq_o 
);
--======================================--

end rtl;