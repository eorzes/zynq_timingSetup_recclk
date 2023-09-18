----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 02/13/2023 02:25:31 PM
-- Design Name: 
-- Module Name: aligner - Behavioral
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
use IEEE.numeric_std.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity aligner is
  port( 
    clk            : in  std_logic;
    rst            : in  std_logic;
    byteIsAligned  : in  std_logic;
    rxSlide        : out std_logic;
    slideCount     : out std_logic_vector(14 downto 0)
  );
end aligner;

architecture Behavioral of aligner is

    signal count : integer := 0;
    signal sc    : integer := 0;

begin

    slideCount <= std_logic_vector(to_unsigned(sc, 15));

    process(clk)
        begin
            if rising_edge(clk) then
                if(rst = '1') then
                    count <= 0;
                else
                    if count = 63 then
                        count <= 0;
                    else 
                        count <= count + 1;
                    end if;
                end if;
            end if;
        end process;
        
     process(clk)
        begin
            if rising_edge(clk) then
                if(rst = '1') then
                    sc <= 0;
                else
                    if (count = 62 or count = 63) and byteIsAligned = '0' then -- 2 rxusrclk cycles are required
                        rxSlide <= '1';
                        if count = 63 then
                            sc <= sc + 1;
                        end if; 
                    else
                        rxSlide <= '0';
                    end if;
                end if;
            end if;
        end process;

end Behavioral;