----------------------------------------------------------------------------------
-- Company: CERN - HPTD
-- Engineer: Edoardo Orzes
-- 
-- Create Date: 08/04/2023
-- Module Name: sys_man_wrap

--  Wrapper for the system manager.
--  Include a moving average filter of 250 items. Takes 10s to produce an averaged output and reads every 40ms.

-- Revision: v1.0
----------------------------------------------------------------------------------

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity sys_man_wrap is
    port(
        clk          : in  std_logic;  -- 125 MHz clock
        rst          : in  std_logic;
        temp_avg_out : out std_logic_vector(9 downto 0) -- accurate after 10 seconds from startup
    );
end sys_man_wrap;

architecture Behavioral of sys_man_wrap is

    type q_array_t is array(1 to 250) of std_logic_vector(9 downto 0);

    constant MEAS_TIME : integer := 9600000; -- takes a measure every 40ms and average over last 250 measures (takes 10s)
    signal count       : integer range 0 to 9600000 := 0;
    signal n_samples   : integer range 0 to 250     := 0; 

    signal q_array     : q_array_t := (others => (others => '0')); 
    signal shift_value : std_logic := '0';
    signal temperature : std_logic_vector(9 downto 0)  := (others => '0'); -- temperature is 10 bit
    signal sub         : std_logic_vector(17 downto 0) := (others => '0');
    signal sum_tot     : std_logic_vector(17 downto 0) := (others => '0');
    signal oldest      : std_logic_vector(9  downto 0) := (others => '0');

    signal tempavg_int : integer range 0 to 1023    := 0; -- temperature is 10 bit 
    signal temp_int    : integer range 0 to 1023    := 0; 
    signal oldest_int  : integer range 0 to 1023    := 0;
    signal sum_int     : integer range 0 to 255750  := 0; -- max is 250 * (2^10 - 1)
    signal sub_int     : integer range 0 to 255750  := 0;
    signal sum_tot_int : integer range 0 to 255750  := 0;

begin

    sys_manager_temp: entity work.system_management_wrapper
        port map (
            rstn => '1',
            sys_man_clk => clk,
            temp_out => temperature
    );

    process(clk)
        begin
            if rising_edge(clk) then
                if rst = '1' then
                    count     <= 0;
                    n_samples <= 0;
                else
                    if count = MEAS_TIME-1 then
                        count       <= 0;
                        shift_value <= '1';
                        if n_samples < 250 then
                            n_samples <= n_samples + 1;
                        end if;
                    else
                        count <= count + 1;
                        shift_value <= '0';
                    end if;
                end if;
            end if;
        end process;
        
    SIPO: process(clk) begin
        if rising_edge(clk) then
            if rst = '1' then
                q_array <= (others => (others => '0'));
            elsif shift_value = '1' then
                q_array(1) <= temperature;
                for i in 2 to 250 loop
                    q_array(i) <= q_array(i-1);
                end loop;
            end if;
        end if;
    end process;
    oldest <= q_array(250);

    temp_int    <= to_integer(unsigned(temperature));
    oldest_int  <= to_integer(unsigned(oldest));
    sum_tot_int <= to_integer(unsigned(sum_tot));
    sub         <= std_logic_vector(to_unsigned(sub_int, 18));

    sum_int <= sum_tot_int + temp_int;
    sub_int <= sum_int - oldest_int; -- must be greater than 0

    process(clk) begin
        if rising_edge(clk) then
            if rst = '1' then
                sum_tot <= (others => '0');
            elsif shift_value = '1' then
                sum_tot <= sub;
            end if;
        end if;
    end process;

    process(sum_tot_int, n_samples) 
        begin
            if n_samples = 0 then
                tempavg_int <= 0;
            else
                tempavg_int <= sum_tot_int/n_samples;
            end if;
        end process;

    temp_avg_out <= std_logic_vector(to_unsigned(tempavg_int, 10));
    
--  ila_temp: entity work.ila_temp_avg
--   PORT MAP (
--	clk => clk,
--	probe0(0) => shift_value, 
--	probe1 => temperature, 
--	probe2 => oldest, 
--	probe3 => sub, 
--	probe4 => sum_tot, 
--	probe5 => std_logic_vector(to_unsigned(sum_int, 18)), 
--	probe6 => std_logic_vector(to_unsigned(count, 24)),
--	probe7 => std_logic_vector(to_unsigned(n_samples, 8))
--   );

end Behavioral;
