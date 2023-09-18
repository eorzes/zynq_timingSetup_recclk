onbreak {quit -f}
onerror {quit -f}

vsim -lib xil_defaultlib PCS_PMA_opt

set NumericStdNoWarnings 1
set StdArithNoWarnings 1

do {wave.do}

view wave
view structure
view signals

do {PCS_PMA.udo}

run -all

quit -force
