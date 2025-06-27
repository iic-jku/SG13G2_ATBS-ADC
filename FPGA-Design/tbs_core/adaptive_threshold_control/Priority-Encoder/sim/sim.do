vlib work
vmap work work

--------------------------------- PACKAGES -----------------------------
vcom -work work ../../../sim/vhdl/TBSSimVals_p.vhd
vcom -work work PriorityEncoderSimVals_p.vhd

--------------------------------- DESIGNS ------------------------------
vcom -work work ../rtl/priority_encoder_ea.vhd
vcom -work work ../rtl/priority_encoder_board.vhd
vcom -work work priority_encoder_tb.vhd

vsim work.priority_encoder_tb 

do wave.do
--add wave -r *

when -label end_of_simulation {tb_end == '1'} {echo "End of simulation" ; stop;}
run -a