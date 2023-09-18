set_property PACKAGE_PIN G21 [get_ports clk_125_p]
set_property PACKAGE_PIN F21 [get_ports clk_125_n]
set_property IOSTANDARD LVDS_25 [get_ports clk_125_*]

### DDMTD inputs
#set_property PACKAGE_PIN AE4 [get_ports clnrxusrclk_in_n] ;# FMC_HPC1_LA07_N 
#set_property PACKAGE_PIN AD4 [get_ports clnrxusrclk_in_p] ;# FMC_HPC1_LA07_P
#set_property PACKAGE_PIN G28 [get_ports clnrxusrclk_in_n] ;# FMC_HPC1_GBTCLK0_M2C_C_N
#set_property PACKAGE_PIN G27 [get_ports clnrxusrclk_in_p] ;# FMC_HPC1_GBTCLK0_M2C_C_P
#set_property PACKAGE_PIN G7 [get_ports clnrxusrclk_in_n] ;# FMC_HPC0_GBTCLK0_M2C_C_N
#set_property PACKAGE_PIN G8 [get_ports clnrxusrclk_in_p] ;# FMC_HPC0_GBTCLK0_M2C_C_P
#set_property IOSTANDARD LVDS [get_ports clnrxusrclk_in_*] ;# LVDS is 1.8v as the VADJ_FMC
#set_property PACKAGE_PIN AF7 [get_ports gtfanout_in_n] ;# FMC_HPC1_CLK0_M2C_N
#set_property PACKAGE_PIN AE7 [get_ports gtfanout_in_p] ;# FMC_HPC1_CLK0_M2C_P
#set_property PACKAGE_PIN E28 [get_ports gtfanout_in_n] ;# FMC_HPC1_GBTCLK1_M2C_C_N
#set_property PACKAGE_PIN E27 [get_ports gtfanout_in_p] ;# FMC_HPC1_GBTCLK1_M2C_C_P
set_property PACKAGE_PIN L7 [get_ports gtfanout_in_n] ;# FMC_HPC0_GBTCLK1_M2C_C_N
set_property PACKAGE_PIN L8 [get_ports gtfanout_in_p] ;# FMC_HPC0_GBTCLK1_M2C_C_P
#set_property PACKAGE_PIN L7 [get_ports ddmtdclk_in_n] ;# FMC_HPC0_GBTCLK1_M2C_C_N
#set_property PACKAGE_PIN L8 [get_ports ddmtdclk_in_p] ;# FMC_HPC0_GBTCLK1_M2C_C_P
#set_property PACKAGE_PIN E28 [get_ports ddmtdclk_in_n] ;# FMC_HPC1_GBTCLK1_M2C_C_N
#set_property PACKAGE_PIN E27 [get_ports ddmtdclk_in_p] ;# FMC_HPC1_GBTCLK1_M2C_C_P
set_property PACKAGE_PIN G7 [get_ports ddmtdclk_in_n] ;# FMC_HPC0_GBTCLK0_M2C_C_N
set_property PACKAGE_PIN G8 [get_ports ddmtdclk_in_p] ;# FMC_HPC0_GBTCLK0_M2C_C_P

## main transceiver - quad (bank) 228 (ref from quad 229, rec to same quad)
#set_property PACKAGE_PIN M33 [get_ports gt_rx_p] ;# SMA_MGT_RX_C_P
#set_property PACKAGE_PIN M34 [get_ports gt_rx_n] ;# SMA_MGT_RX_C_N
#set_property PACKAGE_PIN M29 [get_ports gt_tx_p] ;# SMA_MGT_TX_P
#set_property PACKAGE_PIN M30 [get_ports gt_tx_n] ;# SMA_MGT_TX_N
#set_property PACKAGE_PIN B2 [get_ports gt_rx_p] ;# SFP2_RX_P
#set_property PACKAGE_PIN B1 [get_ports gt_rx_n] ;# SFP2_RX_N
#set_property PACKAGE_PIN B6 [get_ports gt_tx_p] ;# SFP2_TX_P
#set_property PACKAGE_PIN B5 [get_ports gt_tx_n] ;# SFP2_TX_N
set_property PACKAGE_PIN E31 [get_ports gt_rx_p] ;# FMC_HPC1_DP0_M2C_P
set_property PACKAGE_PIN E32 [get_ports gt_rx_n] ;# FMC_HPC1_DP0_M2C_N
set_property PACKAGE_PIN F29 [get_ports gt_tx_p] ;# FMC_HPC1_DP0_C2M_P
set_property PACKAGE_PIN F30 [get_ports gt_tx_n] ;# FMC_HPC1_DP0_C2M_N
#set_property PACKAGE_PIN L4 [get_ports gt_rx_p] ;# FMC_HPC0_DP4_M2C_P
#set_property PACKAGE_PIN L3 [get_ports gt_rx_n] ;# FMC_HPC0_DP4_M2C_N
#set_property PACKAGE_PIN M6 [get_ports gt_tx_p] ;# FMC_HPC0_DP4_C2M_P
#set_property PACKAGE_PIN M5 [get_ports gt_tx_n] ;# FMC_HPC0_DP4_C2M_N

