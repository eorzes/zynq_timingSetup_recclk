onbreak {quit -force}
onerror {quit -force}

asim +access +r +m+gearbox_4_to_1 -L xpm -L unisims_ver -L unimacro_ver -L secureip -O5 xil_defaultlib.gearbox_4_to_1 xil_defaultlib.glbl

set NumericStdNoWarnings 1
set StdArithNoWarnings 1

do {wave.do}

view wave
view structure

do {gearbox_4_to_1.udo}

run -all

endsim

quit -force
