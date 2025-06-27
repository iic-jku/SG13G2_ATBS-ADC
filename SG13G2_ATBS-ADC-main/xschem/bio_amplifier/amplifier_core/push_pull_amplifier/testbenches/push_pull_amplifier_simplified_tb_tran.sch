v {xschem version=3.4.7 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
B 2 1640 -1440 2440 -1040 {flags=graph
y1=0.33
y2=0.36
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=-0.0070900122
x2=0.0029099878
divx=5
subdivx=1
xlabmag=1.0
ylabmag=1.0
node="vinp
vinn"
color="4 7"
dataset=-1
unitx=1
logx=0
logy=0
linewidth_mult=3
autoload=0}
B 2 1640 -1020 2440 -620 {flags=graph
y1=0.29
y2=1.3
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=-0.0070900122
x2=0.0029099878
divx=5
subdivx=1
xlabmag=1.0
ylabmag=1.0
node="voutp
voutn"
color="4 7"
dataset=-1
unitx=1
logx=0
logy=0
linewidth_mult=3
autoload=0}
B 2 1640 -600 2440 -200 {flags=graph
y1=0.001
y2=0.93
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=-0.0070900122
x2=0.0029099878
divx=5
subdivx=1
xlabmag=1.0
ylabmag=1.0
node="vind
vout"
color="4 7"
dataset=-1
unitx=1
logx=0
logy=0
linewidth_mult=3
autoload=0}
P 4 5 1330 -780 1330 -680 1530 -680 1530 -780 1330 -780 {dash = 8}
T {Testbench for transient analysis - Push-Pull Amplifier (high gm, high output voltage swing)} 60 -1750 0 0 1 1 {}
T {Capacitive Load (Comparator, DAC, etc.)} 1290 -570 0 0 0.25 0.25 {}
T {output distorts @ 14mV} 980 -1120 0 0 0.2 0.2 {}
N 1060 -480 1060 -440 {lab=VDD}
N 1060 -380 1060 -340 {lab=GND}
N 1060 -1300 1060 -1260 {lab=vind}
N 1060 -1340 1140 -1340 {lab=vind}
N 1140 -1300 1140 -1260 {lab=GND}
N 1140 -1260 1180 -1260 {lab=GND}
N 1180 -1290 1180 -1260 {
lab=GND}
N 1380 -1360 1380 -1320 {lab=#net1}
N 1380 -1460 1380 -1420 {lab=vinp}
N 1260 -1270 1340 -1270 {lab=#net2}
N 1260 -1410 1340 -1410 {lab=#net2}
N 1180 -1410 1180 -1350 {lab=#net2}
N 1300 -1230 1340 -1230 {lab=GND}
N 1180 -1260 1180 -1230 {
lab=GND}
N 1300 -1370 1340 -1370 {lab=GND}
N 1300 -1370 1300 -1230 {lab=GND}
N 1180 -1230 1300 -1230 {lab=GND}
N 1260 -1410 1260 -1270 {lab=#net2}
N 1180 -1410 1260 -1410 {lab=#net2}
N 1380 -1320 1380 -1280 {lab=#net1}
N 1380 -1220 1380 -1180 {lab=vinn}
N 1480 -1320 1480 -1280 {lab=#net1}
N 1380 -1320 1480 -1320 {
lab=#net1}
N 1480 -1220 1480 -1160 {lab=GND}
N 1180 -1230 1180 -1160 {lab=GND}
N 1460 -840 1500 -840 {lab=voutn}
N 1360 -800 1500 -800 {lab=voutp}
N 1360 -800 1360 -760 {lab=voutp}
N 1460 -840 1460 -760 {lab=voutn}
N 920 -860 960 -860 {lab=vinp}
N 920 -780 960 -780 {lab=vinn}
N 1200 -840 1460 -840 {lab=voutn}
N 1200 -800 1360 -800 {lab=voutp}
N 1360 -700 1360 -600 {lab=GND}
N 1460 -700 1460 -600 {lab=GND}
N 1390 -430 1420 -430 {
lab=voutp}
N 1390 -390 1420 -390 {
lab=voutn}
N 1460 -480 1460 -440 {lab=vout}
N 1460 -380 1460 -340 {lab=GND}
N 920 -1300 1060 -1300 {lab=vind}
N 1060 -1340 1060 -1300 {lab=vind}
N 920 -1300 920 -1260 {lab=vind}
N 1060 -1200 1060 -1160 {lab=GND}
N 920 -1200 920 -1160 {lab=GND}
N 1060 -720 1060 -600 {lab=GND}
N 1000 -1020 1000 -920 {lab=VDD}
N 1000 -720 1000 -600 {lab=GND}
N 1060 -1020 1060 -920 {lab=VDD}
N 1100 -960 1100 -920 {lab=Vbiasc}
N 1140 -960 1140 -920 {lab=Vbias}
N 460 -480 500 -480 {lab=VDD}
N 460 -620 460 -480 {lab=VDD}
N 460 -620 640 -620 {lab=VDD}
N 640 -620 640 -580 {lab=VDD}
N 640 -660 640 -620 {lab=VDD}
N 640 -380 640 -340 {lab=GND}
N 780 -500 820 -500 {lab=Vbiasc}
N 780 -460 820 -460 {lab=Vbias}
N 880 -1300 920 -1300 {lab=vind}
C {devices/code_shown.sym} 60 -1130 0 0 {name=NGSPICE
only_toplevel=true 
value="
.param temp=27
* 228fF DAC + (1 - beta) * 3.3pF
.param Cload=3.49p
.param Vgs=0.345
* Power-Down
* .param Vgs=0.047

.options savecurrents klu method=gear reltol=1e-3 abstol=1e-12 gmin=1e-12
.control
save all
* save vind vinp vinn voutp voutn vout

* Operating Point Analysis
op
remzerovec
write push_pull_amplifier_simplified_tb_tran.raw
set appendwrite

* Transient Analysis
* Sine Input
tran 10u 10m
* Pulse Input
* tran 1u 1m
write push_pull_amplifier_simplified_tb_tran.raw

* Plotting
plot vind
plot vinp vinn
plot vout
plot voutp voutn
plot i(VDD)

* Measurements
meas tran vin_peak MAX v(vind)
meas tran vout_peak MAX v(vout)

let Adm = vout_peak / vin_peak
let Adm_dB = vdb(Adm)
print Adm_dB

meas tran vout_pp_max MAX v(voutp)
meas tran vout_pp_min MIN v(voutp)
let vout_pp = vout_pp_max - vout_pp_min
print vout_pp

* Write Data
set wr_vecnames
set wr_singlescale
wrdata /foss/designs/SG13G2_ATBS-ADC-main/python/plot_simulations/data/push_pull_amplifier_simplified_tb_tran.txt v(vind) v(vout) v(vinp) v(vinn) v(voutp) v(voutn)

*quit
.endc
"}
C {devices/launcher.sym} 1700 -1600 0 0 {name=h2
descr="Simulate" 
tclcommand="xschem save; xschem netlist; xschem simulate"
}
C {title-3.sym} 0 0 0 0 {name=l2 author="Simon Dorrer" rev=1.0 lock=true}
C {devices/launcher.sym} 1700 -1480 0 0 {name=h1
descr="Load waves" 
tclcommand="xschem raw_read $netlist_dir/push_pull_amplifier_simplified_tb_tran.raw tran"
}
C {devices/launcher.sym} 1700 -1540 0 0 {name=h3
descr="Annotate OP" 
tclcommand="set show_hidden_texts 1; xschem annotate_op"
}
C {devices/code_shown.sym} 60 -1570 0 0 {name=MODEL only_toplevel=true
format="tcleval( @value )"
value="
.lib cornerMOSlv.lib mos_tt
.lib cornerMOShv.lib mos_tt
.lib cornerRES.lib res_typ
"}
C {devices/vsource.sym} 1060 -410 0 0 {name=VDD value=1.5}
C {devices/gnd.sym} 1060 -340 0 0 {name=l3 lab=GND}
C {vdd.sym} 1060 -480 0 0 {name=l7 lab=VDD}
C {devices/lab_pin.sym} 1380 -1460 0 0 {name=l1 sig_type=std_logic lab=vinp}
C {devices/lab_pin.sym} 1380 -1180 0 0 {name=l4 sig_type=std_logic lab=vinn
}
C {devices/lab_pin.sym} 880 -1300 0 0 {name=l15 sig_type=std_logic lab=vind}
C {devices/vsource.sym} 1480 -1250 0 0 {name=Vgs value=\{Vgs\}
}
C {devices/vcvs.sym} 1380 -1250 0 0 {name=E4 value=0.5}
C {devices/vcvs.sym} 1380 -1390 0 0 {name=E5 value=0.5}
C {devices/gnd.sym} 1060 -1160 0 0 {name=l16 lab=GND}
C {devices/gnd.sym} 1480 -1160 0 0 {name=l40 lab=GND}
C {devices/vcvs.sym} 1180 -1320 0 0 {name=E6 value=1}
C {devices/gnd.sym} 1180 -1160 0 0 {name=l41 lab=GND}
C {devices/lab_pin.sym} 920 -860 0 0 {name=l5 sig_type=std_logic lab=vinp}
C {devices/lab_pin.sym} 920 -780 0 0 {name=l8 sig_type=std_logic lab=vinn
}
C {devices/gnd.sym} 1360 -600 0 0 {name=l9 lab=GND}
C {lab_pin.sym} 1500 -800 0 1 {name=p3 sig_type=std_logic lab=voutp}
C {lab_pin.sym} 1500 -840 0 1 {name=p4 sig_type=std_logic lab=voutn}
C {devices/gnd.sym} 1460 -600 0 0 {name=l30 lab=GND}
C {devices/capa.sym} 1460 -730 0 0 {name=C2
m=1
value=\{Cload\}
footprint=1206
device="ceramic capacitor"}
C {devices/capa.sym} 1360 -730 0 0 {name=C3
m=1
value=\{Cload\}
footprint=1206
device="ceramic capacitor"}
C {devices/vsource.sym} 920 -1230 0 1 {name=vpulse spice_ignore=True value="pulse(-1.5 1.5 0 10p 10p 100u 500u)"
}
C {devices/vsource.sym} 1060 -1230 0 1 {name=vsine spice_ignore=False value="sin(0 5m 100)"
}
C {devices/lab_pin.sym} 1460 -480 0 1 {name=l34 sig_type=std_logic lab=vout}
C {devices/vcvs.sym} 1460 -410 0 0 {name=E2 value=1}
C {devices/gnd.sym} 1460 -340 0 0 {name=l35 lab=GND}
C {devices/lab_pin.sym} 1390 -390 2 1 {name=l36 sig_type=std_logic lab=voutn}
C {devices/lab_pin.sym} 1390 -430 0 0 {name=l37 sig_type=std_logic lab=voutp
}
C {devices/gnd.sym} 920 -1160 0 0 {name=l10 lab=GND}
C {devices/gnd.sym} 1060 -600 0 0 {name=l11 lab=GND}
C {vdd.sym} 1060 -1020 0 0 {name=l12 lab=VDD}
C {vdd.sym} 1000 -1020 0 0 {name=l14 lab=VDD}
C {devices/gnd.sym} 1000 -600 0 0 {name=l17 lab=GND}
C {bio_amplifier/amplifier_core/push_pull_amplifier/push_pull_amplifier_simplified.sym} 1080 -820 0 0 {name=x1}
C {devices/lab_pin.sym} 1100 -960 1 0 {name=l6 sig_type=std_logic lab=Vbiasc}
C {devices/lab_pin.sym} 1140 -960 1 0 {name=l24 sig_type=std_logic lab=Vbias}
C {bio_amplifier/amplifier_core/bias_circuit/bias_circuit_2/bias_circuit_2.sym} 640 -480 0 0 {name=x2}
C {vdd.sym} 640 -660 0 0 {name=l19 lab=VDD}
C {devices/gnd.sym} 640 -340 0 0 {name=l20 lab=GND}
C {devices/lab_pin.sym} 820 -500 0 1 {name=l21 sig_type=std_logic lab=Vbiasc}
C {devices/lab_pin.sym} 820 -460 0 1 {name=l22 sig_type=std_logic lab=Vbias}
