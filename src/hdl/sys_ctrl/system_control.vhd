--------------------------------------------------------------------------------
-- Back-End System Control Module
-- including the UDP interface, the top interconnect and the IIC Master
--------------------------------------------------------------------------------
--
-- Francesco Martina @ 2023
--------------------------------------------------------------------------------

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VComponents.all;
use work.axi_lane_pkg.all;

entity system_control is
    Port (

        sys_clk_125 : in std_logic; -- 125 MHz Clock (used for the AXI interface too)

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
        -- I2C Master and GPIOs
        ------------------------------------------------------------------------

        -- I2C Interface (Master)
        sda : inout std_logic;
        scl : inout std_logic;

        -- DEBUG LEDs
        --GPIO_LED : out std_logic_vector(7 downto 0);

        ------------------------------------------------------------------------
        -- Master AXI-Lite interface
        ------------------------------------------------------------------------

        m_axi_resetn : out std_logic; -- internally generated

        ---- vectors of AXI Interfaces controlling the Data Lanes
        m_axi_lane_awaddr  : out axi_lane_awaddr_t;
        m_axi_lane_awvalid : out axi_lane_awvalid_t;
        m_axi_lane_awready : in  axi_lane_awready_t;
        m_axi_lane_wdata   : out axi_lane_wdata_t;
        m_axi_lane_wstrb   : out axi_lane_wstrb_t;
        m_axi_lane_wvalid  : out axi_lane_wvalid_t;
        m_axi_lane_wready  : in  axi_lane_wready_t;
        m_axi_lane_bresp   : in  axi_lane_bresp_t;
        m_axi_lane_bvalid  : in  axi_lane_bvalid_t;
        m_axi_lane_bready  : out axi_lane_bready_t;
        m_axi_lane_araddr  : out axi_lane_araddr_t;
        m_axi_lane_arvalid : out axi_lane_arvalid_t;
        m_axi_lane_arready : in  axi_lane_arready_t;
        m_axi_lane_rdata   : in  axi_lane_rdata_t;
        m_axi_lane_rresp   : in  axi_lane_rresp_t;
        m_axi_lane_rvalid  : in  axi_lane_rvalid_t;
        m_axi_lane_rready  : out axi_lane_rready_t;

        ---- Auxiliary Interface
        m_axi_aux_awaddr  : out std_logic_vector(31 downto 0);
        m_axi_aux_awvalid : out std_logic;
        m_axi_aux_awready : in  std_logic;
        m_axi_aux_wdata   : out std_logic_vector(31 downto 0);
        m_axi_aux_wstrb   : out std_logic_vector(3 downto 0);
        m_axi_aux_wvalid  : out std_logic;
        m_axi_aux_wready  : in  std_logic;
        m_axi_aux_bresp   : in  std_logic_vector(1 downto 0);
        m_axi_aux_bvalid  : in  std_logic;
        m_axi_aux_bready  : out std_logic;
        m_axi_aux_araddr  : out std_logic_vector(31 downto 0);
        m_axi_aux_arvalid : out std_logic;
        m_axi_aux_arready : in  std_logic;
        m_axi_aux_rdata   : in  std_logic_vector(31 downto 0);
        m_axi_aux_rresp   : in  std_logic_vector(1 downto 0);
        m_axi_aux_rvalid  : in  std_logic;
        m_axi_aux_rready  : out std_logic

    );
end system_control;

