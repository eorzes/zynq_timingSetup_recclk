library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_misc.all;
use ieee.numeric_std.all;

library unisim;
use unisim.vcomponents.all;

entity data_generator is
  port(
    rst_i   : in  std_logic;
    clk_i   : in  std_logic;
    data_o  : out std_logic_vector(31 downto 0);
    ctrl_o  : out std_logic_vector( 3 downto 0)
  );
end data_generator;

architecture rtl of data_generator is

-- code snippet for downlink tx with 8b10b encoder bypass feature
-- it assumes GT Tx at 9.6Gb/s (40bit at 240MHz) 
-- it also assumes the following packet structure

-- data(32b) ctrl(4b)
-- XXXXXXXX  0000
-- XXXXXXXX  0000
-- XXXXXXXX  0000
-- XXXXXXXX  0000
-- XXXXXXXX  0000
-- XXXX50BC  0001

  signal gen_rst       : std_logic;                     -- from external controller (e.g. VIO), must be synced with gt_tx_usrclk
  signal gen_data      : std_logic_vector(31 downto 0); 
  signal gen_ctrl      : std_logic_vector( 3 downto 0); 
  
  signal enc_bypass    : std_logic;                     -- from external controller (e.g. VIO), must be synced with gt_tx_usrclk
  signal enc_bypass_r  : std_logic;
  signal disp_from_enc : std_logic;  
  signal disp_to_enc   : std_logic;  
  
begin

  process(clk_i)
      variable sreg : std_logic_vector(5 downto 0);
    begin
      if rising_edge(clk_i) then      
        case sreg is  
          when "000001" => data_o <= x"2222_1111"; ctrl_o <= "0000";
          when "000010" => data_o <= x"4444_3333"; ctrl_o <= "0000";
          when "000100" => data_o <= x"6666_5555"; ctrl_o <= "0000";
          when "001000" => data_o <= x"8888_7777"; ctrl_o <= "0000";
          when "010000" => data_o <= x"AAAA_9999"; ctrl_o <= "0000";
          when "100000" => data_o <= x"0000_50BC"; ctrl_o <= "0001";
          when others   => data_o <= x"FFFF_FFFF"; ctrl_o <= "0000";
        end case;
        
        if rst_i='1' then 
          sreg:="100000"; 
        else
          sreg:=sreg(4 downto 0) & sreg(5);
        end if;
      
      end if;
    end process;

end architecture rtl;
