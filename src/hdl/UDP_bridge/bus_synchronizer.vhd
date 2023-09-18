--------------------------------------------------------------------------------
-- Synchronizer shift register for multi-bit buses
--------------------------------------------------------------------------------
--
-- Francesco Martina @ 2023
-- v1.1
--
--------------------------------------------------------------------------------

library IEEE;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity bus_synchronizer is
    Generic (
        BITS   : integer := 8;
        STAGES : integer := 3
    );
    Port (
        clk      : in  std_logic;
        aync_in  : in  std_logic_vector(BITS - 1 downto 0);
        sync_out : out std_logic_vector(BITS - 1 downto 0)
    );
end bus_synchronizer;

architecture Behavioral of bus_synchronizer is

    -- shift register
    type synch_shift_register_t is array(BITS - 1 downto 0) of std_logic_vector((STAGES - 1) downto 0);
    signal synch_shift_register : synch_shift_register_t := (others => (others => '0'));

    -- Synthesis Attributes
    attribute ASYNC_REG          : boolean;
--    attribute syn_preserve       : boolean;
--    attribute syn_replicate      : boolean;
--    attribute syn_allow_retiming : boolean;

    attribute ASYNC_REG of synch_shift_register          : signal is true;  -- Register is capable of receiving asynchronous data
--    attribute syn_preserve of synch_shift_register       : signal is true;  -- Do not remove those signals and registers
--    attribute syn_replicate of synch_shift_register      : signal is false; -- Do not replicate those register
--    attribute syn_allow_retiming of synch_shift_register : signal is false; -- Do not optimize timing by changing registers

begin

    -- synchronization shift register
    process(clk)
    begin
        if rising_edge(clk) then
            for j in 0 to (BITS - 1) loop
                synch_shift_register(j)(0) <= aync_in(j);
                for i in 1 to (STAGES - 1) loop
                    synch_shift_register(j)(i) <= synch_shift_register(j)(i - 1);
                end loop;
                sync_out(j) <= synch_shift_register(j)(STAGES - 1);
            end loop;
        end if;
    end process;

end Behavioral;