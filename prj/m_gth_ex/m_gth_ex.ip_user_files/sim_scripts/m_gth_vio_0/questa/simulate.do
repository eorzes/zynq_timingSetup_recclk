onbreak {quit -f}
onerror {quit -f}

vsim -lib xil_defaultlib m_gth_vio_0_opt

set NumericStdNoWarnings 1
set StdArithNoWarnings 1

do {wave.do}

view wave
view structure
view signals

do {m_gth_vio_0.udo}

run -all

quit -force
