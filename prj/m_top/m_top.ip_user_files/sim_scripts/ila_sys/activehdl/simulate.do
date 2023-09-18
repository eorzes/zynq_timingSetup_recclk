onbreak {quit -force}
onerror {quit -force}

asim +access +r +m+ila_sys -L xpm -L unisims_ver -L unimacro_ver -L secureip -O5 xil_defaultlib.ila_sys xil_defaultlib.glbl

set NumericStdNoWarnings 1
set StdArithNoWarnings 1

do {wave.do}

view wave
view structure

do {ila_sys.udo}

run -all

endsim

quit -force
