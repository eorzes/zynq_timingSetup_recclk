vlib questa_lib/work
vlib questa_lib/msim

vlib questa_lib/msim/xil_defaultlib

vmap xil_defaultlib questa_lib/msim/xil_defaultlib

vcom -work xil_defaultlib  -93 \
"../../../../m_gth_ex.gen/sources_1/ip/m_gth_vio_0/sim/m_gth_vio_0.vhd" \


