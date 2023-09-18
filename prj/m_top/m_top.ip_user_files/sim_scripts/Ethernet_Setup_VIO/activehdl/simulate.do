onbreak {quit -force}
onerror {quit -force}

asim +access +r +m+Ethernet_Setup_VIO -L xpm -L unisims_ver -L unimacro_ver -L secureip -O5 xil_defaultlib.Ethernet_Setup_VIO xil_defaultlib.glbl

set NumericStdNoWarnings 1
set StdArithNoWarnings 1

do {wave.do}

view wave
view structure

do {Ethernet_Setup_VIO.udo}

run -all

endsim

quit -force
