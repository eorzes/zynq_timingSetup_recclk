onbreak {quit -force}
onerror {quit -force}

asim +access +r +m+m_gth_vio_0 -L xil_defaultlib -L secureip -O5 xil_defaultlib.m_gth_vio_0

set NumericStdNoWarnings 1
set StdArithNoWarnings 1

do {wave.do}

view wave
view structure

do {m_gth_vio_0.udo}

run -all

endsim

quit -force
