onbreak {quit -force}
onerror {quit -force}

asim +access +r +m+MAC_AXIS_ILA -L xpm -L unisims_ver -L unimacro_ver -L secureip -O5 xil_defaultlib.MAC_AXIS_ILA xil_defaultlib.glbl

set NumericStdNoWarnings 1
set StdArithNoWarnings 1

do {wave.do}

view wave
view structure

do {MAC_AXIS_ILA.udo}

run -all

endsim

quit -force
