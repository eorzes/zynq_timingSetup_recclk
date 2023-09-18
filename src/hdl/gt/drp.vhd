----------------------------------------------------------------------------------------------------------------------
-- Title      : DRP controller
-- Project    : MUCTPI

----------------------------------------------------------------------------------------------------------------------
-- File       : drp.vhd
-- Author     : Marcos Oliveira
-- Company    : CERN
-- Created    : 2018-03-01
-- Last update: 2018-03-28
-- Platform   : Vivado 2017.2 and Mentor Modelsim SE-64 10.4a
-- Standard   : VHDL'93/02
----------------------------------------------------------------------------------------------------------------------
-- Description: 
-------------------------------------------------------------------------------
-- Copyright (c) 2018 CERN
----------------------------------------------------------------------------------------------------------------------
-- Revisions  :
-- Date        Version  Author  Description
-- 2018-03-01  1.0      msilvaol        Created
----------------------------------------------------------------------------------------------------------------------

library ieee;
use ieee.std_logic_1164.all;

entity drp is
  generic (
    addr_width : natural := 9;
    data_width : natural := 16);
  port (
    clk      : in  std_logic;                                -- drp clock
    ena      : in  std_logic;                                -- enable from processor
    start    : in  std_logic;                                -- start request
    done     : out std_logic;                                -- request done
    addr     : in  std_logic_vector(addr_width-1 downto 0);
    we       : in  std_logic;                                -- write enable
    data_in  : in  std_logic_vector(data_width-1 downto 0);  -- data from processor to drp interface
    data_out : out std_logic_vector(data_width-1 downto 0);  -- data from drp interface to processor
    -- DRP ports
    drp_addr : out std_logic_vector(addr_width-1 downto 0);
    drp_ena  : out std_logic;
    drp_we   : out std_logic;
    drp_di   : out std_logic_vector(data_width-1 downto 0);
    drp_do   : in  std_logic_vector(data_width-1 downto 0);
    drp_rdy  : in  std_logic);

end entity drp;

architecture rtl of drp is
    
  signal done_reg : std_logic;          -- trying to improve timing
  signal start_reg : std_logic;
  signal drp_start : std_logic;
  attribute keep : string;  
  attribute keep of done_reg: signal is "true";
  attribute keep of start_reg: signal is "true"; 

begin  -- architecture rtl

  --
  drpstart : entity work.edge_detect
    generic map(polarity => 1, sync_regs => 1)
    port map(clk => clk, sig_in => start, pulse_out => drp_start);
  --

  drp_p : process(clk) is
  begin
    if rising_edge(clk) then
      drp_ena <= '0';
      drp_we  <= '0';
      if start_reg = '1' then
        drp_ena  <= ena;
        drp_we   <= we;
        done_reg <= '0';
      end if;
      if drp_rdy = '1' then
        done_reg <= '1';
        data_out <= drp_do;
      end if;
      drp_addr    <= addr;
      drp_di      <= data_in;
      done        <= done_reg;
      start_reg   <= drp_start;
    end if;
  end process drp_p;

end architecture rtl;
