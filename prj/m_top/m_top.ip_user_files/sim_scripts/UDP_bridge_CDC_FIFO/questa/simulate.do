onbreak {quit -f}
onerror {quit -f}

vsim -lib xil_defaultlib UDP_bridge_CDC_FIFO_opt

set NumericStdNoWarnings 1
set StdArithNoWarnings 1

do {wave.do}

view wave
view structure
view signals

do {UDP_bridge_CDC_FIFO.udo}

run -all

quit -force
