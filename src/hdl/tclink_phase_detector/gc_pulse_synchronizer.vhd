-------------------------------------------------------------------------------
-- Title      : Pulse synchronizer
-- Project    : General Cores Library 
-------------------------------------------------------------------------------
-- File       : gc_pulse_synchronizer.vhd
-- Author     : Tomasz Wlostowski
-- Company    : CERN BE-CO-HT
-- Created    : 2012-01-10
-- Last update: 2012-08-29
-- Platform   : FPGA-generic
-- Standard   : VHDL'93
-------------------------------------------------------------------------------
-- Description: Full feedback pulse synchronizer (works independently of the
-- input/output clock domain frequency ratio)
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
-- 2012-01-12  1.0      twlostow        Created
-------------------------------------------------------------------------------

library ieee;
use ieee.std_logic_1164.all;


entity gc_pulse_synchronizer is
  
  port (
    -- pulse input clock
    clk_in_i  : in  std_logic;
    -- pulse output clock
    clk_out_i : in  std_logic;
    -- system reset (clk_in_i domain)
    rst_n_i   : in  std_logic;
    -- pulse input ready (clk_in_i domain). When HI, a pulse coming to d_p_i will be
    -- correctly transferred to q_p_o.
    d_ready_o : out std_logic;
    -- pulse input (clk_in_i domain)
    d_p_i     : in  std_logic;
    -- pulse output (clk_out_i domain)
    q_p_o     : out std_logic);

end gc_pulse_synchronizer;

architecture rtl of gc_pulse_synchronizer is

  constant c_sync_stages : integer := 3;

  signal ready, d_p_d0 : std_logic;

  signal in_ext, out_ext : std_logic;
  signal out_feedback    : std_logic;

  signal d_in2out : std_logic_vector(c_sync_stages-1 downto 0);
  signal d_out2in : std_logic_vector(c_sync_stages-1 downto 0);

begin  -- rtl

  process(clk_out_i, rst_n_i)
  begin
    if rst_n_i = '0' then
      d_in2out <= (others => '0');
      out_ext <= '0';
    elsif rising_edge(clk_out_i) then
      d_in2out <= d_in2out(c_sync_stages-2 downto 0) & in_ext;
      out_ext <= d_in2out(c_sync_stages-1);
    end if;
  end process;


  process(clk_in_i, rst_n_i)
  begin
    if rst_n_i = '0' then
      d_out2in <= (others => '0');
    elsif rising_edge(clk_in_i) then
      d_out2in <= d_out2in(c_sync_stages-2 downto 0) & out_ext;
    end if;
  end process;

  out_feedback <= d_out2in(c_sync_stages-1);

  p_input_ack : process(clk_in_i, rst_n_i)
  begin
    if rst_n_i = '0' then
      ready  <= '1';
      in_ext <= '0';
      d_p_d0 <= '0';
    elsif rising_edge(clk_in_i) then

      d_p_d0 <= d_p_i;
      
      if(ready = '1' and d_p_i = '1' and d_p_d0 = '0') then
        in_ext <= '1';
        ready  <= '0';
      elsif(in_ext = '1' and out_feedback = '1') then
        in_ext <= '0';
      elsif(in_ext = '0' and out_feedback = '0') then
        ready <= '1';
      end if;
    end if;
  end process;

  p_drive_output : process(clk_out_i, rst_n_i)
  begin
    if rst_n_i = '0' then
      q_p_o <= '0';
    elsif rising_edge(clk_out_i) then
      q_p_o <= not out_ext and d_in2out(c_sync_stages-1);
    end if;
  end process;

  d_ready_o <= ready;

end rtl;
