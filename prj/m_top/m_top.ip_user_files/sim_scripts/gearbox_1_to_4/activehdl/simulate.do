onbreak {quit -force}
onerror {quit -force}

asim +access +r +m+gearbox_1_to_4 -L xpm -L unisims_ver -L unimacro_ver -L secureip -O5 xil_defaultlib.gearbox_1_to_4 xil_defaultlib.glbl

set NumericStdNoWarnings 1
set StdArithNoWarnings 1

do {wave.do}

view wave
view structure

do {gearbox_1_to_4.udo}

run -all

endsim

quit -force
