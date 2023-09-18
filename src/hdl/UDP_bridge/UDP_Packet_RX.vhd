-- ___________________________________________________________
--
-- UDP packet receiver (UDP Payload to AXI4-Stream)
-- ___________________________________________________________
--
-- Francesco Martina @ 2022
-- v1.0
--

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

-- The received UDP payload is translated into an AXI4-Stream.
-- Note that, in any condition, do not exceed the maximum packet length allowed in the specific IPv4 network and PCS configuration.
-- For illustrative purpose only, if the typical value of 1518 bytes is used, UDP_MAX_PAYLOAD_SIZE should be less or equal than
-- 1518 - 14 (ETH II Header) - 20 (IP Header) - 8 (UDP Header) = 1476 bytes.
-- Employ Jumbo frames if larger packets are required.

entity UDP_Packet_RX is
    Port (

        -- Reset / Clock
        rx_reset   : in std_logic;
        rx_axi_clk : in std_logic;

        -- MAC RX AXI-S port
        rx_axis_mac_tdata  : in std_logic_vector(7 downto 0);
        rx_axis_mac_tvalid : in std_logic;
        rx_axis_mac_tlast  : in std_logic;
        -- rx_axis_mac_tready : out std_logic; -- back-pressure will be never used by this module, which is always ready

        -- UDP packet master AXI-S port 
        rx_UDP_payload_tdata  : out std_logic_vector(7 downto 0);
        rx_UDP_payload_tvalid : out std_logic;
        rx_UDP_payload_tlast  : out std_logic;
        -- rx_UDP_payload_tready : in  std_logic; -- no back-pressure allowed by this module, use external FIFO if required

        -- network configuration (loaded during IDLE state only)
        -- a clock cycle is required after the module reset and before any transmissions (that is rx_axis_mac_tvalid deasserted) to store these configuration

        local_mac_address        : in std_logic_vector(47 downto 0); -- MAC address of the FPGA board
        local_IP_address         : in std_logic_vector(31 downto 0); -- IP address of the FPGA board
        local_UDP_listening_port : in std_logic_vector(15 downto 0); -- UDP local (listening) port
        source_mac_address       : in std_logic_vector(47 downto 0); -- MAC address of the UDP source (for instance the PC)
        source_IP_address        : in std_logic_vector(31 downto 0); -- IP address of the UDP source
        source_UDP_port          : in std_logic_vector(15 downto 0)  -- UDP source port

    );
end UDP_Packet_RX;

architecture Behavioral of UDP_Packet_RX is

    ----------------------------------------------------------------------------
    -- Configuration Storage
    ----------------------------------------------------------------------------

    signal local_mac_address_reg        : std_logic_vector(47 downto 0);
    signal local_IP_address_reg         : std_logic_vector(31 downto 0);
    signal local_UDP_listening_port_reg : std_logic_vector(15 downto 0);
    signal source_mac_address_reg       : std_logic_vector(47 downto 0);
    signal source_IP_address_reg        : std_logic_vector(31 downto 0);
    signal source_UDP_port_reg          : std_logic_vector(15 downto 0);

    ----------------------------------------------------------------------------
    -- Header signals
    ----------------------------------------------------------------------------

    constant eth2_header_size : integer := 14;
    constant IP_header_size   : integer := 20;
    constant UDP_header_size  : integer := 8;

    type eth2_header_t is array((eth2_header_size-1) downto 0) of std_logic_vector(7 downto 0); -- 14 bytes of Ethernet II Header
    type IP_header_t is array((IP_header_size-1) downto 0) of std_logic_vector(7 downto 0);     -- 20 bytes of IP Header
    type UDP_header_t is array((UDP_header_size-1) downto 0) of std_logic_vector(7 downto 0);   -- 8 bytes of UDP Header

    signal eth2_header : eth2_header_t;
    signal IP_header   : IP_header_t;
    signal UDP_header  : UDP_header_t;

    ----------------------------------------------------------------------------
    -- Signals
    ----------------------------------------------------------------------------

    -- counters used to track the header bytes
    signal eth2_byte_counter : integer range 0 to eth2_header_size;
    signal IP_byte_counter   : integer range 0 to IP_header_size;
    signal UDP_byte_counter  : integer range 0 to (2**16 - 1);

    -- register storing the UDP packet length
    signal UDP_packet_length : unsigned(15 downto 0);

    -- RX FSM status
    type status_t is (IDLE, ETH2, IP, UDP, PAYLOAD, WAIT_PACKET_END);
    signal status : status_t;

