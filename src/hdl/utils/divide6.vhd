library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity divide6 is
    port(
        clock_in    : in    std_logic;
        data_out    : inout std_logic;
        rdy_in      : in    std_logic;
        frame_start : in    std_logic
    );
end divide6;

architecture Behavioral of divide6 is

    begin

      process(clock_in)
        variable dv_pipe : std_logic_vector(2 downto 0);
        variable dv : std_logic; 
        begin
          if(rising_edge(clock_in)) then  
            if rdy_in = '0' then
                data_out <= '0';
            else
                if dv_pipe="100" then
                  data_out <= not data_out;
                end if;
            end if;
            
            if dv='1' then 
              dv_pipe := "001";
            else
              dv_pipe := dv_pipe(1 downto 0) & dv_pipe(2);              
            end if;
            dv := frame_start;  
          end if;
        end process;


end Behavioral;
