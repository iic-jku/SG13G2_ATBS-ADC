v {xschem version=3.4.7 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
B 2 1600 -1320 2400 -920 {flags=graph
y1=-0.32
y2=3.4
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=0
x2=4e-07
divx=5
subdivx=1
xlabmag=1.0
ylabmag=1.0


dataset=-1
unitx=1
logx=0
logy=0
color="7 4 10"
node="a_1v5
b_3v3
x1.t"
linewidth_mult=2}
B 2 1600 -840 2400 -440 {flags=graph
y1=-0.00089
y2=3.3
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=0
x2=4e-07
divx=5
subdivx=1
xlabmag=1.0
ylabmag=1.0


dataset=-1
unitx=1
logx=0
logy=0
color="7 4 10"
node="a_3v3
b_1v5
x2.t"
linewidth_mult=2}
T {Testbench for transient analysis - Level-Up/Down-Shifter} 560 -1720 0 0 1 1 {}
T {Shift from 1.5V to 3.3V} 1020 -1310 0 0 0.5 0.5 {}
T {Shift from 3.3V to 1.5V} 1020 -830 0 0 0.5 0.5 {}
N 920 -1120 920 -1060 {
lab=A_1V5}
N 920 -1000 920 -940 {
lab=GND}
N 920 -1120 1080 -1120 {
lab=A_1V5}
N 500 -1000 500 -940 {
lab=GND}
N 900 -1120 920 -1120 {
lab=A_1V5}
N 500 -1120 500 -1060 {
lab=VDD_1V5}
N 660 -1000 660 -940 {
lab=GND}
N 660 -1120 660 -1060 {
lab=VDD_3V3}
N 1400 -1120 1480 -1120 {lab=B_3V3}
N 1160 -1040 1160 -940 {lab=GND}
N 1120 -1220 1120 -1200 {lab=VDD_1V5}
N 1200 -1220 1200 -1200 {lab=VDD_3V3}
N 920 -640 920 -580 {
lab=A_3V3}
N 920 -520 920 -460 {
lab=GND}
N 920 -640 1080 -640 {
lab=A_3V3}
N 900 -640 920 -640 {
lab=A_3V3}
N 1400 -640 1480 -640 {lab=B_1V5}
N 1160 -560 1160 -460 {lab=GND}
N 1120 -740 1120 -720 {lab=VDD_3V3}
N 1200 -740 1200 -720 {lab=VDD_1V5}
N 1400 -1120 1400 -1060 {lab=B_3V3}
N 1240 -1120 1400 -1120 {lab=B_3V3}
N 1400 -1000 1400 -940 {lab=GND}
N 1400 -640 1400 -580 {lab=B_1V5}
N 1240 -640 1400 -640 {lab=B_1V5}
N 1400 -520 1400 -460 {lab=GND}
C {devices/code_shown.sym} 100 -1490 0 0 {name=MODEL only_toplevel=true
format="tcleval( @value )"
value="
.lib cornerMOSlv.lib mos_tt
.lib cornerMOShv.lib mos_tt
.lib cornerRES.lib res_typ
"}
C {devices/code_shown.sym} 100 -630 0 0 {name=NGSPICE
only_toplevel=true 
value="
.param temp=27
.options savecurrents
.control
save all

* Operating Point Analysis
op
remzerovec
write level_shifter_tb_tran.raw
set appendwrite

* Transient Analysis
tran 100p 400n
write level_shifter_tb_tran.raw

* Writing Data
set wr_singlescale
set wr_vecnames
let x1t = x1.t
let x2t = x2.t
wrdata /foss/designs/SG13G2_ATBS-ADC-main/python/plot_simulations/data/level_shifter_tb_tran.txt v(a_1V5) v(b_3V3) v(x1t) v(a_3V3) v(b_1V5) v(x2t)

quit
.endc
"}
C {devices/gnd.sym} 1400 -940 0 0 {name=l1 lab=GND}
C {devices/vsource.sym} 500 -1030 0 0 {name=VDD_1V5 value=1.5}
C {devices/gnd.sym} 500 -940 0 0 {name=l3 lab=GND}
C {devices/launcher.sym} 1660 -1500 0 0 {name=h2
descr="Simulate" 
tclcommand="xschem save; xschem netlist; xschem simulate"
}
C {lab_pin.sym} 900 -1120 0 0 {name=p2 sig_type=std_logic lab=A_1V5}
C {devices/vsource.sym} 920 -1030 0 0 {name=vA_1V5 value="pulse(0, 1.5, 0, 1n, 1n, 200n, 400n)"}
C {devices/capa.sym} 1400 -1030 0 0 {name=C1
m=1
value=1p
footprint=1206
device="ceramic capacitor"}
C {devices/gnd.sym} 920 -940 0 0 {name=l5 lab=GND}
C {lab_pin.sym} 1480 -1120 0 1 {name=p1 sig_type=std_logic lab=B_3V3}
C {devices/launcher.sym} 1660 -1380 0 0 {name=h1
descr="Load waves" 
tclcommand="xschem raw_read $netlist_dir/level_shifter_tb_tran.raw tran"
}
C {devices/launcher.sym} 1660 -1440 0 0 {name=h3
descr="Annotate OP" 
tclcommand="set show_hidden_texts 1; xschem annotate_op"
}
C {vdd.sym} 500 -1120 0 0 {name=l7 lab=VDD_1V5}
C {title-3.sym} 0 0 0 0 {name=l2 author="Simon Dorrer" rev=1.0 lock=true}
C {devices/vsource.sym} 660 -1030 0 0 {name=VDD_3V3 value=3.3}
C {devices/gnd.sym} 660 -940 0 0 {name=l8 lab=GND}
C {vdd.sym} 660 -1120 0 0 {name=l9 lab=VDD_3V3}
C {devices/gnd.sym} 1160 -940 0 0 {name=l4 lab=GND}
C {vdd.sym} 1120 -1220 0 0 {name=l6 lab=VDD_1V5}
C {vdd.sym} 1200 -1220 0 0 {name=l10 lab=VDD_3V3}
C {devices/gnd.sym} 1400 -460 0 0 {name=l11 lab=GND}
C {lab_pin.sym} 900 -640 0 0 {name=p3 sig_type=std_logic lab=A_3V3}
C {devices/vsource.sym} 920 -550 0 0 {name=vA_3V3 value="pulse(0, 3.3, 0, 1n, 1n, 200n, 400n)"}
C {devices/capa.sym} 1400 -550 0 0 {name=C2
m=1
value=1p
footprint=1206
device="ceramic capacitor"}
C {devices/gnd.sym} 920 -460 0 0 {name=l12 lab=GND}
C {lab_pin.sym} 1480 -640 0 1 {name=p4 sig_type=std_logic lab=B_1V5}
C {devices/gnd.sym} 1160 -460 0 0 {name=l13 lab=GND}
C {vdd.sym} 1120 -740 0 0 {name=l14 lab=VDD_3V3}
C {vdd.sym} 1200 -740 0 0 {name=l15 lab=VDD_1V5}
C {level_shifter/level_up_shifter.sym} 1160 -1120 0 0 {name=x1 W_P_HV=3.0u L_P_HV=0.50u W_N_HV=10.0u L_N_HV=0.50u W_P_LV=1.0u L_P_LV=0.13u W_N_LV=1.0u L_N_LV=0.13u}
C {level_shifter/level_down_shifter.sym} 1160 -640 0 0 {name=x2 W_P_HV=3.0u L_P_HV=0.50u W_N_HV=1.0u L_N_HV=0.50u W_P_LV=3.0u L_P_LV=0.13u W_N_LV=10.0u L_N_LV=0.13u}
