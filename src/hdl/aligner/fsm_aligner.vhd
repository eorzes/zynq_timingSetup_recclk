----------------------------------------------------------------------------------
-- Company: CERN - HPTD
-- Engineer: Edoardo Orzes
-- 
-- Create Date: 02/13/2023
-- Module Name: fsm_aligner

--  FSM automated byte aliner for manual alinment mode, using bit slide of GTH transceiver.
--  The comma that is searched is k28.5 (x"BC"); expected to be in the least significant byte on the 4 bytes bus, when aligned.
--  To change this edit "when ALIGNED" case statement.

-- Revision: v1.0
----------------------------------------------------------------------------------

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.numeric_std.ALL;


entity fsm_aligner is
  generic (
    CYCLES_BETWEEN_COMMAS       : integer := 5;  -- 5 rxusrclk cycles is the default window for searching for comma in SEARCH state before going to SLIDE or ALIGNED state.
    ERRORS_THRESHOLD_TO_REALIGN : integer := 16; -- 16 consecutive errors is the default threshold that triggers to SLIDE state from the ALIGNED state.
    ALIGN_THRESHOLD_TO_ALIGNED  : integer := 9   -- 9 consecutive commas in the right position is the default threshold to set the byteAligned flag to 1.
  ); 
  port( 
    clk             : in  std_logic;
    rst             : in  std_logic;
    en              : in  std_logic;
    rxdata          : in  std_logic_vector(31 downto 0);
    ctrl            : in  std_logic_vector(3  downto 0);   -- control for special symbols in 8b10b
    rxSlide         : out std_logic;                       -- output for the transceiver's bitslide
    slideCount      : buffer std_logic_vector(14 downto 0); 
    oddsCount       : out std_logic_vector(14 downto 0);
    byteAligned     : buffer std_logic;
    rxreset_out     : out std_logic;
    rst_also_oddC_i : in  std_logic;
    lol_count_o     : out std_logic_vector(7 downto 0);
    lol_ovf         : out  std_logic;
    -- debug for ILA
    st   : out std_logic_vector(2  downto 0); 
    aliC : out std_logic_vector(14 downto 0);
    r_t  : out std_logic
  );
end fsm_aligner;

architecture Behavioral of fsm_aligner is

    constant CYCLES_TO_WAIT_BETWEEN_SLIDES : integer := 35;      -- minimum time between assertions of rxslide is 32 rxusrclk cycles
    constant TDLOCK                        : integer := 2300000; -- TDLOCK (CDR to data max time for LPM equaliser) is the time to wait after the reset before clk is in place
    
    signal rst_also_oddC : std_logic;
    
    -- COUNTERS --
    signal count       : integer range 0 to 50      := 0; -- > CYCLES_TO_WAIT_BETWEEN_SLIDES
    signal count_s     : integer range 0 to 1000    := 0; -- > 4*CYCLES_BETWEEN_COMMAS
    signal n_slide     : integer range 0 to 32768   := 0; -- > 15 bits of st signal
    signal count_r     : integer range 0 to 3000000 := 0; -- > TDLOCK
    signal errorCount  : integer range 0 to 1000    := 0; -- > ERRORS_THRESHOLD_TO_REALIGN
    signal alignCount  : integer range 0 to 1000    := 0; -- > ALIGN_THRESHOLD_TO_ALIGNED
    signal n_odds      : integer range 0 to 32768   := 0; -- > 15 bits of oddsC signal
    signal lol_count   : integer range 0 to 255     := 0; -- > 8 bits of signal
    signal rst_timeout : std_logic;
    signal lolcount_en : std_logic := '0';
    signal lolstop     : std_logic := '0';
    
    -- FSM STATES --
    type state_t is (STOP, SEARCH, SLIDE, RESET, ALIGNED);
    attribute ENUM_ENCODING: string;
    attribute ENUM_ENCODING of state_t: type is "000 001 010 011 100";
    signal state     : state_t := STOP;
    signal intState  : integer := 0;
    
