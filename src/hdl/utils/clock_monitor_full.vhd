--------------------------------------------------------------------------------
-- Clock Period Measurement Module
--------------------------------------------------------------------------------
-- Francesco Martina @ 2023
--------------------------------------------------------------------------------
-- v 1.0
--------------------------------------------------------------------------------


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

-- Note! 
-- The Maximum measuring frequency is equal to F[clk_ref] * 2^(DECIMAL_BITS - 1)
-- The Minimum measuring frequency is equal to F[clk_ref] / (2^(RESULT_BITS - DECIMAL_BITS) - 1)
-- The frequency resolution changes with F[clk_monitored] and it is dF = F[clk_monitored]^2 / (F[clk_ref] * 2^(DECIMAL_BITS))

entity clock_monitor_full is
    Generic (
        -- The measured period will be represented on RESULT_BITS bits
        RESULT_BITS : integer := 8;

        -- This number of bits will constitute the decimal part of the measured period
        -- It actually defines the position of the comma in the fixed point output
        -- This parameters can be also set to zero for slow clocks, to remove the clock division.
        -- DECIMAL_BITS must be higher than zero
        DECIMAL_BITS : integer := 4
    );
    Port (
        clk_ref       : in std_logic; -- The reference clock
        clk_monitored : in std_logic; -- The clock to measure

        -- This is the measured period, represented in fixed point according to the module parameters.
        -- The measurement unit is the clk_ref period. For example, if RESOLUTION_BITS = 8 and DECIMAL_BITS = 4
        -- and the clk_monitored has the same frequency of clk_ref --> measured_period = "00010000"
        measured_period : out std_logic_vector(RESULT_BITS - 1 downto 0)
    );
end clock_monitor_full;

architecture Behavioral of clock_monitor_full is

    signal divider_counter     : unsigned(DECIMAL_BITS - 1 downto 0) := to_unsigned(0, DECIMAL_BITS);
    signal measuring_clk       : std_logic;
    signal divided_clk_sync    : std_logic_vector(2 downto 0)               := "000";
    signal divided_clk_edge    : std_logic                                  := '0';
    signal period_counter      : unsigned(RESULT_BITS - 1 downto 0)         := to_unsigned(1, RESULT_BITS);
    signal measured_period_sig : std_logic_vector(RESULT_BITS - 1 downto 0) := std_logic_vector(to_unsigned(0,RESULT_BITS));

begin

    -- monitored clock divisor
    CLK_DIV : process(clk_monitored)
    begin
        if rising_edge(clk_monitored) then
            divider_counter <= divider_counter + 1;
        end if;
    end process CLK_DIV;
    measuring_clk <= divider_counter(DECIMAL_BITS - 1);

    -- divided clock synchroniser and rising edge detector
    DIV_CLK_SYNC : process(clk_ref)
    begin
        if rising_edge(clk_ref) then
            divided_clk_sync(0) <= measuring_clk;
            divided_clk_sync(1) <= divided_clk_sync(0);
            divided_clk_sync(2) <= divided_clk_sync(1);
            divided_clk_edge    <= divided_clk_sync(1) and (not divided_clk_sync(2));
        end if;
    end process DIV_CLK_SYNC;

    -- the period counter, using the reference clock
    PERIOD_COUNTER_GEN : process(clk_ref)
    begin
        if rising_edge(clk_ref) then
            if divided_clk_edge = '1' then
                measured_period_sig <= std_logic_vector(period_counter);
                period_counter      <= to_unsigned(1, RESULT_BITS);
            else
                period_counter <= period_counter + 1;
            end if;
        end if;
    end process PERIOD_COUNTER_GEN;

    measured_period <= measured_period_sig;


end Behavioral;
