--Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
----------------------------------------------------------------------------------
--Tool Version: Vivado v.2022.1 (win64) Build 3526262 Mon Apr 18 15:48:16 MDT 2022
--Date        : Mon Jun 19 12:24:06 2023
--Host        : PCPHESE71 running 64-bit major release  (build 9200)
--Command     : generate_target system_interconnect_wrapper.bd
--Design      : system_interconnect_wrapper
--Purpose     : IP block netlist
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity system_interconnect_wrapper is
  port (
    M00_ACLK : in STD_LOGIC;
    M00_ARESETN : in STD_LOGIC;
    M00_AXI_araddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M00_AXI_arburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    M00_AXI_arcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M00_AXI_arlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    M00_AXI_arlock : out STD_LOGIC_VECTOR ( 0 to 0 );
    M00_AXI_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M00_AXI_arqos : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M00_AXI_arready : in STD_LOGIC;
    M00_AXI_arregion : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M00_AXI_arsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M00_AXI_arvalid : out STD_LOGIC;
    M00_AXI_awaddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M00_AXI_awburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    M00_AXI_awcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M00_AXI_awlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    M00_AXI_awlock : out STD_LOGIC_VECTOR ( 0 to 0 );
    M00_AXI_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M00_AXI_awqos : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M00_AXI_awready : in STD_LOGIC;
    M00_AXI_awregion : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M00_AXI_awsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M00_AXI_awvalid : out STD_LOGIC;
    M00_AXI_bready : out STD_LOGIC;
    M00_AXI_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M00_AXI_bvalid : in STD_LOGIC;
    M00_AXI_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    M00_AXI_rlast : in STD_LOGIC;
    M00_AXI_rready : out STD_LOGIC;
    M00_AXI_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M00_AXI_rvalid : in STD_LOGIC;
    M00_AXI_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M00_AXI_wlast : out STD_LOGIC;
    M00_AXI_wready : in STD_LOGIC;
    M00_AXI_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M00_AXI_wvalid : out STD_LOGIC;
    M01_ACLK : in STD_LOGIC;
    M01_ARESETN : in STD_LOGIC;
    M01_AXI_araddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M01_AXI_arburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    M01_AXI_arcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M01_AXI_arlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    M01_AXI_arlock : out STD_LOGIC_VECTOR ( 0 to 0 );
    M01_AXI_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M01_AXI_arqos : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M01_AXI_arready : in STD_LOGIC;
    M01_AXI_arregion : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M01_AXI_arsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M01_AXI_arvalid : out STD_LOGIC;
    M01_AXI_awaddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M01_AXI_awburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    M01_AXI_awcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M01_AXI_awlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    M01_AXI_awlock : out STD_LOGIC_VECTOR ( 0 to 0 );
    M01_AXI_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M01_AXI_awqos : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M01_AXI_awready : in STD_LOGIC;
    M01_AXI_awregion : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M01_AXI_awsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M01_AXI_awvalid : out STD_LOGIC;
    M01_AXI_bready : out STD_LOGIC;
    M01_AXI_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M01_AXI_bvalid : in STD_LOGIC;
    M01_AXI_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    M01_AXI_rlast : in STD_LOGIC;
    M01_AXI_rready : out STD_LOGIC;
    M01_AXI_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M01_AXI_rvalid : in STD_LOGIC;
    M01_AXI_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M01_AXI_wlast : out STD_LOGIC;
    M01_AXI_wready : in STD_LOGIC;
    M01_AXI_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M01_AXI_wvalid : out STD_LOGIC;
    M02_ACLK : in STD_LOGIC;
    M02_ARESETN : in STD_LOGIC;
    M02_AXI_araddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M02_AXI_arburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    M02_AXI_arcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M02_AXI_arlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    M02_AXI_arlock : out STD_LOGIC_VECTOR ( 0 to 0 );
    M02_AXI_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M02_AXI_arqos : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M02_AXI_arready : in STD_LOGIC;
    M02_AXI_arregion : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M02_AXI_arsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M02_AXI_arvalid : out STD_LOGIC;
    M02_AXI_awaddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M02_AXI_awburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    M02_AXI_awcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M02_AXI_awlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    M02_AXI_awlock : out STD_LOGIC_VECTOR ( 0 to 0 );
    M02_AXI_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M02_AXI_awqos : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M02_AXI_awready : in STD_LOGIC;
    M02_AXI_awregion : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M02_AXI_awsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M02_AXI_awvalid : out STD_LOGIC;
    M02_AXI_bready : out STD_LOGIC;
    M02_AXI_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M02_AXI_bvalid : in STD_LOGIC;
    M02_AXI_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    M02_AXI_rlast : in STD_LOGIC;
    M02_AXI_rready : out STD_LOGIC;
    M02_AXI_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M02_AXI_rvalid : in STD_LOGIC;
    M02_AXI_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M02_AXI_wlast : out STD_LOGIC;
    M02_AXI_wready : in STD_LOGIC;
    M02_AXI_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M02_AXI_wvalid : out STD_LOGIC;
    M03_ACLK : in STD_LOGIC;
    M03_ARESETN : in STD_LOGIC;
    M03_AXI_araddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M03_AXI_arburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    M03_AXI_arcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M03_AXI_arlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    M03_AXI_arlock : out STD_LOGIC_VECTOR ( 0 to 0 );
    M03_AXI_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M03_AXI_arqos : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M03_AXI_arready : in STD_LOGIC;
    M03_AXI_arregion : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M03_AXI_arsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M03_AXI_arvalid : out STD_LOGIC;
    M03_AXI_awaddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M03_AXI_awburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    M03_AXI_awcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M03_AXI_awlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    M03_AXI_awlock : out STD_LOGIC_VECTOR ( 0 to 0 );
    M03_AXI_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M03_AXI_awqos : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M03_AXI_awready : in STD_LOGIC;
    M03_AXI_awregion : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M03_AXI_awsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M03_AXI_awvalid : out STD_LOGIC;
    M03_AXI_bready : out STD_LOGIC;
    M03_AXI_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M03_AXI_bvalid : in STD_LOGIC;
    M03_AXI_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    M03_AXI_rlast : in STD_LOGIC;
    M03_AXI_rready : out STD_LOGIC;
    M03_AXI_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M03_AXI_rvalid : in STD_LOGIC;
    M03_AXI_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M03_AXI_wlast : out STD_LOGIC;
    M03_AXI_wready : in STD_LOGIC;
    M03_AXI_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M03_AXI_wvalid : out STD_LOGIC;
    M04_ACLK : in STD_LOGIC;
    M04_ARESETN : in STD_LOGIC;
    M04_AXI_araddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M04_AXI_arburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    M04_AXI_arcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M04_AXI_arlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    M04_AXI_arlock : out STD_LOGIC_VECTOR ( 0 to 0 );
    M04_AXI_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M04_AXI_arqos : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M04_AXI_arready : in STD_LOGIC;
    M04_AXI_arregion : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M04_AXI_arsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M04_AXI_arvalid : out STD_LOGIC;
    M04_AXI_awaddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M04_AXI_awburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    M04_AXI_awcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M04_AXI_awlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    M04_AXI_awlock : out STD_LOGIC_VECTOR ( 0 to 0 );
    M04_AXI_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M04_AXI_awqos : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M04_AXI_awready : in STD_LOGIC;
    M04_AXI_awregion : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M04_AXI_awsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M04_AXI_awvalid : out STD_LOGIC;
    M04_AXI_bready : out STD_LOGIC;
    M04_AXI_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M04_AXI_bvalid : in STD_LOGIC;
    M04_AXI_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    M04_AXI_rlast : in STD_LOGIC;
    M04_AXI_rready : out STD_LOGIC;
    M04_AXI_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M04_AXI_rvalid : in STD_LOGIC;
    M04_AXI_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M04_AXI_wlast : out STD_LOGIC;
    M04_AXI_wready : in STD_LOGIC;
    M04_AXI_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M04_AXI_wvalid : out STD_LOGIC;
    M05_ACLK : in STD_LOGIC;
    M05_ARESETN : in STD_LOGIC;
    M05_AXI_araddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M05_AXI_arburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    M05_AXI_arcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M05_AXI_arlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    M05_AXI_arlock : out STD_LOGIC_VECTOR ( 0 to 0 );
    M05_AXI_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M05_AXI_arqos : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M05_AXI_arready : in STD_LOGIC;
    M05_AXI_arregion : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M05_AXI_arsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M05_AXI_arvalid : out STD_LOGIC;
    M05_AXI_awaddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M05_AXI_awburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    M05_AXI_awcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M05_AXI_awlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    M05_AXI_awlock : out STD_LOGIC_VECTOR ( 0 to 0 );
    M05_AXI_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M05_AXI_awqos : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M05_AXI_awready : in STD_LOGIC;
    M05_AXI_awregion : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M05_AXI_awsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M05_AXI_awvalid : out STD_LOGIC;
    M05_AXI_bready : out STD_LOGIC;
    M05_AXI_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M05_AXI_bvalid : in STD_LOGIC;
    M05_AXI_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    M05_AXI_rlast : in STD_LOGIC;
    M05_AXI_rready : out STD_LOGIC;
    M05_AXI_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M05_AXI_rvalid : in STD_LOGIC;
    M05_AXI_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M05_AXI_wlast : out STD_LOGIC;
    M05_AXI_wready : in STD_LOGIC;
    M05_AXI_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M05_AXI_wvalid : out STD_LOGIC;
    S00_ACLK : in STD_LOGIC;
    S00_ARESETN : in STD_LOGIC;
    S00_AXI_araddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S00_AXI_arburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S00_AXI_arcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S00_AXI_arlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    S00_AXI_arlock : in STD_LOGIC_VECTOR ( 0 to 0 );
    S00_AXI_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S00_AXI_arqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S00_AXI_arready : out STD_LOGIC;
    S00_AXI_arregion : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S00_AXI_arsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S00_AXI_arvalid : in STD_LOGIC;
    S00_AXI_awaddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S00_AXI_awburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S00_AXI_awcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S00_AXI_awlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    S00_AXI_awlock : in STD_LOGIC_VECTOR ( 0 to 0 );
    S00_AXI_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S00_AXI_awqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S00_AXI_awready : out STD_LOGIC;
    S00_AXI_awregion : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S00_AXI_awsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S00_AXI_awvalid : in STD_LOGIC;
    S00_AXI_bready : in STD_LOGIC;
    S00_AXI_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S00_AXI_bvalid : out STD_LOGIC;
    S00_AXI_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    S00_AXI_rlast : out STD_LOGIC;
    S00_AXI_rready : in STD_LOGIC;
    S00_AXI_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S00_AXI_rvalid : out STD_LOGIC;
    S00_AXI_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S00_AXI_wlast : in STD_LOGIC;
    S00_AXI_wready : out STD_LOGIC;
    S00_AXI_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S00_AXI_wvalid : in STD_LOGIC;
    interconnect_clock : in STD_LOGIC;
    interconnect_reset_n : in STD_LOGIC
  );