begin

    intState <= state_t'POS(state);
    st   <= std_logic_vector(to_unsigned(intState, 3));
    aliC <= std_logic_vector(to_unsigned(alignCount, 15));
    r_t  <= rst_timeout;

    slideCount  <= std_logic_vector(to_unsigned(n_slide, 15));
    oddsCount   <= std_logic_vector(to_unsigned(n_odds,  15));
    lol_count_o <= std_logic_vector(to_unsigned(lol_count, 8));
    
    bit_synch_sys_to_rx: entity work.bit_synch
      port map (
        bit_in  => rst_also_oddC_i, 
        clk     => clk, 
        bit_out => rst_also_oddC
      ); 
                
    LOL : process(clk) begin
        if rising_edge(clk) then
            if rst = '1' or lolcount_en = '0' then
                lol_count <= 0;
                lol_ovf <= '0';
                lolstop <= '0';
            else
                if byteAligned = '0' and lolstop = '0' then
                    if lol_count = 255 then
                        lol_ovf <= '1';
                    else 
                        lol_count <= lol_count + 1;
                        lolstop <= '1';
                    end if;
                end if;
                if byteAligned = '1' then
                    lolstop <= '0';
                end if;
            end if;
        end if;
     end process LOL;

    FSM : process(clk) begin
        if rising_edge(clk) then
            if rst = '1' then
                state <= STOP;
                count <= 0;
                count_r <= 0;
                n_slide <= 0;
                errorCount <= 0;
                alignCount <= 0;
                rst_timeout <= '0';
                lolcount_en <= '0';
                if rst_also_oddC = '1' then
                    n_odds <= 0; -- has to start with the previous value (no reset). So the init value has to be defined on the signal declaration.
                end if;
            else
                if en = '1' then 
                    case(state) is 
                        when STOP =>
                            if count_r < TDLOCK then    
                                count_r <= count_r + 1;
                            else 
                                count_r <= 0;
                                state <= SEARCH;
                            end if;
                        
                        when SEARCH => 
                            if count_s >= 4*CYCLES_BETWEEN_COMMAS then
                                rst_timeout <= '1';
                                state <= SLIDE;
                            end if;
                            if ctrl = "0001" then
                                rst_timeout <= '1';
                                if rxdata(7 downto 0) = x"BC" then
                                    if slideCount(0) = '1' then
                                        state <= RESET;  -- if slide count is odd is needed to reset again until it's even
                                        n_odds <= n_odds + 1;
                                    else 
                                        state <= ALIGNED; 
                                    end if;
                                else 
                                    state <= SLIDE;
                                end if;
                            end if;
                            
                        when RESET => 
                            rst_timeout <= '0';
                            state <= STOP;
                            
                        when SLIDE =>
                            rst_timeout <= '0';
                            if count < CYCLES_TO_WAIT_BETWEEN_SLIDES then  
                                count <= count + 1;
                            else 
                                count <= 0;
                                state <= SEARCH;
                            end if;
                            if count = 2 then 
                                n_slide <= n_slide + 1;
                            end if;
                            
                        when ALIGNED => 
                            rst_timeout <= '0';
                            if count_s > 3*CYCLES_BETWEEN_COMMAS - 1 then
                                rst_timeout <= '1';
                                alignCount <= 0;
                                state <= SLIDE;
                            end if;
                            if ctrl = "0001" then
                                rst_timeout <= '1';
                                if rxdata(7 downto 0) = x"BC" then
                                    if errorCount > 0 then
                                        errorCount <= errorCount - 1;
                                    end if;
                                    if byteAligned = '0' then
                                        alignCount <= alignCount + 1;
                                    end if;
                                else 
                                    errorCount <= errorCount + 1;
                                end if;
                            end if;
                            if errorCount > ERRORS_THRESHOLD_TO_REALIGN - 1 then
                                errorCount <= 0;
                                n_slide <= 0;
                                alignCount <= 0;
                                state <= SLIDE;
                            end if;
                            if byteAligned = '1' then
                                lolcount_en <= '1';  -- maintained at 1 after fist successful alignemnt
                            end if;
                            
                    end case;
                end if;
            end if;
        end if;
    end process;
        
    FSM_outputs: process(state, count, alignCount) begin
     
        rxSlide <= '0';
        rxreset_out <= '0';     
        byteAligned <= '0';
        
        case(state) is
            when STOP => 
            
            when SEARCH => 
                
            when RESET => 
                rxreset_out <= '1'; 

            when SLIDE => 
                if count = 1 or count = 2 then
                    rxSlide <= '1';
                end if;
                
            when ALIGNED =>
                if alignCount = ALIGN_THRESHOLD_TO_ALIGNED then
                    byteAligned <= '1';
                end if;
                
        end case;
    end process;
    
    comma_time_out: process(clk) begin
        if rising_edge(clk) then
            if rst_timeout = '1' or rst = '1' then
                count_s <= 0;
            else
                if en = '1' and (state = SEARCH or state = ALIGNED) then 
                    count_s <= count_s + 1;
                end if;
            end if;
        end if;
    end process;

end Behavioral;

