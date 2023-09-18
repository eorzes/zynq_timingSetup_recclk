
#### Getting started

In order to set up the Vivado environment you can:

- [ ] Launch Vivado in tcl mode inside the repository root directory: `vivado -mode tcl`
- [ ] Generate the project by sourcing the TCL file: `source generate_project.tcl`
- [ ] Start the GUI: `start_gui`

Remember to regenerate the TCL script when you add or remove new sources / IPs / constraints etc, by using the command `write_project_tcl -force ../generate_project.tcl`.

Or, manually:

- Create a Vivado project called m_top, located in a folder prj next to src
- Set zcu102 as board
- Import all VHDL and Verilog files (.vhd .v)
- Import all ip core (.xci)
- Import constrain file (.xdc)
- Import block diagrams (.bd)
- Set VHDL 2008 where required
- Right click on block diagrams > generate HDL wrapper
- Find GT in sources > gt_inst > m_gth : right click > open ip example design
- example design should get saved in prj next to m_top
- From that example design import the QPLL required files
- Disable unused sources (those not appearing under top level)
- Disable core containers for IP Cores if enabled: settings > IP Cores
