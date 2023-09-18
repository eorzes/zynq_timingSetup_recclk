onbreak {quit -force}
onerror {quit -force}

asim +access +r +m+system_management -L xpm -L unisims_ver -L unimacro_ver -L secureip -O5 xil_defaultlib.system_management xil_defaultlib.glbl

set NumericStdNoWarnings 1
set StdArithNoWarnings 1

do {wave.do}

view wave
view structure

do {system_management.udo}

run -all

endsim

quit -force
