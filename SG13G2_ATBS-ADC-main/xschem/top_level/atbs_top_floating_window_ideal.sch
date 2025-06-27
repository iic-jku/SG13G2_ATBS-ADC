v {xschem version=3.4.6 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
T {Ideal Floating Window Adaptive Threshold-Based Sampling ADC} 430 -1700 0 0 1 1 {}
N 600 -1440 600 -1400 {
lab=VDD_COMP}
N 1000 -300 1000 -280 {
lab=VSS}
N 600 -800 600 -760 {
lab=VDD_COMP}
N 1000 -540 1000 -520 {
lab=VDD_DAC}
N 1000 -1180 1000 -1160 {
lab=VDD_DAC}
N 1000 -940 1000 -920 {
lab=VSS}
N 500 -410 800 -410 {
lab=vdac_lower}
N 500 -540 500 -410 {
lab=vdac_lower}
N 500 -680 540 -680 {
lab=vdac_lower}
N 500 -1180 500 -1050 {
lab=vdac_upper}
N 500 -1320 540 -1320 {
lab=vdac_upper}
N 500 -1050 800 -1050 {
lab=vdac_upper}
N 700 -700 840 -700 {
lab=vcomp_lower}
N 2040 -1380 2080 -1380 {
lab=di_clock}
N 2040 -1340 2080 -1340 {
lab=di_reset_n}
N 1740 -280 1740 -260 {
lab=VSS}
N 1100 -1120 1440 -1120 {
lab=#net1}
N 1100 -1100 1440 -1100 {
lab=#net2}
N 1100 -1080 1440 -1080 {
lab=#net3}
N 1100 -1060 1440 -1060 {
lab=#net4}
N 1100 -1040 1440 -1040 {
lab=#net5}
N 1100 -1020 1440 -1020 {
lab=#net6}
N 1100 -1000 1440 -1000 {
lab=#net7}
N 1100 -980 1440 -980 {
lab=#net8}
N 1100 -480 1440 -480 {
lab=#net9}
N 1100 -460 1440 -460 {
lab=#net10}
N 1100 -440 1440 -440 {
lab=#net11}
N 1100 -420 1440 -420 {
lab=#net12}
N 1100 -400 1440 -400 {
lab=#net13}
N 1100 -380 1440 -380 {
lab=#net14}
N 1100 -360 1440 -360 {
lab=#net15}
N 1100 -340 1440 -340 {
lab=#net16}
N 600 -1280 600 -1240 {
lab=VSS}
N 600 -640 600 -600 {
lab=VSS}
N 1740 -1460 1740 -1440 {
lab=VDD_DIG}
N 320 -1040 320 -720 {
lab=vsignal}
N 320 -720 540 -720 {
lab=vsignal}
N 320 -1360 320 -1040 {
lab=vsignal}
N 320 -1360 540 -1360 {
lab=vsignal}
N 840 -740 840 -700 {
lab=vcomp_lower}
N 840 -1380 840 -1340 {
lab=vcomp_upper}
N 700 -1340 840 -1340 {
lab=vcomp_upper}
N 480 -540 500 -540 {
lab=vdac_lower}
N 500 -680 500 -540 {
lab=vdac_lower}
N 480 -1180 500 -1180 {
lab=vdac_upper}
N 500 -1320 500 -1180 {
lab=vdac_upper}
N 2040 -420 2080 -420 {lab=do_idle_led}
N 240 -1040 320 -1040 {lab=vsignal}
N 2040 -1200 2080 -1200 {
lab=di_trigger_start_sampling}
N 2040 -1020 2080 -1020 {
lab=di_trigger_start_mode}
N 2040 -980 2080 -980 {
lab=di_adaptive_mode}
N 2040 -940 2080 -940 {
lab=di_control_mode}
N 2040 -900 2080 -900 {
lab=di_signal_select_in}
N 2040 -860 2080 -860 {
lab=di_enable}
N 2040 -820 2080 -820 {
lab=di_select_tbs_delta_steps}
N 2040 -640 2080 -640 {lab=di_uart_rx}
N 2040 -600 2080 -600 {lab=do_uart_tx}
N 2040 -380 2080 -380 {lab=do_overflow_led}
N 2040 -340 2080 -340 {lab=do_underflow_led}
N 840 -1340 1440 -1340 {lab=vcomp_upper}
N 840 -700 1440 -700 {lab=vcomp_lower}
C {devices/iopin.sym} 1740 -1460 3 0 {name=p1 lab=VDD_DIG}
C {devices/iopin.sym} 600 -1240 1 0 {name=p2 lab=VSS}
C {devices/iopin.sym} 600 -1440 3 0 {name=p5 lab=VDD_COMP}
C {devices/ipin.sym} 240 -1040 0 0 {name=p6 lab=vsignal}
C {devices/lab_pin.sym} 1740 -260 3 0 {name=p9 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} 1000 -280 3 0 {name=p8 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} 1000 -920 3 0 {name=p10 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} 600 -600 3 0 {name=p11 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} 600 -800 1 0 {name=p12 sig_type=std_logic lab=VDD_COMP}
C {devices/lab_pin.sym} 1000 -540 1 0 {name=p14 sig_type=std_logic lab=VDD_DAC}
C {devices/ipin.sym} 2080 -1380 0 1 {name=p21 lab=di_clock}
C {devices/ipin.sym} 2080 -1340 0 1 {name=p22 lab=di_reset_n}
C {devices/title-3.sym} 0 0 0 0 {name=l1 author="Simon Dorrer" rev=1.0 lock=true}
C {devices/iopin.sym} 1000 -1180 3 0 {name=p13 lab=VDD_DAC}
C {lab_wire.sym} 840 -1380 0 1 {name=p20 sig_type=std_logic lab=vcomp_upper}
C {lab_wire.sym} 840 -740 0 1 {name=p3 sig_type=std_logic lab=vcomp_lower}
C {devices/ipin.sym} 2080 -640 2 0 {name=p4 lab=di_uart_rx}
C {opin.sym} 2080 -600 0 0 {name=p15 lab=do_uart_tx}
C {ipin.sym} 2080 -1200 2 0 {name=p16 lab=di_trigger_start_sampling}
C {ipin.sym} 2080 -1020 2 0 {name=p17 lab=di_trigger_start_mode}
C {ipin.sym} 2080 -980 2 0 {name=p18 lab=di_adaptive_mode}
C {ipin.sym} 2080 -940 2 0 {name=p23 lab=di_control_mode}
C {ipin.sym} 2080 -900 2 0 {name=p24 lab=di_signal_select_in}
C {ipin.sym} 2080 -860 2 0 {name=p25 lab=di_enable}
C {ipin.sym} 2080 -820 2 0 {name=p26 lab=di_select_tbs_delta_steps}
C {opin.sym} 2080 -420 0 0 {name=p27 lab=do_idle_led}
C {opin.sym} 2080 -380 0 0 {name=p28 lab=do_overflow_led}
C {opin.sym} 2080 -340 0 0 {name=p29 lab=do_underflow_led}
C {digital_core/atbs_core_floating_window_board.sym} 1740 -860 0 0 {name=x5}
C {dac/ideal/dac_ideal.sym} 960 -1050 0 1 {name=x3}
C {dac/ideal/dac_ideal.sym} 960 -410 0 1 {name=x4}
C {opin.sym} 480 -1180 0 1 {name=p32 lab=vdac_upper}
C {opin.sym} 480 -540 0 1 {name=p7 lab=vdac_lower}
C {comparator/continuous_time/ideal/CT_comparator_ideal.sym} 600 -1340 0 0 {name=x1 A=10k Rin=10Meg Rout=100 Vcm=0.75 Voffs=1m tpd=1n}
C {comparator/continuous_time/ideal/CT_comparator_ideal.sym} 600 -700 0 0 {name=x2 A=10k Rin=10Meg Rout=100 Vcm=0.75 Voffs=1m tpd=1n}
