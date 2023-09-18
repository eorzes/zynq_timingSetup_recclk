----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 02/06/2023 01:19:54 PM
-- Design Name: 
-- Module Name: data_checker - Behavioral
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

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity data_checker is
    port(
        rst_i    : in  std_logic;
        clk_i    : in  std_logic;
        comDet   : in  std_logic;
        aligned  : in  std_logic;
        data_in  : in  std_logic_vector(31 downto 0);
        valid    : out std_logic;
        data_gen : out std_logic_vector(31 downto 0);
        test_sr  : out std_logic_vector(5 downto 0)
    );
end data_checker;

architecture Behavioral of data_checker is

signal ctrl_o : std_logic_vector(3 downto 0);
signal data_o : std_logic_vector(31 downto 0);

--signal enable : std_logic;
--signal regEn  : std_logic;

--signal doubleComma : std_logic;
--signal oldDetComma : std_logic;

--signal newData : std_logic_vector(31 downto 0);

begin

--  enable <= comDet or regEn;
  
--  process(clk_i)
--    begin
--        if rising_edge(clk_i) then  
--            if aligned = '0' then 
--               regEn <= '0';
--            else 
--            if comDet = '1' then
--                   regEn <= '1';
--               end if;
--            end if;
--        end if;
--    end process;

  --doubleComma <= '1' when (comDet = '1') and (oldDetComma = '1') else '0';
  --enable <= not doubleComma;
  
--  process(clk_i) begin
--    if rising_edge(clk_i) then  
--        oldDetComma <= comDet;
--        newData <= data_in;
--    end if;
--  end process;

  process(clk_i)
      variable sreg : std_logic_vector(5 downto 0);
    begin
      if rising_edge(clk_i) then  
      
            if rst_i='1' then --if is not aligned, generates commas
              sreg:="100000"; 
            else
              if comDet = '1' then
                sreg:="000001"; -- when detects a comma generates first element of sequence (on next clock front, when it should be received)
              else
                sreg:=sreg(4 downto 0) & sreg(5);
              end if;
            end if;
            
            case sreg is  
              when "000001" => data_o <= x"2222_1111"; ctrl_o <= "0000";
              when "000010" => data_o <= x"4444_3333"; ctrl_o <= "0000";
              when "000100" => data_o <= x"6666_5555"; ctrl_o <= "0000";
              when "001000" => data_o <= x"8888_7777"; ctrl_o <= "0000";
              when "010000" => data_o <= x"AAAA_9999"; ctrl_o <= "0000";
              when "100000" => data_o <= x"0000_50BC"; ctrl_o <= "0001";
              when others   => data_o <= x"FFFF_FFFF"; ctrl_o <= "0000";
            end case;
            
            test_sr <= sreg;
            
      end if;
  end process;
    
  data_gen <= data_o;
  valid <= '1' when data_in = data_o and aligned = '1' else '0';

end Behavioral;

