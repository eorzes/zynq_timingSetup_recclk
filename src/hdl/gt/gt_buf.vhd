library ieee;
use ieee.std_logic_1164.all;

library unisim;
use unisim.vcomponents.all;

entity gt_buf is
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
  hbeat : out std_logic;
  clk_o : out std_logic
);
end gt_buf;

architecture wrap of gt_buf is
  
  signal rst_sclk      : std_logic; 
  signal clk_odiv2     : std_logic;
  signal clk_odiv2_buf : std_logic;
begin
    
  ibuf_inst: ibufds_gte4 
   generic map (
      refclk_en_tx_path    => '0', 
      refclk_hrow_ck_sel   => "00",
      refclk_icntl_rx      => "00"
   )
   port map (
      i         => i, 
      ib        => ib, 
      o         => o, 
      ceb       => '0',
      odiv2     => clk_odiv2
   );

  bufg_inst : bufg_gt
    port map(
      o         =>  clk_odiv2_buf, -- 1-bit output: buffer
      ce        => '1',            -- 1-bit input: buffer enable
      cemask    => '1',            -- 1-bit input: ce mask
      clr       => '0',            -- 1-bit input: asynchronous clear
      clrmask   => '1',            -- 1-bit input: clr mask
      div       => "000",          -- 3-bit input: dymanic divide value
      i         => clk_odiv2       -- 1-bit input: buffer
    );
  
  freq_inst: entity work.freq_meas 
    generic map(mclk_freq => sclk_freq) 
    port map(
      mclk_i    => sclk, 
      rstn_i    => rstn, 
      clk_uut_i => clk_odiv2_buf, 
      freq_o    => freq
    );

  hb_inst: entity work.hb 
    generic map(freq => hbeat_freq)
    port map(
	  rst => not (rstn), 								
	  i	  => clk_odiv2_buf,	
	  o   => hbeat
    );

   clk_o <= clk_odiv2_buf;
    
end wrap;
