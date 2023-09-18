--Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
----------------------------------------------------------------------------------
--Tool Version: Vivado v.2022.1 (win64) Build 3526262 Mon Apr 18 15:48:16 MDT 2022
--Date        : Mon Jun 19 12:24:36 2023
--Host        : PCPHESE71 running 64-bit major release  (build 9200)
--Command     : generate_target system_management_wrapper.bd
--Design      : system_management_wrapper
--Purpose     : IP block netlist
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity system_management_wrapper is
  port (
    rstn : in STD_LOGIC;
    sys_man_clk : in STD_LOGIC;
    temp_out : out STD_LOGIC_VECTOR ( 9 downto 0 )
  );
end system_management_wrapper;

architecture STRUCTURE of system_management_wrapper is
  component system_management is
  port (
    sys_man_clk : in STD_LOGIC;
    rstn : in STD_LOGIC;
    temp_out : out STD_LOGIC_VECTOR ( 9 downto 0 )
  );
  end component system_management;
begin
system_management_i: component system_management
     port map (
      rstn => rstn,
      sys_man_clk => sys_man_clk,
      temp_out(9 downto 0) => temp_out(9 downto 0)
    );
end STRUCTURE;