#set_property PACKAGE_PIN L7 [get_ports rxrecclk_n] ;# FMC_HPC0_GBTCLK1_M2C_C_N
#set_property PACKAGE_PIN L8 [get_ports rxrecclk_p] ;# FMC_HPC0_GBTCLK1_M2C_C_P
#set_property PACKAGE_PIN J27 [get_ports rxrecclk_p] ;# USER_SMA_MGT_CLOCK_C_P
#set_property PACKAGE_PIN J28 [get_ports rxrecclk_n] ;# USER_SMA_MGT_CLOCK_C_N
set_property PACKAGE_PIN E28 [get_ports rxrecclk_n] ;# FMC_HPC1_GBTCLK1_M2C_C_N
set_property PACKAGE_PIN E27 [get_ports rxrecclk_p] ;# FMC_HPC1_GBTCLK1_M2C_C_P

#set_property PACKAGE_PIN G28 [get_ports gt_refclk_n] ;# FMC_HPC1_GBTCLK0_M2C_C_N
#set_property PACKAGE_PIN G27 [get_ports gt_refclk_p] ;# FMC_HPC1_GBTCLK0_M2C_C_P
#set_property PACKAGE_PIN L7 [get_ports gt_refclk_n] ;# FMC_HPC0_GBTCLK1_M2C_C_N
#set_property PACKAGE_PIN L8 [get_ports gt_refclk_p] ;# FMC_HPC0_GBTCLK1_M2C_C_P
set_property PACKAGE_PIN J27 [get_ports gt_refclk_p] ;# USER_SMA_MGT_CLOCK_C_P
set_property PACKAGE_PIN J28 [get_ports gt_refclk_n] ;# USER_SMA_MGT_CLOCK_C_N
#set_property PACKAGE_PIN L27 [get_ports gt_refclk_p] ;# USER_MGT_SI750_CLOCK1_C_P
#set_property PACKAGE_PIN L28 [get_ports gt_refclk_n] ;# USER_MGT_SI750_CLOCK1_C_N

#set_property RX_PROGDIV_CFG 20.0 [get_cells {gt_inst/ch[0].inst/inst/gen_gtwizard_gthe4_top.m_gth_gtwizard_gthe4_inst/gen_gtwizard_gthe4.gen_channel_container[3].gen_enabled_channel.gthe4_channel_wrapper_inst/channel_inst/gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST}]

## HPC1 - rxusrclk
set_property PACKAGE_PIN AE5 [get_ports rxUserClk_p] ;#FMC_HPC1_LA00_CC_P
set_property PACKAGE_PIN AF5 [get_ports rxUserClk_n] ;#FMC_HPC1_LA00_CC_N
set_property IOSTANDARD LVDS [get_ports rxUserClk_p]
set_property IOSTANDARD LVDS [get_ports rxUserClk_n]

#set_property PACKAGE_PIN Y4 [get_ports rxUserClk_p] ;#FMC_HPC0_LA00_CC_P
#set_property PACKAGE_PIN Y3 [get_ports rxUserClk_n] ;#FMC_HPC0_LA00_CC_N
#set_property IOSTANDARD LVDS [get_ports rxUserClk_p]
#set_property IOSTANDARD LVDS [get_ports rxUserClk_n]

set_property PACKAGE_PIN AH4 [get_ports rxUserClk_1] ;#FMC_HPC1_LA10_P
#set_property PACKAGE_PIN W5 [get_ports rxUserClk_1] ;#FMC_HPC0_LA10_P
set_property IOSTANDARD LVCMOS18 [get_ports rxUserClk_1]
set_property SLEW FAST [get_ports rxUserClk_1]
set_property DRIVE 12 [get_ports rxUserClk_1]

#set_property PACKAGE_PIN AE2 [get_ports txUserClk] ;#FMC_HPC1_LA09_P
#set_property IOSTANDARD LVCMOS18 [get_ports txUserClk]
#set_property SLEW FAST [get_ports txUserClk]
#set_property DRIVE 12 [get_ports txUserClk]

## ----- Ethernet
# quad (bank) 230
set_property PACKAGE_PIN C7 [get_ports eth_gtrefclk_n] ;# USER_MGT_SI570_CLOCK2_C_N
set_property PACKAGE_PIN C8 [get_ports eth_gtrefclk_p] ;# USER_MGT_SI570_CLOCK2_C_P

# quad (bank): 230, X1Y13 -> SFP1 (bottom right)
set_property PACKAGE_PIN C4 [get_ports rxp_eth_sfp] ;# SFP1_RX_P
set_property PACKAGE_PIN C3 [get_ports rxn_eth_sfp] ;# SFP1_RX_N
set_property PACKAGE_PIN D6 [get_ports txp_eth_sfp] ;# SFP1_TX_P
set_property PACKAGE_PIN D5 [get_ports txn_eth_sfp] ;# SFP1_TX_N

