--------------------------------------------------------------------------------
-- Synchronizer shift register
--------------------------------------------------------------------------------
--
-- Francesco Martina @ 2023
-- v1.2
--
--------------------------------------------------------------------------------

library IEEE;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity synchronizer is
    Generic (
        STAGES : integer := 3
    );
    Port (
        clk      : in  std_logic;
        aync_in  : in  std_logic;
        sync_out : out std_logic
    );
end synchronizer;

architecture Behavioral of synchronizer is

    -- shift register
    signal synch_shift_register : std_logic_vector((STAGES - 1) downto 0) := std_logic_vector(to_unsigned(0, STAGES));

    -- Synthesis Attributes
    attribute ASYNC_REG          : boolean;
    attribute syn_preserve       : boolean;
    attribute syn_replicate      : boolean;
    attribute syn_allow_retiming : boolean;

    attribute ASYNC_REG of synch_shift_register          : signal is true;  -- Register is capable of receiving asynchronous data
    attribute syn_preserve of synch_shift_register       : signal is true;  -- Do not remove those signals and registers
    attribute syn_replicate of synch_shift_register      : signal is false; -- Do not replicate those register
    attribute syn_allow_retiming of synch_shift_register : signal is false; -- Do not optimize timing by changing registers

begin

    -- synchronization shift register
    process(clk)
    begin
        if rising_edge(clk) then
            synch_shift_register(0) <= aync_in;
            for i in 1 to (STAGES - 1) loop
                synch_shift_register(i) <= synch_shift_register(i - 1);
            end loop;
        end if;
    end process;

    sync_out <= synch_shift_register(STAGES - 1);

end Behavioral;