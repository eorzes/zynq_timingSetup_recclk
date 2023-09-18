-- ___________________________________________________________
--
-- AXI4-Stream to AXI4-Lite Interface
-- ___________________________________________________________
--
-- Francesco Martina @ 2022
-- v1.0
--

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

--------------------------------------------------------------------------------
--------------------------------------------------------------------------------
-- This is a minimal implementation of an AXI4-Stream bus to AXI4-Lite (Memory Mapped) converter.
-- According to the protocol, the morphology of the frame presented at the slave AXI4-Stream must follow:

--------------------------------------------------------------------------------
-- Write Transaction (at AXI4-Stream Slave) 3x 32bit words
-- <32bit 0xFFFFFFFF><32bit Reg Address><32bit Reg Value>
-- Read Transaction (at AXI4-Stream Slave) 2x 32bit words
-- <32bit 0xXXXXXXXX (whatever excepted 0xFFFFFFFF)><32bit Reg Address>

--------------------------------------------------------------------------------
-- The response presented at the AXI4-Stream Master occurs only in the Read case and it is simply the Reg value
-- <32bit Reg Value>
--------------------------------------------------------------------------------
--------------------------------------------------------------------------------

entity axis_to_axi is
    Port (

        ---- Reset / Clock
        reset : in std_logic;
        clk   : in std_logic;

        ---- Slave AXI-S port 
        s_axis_tdata  : in  std_logic_vector(31 downto 0);
        s_axis_tvalid : in  std_logic;
        s_axis_tready : out std_logic;
        s_axis_tlast  : in  std_logic;

        ---- Master AXI-S port 
        m_axis_tdata  : out std_logic_vector(31 downto 0);
        m_axis_tvalid : out std_logic;
        m_axis_tready : in  std_logic;
        m_axis_tlast  : out std_logic;

        ---- Master AXI-Lite
        m_axi_awaddr  : out std_logic_vector(31 downto 0);
        m_axi_awvalid : out std_logic;
        m_axi_awready : in  std_logic;

        m_axi_wdata  : out std_logic_vector(31 downto 0);
        m_axi_wstrb  : out std_logic_vector(3 downto 0);
        m_axi_wvalid : out std_logic;
        m_axi_wready : in  std_logic;

        m_axi_bresp  : in  std_logic_vector(1 downto 0);
        m_axi_bvalid : in  std_logic;
        m_axi_bready : out std_logic;

        m_axi_araddr  : out std_logic_vector(31 downto 0);
        m_axi_arvalid : out std_logic;
        m_axi_arready : in  std_logic;

        m_axi_rdata  : in  std_logic_vector(31 downto 0);
        m_axi_rresp  : in  std_logic_vector(1 downto 0);
        m_axi_rvalid : in  std_logic;
        m_axi_rready : out std_logic

    );
end axis_to_axi;


architecture Behavioral of axis_to_axi is

    constant WRITE_CMD       : std_logic_vector(31 downto 0) := x"FFFFFFFF";
    signal write_address_reg : std_logic_vector(31 downto 0);

    -- FSM status
    type status_t is (IDLE, WRITE_ADD_STORE, WRITE_ADD_and_VALUE, WRITE_PENDING_VALUE, WRITE_RESP, READ_ADD, READ_VALUE);
    signal status : status_t;


