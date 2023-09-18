-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2022.1 (win64) Build 3526262 Mon Apr 18 15:48:16 MDT 2022
-- Date        : Mon Jun 19 12:27:35 2023
-- Host        : PCPHESE71 running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub
--               c:/Users/eorzes/cernbox/git/fanout_sma/src/ip/udp_bridge/clk_pcs_pma_62_5/clk_pcs_pma_62_5_stub.vhdl
-- Design      : clk_pcs_pma_62_5
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xczu9eg-ffvb1156-2-e
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity clk_pcs_pma_62_5 is
  Port ( 
    freerun_clk_62_5 : out STD_LOGIC;
    locked : out STD_LOGIC;
    sys_clk_125 : in STD_LOGIC
  );

end clk_pcs_pma_62_5;

architecture stub of clk_pcs_pma_62_5 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "freerun_clk_62_5,locked,sys_clk_125";
begin
end;
