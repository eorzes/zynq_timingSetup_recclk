--------------------------------------------------------------------------------
-- UDP to AXI Master bridge
--------------------------------------------------------------------------------
-- Instantiates all the logics and IPs required to implement a memory mapped 
-- master, which can be controlled remotely by UDP packets
--------------------------------------------------------------------------------
--
-- Francesco Martina @ 2023
--------------------------------------------------------------------------------


-- The local/remote IP/MAC addresses and the UDP ports are configurable by the instantiated VIO
-- the default values are:
-- Board MAC Address AA:BB:CC:DD:EE:FF
-- Board MAC Address IP address 10.0.1.2
-- Local UDP Port 6000
-- Remote MAC Address 00:0E:04:25:10:48
-- Remote IP Address 10.0.1.1
-- Remote UDP Port 6010

-- The UDP commands must be composed as:
-- **** Write Transaction 3x 32bit words:
--<32bit 0xFFFFFFFF><32bit Reg Address><32bit Reg Value>
-- **** Read Transaction (at AXI4-Stream Slave) 2x 32bit words
--<32bit 0xXXXXXXXX (whatever excepted 0xFFFFFFFF)><32bit Reg Address>
--(The response presented occurs only in the Read case and it is simply the returned register value:
--<32bit Reg Value>)

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VComponents.all;

