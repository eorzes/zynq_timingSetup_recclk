onbreak {quit -f}
onerror {quit -f}

vsim -lib xil_defaultlib m_gth_opt

set NumericStdNoWarnings 1
set StdArithNoWarnings 1

do {wave.do}

view wave
view structure
view signals

do {m_gth.udo}

run -all

quit -force
