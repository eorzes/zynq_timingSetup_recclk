----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 02/07/2023 06:00:11 PM
-- Design Name: 
-- Module Name: oddr - Behavioral
-- Project Name: 
-- Target Devices: 
-- Tool Versions: 
-- Description: 
-- 
-- Dependencies: 
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
-- 
----------------------------------------------------------------------------------


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

library unisim;
use unisim.vcomponents.all;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity oddr is
  port ( 
    d_in    : in   std_logic := '1';
    clk_in  : in   std_logic;
    clk_out : out  std_logic
  );
end oddr;

architecture Behavioral of oddr is

    begin

     ODDRE1_txuserclk_inst : ODDRE1
       generic map (
          IS_C_INVERTED => '0',       -- Optional inversion for C
          IS_D1_INVERTED => '0',      -- Unsupported, do not use
          IS_D2_INVERTED => '0',      -- Unsupported, do not use
          SIM_DEVICE => "ULTRASCALE", -- Set the device version for simulation functionality (ULTRASCALE)
          SRVAL => '0'                -- Initializes the ODDRE1 Flip-Flops to the specified value ('0', '1')
       )
       port map (
          Q => clk_out,   -- 1-bit output: Data output to IOB
          C => clk_in,   -- 1-bit input: High-speed clock input
          D1 => not(d_in), -- 1-bit input: Parallel data input 1
          D2 => d_in, -- 1-bit input: Parallel data input 2
          SR => '0'  -- 1-bit input: Active-High Async Reset
       );


end Behavioral;
