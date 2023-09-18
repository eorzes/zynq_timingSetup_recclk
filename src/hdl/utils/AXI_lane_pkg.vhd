--------------------------------------------------------------------------------
-- Type definition for the AXI Interfaces controlling the RX Datapath
--------------------------------------------------------------------------------
--
-- Francesco Martina @ 2023
-- v1.0
--
--------------------------------------------------------------------------------

library ieee;
use ieee.std_logic_1164.all;

package axi_lane_pkg is
    type axi_lane_awaddr_t  is array (3 downto 0) of std_logic_vector(31 downto 0);
    type axi_lane_awvalid_t is array (3 downto 0) of std_logic;
    type axi_lane_awready_t is array (3 downto 0) of std_logic;
    type axi_lane_wdata_t   is array (3 downto 0) of std_logic_vector(31 downto 0);
    type axi_lane_wstrb_t   is array (3 downto 0) of std_logic_vector(3 downto 0);
    type axi_lane_wvalid_t  is array (3 downto 0) of std_logic;
    type axi_lane_wready_t  is array (3 downto 0) of std_logic;
    type axi_lane_bresp_t   is array (3 downto 0) of std_logic_vector(1 downto 0);
    type axi_lane_bvalid_t  is array (3 downto 0) of std_logic;
    type axi_lane_bready_t  is array (3 downto 0) of std_logic;
    type axi_lane_araddr_t  is array (3 downto 0) of std_logic_vector(31 downto 0);
    type axi_lane_arvalid_t is array (3 downto 0) of std_logic;
    type axi_lane_arready_t is array (3 downto 0) of std_logic;
    type axi_lane_rdata_t   is array (3 downto 0) of std_logic_vector(31 downto 0);
    type axi_lane_rresp_t   is array (3 downto 0) of std_logic_vector(1 downto 0);
    type axi_lane_rvalid_t  is array (3 downto 0) of std_logic;
    type axi_lane_rready_t  is array (3 downto 0) of std_logic;
end axi_lane_pkg;