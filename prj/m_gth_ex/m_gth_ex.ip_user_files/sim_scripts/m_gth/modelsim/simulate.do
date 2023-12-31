onbreak {quit -f}
onerror {quit -f}

vsim -voptargs="+acc" -L gtwizard_ultrascale_v1_7_13 -L xil_defaultlib -L unisims_ver -L unimacro_ver -L secureip -lib xil_defaultlib xil_defaultlib.m_gth xil_defaultlib.glbl

set NumericStdNoWarnings 1
set StdArithNoWarnings 1

do {wave.do}

view wave
view structure
view signals

do {m_gth.udo}

run -all

quit -force
