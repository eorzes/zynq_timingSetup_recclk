--------------------------------------------------------------------------------
-- PCS and PMA module using the FPGA transceiver for 1G Ethernet communication
-- plus the dedicated MAC module with a basic configuration
--------------------------------------------------------------------------------
--
-- Francesco Martina @ 2023
--------------------------------------------------------------------------------


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
library UNISIM;
use UNISIM.VComponents.all;

entity mac_pcs_pma is
    Port (

        reset            : in std_logic; -- general reset
        freerun_clk_62_5 : in std_logic; -- free-running clock @ 62.5 MHz

        -- Transceiver reference clock @ 125 MHz
        gtrefclk_p : in std_logic;
        gtrefclk_n : in std_logic;

        -- Transceiver lane
        txn : out std_logic;
        txp : out std_logic;
        rxn : in  std_logic;
        rxp : in  std_logic;

        ---- MAC AXI4-S Interface

        -- RX
        rx_reset           : out std_logic;
        rx_mac_aclk        : out std_logic;
        rx_axis_mac_tdata  : out std_logic_vector(7 downto 0);
        rx_axis_mac_tvalid : out std_logic;
        rx_axis_mac_tlast  : out std_logic;
        rx_axis_mac_tuser  : out std_logic;

        -- TX
        tx_reset           : out std_logic;
        tx_mac_aclk        : out std_logic;
        tx_axis_mac_tdata  : in  std_logic_vector(7 downto 0);
        tx_axis_mac_tvalid : in  std_logic;
        tx_axis_mac_tlast  : in  std_logic;
        tx_axis_mac_tready : out std_logic

    );
end mac_pcs_pma;

architecture Behavioral of mac_pcs_pma is

    -- clocks
    signal PCS_PMA_clk125_tx : std_logic;
    signal PCS_PMA_clk125_rx : std_logic;

    -- Flags / Reset
    signal PMA_gtpowergood     : std_logic;
    signal PMA_resetdone       : std_logic;
    signal PMA_mmcm_locked_out : std_logic;
    signal PCS_logic_resetn    : std_logic;


    -- GMII interface
    signal gmii_txd   : STD_LOGIC_VECTOR(7 DOWNTO 0);
    signal gmii_tx_en : STD_LOGIC;
    signal gmii_tx_er : STD_LOGIC;
    signal gmii_rxd   : STD_LOGIC_VECTOR(7 DOWNTO 0);
    signal gmii_rx_dv : STD_LOGIC;
    signal gmii_rx_er : STD_LOGIC;
    
    --debug edo
    signal pcsRxusrClk2 : std_logic_vector(7 downto 0);
    signal pcsRxusrClk  : std_logic_vector(7 downto 0);
    signal pcs_rxusrclk : std_logic;

begin

    -- PCS / PMA
    PCS_PMA_i : entity work.PCS_PMA
        port map (
            gtrefclk_p             => gtrefclk_p,
            gtrefclk_n             => gtrefclk_n,
            gtrefclk_out           => open,
            txn                    => txn,
            txp                    => txp,
            rxn                    => rxn,
            rxp                    => rxp,
            independent_clock_bufg => freerun_clk_62_5,
            userclk_out            => open,
            userclk2_out           => PCS_PMA_clk125_tx,
            rxuserclk_out          => pcs_rxusrclk,
            rxuserclk2_out         => PCS_PMA_clk125_rx,
            gtpowergood            => PMA_gtpowergood,
            resetdone              => PMA_resetdone,
            pma_reset_out          => open,
            mmcm_locked_out        => PMA_mmcm_locked_out,
            gmii_txd               => gmii_txd,
            gmii_tx_en             => gmii_tx_en,
            gmii_tx_er             => gmii_tx_er,
            gmii_rxd               => gmii_rxd,
            gmii_rx_dv             => gmii_rx_dv,
            gmii_rx_er             => gmii_rx_er,
            gmii_isolate           => open,
            --configuration_vector   => "00010", -- loopback mode
            configuration_vector => "00000",
            status_vector        => open,
            reset                => reset,
            signal_detect        => '1' -- Fibre LOS / SFP module disconnection (Not Used)
        );
        
    freq_meas_pcsrxusr2 : entity work.clock_monitor_full
        port map (
            clk_ref         => freerun_clk_62_5, -- The reference clock
            clk_monitored   => PCS_PMA_clk125_rx, -- The clock to measure
            measured_period => pcsRxusrClk2
        );
    freq_meas_pcsrxusr : entity work.clock_monitor_full
        port map (
            clk_ref         => freerun_clk_62_5, -- The reference clock
            clk_monitored   => pcs_rxusrclk, -- The clock to measure
            measured_period => pcsRxusrClk
        );
    vio_clk_free_PCS : entity work.vio_2
        port map (
            clk       => freerun_clk_62_5,
            probe_in0 => pcsRxusrClk2,
            probe_in1 => pcsRxusrClk
        );

    PCS_logic_resetn <= PMA_gtpowergood and PMA_resetdone and PMA_mmcm_locked_out;

    -- MAC module
    MAC : entity work.MAC
        port map (
            gtx_clk                 => PCS_PMA_clk125_tx,
            --rx_usr_clk2             => PCS_PMA_clk125_rx,
            glbl_rstn               => PCS_logic_resetn,
            rx_axi_rstn             => PCS_logic_resetn,
            tx_axi_rstn             => PCS_logic_resetn,
            rx_statistics_vector    => open,
            rx_statistics_valid     => open,
            rx_mac_aclk             => rx_mac_aclk,
            rx_reset                => rx_reset,
            rx_axis_mac_tdata       => rx_axis_mac_tdata,
            rx_axis_mac_tvalid      => rx_axis_mac_tvalid,
            rx_axis_mac_tlast       => rx_axis_mac_tlast,
            rx_axis_mac_tuser       => rx_axis_mac_tuser,
            tx_ifg_delay            => X"00",
            tx_statistics_vector    => open,
            tx_statistics_valid     => open,
            tx_mac_aclk             => tx_mac_aclk,
            tx_reset                => tx_reset,
            tx_axis_mac_tdata       => tx_axis_mac_tdata,
            tx_axis_mac_tvalid      => tx_axis_mac_tvalid,
            tx_axis_mac_tlast       => tx_axis_mac_tlast,
            tx_axis_mac_tuser(0)    => '0',
            tx_axis_mac_tready      => tx_axis_mac_tready,
            pause_req               => '0',
            pause_val               => X"0000",
            speedis100              => open,
            speedis10100            => open,
            gmii_txd                => gmii_txd,
            gmii_tx_en              => gmii_tx_en,
            gmii_tx_er              => gmii_tx_er,
            gmii_rxd                => gmii_rxd,
            gmii_rx_dv              => gmii_rx_dv,
            gmii_rx_er              => gmii_rx_er,
            rx_configuration_vector => X"0000_0000_0000_0000_0802", -- RX Enabled in promiscuous mode (Jumbo pkt not enabled)
            tx_configuration_vector => X"0000_0000_0000_0000_0002"  -- TX Enabled (Jumbo pkt not enabled)
        );

end Behavioral;
