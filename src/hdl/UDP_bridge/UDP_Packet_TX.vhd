-- ___________________________________________________________
--
-- UDP packet transmitter (AXI4-Stream to UDP Payload)
-- ___________________________________________________________
--
-- Francesco Martina @ 2022
-- v1.0
--

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity UDP_Packet_TX is
    Port (

        -- Reset / Clock
        tx_reset   : in std_logic;
        tx_axi_clk : in std_logic;

        -- MAC TX AXI-S port
        tx_axis_mac_tdata  : out std_logic_vector(7 downto 0);
        tx_axis_mac_tvalid : out std_logic;
        tx_axis_mac_tready : in  std_logic;
        tx_axis_mac_tlast  : out std_logic;

        -- UDP packet slave AXI-S port 
        tx_UDP_payload_tdata  : in std_logic_vector(7 downto 0);
        tx_UDP_payload_tvalid : in std_logic;
        -- tx_UDP_payload_tlast  : in  std_logic;
        tx_UDP_payload_tready : out std_logic;

        -- This bus fix the UDP payload size in bytes.
        -- In any condition, do not exceed the maximum packet length allowed in the specific IPv4 network and PCS configuration.
        -- For illustrative purpose only, if the typical value of 1518 bytes is used, UDP_payload_length should be less or equal than
        -- 1518 - 14 (ETH II Header) - 20 (IP Header) - 8 (UDP Header) = 1476 bytes.
        -- Employ Jumbo frames if larger packets are required.
        UDP_payload_length : in std_logic_vector(15 downto 0);

        -- network configuration (loaded during IDLE state only)
        -- a clock cycle is required after the module reset and before any transmissions (that is tx_UDP_payload_tvalid deasserted) to store these configuration

        local_mac_address              : in std_logic_vector(47 downto 0); -- MAC address of the FPGA board
        local_IP_address               : in std_logic_vector(31 downto 0); -- IP address of the FPGA board
        local_source_UDP_port          : in std_logic_vector(15 downto 0); -- UDP local (source) port
        destination_mac_address        : in std_logic_vector(47 downto 0); -- MAC address of the UDP destination (for instance the PC)
        destination_IP_address         : in std_logic_vector(31 downto 0); -- IP address of the UDP destination
        destination_UDP_listening_port : in std_logic_vector(15 downto 0)  -- UDP destination listening port

    );
end UDP_Packet_TX;

architecture Behavioral of UDP_Packet_TX is

    ----------------------------------------------------------------------------
    -- Configuration Storage
    ----------------------------------------------------------------------------

    signal tx_UDP_payload_tdata_reg           : std_logic_vector(7 downto 0);
    signal UDP_payload_length_reg             : std_logic_vector(15 downto 0);
    signal local_mac_address_reg              : std_logic_vector(47 downto 0);
    signal local_IP_address_reg               : std_logic_vector(31 downto 0);
    signal local_source_UDP_port_reg          : std_logic_vector(15 downto 0);
    signal destination_mac_address_reg        : std_logic_vector(47 downto 0);
    signal destination_IP_address_reg         : std_logic_vector(31 downto 0);
    signal destination_UDP_listening_port_reg : std_logic_vector(15 downto 0);

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

    signal IP_packet_total_length  : std_logic_vector(15 downto 0); -- IP packet total length (bytes)
    signal UDP_packet_total_length : std_logic_vector(15 downto 0); -- UDP packet total length (bytes)

    -- counters used to track the header bytes
    signal eth2_byte_counter        : integer range 0 to eth2_header_size;
    signal IP_byte_counter          : integer range 0 to IP_header_size;
    signal UDP_header_byte_counter  : integer range 0 to UDP_header_size;
    signal UDP_payload_byte_counter : integer range 0 to (2**16 - 1);

    -- TX FSM status
    type status_t is (IDLE, ETH2, IP, UDP, PAYLOAD, PAYLOAD_LAST_BYTE);
    signal status : status_t;

    -- copy of the UDP AXIS port ready flag
    signal tx_UDP_payload_tready_sig : std_logic;

    -- running counter for IP packet ID generation
    signal IP_packet_ID : unsigned(15 downto 0);

    -- IP header computed checksum
    signal IP_checksum : std_logic_vector(15 downto 0);


    ----------------------------------------------------------------------------
    -- IP Header checksum computation
    ----------------------------------------------------------------------------

    -- 20 bytes IP checksum computation
    function IP_header_checksum (signal IP_header : IP_header_t) return std_logic_vector is

        variable addendum_16b : unsigned(15 downto 0);                       -- the single 16 bits word
        variable raw_checksum : unsigned(19 downto 0) := to_unsigned(0, 20); -- the total checksum including the carry
        variable checksum     : std_logic_vector(15 downto 0);               -- the actual 16 bits checksum
    begin
        -- IP header is fixed to 20 bytes (10 x 16b words) in this implementation
        for i in 0 to 9 loop
            if i /= 5 then                                                             -- ignore the header checksum bytes
                addendum_16b := unsigned(IP_header(i*2)) & unsigned(IP_header(i*2+1)); -- MSBs first
                raw_checksum := raw_checksum + (x"0" & addendum_16b);
            end if;
        end loop;

        -- add the carry results inside the LSBs. A double iteration is required in the worst case.
        raw_checksum := (x"0" & raw_checksum(15 downto 0)) + (x"0000" & raw_checksum(19 downto 16));
        raw_checksum := (x"0" & raw_checksum(15 downto 0)) + (x"0000" & raw_checksum(19 downto 16));

        -- negate the result to obtain the 16b checksum
        checksum := std_logic_vector(not raw_checksum(15 downto 0));
        return checksum;
    end function;