begin

    ----------------------------------------------------------------------------
    ----------------------------------------------------------------------------
    -- FSM
    ----------------------------------------------------------------------------
    ----------------------------------------------------------------------------

    process(reset, clk)
    begin
        if reset = '1' then
            status            <= IDLE;
            write_address_reg <= (others => '0');

        elsif rising_edge(clk) then
            case status is

                ------------------------------------------------------------
                when IDLE =>
                    -- wait for command
                    if s_axis_tvalid = '1' then
                        if s_axis_tdata = WRITE_CMD then
                            status <= WRITE_ADD_STORE;
                        else
                            status <= READ_ADD;
                        end if;
                    end if;

                ------------------------------------------------------------
                when WRITE_ADD_STORE =>
                    -- store the write address
                    -- (this is required in order to be able to preset later the valid write address and write data together
                    -- in the WRITE_ADD_VALUE status, as required by some AXI4-Lite Slave implementations).
                    if s_axis_tvalid = '1' then
                        write_address_reg <= s_axis_tdata;
                        status            <= WRITE_ADD_and_VALUE;
                    end if;

                ------------------------------------------------------------
                when WRITE_ADD_and_VALUE =>
                    -- waiting for passing the writing address and, possibly, the value
                    if m_axi_awready = '1' then
                        -- the slave received the writing address
                        status <= WRITE_PENDING_VALUE;
                        if s_axis_tvalid = '1' and m_axi_wready = '1' then
                            -- the slave received both the writing address and the data value
                            status <= WRITE_RESP;
                        end if;
                    end if;

                ------------------------------------------------------------
                when WRITE_PENDING_VALUE =>
                    -- waiting for the slave to receive the value to write
                    if s_axis_tvalid = '1' and m_axi_wready = '1' then
                        status <= WRITE_RESP;
                    end if;


                ------------------------------------------------------------
                when WRITE_RESP =>
                    -- wait for writing acknowledgment
                    -- the response is ignored in this implementation
                    if m_axi_bvalid = '1' then
                        status <= IDLE;
                    end if;

                ------------------------------------------------------------
                when READ_ADD =>
                    -- wait for passing the read address
                    if s_axis_tvalid = '1' and m_axi_arready = '1' then
                        status <= READ_VALUE;
                    end if;
                ------------------------------------------------------------
                when READ_VALUE =>
                    -- wait for passing the read value
                    if m_axi_rvalid = '1' and m_axis_tready = '1' then
                        status <= IDLE;
                    end if;

            end case;
        end if;
    end process;

    -- FSM Output
    process(status, m_axi_awready, s_axis_tvalid, m_axi_wready, m_axi_arready, m_axi_rvalid, m_axis_tready)
    begin
        case status is
            ------------------------------------------------------------
            when IDLE =>
                ---- AXIs
                s_axis_tready <= '1';
                m_axis_tvalid <= '0';
                m_axis_tlast  <= '0';
                ---- AXI
                m_axi_awvalid <= '0';
                m_axi_wvalid  <= '0';
                m_axi_bready  <= '0';
                m_axi_arvalid <= '0';
                m_axi_rready  <= '0';
            ------------------------------------------------------------
            when WRITE_ADD_STORE =>
                ---- AXIs
                s_axis_tready <= '1';
                m_axis_tvalid <= '0';
                m_axis_tlast  <= '0';
                ---- AXI
                m_axi_awvalid <= '0';
                m_axi_wvalid  <= '0';
                m_axi_bready  <= '0';
                m_axi_arvalid <= '0';
                m_axi_rready  <= '0';
            ------------------------------------------------------------
            when WRITE_ADD_and_VALUE =>
                ---- AXIs
                s_axis_tready <= m_axi_wready;
                m_axis_tvalid <= '0';
                m_axis_tlast  <= '0';
                ---- AXI
                m_axi_awvalid <= '1';
                m_axi_wvalid  <= s_axis_tvalid;
                m_axi_bready  <= '0';
                m_axi_arvalid <= '0';
                m_axi_rready  <= '0';
            ------------------------------------------------------------
            when WRITE_PENDING_VALUE =>
                ---- AXIs
                s_axis_tready <= m_axi_wready;
                m_axis_tvalid <= '0';
                m_axis_tlast  <= '0';
                ---- AXI
                m_axi_awvalid <= '0';
                m_axi_wvalid  <= s_axis_tvalid;
                m_axi_bready  <= '0';
                m_axi_arvalid <= '0';
                m_axi_rready  <= '0';
            ------------------------------------------------------------
            when WRITE_RESP =>
                ---- AXIs
                s_axis_tready <= '0';
                m_axis_tvalid <= '0';
                m_axis_tlast  <= '0';
                ---- AXI
                m_axi_awvalid <= '0';
                m_axi_wvalid  <= '0';
                m_axi_bready  <= '1';
                m_axi_arvalid <= '0';
                m_axi_rready  <= '0';
            ------------------------------------------------------------
            when READ_ADD =>
                ---- AXIs
                s_axis_tready <= m_axi_arready;
                m_axis_tvalid <= '0';
                m_axis_tlast  <= '0';
                ---- AXI
                m_axi_awvalid <= '0';
                m_axi_wvalid  <= '0';
                m_axi_bready  <= '0';
                m_axi_arvalid <= s_axis_tvalid;
                m_axi_rready  <= '0';
            ------------------------------------------------------------
            when READ_VALUE =>
                ---- AXIs
                s_axis_tready <= '0';
                m_axis_tvalid <= m_axi_rvalid;

                -- a single word is transmitted according to the protocol
                m_axis_tlast <= '1';

                ---- AXI
                m_axi_awvalid <= '0';
                m_axi_wvalid  <= '0';
                m_axi_bready  <= '0';
                m_axi_arvalid <= '0';
                m_axi_rready  <= m_axis_tready;

        end case;

    end process;

    -- fixed signals (accept all bytes)
    m_axi_wstrb <= (others => '1');

    -- data bus pass-through
    m_axi_awaddr <= write_address_reg;
    m_axi_araddr <= s_axis_tdata;
    m_axi_wdata  <= s_axis_tdata;
    m_axis_tdata <= m_axi_rdata;

end Behavioral;