architecture Behavioral of system_control is

    -- General
    signal resetn_axi : std_logic;

    -- AXI MM from the UDP
    signal s_axi_UDP_awaddr  : std_logic_vector(31 downto 0);
    signal s_axi_UDP_awvalid : std_logic;
    signal s_axi_UDP_awready : std_logic;
    signal s_axi_UDP_wdata   : std_logic_vector(31 downto 0);
    signal s_axi_UDP_wstrb   : std_logic_vector(3 downto 0);
    signal s_axi_UDP_wvalid  : std_logic;
    signal s_axi_UDP_wready  : std_logic;
    signal s_axi_UDP_bresp   : std_logic_vector(1 downto 0);
    signal s_axi_UDP_bvalid  : std_logic;
    signal s_axi_UDP_bready  : std_logic;
    signal s_axi_UDP_araddr  : std_logic_vector(31 downto 0);
    signal s_axi_UDP_arvalid : std_logic;
    signal s_axi_UDP_arready : std_logic;
    signal s_axi_UDP_rdata   : std_logic_vector(31 downto 0);
    signal s_axi_UDP_rresp   : std_logic_vector(1 downto 0);
    signal s_axi_UDP_rvalid  : std_logic;
    signal s_axi_UDP_rready  : std_logic;

    -- AXI MM Interface to the I2C Core
    signal m_axi_i2c_awaddr  : std_logic_vector(31 downto 0);
    signal m_axi_i2c_awvalid : std_logic;
    signal m_axi_i2c_awready : std_logic;
    signal m_axi_i2c_wdata   : std_logic_vector(31 downto 0);
    signal m_axi_i2c_wstrb   : std_logic_vector(3 downto 0);
    signal m_axi_i2c_wvalid  : std_logic;
    signal m_axi_i2c_wready  : std_logic;
    signal m_axi_i2c_bresp   : std_logic_vector(1 downto 0);
    signal m_axi_i2c_bvalid  : std_logic;
    signal m_axi_i2c_bready  : std_logic;
    signal m_axi_i2c_araddr  : std_logic_vector(31 downto 0);
    signal m_axi_i2c_arvalid : std_logic;
    signal m_axi_i2c_arready : std_logic;
    signal m_axi_i2c_rdata   : std_logic_vector(31 downto 0);
    signal m_axi_i2c_rresp   : std_logic_vector(1 downto 0);
    signal m_axi_i2c_rvalid  : std_logic;
    signal m_axi_i2c_rready  : std_logic;

    -- I2C Buffer signals
    signal sda_i : std_logic;
    signal sda_o : std_logic;
    signal sda_t : std_logic;
    signal scl_i : std_logic;
    signal scl_o : std_logic;
    signal scl_t : std_logic;