end system_interconnect_wrapper;

architecture STRUCTURE of system_interconnect_wrapper is
  component system_interconnect is
  port (
    interconnect_clock : in STD_LOGIC;
    interconnect_reset_n : in STD_LOGIC;
    S00_ACLK : in STD_LOGIC;
    S00_ARESETN : in STD_LOGIC;
    M00_ACLK : in STD_LOGIC;
    M00_ARESETN : in STD_LOGIC;
    M01_ACLK : in STD_LOGIC;
    M01_ARESETN : in STD_LOGIC;
    M02_ACLK : in STD_LOGIC;
    M02_ARESETN : in STD_LOGIC;
    M03_ARESETN : in STD_LOGIC;
    M04_ARESETN : in STD_LOGIC;
    M04_ACLK : in STD_LOGIC;
    M03_ACLK : in STD_LOGIC;
    M05_ACLK : in STD_LOGIC;
    M05_ARESETN : in STD_LOGIC;
    S00_AXI_awaddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S00_AXI_awlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    S00_AXI_awsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S00_AXI_awburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S00_AXI_awlock : in STD_LOGIC_VECTOR ( 0 to 0 );
    S00_AXI_awcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S00_AXI_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S00_AXI_awregion : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S00_AXI_awqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S00_AXI_awvalid : in STD_LOGIC;
    S00_AXI_awready : out STD_LOGIC;
    S00_AXI_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S00_AXI_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S00_AXI_wlast : in STD_LOGIC;
    S00_AXI_wvalid : in STD_LOGIC;
    S00_AXI_wready : out STD_LOGIC;
    S00_AXI_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S00_AXI_bvalid : out STD_LOGIC;
    S00_AXI_bready : in STD_LOGIC;
    S00_AXI_araddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S00_AXI_arlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    S00_AXI_arsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S00_AXI_arburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S00_AXI_arlock : in STD_LOGIC_VECTOR ( 0 to 0 );
    S00_AXI_arcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S00_AXI_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S00_AXI_arregion : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S00_AXI_arqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S00_AXI_arvalid : in STD_LOGIC;
    S00_AXI_arready : out STD_LOGIC;
    S00_AXI_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    S00_AXI_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S00_AXI_rlast : out STD_LOGIC;
    S00_AXI_rvalid : out STD_LOGIC;
    S00_AXI_rready : in STD_LOGIC;
    M00_AXI_awaddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M00_AXI_awlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    M00_AXI_awsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M00_AXI_awburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    M00_AXI_awlock : out STD_LOGIC_VECTOR ( 0 to 0 );
    M00_AXI_awcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M00_AXI_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M00_AXI_awregion : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M00_AXI_awqos : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M00_AXI_awvalid : out STD_LOGIC;
    M00_AXI_awready : in STD_LOGIC;
    M00_AXI_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M00_AXI_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M00_AXI_wlast : out STD_LOGIC;
    M00_AXI_wvalid : out STD_LOGIC;
    M00_AXI_wready : in STD_LOGIC;
    M00_AXI_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M00_AXI_bvalid : in STD_LOGIC;
    M00_AXI_bready : out STD_LOGIC;
    M00_AXI_araddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M00_AXI_arlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    M00_AXI_arsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M00_AXI_arburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    M00_AXI_arlock : out STD_LOGIC_VECTOR ( 0 to 0 );
    M00_AXI_arcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M00_AXI_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M00_AXI_arregion : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M00_AXI_arqos : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M00_AXI_arvalid : out STD_LOGIC;
    M00_AXI_arready : in STD_LOGIC;
    M00_AXI_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    M00_AXI_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M00_AXI_rlast : in STD_LOGIC;
    M00_AXI_rvalid : in STD_LOGIC;
    M00_AXI_rready : out STD_LOGIC;
    M01_AXI_awaddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M01_AXI_awlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    M01_AXI_awsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M01_AXI_awburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    M01_AXI_awlock : out STD_LOGIC_VECTOR ( 0 to 0 );
    M01_AXI_awcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M01_AXI_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M01_AXI_awregion : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M01_AXI_awqos : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M01_AXI_awvalid : out STD_LOGIC;
    M01_AXI_awready : in STD_LOGIC;
    M01_AXI_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M01_AXI_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M01_AXI_wlast : out STD_LOGIC;
    M01_AXI_wvalid : out STD_LOGIC;
    M01_AXI_wready : in STD_LOGIC;
    M01_AXI_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M01_AXI_bvalid : in STD_LOGIC;
    M01_AXI_bready : out STD_LOGIC;
    M01_AXI_araddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M01_AXI_arlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    M01_AXI_arsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M01_AXI_arburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    M01_AXI_arlock : out STD_LOGIC_VECTOR ( 0 to 0 );
    M01_AXI_arcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M01_AXI_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M01_AXI_arregion : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M01_AXI_arqos : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M01_AXI_arvalid : out STD_LOGIC;
    M01_AXI_arready : in STD_LOGIC;
    M01_AXI_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    M01_AXI_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M01_AXI_rlast : in STD_LOGIC;
    M01_AXI_rvalid : in STD_LOGIC;
    M01_AXI_rready : out STD_LOGIC;
    M02_AXI_awaddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M02_AXI_awlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    M02_AXI_awsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M02_AXI_awburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    M02_AXI_awlock : out STD_LOGIC_VECTOR ( 0 to 0 );
    M02_AXI_awcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M02_AXI_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M02_AXI_awregion : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M02_AXI_awqos : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M02_AXI_awvalid : out STD_LOGIC;
    M02_AXI_awready : in STD_LOGIC;
    M02_AXI_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M02_AXI_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M02_AXI_wlast : out STD_LOGIC;
    M02_AXI_wvalid : out STD_LOGIC;
    M02_AXI_wready : in STD_LOGIC;
    M02_AXI_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M02_AXI_bvalid : in STD_LOGIC;
    M02_AXI_bready : out STD_LOGIC;
    M02_AXI_araddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M02_AXI_arlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    M02_AXI_arsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M02_AXI_arburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    M02_AXI_arlock : out STD_LOGIC_VECTOR ( 0 to 0 );
    M02_AXI_arcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M02_AXI_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M02_AXI_arregion : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M02_AXI_arqos : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M02_AXI_arvalid : out STD_LOGIC;
    M02_AXI_arready : in STD_LOGIC;
    M02_AXI_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    M02_AXI_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M02_AXI_rlast : in STD_LOGIC;
    M02_AXI_rvalid : in STD_LOGIC;
    M02_AXI_rready : out STD_LOGIC;
    M03_AXI_awaddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M03_AXI_awlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    M03_AXI_awsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M03_AXI_awburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    M03_AXI_awlock : out STD_LOGIC_VECTOR ( 0 to 0 );
    M03_AXI_awcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M03_AXI_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M03_AXI_awregion : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M03_AXI_awqos : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M03_AXI_awvalid : out STD_LOGIC;
    M03_AXI_awready : in STD_LOGIC;
    M03_AXI_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M03_AXI_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M03_AXI_wlast : out STD_LOGIC;
    M03_AXI_wvalid : out STD_LOGIC;
    M03_AXI_wready : in STD_LOGIC;
    M03_AXI_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M03_AXI_bvalid : in STD_LOGIC;
    M03_AXI_bready : out STD_LOGIC;
    M03_AXI_araddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M03_AXI_arlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    M03_AXI_arsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M03_AXI_arburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    M03_AXI_arlock : out STD_LOGIC_VECTOR ( 0 to 0 );
    M03_AXI_arcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M03_AXI_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M03_AXI_arregion : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M03_AXI_arqos : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M03_AXI_arvalid : out STD_LOGIC;
    M03_AXI_arready : in STD_LOGIC;
    M03_AXI_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    M03_AXI_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M03_AXI_rlast : in STD_LOGIC;
    M03_AXI_rvalid : in STD_LOGIC;
    M03_AXI_rready : out STD_LOGIC;
    M04_AXI_awaddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M04_AXI_awlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    M04_AXI_awsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M04_AXI_awburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    M04_AXI_awlock : out STD_LOGIC_VECTOR ( 0 to 0 );
    M04_AXI_awcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M04_AXI_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M04_AXI_awregion : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M04_AXI_awqos : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M04_AXI_awvalid : out STD_LOGIC;
    M04_AXI_awready : in STD_LOGIC;
    M04_AXI_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M04_AXI_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M04_AXI_wlast : out STD_LOGIC;
    M04_AXI_wvalid : out STD_LOGIC;
    M04_AXI_wready : in STD_LOGIC;
    M04_AXI_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M04_AXI_bvalid : in STD_LOGIC;
    M04_AXI_bready : out STD_LOGIC;
    M04_AXI_araddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M04_AXI_arlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    M04_AXI_arsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M04_AXI_arburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    M04_AXI_arlock : out STD_LOGIC_VECTOR ( 0 to 0 );
    M04_AXI_arcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M04_AXI_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M04_AXI_arregion : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M04_AXI_arqos : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M04_AXI_arvalid : out STD_LOGIC;
    M04_AXI_arready : in STD_LOGIC;
    M04_AXI_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    M04_AXI_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M04_AXI_rlast : in STD_LOGIC;
    M04_AXI_rvalid : in STD_LOGIC;
    M04_AXI_rready : out STD_LOGIC;
    M05_AXI_awaddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M05_AXI_awlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    M05_AXI_awsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M05_AXI_awburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    M05_AXI_awlock : out STD_LOGIC_VECTOR ( 0 to 0 );
    M05_AXI_awcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M05_AXI_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M05_AXI_awregion : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M05_AXI_awqos : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M05_AXI_awvalid : out STD_LOGIC;
    M05_AXI_awready : in STD_LOGIC;
    M05_AXI_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M05_AXI_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M05_AXI_wlast : out STD_LOGIC;
    M05_AXI_wvalid : out STD_LOGIC;
    M05_AXI_wready : in STD_LOGIC;
    M05_AXI_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M05_AXI_bvalid : in STD_LOGIC;
    M05_AXI_bready : out STD_LOGIC;
    M05_AXI_araddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M05_AXI_arlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    M05_AXI_arsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M05_AXI_arburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    M05_AXI_arlock : out STD_LOGIC_VECTOR ( 0 to 0 );
    M05_AXI_arcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M05_AXI_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M05_AXI_arregion : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M05_AXI_arqos : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M05_AXI_arvalid : out STD_LOGIC;
    M05_AXI_arready : in STD_LOGIC;
    M05_AXI_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    M05_AXI_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M05_AXI_rlast : in STD_LOGIC;
    M05_AXI_rvalid : in STD_LOGIC;
    M05_AXI_rready : out STD_LOGIC
  );
  end component system_interconnect;
