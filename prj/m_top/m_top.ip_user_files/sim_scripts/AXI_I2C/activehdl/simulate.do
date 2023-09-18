onbreak {quit -force}
onerror {quit -force}

asim +access +r +m+AXI_I2C -L xpm -L unisims_ver -L unimacro_ver -L secureip -O5 xil_defaultlib.AXI_I2C xil_defaultlib.glbl

set NumericStdNoWarnings 1
set StdArithNoWarnings 1

do {wave.do}

view wave
view structure

do {AXI_I2C.udo}

run -all

endsim

quit -force