entity udp_bridge is
    Port (

        sys_clk_125 : in std_logic; -- 125 MHz freerun Clock

        ------------------------------------------------------------------------
        -- 1000 Base-X Transceiver
        ------------------------------------------------------------------------

        -- Ethernet SFP 125 MHz reference clock 
        eth_gtrefclk_p : in std_logic;
        eth_gtrefclk_n : in std_logic;

        -- Ethernet SFP lane
        txn_eth_sfp : out std_logic;
        txp_eth_sfp : out std_logic;
        rxn_eth_sfp : in  std_logic;
        rxp_eth_sfp : in  std_logic;
        
        -- Ethernet addresses selection (group1 [1, Tx], group2 [2, Rx] or VIO [0])
        eth_addr_sel : in std_logic_vector(1 downto 0);

        ------------------------------------------------------------------------
        -- Master AXI-Lite interface
        ------------------------------------------------------------------------

        resetn_axi    : out std_logic; -- internally generated
        m_axi_clk     : in  std_logic; -- suggested 125MHz
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
end udp_bridge;

architecture Behavioral of udp_bridge is

    -- Internal Clock / Reset
    signal freerun_clk_62_5  : std_logic;
    signal freerun_clk_ok    : std_logic;
    signal sys_pll_locked    : std_logic;
    signal reset_mac_pcs_pma : std_logic;
    signal reset_axi         : std_logic;
    signal resetn_axi_sig    : std_logic;

    -- MAC interface
    signal rx_reset           : std_logic;
    signal rx_mac_aclk        : std_logic;
    signal rx_axis_mac_tdata  : std_logic_vector(7 downto 0);
    signal rx_axis_mac_tvalid : std_logic;
    signal rx_axis_mac_tlast  : std_logic;
    signal rx_axis_mac_tuser  : std_logic;
    signal tx_reset           : std_logic;
    signal tx_mac_aclk        : std_logic;
    signal tx_axis_mac_tdata  : std_logic_vector(7 downto 0);
    signal tx_axis_mac_tvalid : std_logic;
    signal tx_axis_mac_tlast  : std_logic;
    signal tx_axis_mac_tready : std_logic;

    -- Network Settings
    signal local_mac_address  : std_logic_vector(47 downto 0); -- MAC address of the FPGA board
    signal local_IP_address   : std_logic_vector(31 downto 0); -- IP address of the FPGA board
    signal local_UDP_port     : std_logic_vector(15 downto 0); -- UDP local (listening and transmitting) port
    signal remote_mac_address : std_logic_vector(47 downto 0); -- MAC address of the remote machine (for instance the PC)
    signal remote_IP_address  : std_logic_vector(31 downto 0); -- IP address of the remote machine
    signal remote_UDP_port    : std_logic_vector(15 downto 0); -- UDP port on the remote machine

    signal rx_sync_local_mac_address  : std_logic_vector(47 downto 0);
    signal rx_sync_local_IP_address   : std_logic_vector(31 downto 0);
    signal rx_sync_local_UDP_port     : std_logic_vector(15 downto 0);
    signal rx_sync_remote_mac_address : std_logic_vector(47 downto 0);
    signal rx_sync_remote_IP_address  : std_logic_vector(31 downto 0);
    signal rx_sync_remote_UDP_port    : std_logic_vector(15 downto 0);

    -- UDP payload
    signal rx_UDP_payload_tdata  : std_logic_vector(7 downto 0);
    signal rx_UDP_payload_tvalid : std_logic;
    signal rx_UDP_payload_tlast  : std_logic;
    signal tx_UDP_payload_tdata  : std_logic_vector(7 downto 0);
    signal tx_UDP_payload_tvalid : std_logic;
    signal tx_UDP_payload_tready : std_logic;
    signal UDP_payload_length    : std_logic_vector(15 downto 0);

    -- FIFO interface
    signal FIFO_RX_resetn      : std_logic;
    signal FIFO_RX_axis_tvalid : std_logic;
    signal FIFO_RX_axis_tready : std_logic;
    signal FIFO_RX_axis_tdata  : std_logic_vector(7 downto 0);
    signal FIFO_RX_axis_tlast  : std_logic;
    signal FIFO_TX_axis_tvalid : std_logic;
    signal FIFO_TX_axis_tready : std_logic;
    signal FIFO_TX_axis_tdata  : std_logic_vector(7 downto 0);
    signal FIFO_TX_axis_tlast  : std_logic;

    -- AXIs to AXILite converter signals
    signal converter_s_axis_tdata  : std_logic_vector(31 downto 0);
    signal converter_s_axis_tvalid : std_logic;
    signal converter_s_axis_tready : std_logic;
    signal converter_s_axis_tlast  : std_logic;
    signal converter_m_axis_tdata  : std_logic_vector(31 downto 0);
    signal converter_m_axis_tvalid : std_logic;
    signal converter_m_axis_tready : std_logic;
    signal converter_m_axis_tlast  : std_logic;

    -- Utility

    signal txMacClk : std_logic_vector(7 downto 0);
    signal rxMacClk : std_logic_vector(7 downto 0);
    
    -- Addresses 
    signal vio_local_mac_address  : std_logic_vector(47 downto 0); 
    signal vio_local_IP_address   : std_logic_vector(31 downto 0); 
    signal vio_local_UDP_port     : std_logic_vector(15 downto 0);
    signal vio_remote_UDP_port    : std_logic_vector(15 downto 0);
    
    signal tx_local_mac_address  : std_logic_vector(47 downto 0) := x"012345012345"; 
    signal tx_local_IP_address   : std_logic_vector(31 downto 0) := x"0A010003"; 
    signal tx_local_UDP_port     : std_logic_vector(15 downto 0) := x"13EF";
    signal tx_remote_UDP_port    : std_logic_vector(15 downto 0) := x"17D7";
    
    signal rx_local_mac_address  : std_logic_vector(47 downto 0) := x"543210543210"; 
    signal rx_local_IP_address   : std_logic_vector(31 downto 0) := x"0A010002"; 
    signal rx_local_UDP_port     : std_logic_vector(15 downto 0) := x"13EE";
    signal rx_remote_UDP_port    : std_logic_vector(15 downto 0) := x"17D6";

    -- the reverse_endianess_32b function is required since the UDP payload is big endian, while the
    -- gearboxes operate in little endian representation

    function reverse_endianess_32b (vector : in std_logic_vector) return std_logic_vector is
        variable result : std_logic_vector(vector'RANGE);
    begin
        result(31 downto 24) := vector(7 downto 0);
        result(23 downto 16) := vector(15 downto 8);
        result(15 downto 8)  := vector(23 downto 16);
        result(7 downto 0)   := vector(31 downto 24);
        return result;
    end;

begin

    ----------------------------------------------------------------------------
    -- Clocking / Reset
    ----------------------------------------------------------------------------

    -- Ethernet transceiver reference clock
    clk_pcs_pma_62_5_i : entity work.clk_pcs_pma_62_5
        port map (
            -- Clock out ports  
            freerun_clk_62_5 => freerun_clk_62_5,
            -- Status and control signals                
            locked => freerun_clk_ok,
            -- Clock in ports
            sys_clk_125 => sys_clk_125
        );

    reset_mac_pcs_pma <= not freerun_clk_ok;

    synchronizer_reset_axi : entity work.synchronizer
        generic map (
            stages => 3
        )
        port map (
            clk      => m_axi_clk,
            aync_in  => reset_mac_pcs_pma,
            sync_out => reset_axi
        );

    FIFO_RX_resetn <= not rx_reset;
    resetn_axi_sig <= not reset_axi;
    resetn_axi     <= resetn_axi_sig;

    ----------------------------------------------------------------------------
    -- Ethernet MAC / PCS / PMA
    ----------------------------------------------------------------------------

    mac_pcs_pma_i : entity work.mac_pcs_pma
        port map (
            reset              => reset_mac_pcs_pma,
            freerun_clk_62_5   => freerun_clk_62_5,
            gtrefclk_p         => eth_gtrefclk_p,
            gtrefclk_n         => eth_gtrefclk_n,
            txn                => txn_eth_sfp,
            txp                => txp_eth_sfp,
            rxn                => rxn_eth_sfp,
            rxp                => rxp_eth_sfp,
            rx_reset           => rx_reset,
            rx_mac_aclk        => rx_mac_aclk,
            rx_axis_mac_tdata  => rx_axis_mac_tdata,
            rx_axis_mac_tvalid => rx_axis_mac_tvalid,
            rx_axis_mac_tlast  => rx_axis_mac_tlast,
            rx_axis_mac_tuser  => rx_axis_mac_tuser,
            tx_reset           => tx_reset,
            tx_mac_aclk        => tx_mac_aclk,
            tx_axis_mac_tdata  => tx_axis_mac_tdata,
            tx_axis_mac_tvalid => tx_axis_mac_tvalid,
            tx_axis_mac_tlast  => tx_axis_mac_tlast,
            tx_axis_mac_tready => tx_axis_mac_tready
        );

    ----------------------------------------------------------------------------
    -- UDP Data Receiver
    ----------------------------------------------------------------------------

    UDP_Packet_RX_i : entity work.UDP_Packet_RX
        port map (
            rx_reset                 => rx_reset,
            rx_axi_clk               => rx_mac_aclk,
            rx_axis_mac_tdata        => rx_axis_mac_tdata,
            rx_axis_mac_tvalid       => rx_axis_mac_tvalid,
            rx_axis_mac_tlast        => rx_axis_mac_tlast,
            rx_UDP_payload_tdata     => rx_UDP_payload_tdata,
            rx_UDP_payload_tvalid    => rx_UDP_payload_tvalid,
            rx_UDP_payload_tlast     => rx_UDP_payload_tlast,
            local_mac_address        => rx_sync_local_mac_address,
            local_IP_address         => rx_sync_local_IP_address,
            local_UDP_listening_port => rx_sync_local_UDP_port,
            source_mac_address       => rx_sync_remote_mac_address,
            source_IP_address        => rx_sync_remote_IP_address,
            source_UDP_port          => rx_sync_remote_UDP_port
        );

    ----------------------------------------------------------------------------
    -- UDP Data Transmitter
    ----------------------------------------------------------------------------

    -- the transmitted packet is always 4 bytes, which is the value read from the 32bit queried register
    UDP_payload_length <= x"0004";

    UDP_Packet_TX_i : entity work.UDP_Packet_TX
        port map (
            tx_reset                       => tx_reset,
            tx_axi_clk                     => tx_mac_aclk,
            tx_axis_mac_tdata              => tx_axis_mac_tdata,
            tx_axis_mac_tvalid             => tx_axis_mac_tvalid,
            tx_axis_mac_tready             => tx_axis_mac_tready,
            tx_axis_mac_tlast              => tx_axis_mac_tlast,
            tx_UDP_payload_tdata           => tx_UDP_payload_tdata,
            tx_UDP_payload_tvalid          => tx_UDP_payload_tvalid,
            tx_UDP_payload_tready          => tx_UDP_payload_tready,
            UDP_payload_length             => UDP_payload_length,
            local_mac_address              => local_mac_address,
            local_IP_address               => local_IP_address,
            local_source_UDP_port          => local_UDP_port,
            destination_mac_address        => remote_mac_address,
            destination_IP_address         => remote_IP_address,
            destination_UDP_listening_port => remote_UDP_port
        );

    ----------------------------------------------------------------------------
    -- CDC FIFO, between the ethernet to the m_axi_clk clock domains
    ----------------------------------------------------------------------------

    UDP_bridge_CDC_FIFO_RX : entity work.UDP_bridge_CDC_FIFO
        PORT MAP (
            s_axis_aresetn => FIFO_RX_resetn,
            s_axis_aclk    => rx_mac_aclk,
            s_axis_tvalid  => rx_UDP_payload_tvalid,

            -- TODO, overrun checker, 
            -- despite the fact that the system is tuned to ensure that this not happens in standard operations
            s_axis_tready => open,

            s_axis_tdata  => rx_UDP_payload_tdata,
            s_axis_tlast  => rx_UDP_payload_tlast,
            m_axis_aclk   => m_axi_clk,
            m_axis_tvalid => FIFO_RX_axis_tvalid,
            m_axis_tready => FIFO_RX_axis_tready,
            m_axis_tdata  => FIFO_RX_axis_tdata,
            m_axis_tlast  => FIFO_RX_axis_tlast
        );

    UDP_bridge_CDC_FIFO_TX : entity work.UDP_bridge_CDC_FIFO
        PORT MAP (
            s_axis_aresetn => resetn_axi_sig,
            s_axis_aclk    => m_axi_clk,
            s_axis_tvalid  => FIFO_TX_axis_tvalid,
            s_axis_tready  => FIFO_TX_axis_tready,
            s_axis_tdata   => FIFO_TX_axis_tdata,
            s_axis_tlast   => FIFO_TX_axis_tlast,
            m_axis_aclk    => tx_mac_aclk,
            m_axis_tvalid  => tx_UDP_payload_tvalid,
            m_axis_tready  => tx_UDP_payload_tready,
            m_axis_tdata   => tx_UDP_payload_tdata,

            -- the transmission packet is constrained by UDP_payload_length
            m_axis_tlast => open
        );

    ----------------------------------------------------------------------------
    -- Gearbox 4 to 1 and 1 to 4 bytes, from the axis_to_axi to the FIFOs
    ----------------------------------------------------------------------------

    gearbox_1_to_4_RX : entity work.gearbox_1_to_4
        PORT MAP (
            aclk          => m_axi_clk,
            aresetn       => FIFO_RX_resetn,
            s_axis_tvalid => FIFO_RX_axis_tvalid,
            s_axis_tready => FIFO_RX_axis_tready,
            s_axis_tdata  => FIFO_RX_axis_tdata,
            s_axis_tlast  => FIFO_RX_axis_tlast,
            m_axis_tvalid => converter_s_axis_tvalid,
            m_axis_tready => converter_s_axis_tready,
            m_axis_tdata  => converter_s_axis_tdata,

            -- not used since the RX packet are always multiple of 4
            m_axis_tkeep => open,

            m_axis_tlast => converter_s_axis_tlast
        );

    gearbox_4_to_1_TX : entity work.gearbox_4_to_1
        PORT MAP (
            aclk          => m_axi_clk,
            aresetn       => resetn_axi_sig,
            s_axis_tvalid => converter_m_axis_tvalid,
            s_axis_tready => converter_m_axis_tready,
            s_axis_tdata  => reverse_endianess_32b(converter_m_axis_tdata),
            s_axis_tlast  => converter_m_axis_tlast,
            m_axis_tvalid => FIFO_TX_axis_tvalid,
            m_axis_tready => FIFO_TX_axis_tready,
            m_axis_tdata  => FIFO_TX_axis_tdata,
            m_axis_tlast  => FIFO_TX_axis_tlast
        );

    ----------------------------------------------------------------------------
    -- AXIstream to AXI memory mapped master converter
    -- (it accepts the packet structure presented above)
    ----------------------------------------------------------------------------

    axis_to_axi_i : entity work.axis_to_axi
        port map (
            reset         => reset_axi,
            clk           => m_axi_clk,
            s_axis_tdata  => reverse_endianess_32b(converter_s_axis_tdata),
            s_axis_tvalid => converter_s_axis_tvalid,
            s_axis_tready => converter_s_axis_tready,
            s_axis_tlast  => converter_s_axis_tlast,
            m_axis_tdata  => converter_m_axis_tdata,
            m_axis_tvalid => converter_m_axis_tvalid,
            m_axis_tready => converter_m_axis_tready,
            m_axis_tlast  => converter_m_axis_tlast,
            m_axi_awaddr  => m_axi_awaddr,
            m_axi_awvalid => m_axi_awvalid,
            m_axi_awready => m_axi_awready,
            m_axi_wdata   => m_axi_wdata,
            m_axi_wstrb   => m_axi_wstrb,
            m_axi_wvalid  => m_axi_wvalid,
            m_axi_wready  => m_axi_wready,
            m_axi_bresp   => m_axi_bresp,
            m_axi_bvalid  => m_axi_bvalid,
            m_axi_bready  => m_axi_bready,
            m_axi_araddr  => m_axi_araddr,
            m_axi_arvalid => m_axi_arvalid,
            m_axi_arready => m_axi_arready,
            m_axi_rdata   => m_axi_rdata,
            m_axi_rresp   => m_axi_rresp,
            m_axi_rvalid  => m_axi_rvalid,
            m_axi_rready  => m_axi_rready
        );


    ------------------------------------------------------------------------
    -- DEBUG / Configuration
    ------------------------------------------------------------------------

    MAC_AXIS_ILA_i : entity work.MAC_AXIS_ILA
        PORT MAP (
            clk => tx_mac_aclk,

            probe0    => rx_axis_mac_tdata,
            probe1(0) => rx_axis_mac_tvalid,
            probe2(0) => rx_axis_mac_tlast,
            probe3(0) => rx_axis_mac_tuser,
            probe4    => tx_axis_mac_tdata,
            probe5(0) => tx_axis_mac_tvalid,
            probe6(0) => tx_axis_mac_tlast,
            probe7(0) => tx_axis_mac_tready
        );


    Ethernet_Setup_VIO_i : entity work.Ethernet_Setup_VIO
        PORT MAP (
            clk        => tx_mac_aclk,
            probe_out0 => vio_local_mac_address,
            probe_out1 => vio_local_IP_address,
            probe_out2 => vio_local_UDP_port,
            probe_out3 => remote_mac_address,
            probe_out4 => remote_IP_address,
            probe_out5 => vio_remote_UDP_port
        );
    
    process(eth_addr_sel) begin
        case(eth_addr_sel) is 
            when "01" =>
                local_mac_address  <= tx_local_mac_address;
                local_IP_address   <= tx_local_IP_address;
                local_UDP_port     <= tx_local_UDP_port;
                remote_UDP_port    <= tx_remote_UDP_port;
            when "10" =>
                local_mac_address  <= rx_local_mac_address;
                local_IP_address   <= rx_local_IP_address;
                local_UDP_port     <= rx_local_UDP_port;
                remote_UDP_port    <= rx_remote_UDP_port;
            when others =>
                local_mac_address  <= vio_local_mac_address;
                local_IP_address   <= vio_local_IP_address;
                local_UDP_port     <= vio_local_UDP_port;
                remote_UDP_port    <= vio_remote_UDP_port;
        end case;
    end process;

    freq_meas_tx : entity work.clock_monitor_full
        port map (
            clk_ref         => sys_clk_125, -- The reference clock
            clk_monitored   => tx_mac_aclk, -- The clock to measure
            measured_period => txMacClk
        );
    freq_meas_rx : entity work.clock_monitor_full
        port map (
            clk_ref         => sys_clk_125, -- The reference clock
            clk_monitored   => rx_mac_aclk, -- The clock to measure
            measured_period => rxMacClk
        );

    vio_clk_sys_refEth : entity work.vio_2
        port map (
            clk       => sys_clk_125,
            probe_in0 => txMacClk,
            probe_in1 => rxMacClk
        );

    bus_synchronizer_local_mac_address : entity work.bus_synchronizer
        generic map (
            BITS => 48
        )
        port map (
            clk      => rx_mac_aclk,
            aync_in  => local_mac_address,
            sync_out => rx_sync_local_mac_address
        );

    bus_synchronizer_local_IP_address : entity work.bus_synchronizer
        generic map (
            BITS => 32
        )
        port map (
            clk      => rx_mac_aclk,
            aync_in  => local_IP_address,
            sync_out => rx_sync_local_IP_address
        );

    bus_synchronizer_local_UDP_port : entity work.bus_synchronizer
        generic map (
            BITS => 16
        )
        port map (
            clk      => rx_mac_aclk,
            aync_in  => local_UDP_port,
            sync_out => rx_sync_local_UDP_port
        );

    bus_synchronizer_remote_mac_address : entity work.bus_synchronizer
        generic map (
            BITS => 48
        )
        port map (
            clk      => rx_mac_aclk,
            aync_in  => remote_mac_address,
            sync_out => rx_sync_remote_mac_address
        );

    bus_synchronizer_remote_IP_address : entity work.bus_synchronizer
        generic map (
            BITS => 32
        )
        port map (
            clk      => rx_mac_aclk,
            aync_in  => remote_IP_address,
            sync_out => rx_sync_remote_IP_address
        );

    bus_synchronizer_remote_UDP_port : entity work.bus_synchronizer
        generic map (
            BITS => 16
        )
        port map (
            clk      => rx_mac_aclk,
            aync_in  => remote_UDP_port,
            sync_out => rx_sync_remote_UDP_port
        );

end Behavioral;
