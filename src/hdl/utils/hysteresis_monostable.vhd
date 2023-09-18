--
-- ___________________________________________________________
--
-- Hysteresis Monostable
-- ___________________________________________________________
--
-- Francesco Martina @ 2022
-- v1.0
--


library IEEE;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

-- The output signal_out is asserted only if signal_in is true for 
-- HYSTERESIS_SAMPLE_UP adjacent clock cycles and then it remains 
-- asserted for ASSERTED_CYCLES cycles before being reset.

entity hysteresis_monostable is
    Generic (
        HYSTERESIS_SAMPLE_UP : integer := 0;
        ASSERTED_CYCLES      : integer := 2
    );
    Port (
        rst                      : in  std_logic;
        clk                      : in  std_logic;
        monostable_trigger_async : in  std_logic;
        monostable_out           : out std_logic
    );
end hysteresis_monostable;

architecture Behavioral of hysteresis_monostable is

    type status_t is (DOWN, UP);
    signal status                  : status_t := DOWN;
    signal monostable_trigger_sync : std_logic;

    -- hysteresis clock cycle counters
    signal hyst_counter_up         : integer range 0 to HYSTERESIS_SAMPLE_UP := 0;
    signal asserted_cycles_counter : integer range 0 to (ASSERTED_CYCLES - 1) := 0;

begin

    synchronizer_trigger : entity work.synchronizer
        generic map (
            stages => 3
        )
        port map (
            clk      => clk,
            aync_in  => monostable_trigger_async,
            sync_out => monostable_trigger_sync
        );

    -- hysteresis FSM
    process (rst, clk)
    begin
        if rst = '1' then
            status                  <= DOWN;
            hyst_counter_up         <= 0;
            asserted_cycles_counter <= 0;

        elsif rising_edge(clk) then

            case status is

                when DOWN =>
                    -- zero

                    if monostable_trigger_sync = '1' then
                        if hyst_counter_up = HYSTERESIS_SAMPLE_UP then
                            -- monostable_out rising edge
                            status          <= UP;
                            hyst_counter_up <= 0;
                        else
                            hyst_counter_up <= hyst_counter_up + 1;
                        end if;
                    else
                        -- reset the counter
                        hyst_counter_up <= 0;
                    end if;

                when UP =>
                    -- one (for ASSERTED_CYCLES clock cycles)

                    if asserted_cycles_counter = (ASSERTED_CYCLES - 1) then
                        -- monostable_out falling edge
                        status                  <= DOWN;
                        asserted_cycles_counter <= 0;
                    else
                        asserted_cycles_counter <= asserted_cycles_counter + 1;
                    end if;

            end case;
        end if;
    end process;

    process(status)
    begin
        case status is
            when DOWN =>
                monostable_out <= '0';
            when UP =>
                monostable_out <= '1';
        end case;
    end process;


end Behavioral;