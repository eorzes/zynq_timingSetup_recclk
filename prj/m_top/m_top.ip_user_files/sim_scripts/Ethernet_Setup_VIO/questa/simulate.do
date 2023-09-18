onbreak {quit -f}
onerror {quit -f}

vsim -lib xil_defaultlib Ethernet_Setup_VIO_opt

set NumericStdNoWarnings 1
set StdArithNoWarnings 1

do {wave.do}

view wave
view structure
view signals

do {Ethernet_Setup_VIO.udo}

run -all

quit -force
