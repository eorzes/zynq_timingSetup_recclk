----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 08/05/2020 01:12:42 PM
-- Design Name: 
-- Module Name: reset_sync - Behavioral
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
Library xpm;
use xpm.vcomponents.all;


entity reset_sync is
    generic ( RST_ACTIVE_HIGH : integer);
    port (
           clk_i : in std_logic;
           arst_i : in std_logic;
           rst_sync_o : out std_logic
          );
end reset_sync;


architecture rtl of reset_sync is
 
begin


   -- xpm_cdc_async_rst: Asynchronous Reset Synchronizer
   -- Xilinx Parameterized Macro, version 2019.2

   xpm_cdc_async_rst_inst : xpm_cdc_async_rst
   generic map (
      DEST_SYNC_FF => 2,       -- DECIMAL; range: 2-10
      INIT_SYNC_FF => 1,       -- DECIMAL; 0=disable simulation init values, 1=enable simulation init values
      RST_ACTIVE_HIGH => RST_ACTIVE_HIGH     -- DECIMAL; 0=active low reset, 1=active high reset
   )
   port map (
      dest_arst => rst_sync_o, -- 1-bit output: src_arst asynchronous reset signal synchronized to destination
                               -- clock domain. This output is registered. NOTE: Signal asserts asynchronously
                               -- but deasserts synchronously to dest_clk. Width of the reset signal is at least
                               -- (DEST_SYNC_FF*dest_clk) period.

      dest_clk => clk_i,       -- 1-bit input: Destination clock.
      src_arst => arst_i       -- 1-bit input: Source asynchronous reset signal.
   );


end rtl;