begin

    -- Incoming packets will be filtered according to these configuration

    ----------------------------------------------------------------------------
    -- Ethernet II Header
    ----------------------------------------------------------------------------

    -- DST MAC ADDRESS              
    eth2_header(0) <= local_mac_address_reg(47 downto 40);
    eth2_header(1) <= local_mac_address_reg(39 downto 32);
    eth2_header(2) <= local_mac_address_reg(31 downto 24);
    eth2_header(3) <= local_mac_address_reg(23 downto 16);
    eth2_header(4) <= local_mac_address_reg(15 downto 8);
    eth2_header(5) <= local_mac_address_reg(7 downto 0);

    -- SOURCE MAC ADDRESS              
    eth2_header(6)  <= source_mac_address_reg(47 downto 40);
    eth2_header(7)  <= source_mac_address_reg(39 downto 32);
    eth2_header(8)  <= source_mac_address_reg(31 downto 24);
    eth2_header(9)  <= source_mac_address_reg(23 downto 16);
    eth2_header(10) <= source_mac_address_reg(15 downto 8);
    eth2_header(11) <= source_mac_address_reg(7 downto 0);

    -- IPv4 packet Type
    eth2_header(12) <= x"08";
    eth2_header(13) <= x"00";

    ----------------------------------------------------------------------------
    -- IPv4 Header
    ----------------------------------------------------------------------------

    IP_header(0) <= x"45"; -- Version 4, Header Lenght = 20bytes (5)

    -- Differentiated Services Field
    IP_header(1) <= x"00"; -- __(Not Used)__

    -- IP packet total length
    IP_header(2) <= x"00"; -- MSBs __(Not Used)__
    IP_header(3) <= x"00"; -- LSBs __(Not Used)__

    -- IP identification
    IP_header(4) <= x"00"; -- MSBs __(Not Used)__
    IP_header(5) <= x"00"; -- LSBs __(Not Used)__

    -- Flags
    IP_header(6) <= x"40"; -- Fragment (Don't Fragment) __(Not Used)__
    IP_header(7) <= x"00"; -- __(Not Used)__

    -- Time to Live
    IP_header(8) <= x"00"; -- TTL __(Not Used)__

    -- Protocol Type
    IP_header(9) <= x"11"; -- Protocol (UDP)

    -- Header Checksum
    IP_header(10) <= x"00"; -- MSBs __(Not Used)__
    IP_header(11) <= x"00"; -- LSBs __(Not Used)__

    -- SRC IP Address
    IP_header(12) <= source_IP_address_reg(31 downto 24);
    IP_header(13) <= source_IP_address_reg(23 downto 16);
    IP_header(14) <= source_IP_address_reg(15 downto 8);
    IP_header(15) <= source_IP_address_reg(7 downto 0);

    -- DST IP Address
    IP_header(16) <= local_IP_address_reg(31 downto 24);
    IP_header(17) <= local_IP_address_reg(23 downto 16);
    IP_header(18) <= local_IP_address_reg(15 downto 8);
    IP_header(19) <= local_IP_address_reg(7 downto 0);

    ----------------------------------------------------------------------------
    -- UDP Header
    ----------------------------------------------------------------------------

    -- SRC port
    UDP_header(0) <= source_UDP_port_reg(15 downto 8); -- MSBs
    UDP_header(1) <= source_UDP_port_reg(7 downto 0);  -- LSBs

    -- DST port
    UDP_header(2) <= local_UDP_listening_port_reg(15 downto 8); -- MSBs
    UDP_header(3) <= local_UDP_listening_port_reg(7 downto 0);  -- LSBs

    -- UDP packet length (not checked, instead it is retrieved from the receiving packet)
    UDP_header(4) <= x"00"; -- MSBs __(Not Used)__
    UDP_header(5) <= x"00"; -- LSBs __(Not Used)__

    -- Checksum
    UDP_header(6) <= x"00"; -- MSBs __(Not Used)__
    UDP_header(7) <= x"00"; -- LSBs __(Not Used)__

    ----------------------------------------------------------------------------
    -- Module Configuration
    ----------------------------------------------------------------------------
    process(rx_reset, rx_axi_clk)
    begin
        if rx_reset = '1' then
            local_mac_address_reg        <= (others => '0');
            local_IP_address_reg         <= (others => '0');
            local_UDP_listening_port_reg <= (others => '0');
            source_mac_address_reg       <= (others => '0');
            source_IP_address_reg        <= (others => '0');
            source_UDP_port_reg          <= (others => '0');
        elsif rising_edge(rx_axi_clk) then
            if status = IDLE and rx_axis_mac_tvalid = '0' then
                -- configuration is updated while in inactive status
                local_mac_address_reg        <= local_mac_address;
                local_IP_address_reg         <= local_IP_address;
                local_UDP_listening_port_reg <= local_UDP_listening_port;
                source_mac_address_reg       <= source_mac_address;
                source_IP_address_reg        <= source_IP_address;
                source_UDP_port_reg          <= source_UDP_port;
            end if;
        end if;
    end process;

    ----------------------------------------------------------------------------
    ----------------------------------------------------------------------------
    -- FSM
    ----------------------------------------------------------------------------
    ----------------------------------------------------------------------------

    process(rx_reset, rx_axi_clk)
    begin
        if rx_reset = '1' then
            status            <= IDLE;
            eth2_byte_counter <= 0;
            IP_byte_counter   <= 0;
            UDP_byte_counter  <= 0;

        elsif rising_edge(rx_axi_clk) then

            -- FSM updates occurs synchronously to the arrival of new data
            if rx_axis_mac_tvalid = '1' then
                case status is

                    ------------------------------------------------------------
                    when IDLE =>
                        -- actually a status equivalent to ETH2 but required for storing the module configuration

                        eth2_byte_counter <= eth2_byte_counter + 1;

                        -- the first byte arrived, so it is compared with the reference header
                        if rx_axis_mac_tdata = eth2_header(eth2_byte_counter) then
                            status <= ETH2;
                        else
                            -- if different then it jumps to WAIT_PACKET_END to waits the end of packet.
                            status <= WAIT_PACKET_END;
                        end if;

                    ------------------------------------------------------------
                    when ETH2 =>

                        -- if all the header bytes have been received jump to IP header checker
                        -- (unless a unmatching byte is found, which forces the status to WAIT_PACKET_END)
                        eth2_byte_counter <= eth2_byte_counter + 1;
                        if eth2_byte_counter = (eth2_header_size - 1) then
                            status <= IP;
                        end if;

                        -- validate the header bytes
                        if rx_axis_mac_tdata /= eth2_header(eth2_byte_counter) then
                            -- difference found
                            status <= WAIT_PACKET_END;
                        end if;

                    ------------------------------------------------------------
                    when IP =>

                        -- if all the header bytes have been received jump to UDP header checker
                        -- (unless a unmatching byte is found, which forces the status to WAIT_PACKET_END)
                        IP_byte_counter <= IP_byte_counter + 1;
                        if IP_byte_counter = (IP_header_size - 1) then
                            status <= UDP;
                        end if;

                        -- validate the header bytes
                        case IP_byte_counter is
                                -- compare the bytes relevant for the application only (see IP_header assignment and comments)

                            --when 0|6|9|12 to 19 => -- force the detection of the IP header flag ("not fragmented")
                            when 0|9|12 to 19 => -- don't care about IP header flags

                                -- validate the header and loop over the whole bytes
                                if rx_axis_mac_tdata /= IP_header(IP_byte_counter) then
                                    -- difference found
                                    status <= WAIT_PACKET_END;
                                end if;

                            when others =>
                                null;
                        end case;


                    ------------------------------------------------------------
                    when UDP =>

                        -- if all the header bytes have been received jump to PAYLOAD receiving status
                        -- (unless a unmatching byte is found, which forces the status to WAIT_PACKET_END)
                        UDP_byte_counter <= UDP_byte_counter + 1;
                        if UDP_byte_counter = (UDP_header_size - 1) then
                            status <= PAYLOAD;
                        end if;

                        -- validate the header bytes
                        case UDP_byte_counter is

                            -- compare the bytes relevant for the application only (see UDP_header assignment and comments)
                            when 0 to 3 =>

                                -- validate the header and loop over the whole bytes
                                if rx_axis_mac_tdata /= UDP_header(UDP_byte_counter) then
                                    -- difference found
                                    status <= WAIT_PACKET_END;
                                end if;

                            when 4 =>
                                -- store the UDP packet length MSBs
                                UDP_packet_length(15 downto 8) <= unsigned(rx_axis_mac_tdata);
                            when 5 =>
                                -- store the UDP packet length LSBs
                                UDP_packet_length(7 downto 0) <= unsigned(rx_axis_mac_tdata);
                            when others =>
                                null;

                        end case;


                    ------------------------------------------------------------
                    when PAYLOAD =>

                        UDP_byte_counter <= UDP_byte_counter + 1;

                        -- wait the payload data reception
                        if UDP_byte_counter = (to_integer(UDP_packet_length) - 1) then
                            -- if the MAC module assert tlast together with the payload end it goes directly to IDLE
                            if rx_axis_mac_tlast = '1' then
                                -- reset the counters
                                eth2_byte_counter <= 0;
                                IP_byte_counter   <= 0;
                                UDP_byte_counter  <= 0;
                                status            <= IDLE;
                            else
                                status <= WAIT_PACKET_END;
                            end if;
                        end if;

                    ------------------------------------------------------------
                    when WAIT_PACKET_END =>
                        -- wait for end of packet (tlast assertion)
                        if rx_axis_mac_tlast = '1' then
                            -- reset the counters
                            eth2_byte_counter <= 0;
                            IP_byte_counter   <= 0;
                            UDP_byte_counter  <= 0;
                            status            <= IDLE;
                        end if;

                end case;
            end if;
        end if;
    end process;

    -- FSM Output
    process(status, rx_axis_mac_tvalid, UDP_byte_counter, UDP_packet_length)
    begin

        case status is
            when PAYLOAD =>
                rx_UDP_payload_tvalid <= rx_axis_mac_tvalid;

                if UDP_byte_counter = to_integer(UDP_packet_length) - 1 then
                    -- last element of payload
                    rx_UDP_payload_tlast <= '1';
                else
                    rx_UDP_payload_tlast <= '0';
                end if;

            when others =>
                rx_UDP_payload_tvalid <= '0';
                rx_UDP_payload_tlast  <= '0';

        end case;

    end process;

    -- zero latency payload data pass-through
    rx_UDP_payload_tdata <= rx_axis_mac_tdata;

end Behavioral;

