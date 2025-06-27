v {xschem version=3.4.6 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
B 2 1600 -1460 2400 -1060 {flags=graph
y1=530
y2=3200
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=0
x2=1.5
divx=5
subdivx=1
xlabmag=1.0
ylabmag=1.0
node="\\"r_on_ca; vout_a_spdt_ca vin_spdt - i(vds_x1) /\\""
color=4
dataset=-1
unitx=1
logx=0
logy=0
hilight_wave=2
linewidth_mult=4}
B 2 1600 -1020 2400 -620 {flags=graph
y1=530
y2=3200
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=0
x2=1.5
divx=5
subdivx=1
xlabmag=1.0
ylabmag=1.0
node="\\"r_on_cb; vout_b_spdt_cb vin_spdt - i(vds_x2) /\\""
color=4
dataset=-1
unitx=1
logx=0
logy=0
hilight_wave=2
linewidth_mult=4}
B 2 1600 -580 2400 -180 {flags=graph
y1=1000
y2=6300
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=0
x2=1.5
divx=5
subdivx=1
xlabmag=1.0
ylabmag=1.0
node="\\"r_on_ca, High-Z; vout_a_spdt_hz_ca vin_spdt - i(vds_x3) /\\""
color=4
dataset=-1
unitx=1
logx=0
logy=0
hilight_wave=2
linewidth_mult=4}
T {SPDT Switch:
di_spdt_ctrl = 1: v_c connected to v_a, v_b = HIGH-Z
di_spdt_ctrl = 0: v_c connected to v_b, v_a = HIGH-Z} 820 -1550 0 0 0.4 0.4 {}
T {Testbench for Ron analysis - SPDT Switch} 660 -1740 0 0 1 1 {}
T {SPDT Switch with High-Z:
di_spdt_ctrl = 1, di_spdt_hz = 0: v_c connected to v_a, v_b = High-Z
di_spdt_ctrl = 0, di_spdt_hz = 0: v_c connected to v_b, v_a = High-Z
di_spdt_ctrl = X, di_spdt_hz = 1: v_b = High-Z, v_a = High-Z} 820 -630 0 0 0.4 0.4 {}
N 960 -1080 960 -1060 {
lab=VDD}
N 1000 -1080 1000 -1060 {
lab=vin_spdt}
N 960 -1420 960 -1400 {
lab=VDD}
N 1000 -1420 1000 -1400 {
lab=vin_spdt}
N 1280 -1420 1320 -1420 {
lab=vin_spdt}
N 980 -1280 980 -1240 {
lab=vout_a_spdt_ca}
N 1280 -1240 1320 -1240 {
lab=vout_a_spdt_ca}
N 1020 -940 1020 -920 {
lab=vout_b_spdt_cb}
N 1280 -920 1320 -920 {
lab=vout_b_spdt_cb}
N 960 -1280 960 -1240 {
lab=GND}
N 960 -940 960 -900 {
lab=GND}
N 1280 -1080 1280 -1030 {
lab=vin_spdt}
N 1280 -970 1280 -920 {
lab=vout_b_spdt_cb}
N 1280 -1300 1280 -1240 {
lab=vout_a_spdt_ca}
N 1280 -1420 1280 -1360 {
lab=vin_spdt}
N 1280 -1080 1320 -1080 {
lab=vin_spdt}
N 980 -1240 1280 -1240 {
lab=vout_a_spdt_ca}
N 1000 -1420 1280 -1420 {
lab=vin_spdt}
N 1000 -1080 1280 -1080 {
lab=vin_spdt}
N 1020 -920 1280 -920 {
lab=vout_b_spdt_cb}
N 520 -320 520 -280 {
lab=GND}
N 520 -420 520 -380 {
lab=VDD}
N 640 -320 640 -280 {
lab=GND}
N 640 -420 640 -380 {
lab=vin_spdt}
N 1060 -1340 1160 -1340 {
lab=VDD}
N 1160 -1360 1160 -1340 {lab=VDD}
N 1060 -1000 1160 -1000 {lab=GND}
N 1160 -1000 1160 -980 {lab=GND}
N 960 -460 960 -440 {
lab=VDD}
N 1020 -460 1020 -440 {
lab=vin_spdt}
N 1260 -460 1300 -460 {
lab=vin_spdt}
N 1260 -260 1300 -260 {
lab=vout_a_spdt_hz_ca}
N 1180 -400 1180 -380 {lab=VDD}
N 1080 -360 1180 -360 {lab=GND}
N 1080 -380 1180 -380 {
lab=VDD}
N 960 -300 960 -280 {lab=GND}
N 1180 -360 1180 -330 {lab=GND}
N 1260 -330 1260 -260 {
lab=vout_a_spdt_hz_ca}
N 1260 -460 1260 -390 {lab=vin_spdt}
N 1020 -460 1260 -460 {
lab=vin_spdt}
N 980 -300 980 -260 {lab=vout_a_spdt_hz_ca}
N 980 -260 1260 -260 {lab=vout_a_spdt_hz_ca}
C {devices/vdd.sym} 960 -1080 0 0 {name=l10 lab=VDD}
C {devices/gnd.sym} 960 -900 0 0 {name=l13 lab=GND}
C {devices/vdd.sym} 960 -1420 0 0 {name=l3 lab=VDD}
C {devices/gnd.sym} 960 -1240 0 0 {name=l4 lab=GND}
C {devices/lab_wire.sym} 1320 -1420 0 1 {name=p2 sig_type=std_logic lab=vin_spdt}
C {devices/title-3.sym} 0 0 0 0 {name=l2 author="Simon Dorrer" rev=1.0 lock=true}
C {devices/lab_wire.sym} 1320 -1240 2 0 {name=p6 sig_type=std_logic lab=vout_a_spdt_ca}
C {devices/lab_wire.sym} 1320 -920 0 1 {name=p7 sig_type=std_logic lab=vout_b_spdt_cb}
C {devices/vsource.sym} 1280 -1330 0 0 {name=vds_x1 value=1mV
}
C {devices/vsource.sym} 1280 -1000 0 0 {name=vds_x2 value=1mV
}
C {devices/lab_wire.sym} 1320 -1080 0 1 {name=p1 sig_type=std_logic lab=vin_spdt}
C {devices/code_shown.sym} 120 -250 0 0 {name=MODEL only_toplevel=true
format="tcleval( @value )"
value="
.lib cornerMOSlv.lib mos_tt
.lib cornerRES.lib res_typ
"}
C {code_shown.sym} 120 -1610 0 0 {name=NGSPICE
only_toplevel=true
value="
.param temp=27
.param W_N=1u
.param L_N=0.13u
.param W_P=1u
.param L_P=0.13u
.options savecurrents
.control
save all

* Operating Point Analysis
op
remzerovec
write spdt_switch_tb_dc_Ron.raw
set appendwrite

* DC Sweep Analysis
dc vin 0 1.5 0.01
write spdt_switch_tb_dc_Ron.raw

* On-Resistance v_c to v_a
let r_on_ca = (v(vout_a_spdt_ca)-v(vin_spdt))/I(vds_x1)
plot r_on_ca xlabel 'Vin in V' ylabel 'Ron in Ohm'

* On-Resistance v_c to v_b
let r_on_cb = (v(vout_b_spdt_cb)-v(vin_spdt))/I(vds_x2)
plot r_on_cb xlabel 'Vin in V' ylabel 'Ron in Ohm'

* On-Resistance v_c to v_a with High-Z TG
let r_on_ca = (v(vout_a_spdt_hz_ca)-v(vin_spdt))/I(vds_x3)
plot r_on_ca xlabel 'Vin in V' ylabel 'Ron in Ohm'

*quit
.endc"}
C {devices/launcher.sym} 1670 -1630 0 0 {name=h2
descr="Simulate" 
tclcommand="xschem save; xschem netlist; xschem simulate"
}
C {devices/launcher.sym} 1670 -1510 0 0 {name=h1
descr="Load waves" 
tclcommand="xschem raw_read $netlist_dir/spdt_switch_tb_dc_Ron.raw dc"
}
C {devices/launcher.sym} 1670 -1570 0 0 {name=h3
descr="Annotate OP" 
tclcommand="set show_hidden_texts 1; xschem annotate_op"
}
C {devices/vsource.sym} 520 -350 0 0 {name=VDD value="1.5"}
C {devices/gnd.sym} 520 -280 0 0 {name=l6 lab=GND}
C {devices/vdd.sym} 520 -420 0 0 {name=l8 lab=VDD}
C {devices/vsource.sym} 640 -350 0 0 {name=vin value=0.75
}
C {devices/gnd.sym} 640 -280 0 0 {name=l1 lab=GND}
C {devices/lab_wire.sym} 640 -420 0 1 {name=p3 sig_type=std_logic lab=vin_spdt}
C {devices/vdd.sym} 1160 -1360 0 0 {name=l5 lab=VDD}
C {devices/gnd.sym} 1160 -980 0 0 {name=l7 lab=GND}
C {spdt_switch/spdt_switch.sym} 1000 -1340 0 0 {name=x1 W_P_TG=\{W_P\} L_P_TG=\{L_P\} W_N_TG=\{W_N\} L_N_TG=\{L_N\}}
C {spdt_switch/spdt_switch.sym} 1000 -1000 0 0 {name=x2 W_P_TG=\{W_P\} L_P_TG=\{L_P\} W_N_TG=\{W_N\} L_N_TG=\{L_N\}}
C {devices/vdd.sym} 960 -460 0 0 {name=l12 lab=VDD}
C {devices/gnd.sym} 960 -280 0 1 {name=l14 lab=GND}
C {devices/lab_wire.sym} 1300 -460 0 1 {name=p4 sig_type=std_logic lab=vin_spdt}
C {devices/vdd.sym} 1180 -400 0 0 {name=l15 lab=VDD}
C {devices/lab_wire.sym} 1300 -260 2 0 {name=p5 sig_type=std_logic lab=vout_a_spdt_hz_ca
}
C {spdt_switch/spdt_hz_switch.sym} 1000 -380 0 0 {name=x3 W_P_TG=\{W_P\} L_P_TG=\{L_P\} W_N_TG=\{W_N\} L_N_TG=\{L_N\}}
C {devices/gnd.sym} 1180 -330 0 0 {name=l9 lab=GND}
C {devices/vsource.sym} 1260 -360 0 0 {name=vds_x3 value=1mV
}
