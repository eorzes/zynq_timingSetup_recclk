-------------------------------------------------------------------------------
-- Title      : Pulse width extender
-- Project    : General Cores library
-------------------------------------------------------------------------------
-- File       : gc_extend_pulse.vhd
-- Author     : Tomasz Wlostowski
-- Company    : CERN
-- Created    : 2009-09-01
-- Last update: 2012-06-19
-- Platform   : FPGA-generic
-- Standard   : VHDL '93
-------------------------------------------------------------------------------
-- Description:
-- Synchronous pulse extender. Generates a pulse of programmable width upon
-- detection of a rising edge in the input.
-------------------------------------------------------------------------------
--
-- Copyright CERN 2020.
-- This source describes Open Hardware and is licensed under the CERN-OHLW v2
-- You may redistribute and modify this documentation and make products
-- using it under the terms of the CERN-OHL-W v2 (https:/cern.ch/cern-ohl).
-- This documentation is distributed WITHOUT ANY EXPRESS OR IMPLIED
-- WARRANTY, INCLUDING OF MERCHANTABILITY, SATISFACTORY QUALITY
-- AND FITNESS FOR A PARTICULAR PURPOSE. Please see the CERN-OHL-W v2
-- for applicable conditions.
-- Source location: https://gitlab.cern.ch/HPTD/tclink
-- As per CERN-OHL-W v2 section 4.1, should You produce hardware based on
-- these sources, You must maintain the Source Location visible on the
-- external case of the TCLink or other product you make using
-- this documentation.
--
-------------------------------------------------------------------------------
-- Revisions  :
-- Date        Version  Author          Description
-- 2009-09-01  0.9      twlostow        Created
-- 2011-04-18  1.0      twlostow        Added comments & header
-------------------------------------------------------------------------------

library ieee;
use ieee.std_logic_1164.all;
use ieee.NUMERIC_STD.all;


entity gc_extend_pulse is
  
  generic (
    -- output pulse width in clk_i cycles
    g_width : natural := 1000
    );
  port (
    clk_i      : in  std_logic;
    rst_n_i    : in  std_logic;
    -- input pulse (synchronou to clk_i)
    pulse_i    : in  std_logic;
    -- extended output pulse
    extended_o : out std_logic := '0');
end gc_extend_pulse;

architecture rtl of gc_extend_pulse is

  function f_log2_size (A : natural) return natural is
  begin
    for I in 1 to 64 loop               -- Works for up to 64 bits
      if (2**I >= A) then
        return(I);
      end if;
    end loop;
    return(63);
  end function f_log2_size;
  
  signal cntr : unsigned(f_log2_size(g_width)-1 downto 0);
  signal extended_int : std_logic;
  
begin  -- rtl

  extend : process (clk_i, rst_n_i)
  begin  -- process extend
    if rst_n_i = '0' then                   -- asynchronous reset (active low)
      extended_int <= '0';
      cntr       <= (others => '0');
    elsif clk_i'event and clk_i = '1' then  -- rising clock edge
      if(pulse_i = '1') then
        extended_int <= '1';
        cntr       <= to_unsigned(g_width - 2, cntr'length);
      elsif cntr /= to_unsigned(0, cntr'length) then
        cntr <= cntr - 1;
      else
        extended_int <= '0';
      end if;
    end if;
  end process extend;

  extended_o <= pulse_i or extended_int;

end rtl;