begin

    -- Packet headers will be generated according to this configuration

    ----------------------------------------------------------------------------
    -- Ethernet II Header
    ----------------------------------------------------------------------------

    -- DST MAC ADDRESS              
    eth2_header(0) <= destination_mac_address_reg(47 downto 40);
    eth2_header(1) <= destination_mac_address_reg(39 downto 32);
    eth2_header(2) <= destination_mac_address_reg(31 downto 24);
    eth2_header(3) <= destination_mac_address_reg(23 downto 16);
    eth2_header(4) <= destination_mac_address_reg(15 downto 8);
    eth2_header(5) <= destination_mac_address_reg(7 downto 0);

    -- SOURCE MAC ADDRESS              
    eth2_header(6)  <= local_mac_address_reg(47 downto 40);
    eth2_header(7)  <= local_mac_address_reg(39 downto 32);
    eth2_header(8)  <= local_mac_address_reg(31 downto 24);
    eth2_header(9)  <= local_mac_address_reg(23 downto 16);
    eth2_header(10) <= local_mac_address_reg(15 downto 8);
    eth2_header(11) <= local_mac_address_reg(7 downto 0);

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
    IP_header(2) <= IP_packet_total_length(15 downto 8); -- MSBs
    IP_header(3) <= IP_packet_total_length(7 downto 0);  -- LSBs

    -- IP identification
    IP_header(4) <= std_logic_vector(IP_packet_ID(15 downto 8)); -- MSBs
    IP_header(5) <= std_logic_vector(IP_packet_ID(7 downto 0));  -- LSBs

    -- Flags
    IP_header(6) <= x"40"; -- Fragment (Don't Fragment)
    IP_header(7) <= x"00"; -- __(Not Used)__

    -- Time to Live
    IP_header(8) <= x"01"; -- TTL (point to point)

    -- Protocol Type
    IP_header(9) <= x"11"; -- Protocol (UDP)

    -- Header Checksum
    IP_header(10) <= IP_checksum(15 downto 8); -- MSBs
    IP_header(11) <= IP_checksum(7 downto 0);  -- LSBs

    -- SRC IP Address
    IP_header(12) <= local_IP_address_reg(31 downto 24);
    IP_header(13) <= local_IP_address_reg(23 downto 16);
    IP_header(14) <= local_IP_address_reg(15 downto 8);
    IP_header(15) <= local_IP_address_reg(7 downto 0);

    -- DST IP Address
    IP_header(16) <= destination_IP_address_reg(31 downto 24);
    IP_header(17) <= destination_IP_address_reg(23 downto 16);
    IP_header(18) <= destination_IP_address_reg(15 downto 8);
    IP_header(19) <= destination_IP_address_reg(7 downto 0);

    ----------------------------------------------------------------------------
    -- UDP Header
    ----------------------------------------------------------------------------

    -- SRC port
    UDP_header(0) <= local_source_UDP_port_reg(15 downto 8); -- MSBs
    UDP_header(1) <= local_source_UDP_port_reg(7 downto 0);  -- LSBs

    -- DST port
    UDP_header(2) <= destination_UDP_listening_port_reg(15 downto 8); -- MSBs
    UDP_header(3) <= destination_UDP_listening_port_reg(7 downto 0);  -- LSBs

    -- UDP packet length (not checked, instead it is retrieved from the receiving packet)
    UDP_header(4) <= UDP_packet_total_length(15 downto 8); -- MSBs
    UDP_header(5) <= UDP_packet_total_length(7 downto 0);  -- LSBs

    -- Checksum
    UDP_header(6) <= x"00"; -- MSBs __(Optional and not implemented here)__
    UDP_header(7) <= x"00"; -- LSBs __(Optional and not implemented here)__

    ----------------------------------------------------------------------------
    -- Module Configuration
    ----------------------------------------------------------------------------
    process(tx_reset, tx_axi_clk)
    begin
        if tx_reset = '1' then
            UDP_payload_length_reg             <= (others => '0');
            local_mac_address_reg              <= (others => '0');
            local_IP_address_reg               <= (others => '0');
            local_source_UDP_port_reg          <= (others => '0');
            destination_mac_address_reg        <= (others => '0');
            destination_IP_address_reg         <= (others => '0');
            destination_UDP_listening_port_reg <= (others => '0');
        elsif rising_edge(tx_axi_clk) then
            if status = IDLE then
                -- configuration is updated while in IDLE status
                UDP_payload_length_reg             <= UDP_payload_length;
                local_mac_address_reg              <= local_mac_address;
                local_IP_address_reg               <= local_IP_address;
                local_source_UDP_port_reg          <= local_source_UDP_port;
                destination_mac_address_reg        <= destination_mac_address;
                destination_IP_address_reg         <= destination_IP_address;
                destination_UDP_listening_port_reg <= destination_UDP_listening_port;
            end if;
        end if;
    end process;

    -- size of packets variable (overflow cannot happen due to the ethernet packet size limitation)
    UDP_packet_total_length <= std_logic_vector(to_unsigned(UDP_header_size, 16) + unsigned(UDP_payload_length_reg));
    IP_packet_total_length  <= std_logic_vector(to_unsigned(IP_header_size + UDP_header_size, 16) + unsigned(UDP_payload_length_reg));

    ----------------------------------------------------------------------------
    -- Input data register (required for correct FSM functioning)
    ----------------------------------------------------------------------------
    process(tx_reset, tx_axi_clk)
    begin
        if tx_reset = '1' then
            tx_UDP_payload_tdata_reg <= (others => '0');
        elsif rising_edge(tx_axi_clk) then
            if tx_UDP_payload_tvalid = '1' and tx_UDP_payload_tready_sig = '1' then
                tx_UDP_payload_tdata_reg <= tx_UDP_payload_tdata;
            end if;
        end if;
    end process;

    ----------------------------------------------------------------------------
    -- New Checksum computation (it is performed during the ethernet header TX)
    ----------------------------------------------------------------------------
    process(tx_reset, tx_axi_clk)
    begin
        if tx_reset = '1' then
            IP_checksum <= (others => '0');
        elsif rising_edge(tx_axi_clk) then
            if tx_axis_mac_tready = '1' and eth2_byte_counter = 0 then
                -- Calculated during the transmission of the first ethernet header byte.
                -- This implementation can be eventually pipelined to improve timings.
                IP_checksum <= IP_header_checksum(IP_header);
            end if;
        end if;
    end process;

    ----------------------------------------------------------------------------
    -- IP packet ID generator (running counter incremented at the end of TX)
    ----------------------------------------------------------------------------
    process(tx_reset, tx_axi_clk)
    begin
        if tx_reset = '1' then
            IP_packet_ID <= (others => '0');
        elsif rising_edge(tx_axi_clk) then
            if tx_axis_mac_tready = '1' and status = PAYLOAD_LAST_BYTE then
                IP_packet_ID <= IP_packet_ID + 1;
            end if;
        end if;
    end process;


    ----------------------------------------------------------------------------
    ----------------------------------------------------------------------------
    -- FSM
    ----------------------------------------------------------------------------
    ----------------------------------------------------------------------------

    process(tx_reset, tx_axi_clk)
    begin
        if tx_reset = '1' then
            status                   <= IDLE;
            eth2_byte_counter        <= 0;
            IP_byte_counter          <= 0;
            UDP_header_byte_counter  <= 0;
            UDP_payload_byte_counter <= 0;

        elsif rising_edge(tx_axi_clk) then

            if status = IDLE then

                -- the first payload byte received by the slave AXIS port initiates the transmission
                if tx_UDP_payload_tvalid = '1' then
                    status <= ETH2;
                end if;

            elsif tx_axis_mac_tready = '1' then

                -- except made of the IDLE state, FSM updates occurs only while the MAC module is ready to accept new data
                case status is

                    ------------------------------------------------------------
                    when IDLE =>
                        -- already handled (see above) regardless the state of tx_axis_mac_tready
                        null;

                    ------------------------------------------------------------
                    when ETH2 =>

                        -- count the transmitted bytes
                        eth2_byte_counter <= eth2_byte_counter + 1;
                        if eth2_byte_counter = (eth2_header_size - 1) then
                            status <= IP;
                        end if;

                    ------------------------------------------------------------
                    when IP =>

                        -- count the transmitted bytes
                        IP_byte_counter <= IP_byte_counter + 1;
                        if IP_byte_counter = (IP_header_size - 1) then
                            status <= UDP;
                        end if;

                    ------------------------------------------------------------
                    when UDP =>

                        -- count the transmitted bytes
                        UDP_header_byte_counter <= UDP_header_byte_counter + 1;
                        if UDP_header_byte_counter = (UDP_header_size - 1) then
                            if to_integer(unsigned(UDP_payload_length_reg)) = 1 then
                                -- the single byte already acquired is transmitted
                                status <= PAYLOAD_LAST_BYTE;
                            else
                                -- go for the data pass-through
                                status <= PAYLOAD;
                            end if;
                        end if;

                    ------------------------------------------------------------
                    when PAYLOAD =>

                        if tx_UDP_payload_tvalid = '1' then
                            -- count the transmitted UDP payload bytes
                            UDP_payload_byte_counter <= UDP_payload_byte_counter + 1;
                            if UDP_payload_byte_counter = (to_integer(unsigned(UDP_payload_length_reg)) - 2) then
                                status <= PAYLOAD_LAST_BYTE;
                            end if;
                        end if;

                    ------------------------------------------------------------
                    when PAYLOAD_LAST_BYTE =>
                        -- transmit the last UDP payload byte (already stored in tx_UDP_payload_tdata_reg)

                        -- turn back to the IDLE state
                        status <= IDLE;

                        -- reset the counters
                        eth2_byte_counter        <= 0;
                        IP_byte_counter          <= 0;
                        UDP_header_byte_counter  <= 0;
                        UDP_payload_byte_counter <= 0;

                end case;
            end if;

        end if;
    end process;

    -- FSM Output
    process(status, tx_axis_mac_tready, eth2_header, eth2_byte_counter, IP_header, IP_byte_counter, UDP_header, UDP_header_byte_counter, tx_UDP_payload_tdata_reg, tx_UDP_payload_tvalid)
    begin

        case status is
            when IDLE =>
                -- MAC AXIS master interface
                tx_axis_mac_tdata  <= (others => '0');
                tx_axis_mac_tvalid <= '0';
                tx_axis_mac_tlast  <= '0';

                -- local UDP AXIS slave interface
                tx_UDP_payload_tready_sig <= '1';

            when ETH2 =>
                -- MAC AXIS master interface
                tx_axis_mac_tdata  <= eth2_header(eth2_byte_counter);
                tx_axis_mac_tvalid <= '1';
                tx_axis_mac_tlast  <= '0';

                -- local UDP AXIS slave interface
                tx_UDP_payload_tready_sig <= '0';

            when IP =>
                -- MAC AXIS master interface
                tx_axis_mac_tdata  <= IP_header(IP_byte_counter);
                tx_axis_mac_tvalid <= '1';
                tx_axis_mac_tlast  <= '0';

                -- local UDP AXIS slave interface
                tx_UDP_payload_tready_sig <= '0';

            when UDP =>
                -- MAC AXIS master interface
                tx_axis_mac_tdata  <= UDP_header(UDP_header_byte_counter);
                tx_axis_mac_tvalid <= '1';
                tx_axis_mac_tlast  <= '0';

                -- local UDP AXIS slave interface
                tx_UDP_payload_tready_sig <= '0';

            when PAYLOAD =>
                -- MAC AXIS master interface
                tx_axis_mac_tdata  <= tx_UDP_payload_tdata_reg;
                tx_axis_mac_tvalid <= tx_UDP_payload_tvalid;
                tx_axis_mac_tlast  <= '0';

                -- local UDP AXIS slave interface
                tx_UDP_payload_tready_sig <= tx_axis_mac_tready;

            when PAYLOAD_LAST_BYTE =>
                -- MAC AXIS master interface
                tx_axis_mac_tdata  <= tx_UDP_payload_tdata_reg;
                tx_axis_mac_tvalid <= '1';
                tx_axis_mac_tlast  <= '1';

                -- local UDP AXIS slave interface
                tx_UDP_payload_tready_sig <= '0';

        end case;

    end process;


    tx_UDP_payload_tready <= tx_UDP_payload_tready_sig;

end Behavioral;

