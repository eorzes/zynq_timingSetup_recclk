onbreak {quit -force}
onerror {quit -force}

asim +access +r +m+clk_pcs_pma_62_5 -L xpm -L unisims_ver -L unimacro_ver -L secureip -O5 xil_defaultlib.clk_pcs_pma_62_5 xil_defaultlib.glbl

set NumericStdNoWarnings 1
set StdArithNoWarnings 1

do {wave.do}

view wave
view structure

do {clk_pcs_pma_62_5.udo}

run -all

endsim

quit -force
