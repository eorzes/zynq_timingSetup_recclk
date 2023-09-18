onbreak {quit -f}
onerror {quit -f}

vsim -lib xil_defaultlib AXI_I2C_opt

set NumericStdNoWarnings 1
set StdArithNoWarnings 1

do {wave.do}

view wave
view structure
view signals

do {AXI_I2C.udo}

run -all

quit -force
