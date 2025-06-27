v {xschem version=3.4.6 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
B 2 1760 -1680 2560 -1280 {flags=graph
y1=-9.3e-11
y2=8e-11
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
node="\\"Ileak CB; i(vout_x1)\\""
color=4
dataset=-1
unitx=1
logx=0
logy=0
hilight_wave=2
linewidth_mult=4}
B 2 2600 -1680 3400 -1280 {flags=graph
y1=-9.3e-11
y2=8e-11
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
node="\\"Ileak CA; i(vout_x2)\\""
color=4
dataset=-1
unitx=1
logx=0
logy=0
hilight_wave=2
linewidth_mult=4}
B 2 1760 -880 2560 -480 {flags=graph
y1=-1.4e-10
y2=2.3e-10
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
node="\\"Ileak CB, High-Z; i(vout_x3)\\"
\\"Ileak CA, High-Z; i(vout_x4)\\""
color="4 7"
dataset=-1
unitx=1
logx=0
logy=0
hilight_wave=2
linewidth_mult=4}
B 2 2600 -880 3400 -480 {flags=graph
y1=-1.4e-10
y2=2.3e-10
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
node="\\"Ileak CB, High-Z; i(vout_x5)\\"
\\"Ileak CA, High-Z; i(vout_x6)\\""
color="4 7"
dataset=-1
unitx=1
logx=0
logy=0
hilight_wave=2
linewidth_mult=4}
T {SPDT Switch:
di_spdt_ctrl = 1: v_c connected to v_a, v_b = HIGH-Z
di_spdt_ctrl = 0: v_c connected to v_b, v_a = HIGH-Z} 700 -1760 0 0 0.4 0.4 {}
T {Testbench for Ileak analysis - SPDT Switch} 1160 -2140 0 0 1 1 {}
T {SPDT Switch with High-Z:
di_spdt_ctrl = 1, di_spdt_hz = 0: v_c connected to v_a, v_b = High-Z
di_spdt_ctrl = 0, di_spdt_hz = 0: v_c connected to v_b, v_a = High-Z
di_spdt_ctrl = X, di_spdt_hz = 1: v_b = High-Z, v_a = High-Z} 700 -1180 0 0 0.4 0.4 {}
T {di_spdt_ctrl = 1, di_spdt_hz = 1:} 1760 -920 0 0 0.4 0.4 {}
T {di_spdt_ctrl = 0, di_spdt_hz = 1:} 2600 -920 0 0 0.4 0.4 {}
T {di_spdt_ctrl = 1:} 1760 -1720 0 0 0.4 0.4 {}
T {di_spdt_ctrl = 0:} 2600 -1720 0 0 0.4 0.4 {}
N 1300 -1600 1300 -1580 {
lab=VDD}
N 1340 -1600 1340 -1580 {
lab=vin_spdt}
N 740 -1600 740 -1580 {
lab=VDD}
N 780 -1600 780 -1580 {
lab=vin_spdt}
N 800 -1460 800 -1420 {
lab=vout_b_spdt_ca}
N 940 -1420 1000 -1420 {
lab=vout_b_spdt_ca}
N 940 -1340 940 -1320 {
lab=GND}
N 780 -1600 1000 -1600 {
lab=vin_spdt}
N 1320 -1460 1320 -1420 {
lab=vout_a_spdt_cb}
N 1500 -1340 1500 -1320 {
lab=GND}
N 1500 -1420 1560 -1420 {
lab=vout_a_spdt_cb}
N 1340 -1600 1560 -1600 {
lab=vin_spdt}
N 840 -1520 940 -1520 {
lab=VDD}
N 1400 -1520 1500 -1520 {
lab=GND}
N 1500 -1420 1500 -1400 {
lab=vout_a_spdt_cb}
N 1320 -1420 1500 -1420 {
lab=vout_a_spdt_cb}
N 940 -1420 940 -1400 {
lab=vout_b_spdt_ca}
N 800 -1420 940 -1420 {
lab=vout_b_spdt_ca}
N 720 -1860 720 -1820 {
lab=GND}
N 720 -1960 720 -1920 {
lab=VDD}
N 840 -1860 840 -1820 {
lab=GND}
N 840 -1960 840 -1920 {
lab=vin_spdt}
N 1500 -1520 1500 -1500 {lab=GND}
N 940 -1540 940 -1520 {lab=VDD}
N 1360 -1000 1360 -980 {
lab=vin_spdt}
N 1520 -800 1580 -800 {
lab=vout_b_spdt_hz_cb}
N 1360 -1000 1580 -1000 {
lab=vin_spdt}
N 1420 -920 1520 -920 {
lab=GND}
N 1520 -800 1520 -780 {
lab=vout_b_spdt_hz_cb}
N 1520 -920 1520 -900 {lab=GND}
N 1400 -800 1520 -800 {lab=vout_b_spdt_hz_cb}
N 1300 -1000 1300 -980 {lab=VDD}
N 740 -1000 740 -980 {
lab=VDD}
N 800 -1000 800 -980 {
lab=vin_spdt}
N 960 -800 1020 -800 {
lab=vout_b_spdt_hz_ca}
N 960 -720 960 -700 {
lab=GND}
N 800 -1000 1020 -1000 {
lab=vin_spdt}
N 900 -920 960 -920 {
lab=VDD}
N 960 -800 960 -780 {
lab=vout_b_spdt_hz_ca}
N 840 -800 960 -800 {
lab=vout_b_spdt_hz_ca}
N 960 -940 960 -920 {lab=VDD}
N 860 -900 900 -900 {lab=VDD}
N 900 -920 900 -900 {lab=VDD}
N 860 -920 900 -920 {
lab=VDD}
N 1420 -900 1460 -900 {lab=VDD}
N 740 -840 740 -820 {lab=GND}
N 1520 -720 1520 -700 {
lab=GND}
N 1300 -840 1300 -820 {lab=GND}
N 1360 -600 1360 -580 {
lab=vin_spdt}
N 960 -320 960 -300 {
lab=GND}
N 1360 -600 1580 -600 {
lab=vin_spdt}
N 1420 -520 1520 -520 {
lab=GND}
N 1520 -520 1520 -500 {lab=GND}
N 1300 -600 1300 -580 {lab=VDD}
N 740 -600 740 -580 {
lab=VDD}
N 800 -600 800 -580 {
lab=vin_spdt}
N 800 -600 1020 -600 {
lab=vin_spdt}
N 900 -520 960 -520 {
lab=VDD}
N 960 -540 960 -520 {lab=VDD}
N 860 -500 900 -500 {lab=VDD}
N 900 -520 900 -500 {lab=VDD}
N 860 -520 900 -520 {
lab=VDD}
N 1420 -500 1460 -500 {lab=VDD}
N 740 -440 740 -420 {lab=GND}
N 760 -440 760 -400 {lab=vout_a_spdt_hz_ca}
N 960 -400 1020 -400 {lab=vout_a_spdt_hz_ca}
N 1520 -320 1520 -300 {
lab=GND}
N 1520 -400 1520 -380 {lab=vout_a_spdt_hz_cb}
N 1300 -440 1300 -420 {lab=GND}
N 1520 -400 1580 -400 {lab=vout_a_spdt_hz_cb}
N 960 -400 960 -380 {lab=vout_a_spdt_hz_ca}
N 760 -400 960 -400 {lab=vout_a_spdt_hz_ca}
N 1300 -1460 1300 -1440 {lab=GND}
N 740 -1460 740 -1440 {lab=GND}
N 1320 -440 1320 -400 {lab=vout_a_spdt_hz_cb}
N 1320 -400 1520 -400 {lab=vout_a_spdt_hz_cb}
N 840 -840 840 -800 {lab=vout_b_spdt_hz_ca}
N 1400 -840 1400 -800 {lab=vout_b_spdt_hz_cb}
C {devices/vdd.sym} 1300 -1600 0 0 {name=l10 lab=VDD}
C {devices/gnd.sym} 1300 -1440 0 1 {name=l13 lab=GND}
C {devices/vdd.sym} 740 -1600 0 0 {name=l3 lab=VDD}
C {devices/gnd.sym} 740 -1440 0 1 {name=l4 lab=GND}
C {devices/lab_wire.sym} 1000 -1600 0 1 {name=p2 sig_type=std_logic lab=vin_spdt}
C {devices/gnd.sym} 1500 -1500 0 0 {name=l9 lab=GND}
C {devices/vdd.sym} 940 -1540 0 0 {name=l5 lab=VDD}
C {devices/lab_wire.sym} 1000 -1420 2 0 {name=p6 sig_type=std_logic lab=vout_b_spdt_ca}
C {devices/lab_wire.sym} 1560 -1420 0 1 {name=p7 sig_type=std_logic lab=vout_a_spdt_cb}
C {devices/vsource.sym} 940 -1370 0 0 {name=vout_x1 value=0.75
}
C {devices/vsource.sym} 1500 -1370 0 0 {name=vout_x2 value=0.75
}
C {devices/lab_wire.sym} 1560 -1600 0 1 {name=p1 sig_type=std_logic lab=vin_spdt}
C {devices/gnd.sym} 940 -1320 0 0 {name=l7 lab=GND}
C {devices/gnd.sym} 1500 -1320 0 0 {name=l11 lab=GND}
C {devices/code_shown.sym} 80 -350 0 0 {name=MODEL only_toplevel=true
format="tcleval( @value )"
value="
.lib cornerMOSlv.lib mos_tt
.lib cornerRES.lib res_typ
"}
C {code_shown.sym} 80 -1970 0 0 {name=NGSPICE
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
write spdt_switch_tb_dc_Ileak.raw
set appendwrite

* DC Sweep Analysis x1
dc vin 0 1.5 10m vout_x1 0 1.5 0.25
write spdt_switch_tb_dc_Ileak.raw
set appendwrite

*Off-Leakage Current v_c to v_b
let Ileak_cb = I(vout_x1)
plot Ileak_cb

* DC Sweep Analysis x2
dc vin 0 1.5 10m vout_x2 0 1.5 0.25
write spdt_switch_tb_dc_Ileak.raw

*Off-Leakage Current v_c to v_a
let Ileak_ca = I(vout_x2)
plot Ileak_ca

* DC Sweep Analysis x3
dc vin 0 1.5 10m vout_x3 0 1.5 0.25
write spdt_switch_tb_dc_Ileak.raw

*Off-Leakage Current v_c to v_b in High-Z
let Ileak_cb_hz = I(vout_x3)
plot Ileak_cb_hz

* DC Sweep Analysis x4
dc vin 0 1.5 10m vout_x4 0 1.5 0.25
write spdt_switch_tb_dc_Ileak.raw

*Off-Leakage Current v_c to v_a in High-Z
let Ileak_ca_hz = I(vout_x4)
plot Ileak_ca_hz

* DC Sweep Analysis x5
dc vin 0 1.5 10m vout_x5 0 1.5 0.25
write spdt_switch_tb_dc_Ileak.raw

*Off-Leakage Current v_c to v_b in High-Z
let Ileak_cb_hz = I(vout_x5)
plot Ileak_cb_hz

* DC Sweep Analysis x6
dc vin 0 1.5 10m vout_x6 0 1.5 0.25
write spdt_switch_tb_dc_Ileak.raw

*Off-Leakage Current v_c to v_a in High-Z
let Ileak_ca_hz = I(vout_x6)
plot Ileak_ca_hz

*quit
.endc"}
C {devices/launcher.sym} 1820 -1960 0 0 {name=h2
descr="Simulate" 
tclcommand="xschem save; xschem netlist; xschem simulate"
}
C {devices/launcher.sym} 1820 -1840 0 0 {name=h1
descr="Load waves" 
tclcommand="xschem raw_read $netlist_dir/spdt_switch_tb_dc_Ileak.raw dc"
}
C {devices/launcher.sym} 1820 -1900 0 0 {name=h3
descr="Annotate OP" 
tclcommand="set show_hidden_texts 1; xschem annotate_op"
}
C {devices/vsource.sym} 720 -1890 0 0 {name=VDD value="1.5"}
C {devices/gnd.sym} 720 -1820 0 0 {name=l6 lab=GND}
C {devices/vdd.sym} 720 -1960 0 0 {name=l8 lab=VDD}
C {devices/vsource.sym} 840 -1890 0 0 {name=vin value=0.75
}
C {devices/gnd.sym} 840 -1820 0 0 {name=l1 lab=GND}
C {devices/lab_wire.sym} 840 -1960 0 1 {name=p3 sig_type=std_logic lab=vin_spdt}
C {spdt_switch/spdt_switch.sym} 780 -1520 0 0 {name=x1 W_P_TG=\{W_P\} L_P_TG=\{L_P\} W_N_TG=\{W_N\} L_N_TG=\{L_N\}}
C {spdt_switch/spdt_switch.sym} 1340 -1520 0 0 {name=x2 W_P_TG=\{W_P\} L_P_TG=\{L_P\} W_N_TG=\{W_N\} L_N_TG=\{L_N\}}
C {devices/vdd.sym} 1300 -1000 0 0 {name=l17 lab=VDD}
C {devices/gnd.sym} 1300 -820 0 1 {name=l18 lab=GND}
C {devices/gnd.sym} 1520 -900 0 0 {name=l19 lab=GND}
C {devices/lab_wire.sym} 1580 -400 0 1 {name=p8 sig_type=std_logic lab=vout_a_spdt_hz_cb}
C {devices/lab_wire.sym} 1580 -1000 0 1 {name=p9 sig_type=std_logic lab=vin_spdt}
C {spdt_switch/spdt_hz_switch.sym} 1340 -920 0 0 {name=x4 W_P_TG=\{W_P\} L_P_TG=\{L_P\} W_N_TG=\{W_N\} L_N_TG=\{L_N\}}
C {devices/vdd.sym} 740 -1000 0 0 {name=l12 lab=VDD}
C {devices/gnd.sym} 740 -820 0 1 {name=l14 lab=GND}
C {devices/lab_wire.sym} 1020 -1000 0 1 {name=p4 sig_type=std_logic lab=vin_spdt}
C {devices/vdd.sym} 960 -940 0 0 {name=l15 lab=VDD}
C {devices/lab_wire.sym} 1020 -800 2 0 {name=p5 sig_type=std_logic lab=vout_b_spdt_hz_ca
}
C {devices/vsource.sym} 960 -750 0 0 {name=vout_x3 value=0.75
}
C {devices/gnd.sym} 960 -700 0 0 {name=l16 lab=GND}
C {spdt_switch/spdt_hz_switch.sym} 780 -920 0 0 {name=x3 W_P_TG=\{W_P\} L_P_TG=\{L_P\} W_N_TG=\{W_N\} L_N_TG=\{L_N\}}
C {devices/vdd.sym} 1460 -900 1 0 {name=l21 lab=VDD}
C {devices/vsource.sym} 1520 -750 0 0 {name=vout_x5 value=0.75
}
C {devices/gnd.sym} 1520 -700 0 0 {name=l22 lab=GND}
C {title-2.sym} 0 10 0 0 {name=l24 author="Simon Dorrer" rev=1.0 lock=true}
C {devices/vdd.sym} 1300 -600 0 0 {name=l2 lab=VDD}
C {devices/gnd.sym} 1300 -420 0 1 {name=l25 lab=GND}
C {devices/gnd.sym} 1520 -500 0 0 {name=l26 lab=GND}
C {devices/vsource.sym} 960 -350 0 0 {name=vout_x4 value=0.75
}
C {devices/lab_wire.sym} 1580 -600 0 1 {name=p13 sig_type=std_logic lab=vin_spdt}
C {devices/gnd.sym} 960 -300 0 0 {name=l27 lab=GND}
C {spdt_switch/spdt_hz_switch.sym} 1340 -520 0 0 {name=x5 W_P_TG=\{W_P\} L_P_TG=\{L_P\} W_N_TG=\{W_N\} L_N_TG=\{L_N\}}
C {devices/vdd.sym} 740 -600 0 0 {name=l28 lab=VDD}
C {devices/gnd.sym} 740 -420 0 1 {name=l29 lab=GND}
C {devices/lab_wire.sym} 1020 -600 0 1 {name=p14 sig_type=std_logic lab=vin_spdt}
C {devices/vdd.sym} 960 -540 0 0 {name=l30 lab=VDD}
C {spdt_switch/spdt_hz_switch.sym} 780 -520 0 0 {name=x6 W_P_TG=\{W_P\} L_P_TG=\{L_P\} W_N_TG=\{W_N\} L_N_TG=\{L_N\}}
C {devices/vdd.sym} 1460 -500 1 0 {name=l32 lab=VDD}
C {devices/lab_wire.sym} 1020 -400 0 1 {name=p16 sig_type=std_logic lab=vout_a_spdt_hz_ca}
C {devices/vsource.sym} 1520 -350 0 0 {name=vout_x6 value=0.75
}
C {devices/gnd.sym} 1520 -300 0 1 {name=l34 lab=GND}
C {devices/lab_wire.sym} 1580 -800 0 1 {name=p17 sig_type=std_logic lab=vout_b_spdt_hz_cb}
