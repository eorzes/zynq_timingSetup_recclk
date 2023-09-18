onbreak {quit -force}
onerror {quit -force}

asim +access +r +m+PCS_PMA -L xpm -L unisims_ver -L unimacro_ver -L secureip -O5 xil_defaultlib.PCS_PMA xil_defaultlib.glbl

set NumericStdNoWarnings 1
set StdArithNoWarnings 1

do {wave.do}

view wave
view structure

do {PCS_PMA.udo}

run -all

endsim

quit -force
