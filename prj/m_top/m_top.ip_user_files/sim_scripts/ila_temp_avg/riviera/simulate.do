onbreak {quit -force}
onerror {quit -force}

asim +access +r +m+ila_temp_avg -L xpm -L unisims_ver -L unimacro_ver -L secureip -O5 xil_defaultlib.ila_temp_avg xil_defaultlib.glbl

set NumericStdNoWarnings 1
set StdArithNoWarnings 1

do {wave.do}

view wave
view structure

do {ila_temp_avg.udo}

run -all

endsim

quit -force
