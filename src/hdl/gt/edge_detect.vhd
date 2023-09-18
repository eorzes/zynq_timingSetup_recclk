-------------------------------------------------------------------------------
-- Title      : Edge detector
-- Project    : CTPCORE GPS CMC card
-------------------------------------------------------------------------------
-- File       : edge_detect.vhd
-- Author     : Stefan Haas
-- Company    : CERN PH-ATE
-- Created    : 06-11-06
-- Last update: 07-11-14
-- Platform   : Synplify/Modelsim
-- Standard   : VHDL'93
-------------------------------------------------------------------------------
-- Description: Generate a pulse of a on a rising of falling edge of an input 
--              signal with a configurable number of synchronization registers
-------------------------------------------------------------------------------
-- Copyright (c) 2006 CERN PH-ATE
-------------------------------------------------------------------------------
-- Revisions  :
-- Date        Version  Author  Description
-- 06-11-06  1.0      haass	Created
-------------------------------------------------------------------------------

library ieee;
use ieee.std_logic_1164.all;

entity edge_detect is
  
  generic (polarity  : integer range 0 to 1 := 1;  -- 0:rising, 0:falling edge
           sync_regs : integer range 0 to 4 := 0); -- number of synchronization register stages

  port (clk       : in  std_logic;      -- clock
        rst       : in  std_logic := '0';
        sig_in    : in  std_logic;
        pulse_out : out std_logic);

end entity edge_detect;

-------------------------------------------------------------------------------

architecture rtl of edge_detect is
  
  signal sreg : std_logic_vector(0 to sync_regs);
  
  -- XIlinx directives.
  attribute async_reg                   : string;
  attribute async_reg of sreg : signal is "true";

  attribute shreg_extract                   : string;
  attribute shreg_extract of sreg : signal is "no";
  
begin  -- architecture rtl

  process (clk, rst) is
    variable sync_in : std_logic;
  begin  -- process
    if rst = '1' then                   -- asynchronous reset (active high)
      sreg <= (others => '0');
      pulse_out <= '0';
    elsif rising_edge(clk) then         -- rising clock edge
      if (sync_regs = 0) then
        sreg(0) <= sig_in;
        sync_in := sig_in;
      else
        sreg <= sreg(1 to sync_regs) & sig_in;
        sync_in := sreg(1);
      end if;
      if (polarity = 1) then            -- rising edge
        pulse_out <= sync_in and not sreg(0);
      else                              -- falling edge
        pulse_out <= not sync_in and sreg(0);
      end if;
    end if;
  end process;

end architecture rtl;
