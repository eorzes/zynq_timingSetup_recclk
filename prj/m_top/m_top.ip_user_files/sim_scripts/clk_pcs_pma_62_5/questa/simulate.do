onbreak {quit -f}
onerror {quit -f}

vsim -lib xil_defaultlib clk_pcs_pma_62_5_opt

set NumericStdNoWarnings 1
set StdArithNoWarnings 1

do {wave.do}

view wave
view structure
view signals

do {clk_pcs_pma_62_5.udo}

run -all

quit -force