begin
system_interconnect_i: component system_interconnect
     port map (
      M00_ACLK => M00_ACLK,
      M00_ARESETN => M00_ARESETN,
      M00_AXI_araddr(31 downto 0) => M00_AXI_araddr(31 downto 0),
      M00_AXI_arburst(1 downto 0) => M00_AXI_arburst(1 downto 0),
      M00_AXI_arcache(3 downto 0) => M00_AXI_arcache(3 downto 0),
      M00_AXI_arlen(7 downto 0) => M00_AXI_arlen(7 downto 0),
      M00_AXI_arlock(0) => M00_AXI_arlock(0),
      M00_AXI_arprot(2 downto 0) => M00_AXI_arprot(2 downto 0),
      M00_AXI_arqos(3 downto 0) => M00_AXI_arqos(3 downto 0),
      M00_AXI_arready => M00_AXI_arready,
      M00_AXI_arregion(3 downto 0) => M00_AXI_arregion(3 downto 0),
      M00_AXI_arsize(2 downto 0) => M00_AXI_arsize(2 downto 0),
      M00_AXI_arvalid => M00_AXI_arvalid,
      M00_AXI_awaddr(31 downto 0) => M00_AXI_awaddr(31 downto 0),
      M00_AXI_awburst(1 downto 0) => M00_AXI_awburst(1 downto 0),
      M00_AXI_awcache(3 downto 0) => M00_AXI_awcache(3 downto 0),
      M00_AXI_awlen(7 downto 0) => M00_AXI_awlen(7 downto 0),
      M00_AXI_awlock(0) => M00_AXI_awlock(0),
      M00_AXI_awprot(2 downto 0) => M00_AXI_awprot(2 downto 0),
      M00_AXI_awqos(3 downto 0) => M00_AXI_awqos(3 downto 0),
      M00_AXI_awready => M00_AXI_awready,
      M00_AXI_awregion(3 downto 0) => M00_AXI_awregion(3 downto 0),
      M00_AXI_awsize(2 downto 0) => M00_AXI_awsize(2 downto 0),
      M00_AXI_awvalid => M00_AXI_awvalid,
      M00_AXI_bready => M00_AXI_bready,
      M00_AXI_bresp(1 downto 0) => M00_AXI_bresp(1 downto 0),
      M00_AXI_bvalid => M00_AXI_bvalid,
      M00_AXI_rdata(31 downto 0) => M00_AXI_rdata(31 downto 0),
      M00_AXI_rlast => M00_AXI_rlast,
      M00_AXI_rready => M00_AXI_rready,
      M00_AXI_rresp(1 downto 0) => M00_AXI_rresp(1 downto 0),
      M00_AXI_rvalid => M00_AXI_rvalid,
      M00_AXI_wdata(31 downto 0) => M00_AXI_wdata(31 downto 0),
      M00_AXI_wlast => M00_AXI_wlast,
      M00_AXI_wready => M00_AXI_wready,
      M00_AXI_wstrb(3 downto 0) => M00_AXI_wstrb(3 downto 0),
      M00_AXI_wvalid => M00_AXI_wvalid,
      M01_ACLK => M01_ACLK,
      M01_ARESETN => M01_ARESETN,
      M01_AXI_araddr(31 downto 0) => M01_AXI_araddr(31 downto 0),
      M01_AXI_arburst(1 downto 0) => M01_AXI_arburst(1 downto 0),
      M01_AXI_arcache(3 downto 0) => M01_AXI_arcache(3 downto 0),
      M01_AXI_arlen(7 downto 0) => M01_AXI_arlen(7 downto 0),
      M01_AXI_arlock(0) => M01_AXI_arlock(0),
      M01_AXI_arprot(2 downto 0) => M01_AXI_arprot(2 downto 0),
      M01_AXI_arqos(3 downto 0) => M01_AXI_arqos(3 downto 0),
      M01_AXI_arready => M01_AXI_arready,
      M01_AXI_arregion(3 downto 0) => M01_AXI_arregion(3 downto 0),
      M01_AXI_arsize(2 downto 0) => M01_AXI_arsize(2 downto 0),
      M01_AXI_arvalid => M01_AXI_arvalid,
      M01_AXI_awaddr(31 downto 0) => M01_AXI_awaddr(31 downto 0),
      M01_AXI_awburst(1 downto 0) => M01_AXI_awburst(1 downto 0),
      M01_AXI_awcache(3 downto 0) => M01_AXI_awcache(3 downto 0),
      M01_AXI_awlen(7 downto 0) => M01_AXI_awlen(7 downto 0),
      M01_AXI_awlock(0) => M01_AXI_awlock(0),
      M01_AXI_awprot(2 downto 0) => M01_AXI_awprot(2 downto 0),
      M01_AXI_awqos(3 downto 0) => M01_AXI_awqos(3 downto 0),
      M01_AXI_awready => M01_AXI_awready,
      M01_AXI_awregion(3 downto 0) => M01_AXI_awregion(3 downto 0),
      M01_AXI_awsize(2 downto 0) => M01_AXI_awsize(2 downto 0),
      M01_AXI_awvalid => M01_AXI_awvalid,
      M01_AXI_bready => M01_AXI_bready,
      M01_AXI_bresp(1 downto 0) => M01_AXI_bresp(1 downto 0),
      M01_AXI_bvalid => M01_AXI_bvalid,
      M01_AXI_rdata(31 downto 0) => M01_AXI_rdata(31 downto 0),
      M01_AXI_rlast => M01_AXI_rlast,
      M01_AXI_rready => M01_AXI_rready,
      M01_AXI_rresp(1 downto 0) => M01_AXI_rresp(1 downto 0),
      M01_AXI_rvalid => M01_AXI_rvalid,
      M01_AXI_wdata(31 downto 0) => M01_AXI_wdata(31 downto 0),
      M01_AXI_wlast => M01_AXI_wlast,
      M01_AXI_wready => M01_AXI_wready,
      M01_AXI_wstrb(3 downto 0) => M01_AXI_wstrb(3 downto 0),
      M01_AXI_wvalid => M01_AXI_wvalid,
      M02_ACLK => M02_ACLK,
      M02_ARESETN => M02_ARESETN,
      M02_AXI_araddr(31 downto 0) => M02_AXI_araddr(31 downto 0),
      M02_AXI_arburst(1 downto 0) => M02_AXI_arburst(1 downto 0),
      M02_AXI_arcache(3 downto 0) => M02_AXI_arcache(3 downto 0),
      M02_AXI_arlen(7 downto 0) => M02_AXI_arlen(7 downto 0),
      M02_AXI_arlock(0) => M02_AXI_arlock(0),
      M02_AXI_arprot(2 downto 0) => M02_AXI_arprot(2 downto 0),
      M02_AXI_arqos(3 downto 0) => M02_AXI_arqos(3 downto 0),
      M02_AXI_arready => M02_AXI_arready,
      M02_AXI_arregion(3 downto 0) => M02_AXI_arregion(3 downto 0),
      M02_AXI_arsize(2 downto 0) => M02_AXI_arsize(2 downto 0),
      M02_AXI_arvalid => M02_AXI_arvalid,
      M02_AXI_awaddr(31 downto 0) => M02_AXI_awaddr(31 downto 0),
      M02_AXI_awburst(1 downto 0) => M02_AXI_awburst(1 downto 0),
      M02_AXI_awcache(3 downto 0) => M02_AXI_awcache(3 downto 0),
      M02_AXI_awlen(7 downto 0) => M02_AXI_awlen(7 downto 0),
      M02_AXI_awlock(0) => M02_AXI_awlock(0),
      M02_AXI_awprot(2 downto 0) => M02_AXI_awprot(2 downto 0),
      M02_AXI_awqos(3 downto 0) => M02_AXI_awqos(3 downto 0),
      M02_AXI_awready => M02_AXI_awready,
      M02_AXI_awregion(3 downto 0) => M02_AXI_awregion(3 downto 0),
      M02_AXI_awsize(2 downto 0) => M02_AXI_awsize(2 downto 0),
      M02_AXI_awvalid => M02_AXI_awvalid,
      M02_AXI_bready => M02_AXI_bready,
      M02_AXI_bresp(1 downto 0) => M02_AXI_bresp(1 downto 0),
      M02_AXI_bvalid => M02_AXI_bvalid,
      M02_AXI_rdata(31 downto 0) => M02_AXI_rdata(31 downto 0),
      M02_AXI_rlast => M02_AXI_rlast,
      M02_AXI_rready => M02_AXI_rready,
      M02_AXI_rresp(1 downto 0) => M02_AXI_rresp(1 downto 0),
      M02_AXI_rvalid => M02_AXI_rvalid,
      M02_AXI_wdata(31 downto 0) => M02_AXI_wdata(31 downto 0),
      M02_AXI_wlast => M02_AXI_wlast,
      M02_AXI_wready => M02_AXI_wready,
      M02_AXI_wstrb(3 downto 0) => M02_AXI_wstrb(3 downto 0),
      M02_AXI_wvalid => M02_AXI_wvalid,
      M03_ACLK => M03_ACLK,
      M03_ARESETN => M03_ARESETN,
      M03_AXI_araddr(31 downto 0) => M03_AXI_araddr(31 downto 0),
      M03_AXI_arburst(1 downto 0) => M03_AXI_arburst(1 downto 0),
      M03_AXI_arcache(3 downto 0) => M03_AXI_arcache(3 downto 0),
      M03_AXI_arlen(7 downto 0) => M03_AXI_arlen(7 downto 0),
      M03_AXI_arlock(0) => M03_AXI_arlock(0),
      M03_AXI_arprot(2 downto 0) => M03_AXI_arprot(2 downto 0),
      M03_AXI_arqos(3 downto 0) => M03_AXI_arqos(3 downto 0),
      M03_AXI_arready => M03_AXI_arready,
      M03_AXI_arregion(3 downto 0) => M03_AXI_arregion(3 downto 0),
      M03_AXI_arsize(2 downto 0) => M03_AXI_arsize(2 downto 0),
      M03_AXI_arvalid => M03_AXI_arvalid,
      M03_AXI_awaddr(31 downto 0) => M03_AXI_awaddr(31 downto 0),
      M03_AXI_awburst(1 downto 0) => M03_AXI_awburst(1 downto 0),
      M03_AXI_awcache(3 downto 0) => M03_AXI_awcache(3 downto 0),
      M03_AXI_awlen(7 downto 0) => M03_AXI_awlen(7 downto 0),
      M03_AXI_awlock(0) => M03_AXI_awlock(0),
      M03_AXI_awprot(2 downto 0) => M03_AXI_awprot(2 downto 0),
      M03_AXI_awqos(3 downto 0) => M03_AXI_awqos(3 downto 0),
      M03_AXI_awready => M03_AXI_awready,
      M03_AXI_awregion(3 downto 0) => M03_AXI_awregion(3 downto 0),
      M03_AXI_awsize(2 downto 0) => M03_AXI_awsize(2 downto 0),
      M03_AXI_awvalid => M03_AXI_awvalid,
      M03_AXI_bready => M03_AXI_bready,
      M03_AXI_bresp(1 downto 0) => M03_AXI_bresp(1 downto 0),
      M03_AXI_bvalid => M03_AXI_bvalid,
      M03_AXI_rdata(31 downto 0) => M03_AXI_rdata(31 downto 0),
      M03_AXI_rlast => M03_AXI_rlast,
      M03_AXI_rready => M03_AXI_rready,
      M03_AXI_rresp(1 downto 0) => M03_AXI_rresp(1 downto 0),
      M03_AXI_rvalid => M03_AXI_rvalid,
      M03_AXI_wdata(31 downto 0) => M03_AXI_wdata(31 downto 0),
      M03_AXI_wlast => M03_AXI_wlast,
      M03_AXI_wready => M03_AXI_wready,
      M03_AXI_wstrb(3 downto 0) => M03_AXI_wstrb(3 downto 0),
      M03_AXI_wvalid => M03_AXI_wvalid,
      M04_ACLK => M04_ACLK,
      M04_ARESETN => M04_ARESETN,
      M04_AXI_araddr(31 downto 0) => M04_AXI_araddr(31 downto 0),
      M04_AXI_arburst(1 downto 0) => M04_AXI_arburst(1 downto 0),
      M04_AXI_arcache(3 downto 0) => M04_AXI_arcache(3 downto 0),
      M04_AXI_arlen(7 downto 0) => M04_AXI_arlen(7 downto 0),
      M04_AXI_arlock(0) => M04_AXI_arlock(0),
      M04_AXI_arprot(2 downto 0) => M04_AXI_arprot(2 downto 0),
      M04_AXI_arqos(3 downto 0) => M04_AXI_arqos(3 downto 0),
      M04_AXI_arready => M04_AXI_arready,
      M04_AXI_arregion(3 downto 0) => M04_AXI_arregion(3 downto 0),
      M04_AXI_arsize(2 downto 0) => M04_AXI_arsize(2 downto 0),
      M04_AXI_arvalid => M04_AXI_arvalid,
      M04_AXI_awaddr(31 downto 0) => M04_AXI_awaddr(31 downto 0),
      M04_AXI_awburst(1 downto 0) => M04_AXI_awburst(1 downto 0),
      M04_AXI_awcache(3 downto 0) => M04_AXI_awcache(3 downto 0),
      M04_AXI_awlen(7 downto 0) => M04_AXI_awlen(7 downto 0),
      M04_AXI_awlock(0) => M04_AXI_awlock(0),
      M04_AXI_awprot(2 downto 0) => M04_AXI_awprot(2 downto 0),
      M04_AXI_awqos(3 downto 0) => M04_AXI_awqos(3 downto 0),
      M04_AXI_awready => M04_AXI_awready,
      M04_AXI_awregion(3 downto 0) => M04_AXI_awregion(3 downto 0),
      M04_AXI_awsize(2 downto 0) => M04_AXI_awsize(2 downto 0),
      M04_AXI_awvalid => M04_AXI_awvalid,
      M04_AXI_bready => M04_AXI_bready,
      M04_AXI_bresp(1 downto 0) => M04_AXI_bresp(1 downto 0),
      M04_AXI_bvalid => M04_AXI_bvalid,
      M04_AXI_rdata(31 downto 0) => M04_AXI_rdata(31 downto 0),
      M04_AXI_rlast => M04_AXI_rlast,
      M04_AXI_rready => M04_AXI_rready,
      M04_AXI_rresp(1 downto 0) => M04_AXI_rresp(1 downto 0),
      M04_AXI_rvalid => M04_AXI_rvalid,
      M04_AXI_wdata(31 downto 0) => M04_AXI_wdata(31 downto 0),
      M04_AXI_wlast => M04_AXI_wlast,
      M04_AXI_wready => M04_AXI_wready,
      M04_AXI_wstrb(3 downto 0) => M04_AXI_wstrb(3 downto 0),
      M04_AXI_wvalid => M04_AXI_wvalid,
      M05_ACLK => M05_ACLK,
      M05_ARESETN => M05_ARESETN,
      M05_AXI_araddr(31 downto 0) => M05_AXI_araddr(31 downto 0),
      M05_AXI_arburst(1 downto 0) => M05_AXI_arburst(1 downto 0),
      M05_AXI_arcache(3 downto 0) => M05_AXI_arcache(3 downto 0),
      M05_AXI_arlen(7 downto 0) => M05_AXI_arlen(7 downto 0),
      M05_AXI_arlock(0) => M05_AXI_arlock(0),
      M05_AXI_arprot(2 downto 0) => M05_AXI_arprot(2 downto 0),
      M05_AXI_arqos(3 downto 0) => M05_AXI_arqos(3 downto 0),
      M05_AXI_arready => M05_AXI_arready,
      M05_AXI_arregion(3 downto 0) => M05_AXI_arregion(3 downto 0),
      M05_AXI_arsize(2 downto 0) => M05_AXI_arsize(2 downto 0),
      M05_AXI_arvalid => M05_AXI_arvalid,
      M05_AXI_awaddr(31 downto 0) => M05_AXI_awaddr(31 downto 0),
      M05_AXI_awburst(1 downto 0) => M05_AXI_awburst(1 downto 0),
      M05_AXI_awcache(3 downto 0) => M05_AXI_awcache(3 downto 0),
      M05_AXI_awlen(7 downto 0) => M05_AXI_awlen(7 downto 0),
      M05_AXI_awlock(0) => M05_AXI_awlock(0),
      M05_AXI_awprot(2 downto 0) => M05_AXI_awprot(2 downto 0),
      M05_AXI_awqos(3 downto 0) => M05_AXI_awqos(3 downto 0),
      M05_AXI_awready => M05_AXI_awready,
      M05_AXI_awregion(3 downto 0) => M05_AXI_awregion(3 downto 0),
      M05_AXI_awsize(2 downto 0) => M05_AXI_awsize(2 downto 0),
      M05_AXI_awvalid => M05_AXI_awvalid,
      M05_AXI_bready => M05_AXI_bready,
      M05_AXI_bresp(1 downto 0) => M05_AXI_bresp(1 downto 0),
      M05_AXI_bvalid => M05_AXI_bvalid,
      M05_AXI_rdata(31 downto 0) => M05_AXI_rdata(31 downto 0),
      M05_AXI_rlast => M05_AXI_rlast,
      M05_AXI_rready => M05_AXI_rready,
      M05_AXI_rresp(1 downto 0) => M05_AXI_rresp(1 downto 0),
      M05_AXI_rvalid => M05_AXI_rvalid,
      M05_AXI_wdata(31 downto 0) => M05_AXI_wdata(31 downto 0),
      M05_AXI_wlast => M05_AXI_wlast,
      M05_AXI_wready => M05_AXI_wready,
      M05_AXI_wstrb(3 downto 0) => M05_AXI_wstrb(3 downto 0),
      M05_AXI_wvalid => M05_AXI_wvalid,
      S00_ACLK => S00_ACLK,
      S00_ARESETN => S00_ARESETN,
      S00_AXI_araddr(31 downto 0) => S00_AXI_araddr(31 downto 0),
      S00_AXI_arburst(1 downto 0) => S00_AXI_arburst(1 downto 0),
      S00_AXI_arcache(3 downto 0) => S00_AXI_arcache(3 downto 0),
      S00_AXI_arlen(7 downto 0) => S00_AXI_arlen(7 downto 0),
      S00_AXI_arlock(0) => S00_AXI_arlock(0),
      S00_AXI_arprot(2 downto 0) => S00_AXI_arprot(2 downto 0),
      S00_AXI_arqos(3 downto 0) => S00_AXI_arqos(3 downto 0),
      S00_AXI_arready => S00_AXI_arready,
      S00_AXI_arregion(3 downto 0) => S00_AXI_arregion(3 downto 0),
      S00_AXI_arsize(2 downto 0) => S00_AXI_arsize(2 downto 0),
      S00_AXI_arvalid => S00_AXI_arvalid,
      S00_AXI_awaddr(31 downto 0) => S00_AXI_awaddr(31 downto 0),
      S00_AXI_awburst(1 downto 0) => S00_AXI_awburst(1 downto 0),
      S00_AXI_awcache(3 downto 0) => S00_AXI_awcache(3 downto 0),
      S00_AXI_awlen(7 downto 0) => S00_AXI_awlen(7 downto 0),
      S00_AXI_awlock(0) => S00_AXI_awlock(0),
      S00_AXI_awprot(2 downto 0) => S00_AXI_awprot(2 downto 0),
      S00_AXI_awqos(3 downto 0) => S00_AXI_awqos(3 downto 0),
      S00_AXI_awready => S00_AXI_awready,
      S00_AXI_awregion(3 downto 0) => S00_AXI_awregion(3 downto 0),
      S00_AXI_awsize(2 downto 0) => S00_AXI_awsize(2 downto 0),
      S00_AXI_awvalid => S00_AXI_awvalid,
      S00_AXI_bready => S00_AXI_bready,
      S00_AXI_bresp(1 downto 0) => S00_AXI_bresp(1 downto 0),
      S00_AXI_bvalid => S00_AXI_bvalid,
      S00_AXI_rdata(31 downto 0) => S00_AXI_rdata(31 downto 0),
      S00_AXI_rlast => S00_AXI_rlast,
      S00_AXI_rready => S00_AXI_rready,
      S00_AXI_rresp(1 downto 0) => S00_AXI_rresp(1 downto 0),
      S00_AXI_rvalid => S00_AXI_rvalid,
      S00_AXI_wdata(31 downto 0) => S00_AXI_wdata(31 downto 0),
      S00_AXI_wlast => S00_AXI_wlast,
      S00_AXI_wready => S00_AXI_wready,
      S00_AXI_wstrb(3 downto 0) => S00_AXI_wstrb(3 downto 0),
      S00_AXI_wvalid => S00_AXI_wvalid,
      interconnect_clock => interconnect_clock,
      interconnect_reset_n => interconnect_reset_n
    );
end STRUCTURE;