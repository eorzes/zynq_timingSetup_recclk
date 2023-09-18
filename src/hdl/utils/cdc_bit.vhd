library ieee;
use ieee.std_logic_1164.all;

library xpm;
use xpm.vcomponents.all;

entity cdc_bit is
  port
  (
    src_clk : in  std_logic:='0';
    clk     : in  std_logic;
    i       : in  std_logic;
    o       : out std_logic
  );
end cdc_bit;

architecture rtl of cdc_bit is

begin

xpm_inst: xpm_cdc_array_single
  generic map
  ( 
    DEST_SYNC_FF   => 4, --integer; range: 2-10
    SIM_ASSERT_CHK => 0, --integer; 0 = disable simulation messages, 1 = enable simulation messages
    SRC_INPUT_REG  => 0, --integer; 0 = do not register input, 1 = register input
    WIDTH          => 1  --integer; range:1-1024
  )
  port map
  (
    src_clk     => src_clk,  --optional; required when SRC_INPUT_REG = 1
    dest_clk    => clk,
    src_in(0)   => i,
    dest_out(0) => o
  );

end rtl;

