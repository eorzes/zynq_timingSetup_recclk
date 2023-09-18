library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

library xpm;
use xpm.vcomponents.all;

entity bit_synch is
    port ( 
        clk     : in  std_logic;
        bit_in  : in  std_logic;
        bit_out : out std_logic
    );
end bit_synch;

architecture Behavioral of bit_synch is

begin
        
   xpm_cdc_single_inst : xpm_cdc_single
   generic map (
      DEST_SYNC_FF => 4,   -- DECIMAL; range: 2-10
      INIT_SYNC_FF => 0,   -- DECIMAL; 0=disable simulation init values, 1=enable simulation init values
      SIM_ASSERT_CHK => 0, -- DECIMAL; 0=disable simulation messages, 1=enable simulation messages
      SRC_INPUT_REG => 0   -- DECIMAL; 0=do not register input, 1=register input
   )
   port map (
      dest_out => bit_out, -- 1-bit output: src_in synchronized to the destination clock domain. This output
                            -- is registered.
      dest_clk => clk, -- 1-bit input: Clock signal for the destination clock domain.
      src_clk => '0',   -- 1-bit input: optional; required when SRC_INPUT_REG = 1
      src_in => bit_in      -- 1-bit input: Input signal to be synchronized to dest_clk domain.
   );

end Behavioral;