# IIC
set_property PACKAGE_PIN AJ5 [get_ports sda] ;#FMC_HPC1_LA01_CC_N
set_property PACKAGE_PIN AJ6 [get_ports scl] ;#FMC_HPC1_LA01_CC_P
set_property IOSTANDARD LVCMOS18 [get_ports sda]
set_property IOSTANDARD LVCMOS18 [get_ports scl]
## ------

set_property PACKAGE_PIN AK13 [get_ports tx_eth_addr_sel] ;# GPIO_DIP_SW7 - switch 1
set_property IOSTANDARD LVCMOS33 [get_ports tx_eth_addr_sel]
set_property PACKAGE_PIN AL13 [get_ports rx_eth_addr_sel] ;# GPIO_DIP_SW6 - switch 2
set_property IOSTANDARD LVCMOS33 [get_ports rx_eth_addr_sel]
set_property PACKAGE_PIN AP14 [get_ports switchPIN_ali_en_asynch] ;# GPIO_DIP_SW0 - switch 7 (8 is broken)
set_property IOSTANDARD LVCMOS33 [get_ports switchPIN_ali_en_asynch]

set_property PACKAGE_PIN A13 [get_ports SFP1_enable] ;# SFP1_TX_DISABLE
set_property IOSTANDARD LVCMOS33 [get_ports SFP1_enable]
set_property PACKAGE_PIN B13 [get_ports SFP2_enable] ;# SFP2_TX_DISABLE
set_property IOSTANDARD LVCMOS33 [get_ports SFP2_enable]

set_property RXSLIDE_MODE PMA [get_cells -hierarchical -filter {NAME =~ *gt_inst*GT*E4_CHANNEL_PRIM_INST}]
#get_property RXSLIDE_MODE [get_cells -hierarchical -filter {NAME =~ *gt_inst*GT*E4_CHANNEL_PRIM_INST}]

create_clock -period 8.00000 -name clk_125 -add [get_ports clk_125_p]

create_clock -period 4.16666 -name gt_refclk -add [get_ports gt_refclk_p]

create_clock -period 6.40000 -name eth_gtrefclk -add [get_ports eth_gtrefclk_p]

#create_clock -period 4.16666 -name clnrxusrclk -add [get_ports clnrxusrclk_in_p]
create_clock -period 4.16666 -name gtfanout -add [get_ports gtfanout_in_p]
create_clock -period 4.16684 -name ddmtdclk -add [get_ports ddmtdclk_in_p]

#set_false_path -from [get_ports clnrxusrclk_in_p] -to [get_pins DDMTD_inst/ddmtd/DMTD_B/gen_straight.clk_i_d0_reg/D]
#set_false_path -from [get_ports gtfanout_in_p]    -to [get_pins DDMTD_inst/ddmtd/DMTD_A/gen_straight.clk_i_d0_reg/D]

set_clock_groups -asynchronous -group [get_clocks -include_generated_clocks clk_125]
set_clock_groups -asynchronous -group [get_clocks -include_generated_clocks gt_refclk]
set_clock_groups -asynchronous -group [get_clocks -include_generated_clocks eth_gtrefclk]
set_clock_groups -asynchronous -group [get_clocks -of_objects [get_nets -hier -filter {NAME =~ gt_inst/ch[0].*/rxoutclk_out[0]}]]
set_clock_groups -asynchronous -group [get_clocks -of_objects [get_nets -hier -filter {NAME =~ gt_inst/ch[0].*/txoutclk_out[0]}]]

set_clock_groups -asynchronous -group [get_clocks -of_objects [get_pins -hierarchical -filter {NAME =~ *ddmtd/DMTD_A/tag_o_reg*/C}]]

set_output_delay -clock gt_refclk 3.000 [get_ports rxUserClk_*]
set_output_delay -clock gt_refclk 3.000 [get_ports rxrecclk_*]
#set_output_delay -clock gt_refclk 3.000 [get_ports rxUserClk_1]
#set_output_delay -clock gt_refclk 3.000 [get_ports txUserClk]

#set_property TX_PROGCLK_SEL PREPI [get_cells {gt_inst/ch[0].inst/inst/gen_gtwizard_gthe4_top.m_gth_gtwizard_gthe4_inst/gen_gtwizard_gthe4.gen_channel_container[3].gen_enabled_channel.gthe4_channel_wrapper_inst/channel_inst/gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST}]
#set_property TX_PROGDIV_CFG 20 [get_cells {gt_inst/ch[0].inst/inst/gen_gtwizard_gthe4_top.m_gth_gtwizard_gthe4_inst/gen_gtwizard_gthe4.gen_channel_container[3].gen_enabled_channel.gthe4_channel_wrapper_inst/channel_inst/gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST}]

set_property BITSTREAM.GENERAL.COMPRESS TRUE [current_design]