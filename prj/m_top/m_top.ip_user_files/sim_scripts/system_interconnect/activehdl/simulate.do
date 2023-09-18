onbreak {quit -force}
onerror {quit -force}

asim +access +r +m+system_interconnect -L xpm -L unisims_ver -L unimacro_ver -L secureip -O5 xil_defaultlib.system_interconnect xil_defaultlib.glbl

set NumericStdNoWarnings 1
set StdArithNoWarnings 1

do {wave.do}

view wave
view structure

do {system_interconnect.udo}

run -all

endsim

quit -force
