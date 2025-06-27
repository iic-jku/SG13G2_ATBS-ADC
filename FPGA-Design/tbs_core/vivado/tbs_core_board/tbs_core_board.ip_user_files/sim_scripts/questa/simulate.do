onbreak {quit -f}
onerror {quit -f}

vsim  -lib xil_defaultlib tbs_core_board_opt

set NumericStdNoWarnings 1
set StdArithNoWarnings 1

do {wave.do}

view wave
view structure
view signals

do {tbs_core_board.udo}

run 1000ns

quit -force
