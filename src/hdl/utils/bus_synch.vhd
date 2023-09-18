----------------------------------------------------------------------------------
-- Company: CERN
-- Engineer: Edoardo Orzes
-- 
-- Create Date: 02/13/2023 02:25:31 PM
-- Module Name: 
-- Target Devices: GTH Kintex Ultrascale Transceiver
-- Description: 

-- Revision: v1.0
----------------------------------------------------------------------------------

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.numeric_std.ALL;


entity bus_synch is
  generic (
    NBITS : integer
  ); 
  port(
    clk            : in  std_logic;
    clk_start      : in  std_logic;
    data_asynch_in : in  std_logic_vector(NBITS-1 downto 0);
    data_synch_out : out std_logic_vector(NBITS-1 downto 0)
  );
end bus_synch;

architecture Behavioral of bus_synch is
    
begin

    gen: for i in 0 to NBITS-1 generate
      xpm_cdc_single_inst: entity work.xpm_cdc_single
       generic map (SRC_INPUT_REG => 1)   -- DECIMAL; 0=do not register input, 1=register input: require src_clk => src_clk
       port map (
          dest_out => data_synch_out(i), -- 1-bit output: src_in synchronized to the destination clock domain. This output is registered.
          dest_clk => clk, -- 1-bit input: Clock signal for the destination clock domain.
          src_clk  => clk_start,  -- 1-bit input: optional; required when SRC_INPUT_REG = 1
          src_in   => data_asynch_in(i)    -- 1-bit input: Input signal to be synchronized to dest_clk domain.
       );
     end generate gen;

end Behavioral;