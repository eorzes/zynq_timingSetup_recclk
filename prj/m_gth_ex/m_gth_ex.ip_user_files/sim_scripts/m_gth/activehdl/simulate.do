onbreak {quit -force}
onerror {quit -force}

asim +access +r +m+m_gth -L gtwizard_ultrascale_v1_7_13 -L xil_defaultlib -L unisims_ver -L unimacro_ver -L secureip -O5 xil_defaultlib.m_gth xil_defaultlib.glbl

set NumericStdNoWarnings 1
set StdArithNoWarnings 1

do {wave.do}

view wave
view structure

do {m_gth.udo}

run -all

endsim

quit -force