begin

    ----------------------------------------------------------------------------
    -- UDP to AXI-MM Bridge
    ----------------------------------------------------------------------------

    m_axi_resetn <= resetn_axi;

    udp_bridge_control : entity work.udp_bridge
        port map (
            sys_clk_125    => sys_clk_125,
            eth_gtrefclk_p => eth_gtrefclk_p,
            eth_gtrefclk_n => eth_gtrefclk_n,
            txn_eth_sfp    => txn_eth_sfp,
            txp_eth_sfp    => txp_eth_sfp,
            rxn_eth_sfp    => rxn_eth_sfp,
            rxp_eth_sfp    => rxp_eth_sfp,
            eth_addr_sel   => eth_addr_sel,
            resetn_axi     => resetn_axi,
            m_axi_clk      => sys_clk_125,
            m_axi_awaddr   => s_axi_UDP_awaddr,
            m_axi_awvalid  => s_axi_UDP_awvalid,
            m_axi_awready  => s_axi_UDP_awready,
            m_axi_wdata    => s_axi_UDP_wdata,
            m_axi_wstrb    => s_axi_UDP_wstrb,
            m_axi_wvalid   => s_axi_UDP_wvalid,
            m_axi_wready   => s_axi_UDP_wready,
            m_axi_bresp    => s_axi_UDP_bresp,
            m_axi_bvalid   => s_axi_UDP_bvalid,
            m_axi_bready   => s_axi_UDP_bready,
            m_axi_araddr   => s_axi_UDP_araddr,
            m_axi_arvalid  => s_axi_UDP_arvalid,
            m_axi_arready  => s_axi_UDP_arready,
            m_axi_rdata    => s_axi_UDP_rdata,
            m_axi_rresp    => s_axi_UDP_rresp,
            m_axi_rvalid   => s_axi_UDP_rvalid,
            m_axi_rready   => s_axi_UDP_rready
        );

    ----------------------------------------------------------------------------
    -- I2C Master
    ----------------------------------------------------------------------------

    AXI_I2C_i : entity work.AXI_I2C
        PORT MAP (
            s_axi_aclk    => sys_clk_125,
            s_axi_aresetn => resetn_axi,
            iic2intc_irpt => open,
            s_axi_awaddr  => m_axi_i2c_awaddr(8 downto 0),
            s_axi_awvalid => m_axi_i2c_awvalid,
            s_axi_awready => m_axi_i2c_awready,
            s_axi_wdata   => m_axi_i2c_wdata,
            s_axi_wstrb   => m_axi_i2c_wstrb,
            s_axi_wvalid  => m_axi_i2c_wvalid,
            s_axi_wready  => m_axi_i2c_wready,
            s_axi_bresp   => m_axi_i2c_bresp,
            s_axi_bvalid  => m_axi_i2c_bvalid,
            s_axi_bready  => m_axi_i2c_bready,
            s_axi_araddr  => m_axi_i2c_araddr(8 downto 0),
            s_axi_arvalid => m_axi_i2c_arvalid,
            s_axi_arready => m_axi_i2c_arready,
            s_axi_rdata   => m_axi_i2c_rdata,
            s_axi_rresp   => m_axi_i2c_rresp,
            s_axi_rvalid  => m_axi_i2c_rvalid,
            s_axi_rready  => m_axi_i2c_rready,
            sda_i         => sda_i,
            sda_o         => sda_o,
            sda_t         => sda_t,
            scl_i         => scl_i,
            scl_o         => scl_o,
            scl_t         => scl_t,
            gpo           => open --GPIO_LED
        );

    IOBUF_sda : IOBUF
        port map (
            O  => sda_i, -- 1-bit output: Buffer output
            I  => sda_o, -- 1-bit input: Buffer input
            IO => sda,   -- 1-bit inout: Buffer inout (connect directly to top-level port)
            T  => sda_t  -- 1-bit input: 3-state enable input
        );

    IOBUF_scl : IOBUF
        port map (
            O  => scl_i, -- 1-bit output: Buffer output
            I  => scl_o, -- 1-bit input: Buffer input
            IO => scl,   -- 1-bit inout: Buffer inout (connect directly to top-level port)
            T  => scl_t  -- 1-bit input: 3-state enable input
        );

    ----------------------------------------------------------------------------
    -- AXI-MM Interconnect (wrapped from block diagram)
    ----------------------------------------------------------------------------

    system_interconnect_wrapper_i : entity work.system_interconnect_wrapper
        port map (

            -- Master Port 0, Lane 0 Registers (Base 0x00000000, Range 256M)
            M00_ACLK         => sys_clk_125,
            M00_ARESETN      => resetn_axi,
            M00_AXI_araddr   => m_axi_lane_araddr(0),
            M00_AXI_arburst  => open,
            M00_AXI_arcache  => open,
            M00_AXI_arlen    => open,
            M00_AXI_arlock   => open,
            M00_AXI_arprot   => open,
            M00_AXI_arqos    => open,
            M00_AXI_arready  => m_axi_lane_arready(0),
            M00_AXI_arregion => open,
            M00_AXI_arsize   => open,
            M00_AXI_arvalid  => m_axi_lane_arvalid(0),
            M00_AXI_awaddr   => m_axi_lane_awaddr(0),
            M00_AXI_awburst  => open,
            M00_AXI_awcache  => open,
            M00_AXI_awlen    => open,
            M00_AXI_awlock   => open,
            M00_AXI_awprot   => open,
            M00_AXI_awqos    => open,
            M00_AXI_awready  => m_axi_lane_awready(0),
            M00_AXI_awregion => open,
            M00_AXI_awsize   => open,
            M00_AXI_awvalid  => m_axi_lane_awvalid(0),
            M00_AXI_bready   => m_axi_lane_bready(0),
            M00_AXI_bresp    => m_axi_lane_bresp(0),
            M00_AXI_bvalid   => m_axi_lane_bvalid(0),
            M00_AXI_rdata    => m_axi_lane_rdata(0),
            M00_AXI_rlast    => '1', -- single word transaction
            M00_AXI_rready   => m_axi_lane_rready(0),
            M00_AXI_rresp    => m_axi_lane_rresp(0),
            M00_AXI_rvalid   => m_axi_lane_rvalid(0),
            M00_AXI_wdata    => m_axi_lane_wdata(0),
            M00_AXI_wlast    => open,
            M00_AXI_wready   => m_axi_lane_wready(0),
            M00_AXI_wstrb    => m_axi_lane_wstrb(0),
            M00_AXI_wvalid   => m_axi_lane_wvalid(0),

            -- Master Port 1, Lane 1 Registers (Base 0x10000000, Range 256M)
            M01_ACLK         => sys_clk_125,
            M01_ARESETN      => resetn_axi,
            M01_AXI_araddr   => m_axi_lane_araddr(1),
            M01_AXI_arburst  => open,
            M01_AXI_arcache  => open,
            M01_AXI_arlen    => open,
            M01_AXI_arlock   => open,
            M01_AXI_arprot   => open,
            M01_AXI_arqos    => open,
            M01_AXI_arready  => m_axi_lane_arready(1),
            M01_AXI_arregion => open,
            M01_AXI_arsize   => open,
            M01_AXI_arvalid  => m_axi_lane_arvalid(1),
            M01_AXI_awaddr   => m_axi_lane_awaddr(1),
            M01_AXI_awburst  => open,
            M01_AXI_awcache  => open,
            M01_AXI_awlen    => open,
            M01_AXI_awlock   => open,
            M01_AXI_awprot   => open,
            M01_AXI_awqos    => open,
            M01_AXI_awready  => m_axi_lane_awready(1),
            M01_AXI_awregion => open,
            M01_AXI_awsize   => open,
            M01_AXI_awvalid  => m_axi_lane_awvalid(1),
            M01_AXI_bready   => m_axi_lane_bready(1),
            M01_AXI_bresp    => m_axi_lane_bresp(1),
            M01_AXI_bvalid   => m_axi_lane_bvalid(1),
            M01_AXI_rdata    => m_axi_lane_rdata(1),
            M01_AXI_rlast    => '1', -- single word transaction
            M01_AXI_rready   => m_axi_lane_rready(1),
            M01_AXI_rresp    => m_axi_lane_rresp(1),
            M01_AXI_rvalid   => m_axi_lane_rvalid(1),
            M01_AXI_wdata    => m_axi_lane_wdata(1),
            M01_AXI_wlast    => open,
            M01_AXI_wready   => m_axi_lane_wready(1),
            M01_AXI_wstrb    => m_axi_lane_wstrb(1),
            M01_AXI_wvalid   => m_axi_lane_wvalid(1),

            -- Master Port 2, Lane 2 Registers (Base 0x20000000, Range 256M)
            M02_ACLK         => sys_clk_125,
            M02_ARESETN      => resetn_axi,
            M02_AXI_araddr   => m_axi_lane_araddr(2),
            M02_AXI_arburst  => open,
            M02_AXI_arcache  => open,
            M02_AXI_arlen    => open,
            M02_AXI_arlock   => open,
            M02_AXI_arprot   => open,
            M02_AXI_arqos    => open,
            M02_AXI_arready  => m_axi_lane_arready(2),
            M02_AXI_arregion => open,
            M02_AXI_arsize   => open,
            M02_AXI_arvalid  => m_axi_lane_arvalid(2),
            M02_AXI_awaddr   => m_axi_lane_awaddr(2),
            M02_AXI_awburst  => open,
            M02_AXI_awcache  => open,
            M02_AXI_awlen    => open,
            M02_AXI_awlock   => open,
            M02_AXI_awprot   => open,
            M02_AXI_awqos    => open,
            M02_AXI_awready  => m_axi_lane_awready(2),
            M02_AXI_awregion => open,
            M02_AXI_awsize   => open,
            M02_AXI_awvalid  => m_axi_lane_awvalid(2),
            M02_AXI_bready   => m_axi_lane_bready(2),
            M02_AXI_bresp    => m_axi_lane_bresp(2),
            M02_AXI_bvalid   => m_axi_lane_bvalid(2),
            M02_AXI_rdata    => m_axi_lane_rdata(2),
            M02_AXI_rlast    => '1', -- single word transaction
            M02_AXI_rready   => m_axi_lane_rready(2),
            M02_AXI_rresp    => m_axi_lane_rresp(2),
            M02_AXI_rvalid   => m_axi_lane_rvalid(2),
            M02_AXI_wdata    => m_axi_lane_wdata(2),
            M02_AXI_wlast    => open,
            M02_AXI_wready   => m_axi_lane_wready(2),
            M02_AXI_wstrb    => m_axi_lane_wstrb(2),
            M02_AXI_wvalid   => m_axi_lane_wvalid(2),

            -- Master Port 3, Lane 3 Registers (Base 0x30000000, Range 256M)
            M03_ACLK         => sys_clk_125,
            M03_ARESETN      => resetn_axi,
            M03_AXI_araddr   => m_axi_lane_araddr(3),
            M03_AXI_arburst  => open,
            M03_AXI_arcache  => open,
            M03_AXI_arlen    => open,
            M03_AXI_arlock   => open,
            M03_AXI_arprot   => open,
            M03_AXI_arqos    => open,
            M03_AXI_arready  => m_axi_lane_arready(3),
            M03_AXI_arregion => open,
            M03_AXI_arsize   => open,
            M03_AXI_arvalid  => m_axi_lane_arvalid(3),
            M03_AXI_awaddr   => m_axi_lane_awaddr(3),
            M03_AXI_awburst  => open,
            M03_AXI_awcache  => open,
            M03_AXI_awlen    => open,
            M03_AXI_awlock   => open,
            M03_AXI_awprot   => open,
            M03_AXI_awqos    => open,
            M03_AXI_awready  => m_axi_lane_awready(3),
            M03_AXI_awregion => open,
            M03_AXI_awsize   => open,
            M03_AXI_awvalid  => m_axi_lane_awvalid(3),
            M03_AXI_bready   => m_axi_lane_bready(3),
            M03_AXI_bresp    => m_axi_lane_bresp(3),
            M03_AXI_bvalid   => m_axi_lane_bvalid(3),
            M03_AXI_rdata    => m_axi_lane_rdata(3),
            M03_AXI_rlast    => '1', -- single word transaction
            M03_AXI_rready   => m_axi_lane_rready(3),
            M03_AXI_rresp    => m_axi_lane_rresp(3),
            M03_AXI_rvalid   => m_axi_lane_rvalid(3),
            M03_AXI_wdata    => m_axi_lane_wdata(3),
            M03_AXI_wlast    => open,
            M03_AXI_wready   => m_axi_lane_wready(3),
            M03_AXI_wstrb    => m_axi_lane_wstrb(3),
            M03_AXI_wvalid   => m_axi_lane_wvalid(3),

            -- Master Port 4, AXI IIC (Base 0xF0000000, Range 64K)
            M04_ACLK         => sys_clk_125,
            M04_ARESETN      => resetn_axi,
            M04_AXI_araddr   => m_axi_i2c_araddr,
            M04_AXI_arburst  => open,
            M04_AXI_arcache  => open,
            M04_AXI_arlen    => open,
            M04_AXI_arlock   => open,
            M04_AXI_arprot   => open,
            M04_AXI_arqos    => open,
            M04_AXI_arready  => m_axi_i2c_arready,
            M04_AXI_arregion => open,
            M04_AXI_arsize   => open,
            M04_AXI_arvalid  => m_axi_i2c_arvalid,
            M04_AXI_awaddr   => m_axi_i2c_awaddr,
            M04_AXI_awburst  => open,
            M04_AXI_awcache  => open,
            M04_AXI_awlen    => open,
            M04_AXI_awlock   => open,
            M04_AXI_awprot   => open,
            M04_AXI_awqos    => open,
            M04_AXI_awready  => m_axi_i2c_awready,
            M04_AXI_awregion => open,
            M04_AXI_awsize   => open,
            M04_AXI_awvalid  => m_axi_i2c_awvalid,
            M04_AXI_bready   => m_axi_i2c_bready,
            M04_AXI_bresp    => m_axi_i2c_bresp,
            M04_AXI_bvalid   => m_axi_i2c_bvalid,
            M04_AXI_rdata    => m_axi_i2c_rdata,
            M04_AXI_rlast    => '1', -- single word transaction
            M04_AXI_rready   => m_axi_i2c_rready,
            M04_AXI_rresp    => m_axi_i2c_rresp,
            M04_AXI_rvalid   => m_axi_i2c_rvalid,
            M04_AXI_wdata    => m_axi_i2c_wdata,
            M04_AXI_wlast    => open,
            M04_AXI_wready   => m_axi_i2c_wready,
            M04_AXI_wstrb    => m_axi_i2c_wstrb,
            M04_AXI_wvalid   => m_axi_i2c_wvalid,

            -- Master Port 5, Auxiliary AXI Interface (Base 0xFFFF0000, Range 64K)
            M05_ACLK         => sys_clk_125,
            M05_ARESETN      => resetn_axi,
            M05_AXI_araddr   => m_axi_aux_araddr,
            M05_AXI_arburst  => open,
            M05_AXI_arcache  => open,
            M05_AXI_arlen    => open,
            M05_AXI_arlock   => open,
            M05_AXI_arprot   => open,
            M05_AXI_arqos    => open,
            M05_AXI_arready  => m_axi_aux_arready,
            M05_AXI_arregion => open,
            M05_AXI_arsize   => open,
            M05_AXI_arvalid  => m_axi_aux_arvalid,
            M05_AXI_awaddr   => m_axi_aux_awaddr,
            M05_AXI_awburst  => open,
            M05_AXI_awcache  => open,
            M05_AXI_awlen    => open,
            M05_AXI_awlock   => open,
            M05_AXI_awprot   => open,
            M05_AXI_awqos    => open,
            M05_AXI_awready  => m_axi_aux_awready,
            M05_AXI_awregion => open,
            M05_AXI_awsize   => open,
            M05_AXI_awvalid  => m_axi_aux_awvalid,
            M05_AXI_bready   => m_axi_aux_bready,
            M05_AXI_bresp    => m_axi_aux_bresp,
            M05_AXI_bvalid   => m_axi_aux_bvalid,
            M05_AXI_rdata    => m_axi_aux_rdata,
            M05_AXI_rlast    => '1', -- single word transaction
            M05_AXI_rready   => m_axi_aux_rready,
            M05_AXI_rresp    => m_axi_aux_rresp,
            M05_AXI_rvalid   => m_axi_aux_rvalid,
            M05_AXI_wdata    => m_axi_aux_wdata,
            M05_AXI_wlast    => open,
            M05_AXI_wready   => m_axi_aux_wready,
            M05_AXI_wstrb    => m_axi_aux_wstrb,
            M05_AXI_wvalid   => m_axi_aux_wvalid,

            -- Slave Port
            S00_ACLK         => sys_clk_125,
            S00_ARESETN      => resetn_axi,
            S00_AXI_araddr   => s_axi_UDP_araddr,
            S00_AXI_arburst  => "00",
            S00_AXI_arcache  => "0000",
            S00_AXI_arlen    => "00000000",
            S00_AXI_arlock   => "0",
            S00_AXI_arprot   => "000",
            S00_AXI_arqos    => "0000",
            S00_AXI_arready  => s_axi_UDP_arready,
            S00_AXI_arregion => "0000",
            S00_AXI_arsize   => "000",
            S00_AXI_arvalid  => s_axi_UDP_arvalid,
            S00_AXI_awaddr   => s_axi_UDP_awaddr,
            S00_AXI_awburst  => "00",
            S00_AXI_awcache  => "0000",
            S00_AXI_awlen    => "00000000",
            S00_AXI_awlock   => "0",
            S00_AXI_awprot   => "000",
            S00_AXI_awqos    => "0000",
            S00_AXI_awready  => s_axi_UDP_awready,
            S00_AXI_awregion => "0000",
            S00_AXI_awsize   => "000",
            S00_AXI_awvalid  => s_axi_UDP_awvalid,
            S00_AXI_bready   => s_axi_UDP_bready,
            S00_AXI_bresp    => s_axi_UDP_bresp,
            S00_AXI_bvalid   => s_axi_UDP_bvalid,
            S00_AXI_rdata    => s_axi_UDP_rdata,
            S00_AXI_rlast    => open,
            S00_AXI_rready   => s_axi_UDP_rready,
            S00_AXI_rresp    => s_axi_UDP_rresp,
            S00_AXI_rvalid   => s_axi_UDP_rvalid,
            S00_AXI_wdata    => s_axi_UDP_wdata,
            S00_AXI_wlast    => '1', -- single word transaction
            S00_AXI_wready   => s_axi_UDP_wready,
            S00_AXI_wstrb    => s_axi_UDP_wstrb,
            S00_AXI_wvalid   => s_axi_UDP_wvalid,

            interconnect_clock   => sys_clk_125,
            interconnect_reset_n => resetn_axi

        );

