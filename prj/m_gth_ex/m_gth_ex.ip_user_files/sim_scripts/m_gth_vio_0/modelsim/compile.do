vlib modelsim_lib/work
vlib modelsim_lib/msim

vlib modelsim_lib/msim/xil_defaultlib

vmap xil_defaultlib modelsim_lib/msim/xil_defaultlib

vcom -work xil_defaultlib  -93 \
"../../../../m_gth_ex.gen/sources_1/ip/m_gth_vio_0/sim/m_gth_vio_0.vhd" \


