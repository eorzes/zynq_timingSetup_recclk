library ieee;
use ieee.std_logic_1164.all;

library unisim;
use unisim.vcomponents.all;

entity clk_buf is
generic (
  sclk_freq : integer:= 125000000;
  hbeat_freq: integer:= 125000000
);
port 
(
  i     : in  std_logic;  
  ib    : in  std_logic;  
  o     : out std_logic;  
  sclk  : in  std_logic:='0';
  rstn  : in  std_logic:='1';
  freq  : out std_logic_vector(31 downto 0);
  hbeat : out std_logic
);
end clk_buf;

architecture wrap of clk_buf is

  signal clk_pre  : std_logic;
  signal clk      : std_logic;

begin

  ibuf_inst: ibufds port map(i => i, ib => ib, o => clk_pre);   
  
  bufg_inst : bufg port map(i => clk_pre, o => clk);
  
  o <= clk;
  
  freq_inst: entity work.freq_meas 
    generic map(mclk_freq => sclk_freq) 
    port map(
      mclk_i    => sclk, 
      rstn_i    => rstn, 
      clk_uut_i => clk, 
      freq_o    => freq
    );

  hb_inst: entity work.hb 
    generic map(freq => hbeat_freq)
    port map(
	  rst     => not (rstn), 								
	  i	      => sclk,	
	  o       => hbeat
    );
    
end wrap;