--    --------------------------------------------------------------------------
--     AXI-MM Debug
--    --------------------------------------------------------------------------


--    AXI_MM_debug_ILA_UDP : entity work.AXI_MM_debug_ILA
--        PORT MAP (
--            clk => sys_clk_125,

--            probe0(0)  => s_axi_UDP_wready, ---- WREADY
--            probe1     => s_axi_UDP_awaddr, ---- AWADDR
--            probe2     => s_axi_UDP_bresp,  ---- BRESP
--            probe3(0)  => s_axi_UDP_bvalid, ---- BVALID
--            probe4(0)  => s_axi_UDP_bready, ---- BREADY
--            probe5     => s_axi_UDP_araddr, ---- ARADDR
--            probe6(0)  => s_axi_UDP_rready, ---- RREADY
--            probe7(0)  => s_axi_UDP_wvalid, ---- WVALID
--            probe8(0)  => s_axi_UDP_arvalid,---- ARVALID
--            probe9(0)  => s_axi_UDP_arready,---- ARREADY
--            probe10    => s_axi_UDP_rdata,  ---- RDATA
--            probe11(0) => s_axi_UDP_awvalid,---- AWVALID
--            probe12(0) => s_axi_UDP_awready,---- AWREADY
--            probe13    => s_axi_UDP_rresp,  ---- RRESP
--            probe14    => s_axi_UDP_wdata,  ---- WDATA
--            probe15    => s_axi_UDP_wstrb,  ---- WSTRB
--            probe16(0) => s_axi_UDP_rvalid, ---- RVALID
--            probe17    => "000",            ---- ARPROT
--            probe18    => "000"             ---- AWPROT
--        );


end Behavioral;
