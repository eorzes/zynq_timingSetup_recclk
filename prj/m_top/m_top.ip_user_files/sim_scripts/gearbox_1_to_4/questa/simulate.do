onbreak {quit -f}
onerror {quit -f}

vsim -lib xil_defaultlib gearbox_1_to_4_opt

set NumericStdNoWarnings 1
set StdArithNoWarnings 1

do {wave.do}

view wave
view structure
view signals

do {gearbox_1_to_4.udo}

run -all

quit -force
