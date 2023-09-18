-------------------------------------------------------------------------------
-- Title      : Synchronizer chain
-- Project    : White Rabbit 
-------------------------------------------------------------------------------
-- File       : gc_sync_ffs.vhd
-- Author     : Tomasz Wlostowski
-- Company    : CERN BE-Co-HT
-- Created    : 2010-06-14
-- Last update: 2011-04-29
-- Platform   : FPGA-generic
-- Standard   : VHDL'87
-------------------------------------------------------------------------------
-- Description: Synchronizer chain and edge detector.
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
-- 2010-06-14  1.0      twlostow        Created
-------------------------------------------------------------------------------

library ieee;
use ieee.std_logic_1164.all;

entity gc_sync_ffs is
  generic(
    g_sync_edge : string := "positive"
    );
  port(
    clk_i    : in  std_logic;  -- clock from the destination clock domain
    rst_n_i  : in  std_logic;           -- reset
    data_i   : in  std_logic;           -- async input
    synced_o : out std_logic;           -- synchronized output
    npulse_o : out std_logic;  -- negative edge detect output (single-clock
    -- pulse)
    ppulse_o : out std_logic   -- positive edge detect output (single-clock
   -- pulse)
    );
end gc_sync_ffs;

architecture behavioral of gc_sync_ffs is
  signal sync0, sync1, sync2 : std_logic;

  attribute shreg_extract : string;
  attribute shreg_extract of sync0  : signal is "no";
  attribute shreg_extract of sync1  : signal is "no";
  attribute shreg_extract of sync2  : signal is "no";
begin


  sync_posedge : if (g_sync_edge = "positive") generate
    process(clk_i, rst_n_i)
    begin
      if(rst_n_i = '0') then
        sync0    <= '0';
        sync1    <= '0';
        sync2    <= '0';
        synced_o <= '0';
        npulse_o <= '0';
        ppulse_o <= '0';
      elsif rising_edge(clk_i) then
        sync0    <= data_i;
        sync1    <= sync0;
        sync2    <= sync1;
        synced_o <= sync1;
        npulse_o <= sync2 and not sync1;
        ppulse_o <= not sync2 and sync1;
      end if;
    end process;
  end generate sync_posedge;

  sync_negedge : if(g_sync_edge = "negative") generate
    process(clk_i, rst_n_i)
    begin
      if(rst_n_i = '0') then
        sync0    <= '0';
        sync1    <= '0';
        sync2    <= '0';
        synced_o <= '0';
        npulse_o <= '0';
        ppulse_o <= '0';
      elsif falling_edge(clk_i) then
        sync0    <= data_i;
        sync1    <= sync0;
        sync2    <= sync1;
        synced_o <= sync1;
        npulse_o <= sync2 and not sync1;
        ppulse_o <= not sync2 and sync1;
      end if;
    end process;
  end generate sync_negedge;
  
end behavioral;
