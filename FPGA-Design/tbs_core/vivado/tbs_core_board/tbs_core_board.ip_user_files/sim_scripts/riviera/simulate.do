transcript off
onbreak {quit -force}
onerror {quit -force}
transcript on

asim +access +r +m+tbs_core_board  -L xpm -L xil_defaultlib -L unisims_ver -L unimacro_ver -L secureip -O5 xil_defaultlib.tbs_core_board xil_defaultlib.glbl

do {tbs_core_board.udo}

run 1000ns

endsim

quit -force
