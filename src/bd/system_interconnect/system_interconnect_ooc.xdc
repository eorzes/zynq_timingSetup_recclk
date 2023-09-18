################################################################################

# This XDC is used only for OOC mode of synthesis, implementation
# This constraints file contains default clock frequencies to be used during
# out-of-context flows such as OOC Synthesis and Hierarchical Designs.
# This constraints file is not used in normal top-down synthesis (default flow
# of Vivado)
################################################################################
create_clock -name interconnect_clock -period 8 [get_ports interconnect_clock]
create_clock -name S00_ACLK -period 8 [get_ports S00_ACLK]
create_clock -name M00_ACLK -period 25 [get_ports M00_ACLK]
create_clock -name M01_ACLK -period 25 [get_ports M01_ACLK]
create_clock -name M02_ACLK -period 8 [get_ports M02_ACLK]
create_clock -name M04_ACLK -period 8 [get_ports M04_ACLK]
create_clock -name M03_ACLK -period 8 [get_ports M03_ACLK]
create_clock -name M05_ACLK -period 8 [get_ports M05_ACLK]

################################################################################