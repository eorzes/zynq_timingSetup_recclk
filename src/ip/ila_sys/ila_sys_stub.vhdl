-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2022.1 (win64) Build 3526262 Mon Apr 18 15:48:16 MDT 2022
-- Date        : Mon Jun 19 12:29:54 2023
-- Host        : PCPHESE71 running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub c:/Users/eorzes/cernbox/git/fanout_sma/src/ip/ila_sys/ila_sys_stub.vhdl
-- Design      : ila_sys
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xczu9eg-ffvb1156-2-e
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity ila_sys is
  Port ( 
    clk : in STD_LOGIC;
    probe0 : in STD_LOGIC_VECTOR ( 31 downto 0 );
    probe1 : in STD_LOGIC_VECTOR ( 11 downto 0 )
  );

end ila_sys;

architecture stub of ila_sys is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "clk,probe0[31:0],probe1[11:0]";
attribute x_core_info : string;
attribute x_core_info of stub : architecture is "ila,Vivado 2022.1";
begin
end;
