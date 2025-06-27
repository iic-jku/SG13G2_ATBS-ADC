v {xschem version=3.4.7 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
B 2 1640 -1440 2440 -1040 {flags=graph
y1=0.74
y2=0.76
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=0.004
x2=0.024
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
y1=0.28
y2=0.38
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=0.004
x2=0.024
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
y1=-0.1288
y2=0.0552
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=0.004
x2=0.024
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
P 4 5 1330 -800 1330 -700 1530 -700 1530 -800 1330 -800 {dash = 8}
T {Testbench for transient analysis - Telescopic OTA} 560 -1740 0 0 1 1 {}
T {Capacitive Load (Comparator, DAC, etc.)} 1290 -590 0 0 0.25 0.25 {}
N 1060 -540 1060 -500 {lab=VDD}
N 1060 -440 1060 -400 {lab=GND}
N 1060 -1360 1060 -1320 {lab=vind}
N 1060 -1400 1140 -1400 {lab=vind}
N 1140 -1360 1140 -1320 {lab=GND}
N 1140 -1320 1180 -1320 {lab=GND}
N 1180 -1350 1180 -1320 {
lab=GND}
N 1380 -1380 1380 -1340 {lab=Vcm}
N 1380 -1520 1380 -1480 {lab=vinp}
N 1260 -1330 1340 -1330 {lab=#net1}
N 1260 -1470 1340 -1470 {lab=#net1}
N 1180 -1470 1180 -1410 {lab=#net1}
N 1300 -1290 1340 -1290 {lab=GND}
N 1180 -1320 1180 -1290 {
lab=GND}
N 1300 -1430 1340 -1430 {lab=GND}
N 1300 -1430 1300 -1290 {lab=GND}
N 1180 -1290 1300 -1290 {lab=GND}
N 1260 -1470 1260 -1330 {lab=#net1}
N 1180 -1470 1260 -1470 {lab=#net1}
N 1380 -1280 1380 -1240 {lab=vinn}
N 1180 -1290 1180 -1220 {lab=GND}
N 1460 -860 1500 -860 {lab=voutn}
N 1360 -820 1500 -820 {lab=voutp}
N 1360 -820 1360 -780 {lab=voutp}
N 1460 -860 1460 -780 {lab=voutn}
N 920 -880 960 -880 {lab=vinp}
N 920 -800 960 -800 {lab=vinn}
N 1200 -860 1460 -860 {lab=voutn}
N 1200 -820 1360 -820 {lab=voutp}
N 1360 -720 1360 -620 {lab=GND}
N 1460 -720 1460 -620 {lab=GND}
N 1390 -490 1420 -490 {
lab=voutp}
N 1390 -450 1420 -450 {
lab=voutn}
N 1460 -540 1460 -500 {lab=vout}
N 1460 -440 1460 -400 {lab=GND}
N 920 -1360 1060 -1360 {lab=vind}
N 1060 -1400 1060 -1360 {lab=vind}
N 920 -1360 920 -1320 {lab=vind}
N 1060 -1260 1060 -1220 {lab=GND}
N 920 -1260 920 -1220 {lab=GND}
N 1480 -1380 1480 -1340 {lab=Vcm}
N 1380 -1380 1480 -1380 {
lab=Vcm}
N 1480 -1280 1480 -1220 {lab=GND}
N 1480 -1380 1520 -1380 {lab=Vcm}
N 1380 -1420 1380 -1380 {lab=Vcm}
N 920 -840 960 -840 {lab=Vcm}
N 1060 -740 1060 -720 {lab=GND}
N 1000 -740 1000 -720 {lab=GND}
N 1000 -1040 1000 -940 {lab=VDD}
N 1060 -1040 1060 -940 {lab=VDD}
N 1100 -980 1100 -940 {lab=Vbiasc}
N 1140 -980 1140 -940 {lab=Vbias}
N 500 -560 540 -560 {lab=VDD}
N 500 -700 500 -560 {lab=VDD}
N 500 -700 680 -700 {lab=VDD}
N 680 -700 680 -660 {lab=VDD}
N 680 -740 680 -700 {lab=VDD}
N 820 -580 860 -580 {lab=Vbiasc}
N 820 -540 860 -540 {lab=Vbias}
N 680 -460 680 -400 {lab=GND}
N 880 -1360 920 -1360 {lab=vind}
C {devices/code_shown.sym} 40 -1230 0 0 {name=NGSPICE
only_toplevel=true 
value="
.param temp=27
.param Cload=10f

* Sine
.options savecurrents klu method=gear reltol=1e-3 abstol=1e-15 gmin=1e-15

* Pulse
* .options savecurrents method=gear reltol=1e-2 abstol=1e-15 gmin=1e-15

.control

* save all
save vind vinp vinn voutp voutn vout

* Operating Point Analysis
op
remzerovec
write telescopic_ota_simplified_tb_tran.raw
set appendwrite

* Transient Analysis
* Sine Input
tran 10u 20m
* Pulse Input
* tran 1u 1m
write telescopic_ota_simplified_tb_tran.raw

* Plotting
plot vind
plot vinp vinn
plot vout
plot voutp voutn
* plot i(VDD)

* Measurements
meas tran vin_peak MAX v(vind)
meas tran vout_peak MAX v(vout)
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
wrdata /foss/designs/SG13G2_ATBS-ADC-main/python/plot_simulations/data/telescopic_ota_simplified_tb_tran.txt v(vind) v(vout) v(vinp) v(vinn) v(voutp) v(voutn)

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
tclcommand="xschem raw_read $netlist_dir/telescopic_ota_simplified_tb_tran.raw tran"
}
C {devices/launcher.sym} 1700 -1540 0 0 {name=h3
descr="Annotate OP" 
tclcommand="set show_hidden_texts 1; xschem annotate_op"
}
C {devices/code_shown.sym} 40 -1570 0 0 {name=MODEL only_toplevel=true
format="tcleval( @value )"
value="
.lib cornerMOSlv.lib mos_tt
.lib cornerMOShv.lib mos_tt
.lib cornerRES.lib res_typ
"}
C {devices/vsource.sym} 1060 -470 0 0 {name=VDD value=1.5}
C {devices/gnd.sym} 1060 -400 0 0 {name=l3 lab=GND}
C {vdd.sym} 1060 -540 0 0 {name=l7 lab=VDD}
C {devices/lab_pin.sym} 1380 -1520 0 0 {name=l1 sig_type=std_logic lab=vinp}
C {devices/lab_pin.sym} 1380 -1240 0 0 {name=l4 sig_type=std_logic lab=vinn
}
C {devices/lab_pin.sym} 880 -1360 0 0 {name=l15 sig_type=std_logic lab=vind}
C {devices/vcvs.sym} 1380 -1310 0 0 {name=E4 value=0.5}
C {devices/vcvs.sym} 1380 -1450 0 0 {name=E5 value=0.5}
C {devices/gnd.sym} 1060 -1220 0 0 {name=l16 lab=GND}
C {devices/vcvs.sym} 1180 -1380 0 0 {name=E6 value=1}
C {devices/gnd.sym} 1180 -1220 0 0 {name=l41 lab=GND}
C {devices/lab_pin.sym} 920 -880 0 0 {name=l5 sig_type=std_logic lab=vinp}
C {devices/lab_pin.sym} 920 -800 0 0 {name=l8 sig_type=std_logic lab=vinn
}
C {devices/gnd.sym} 1360 -620 0 0 {name=l9 lab=GND}
C {lab_pin.sym} 1500 -820 0 1 {name=p3 sig_type=std_logic lab=voutp}
C {lab_pin.sym} 1500 -860 0 1 {name=p4 sig_type=std_logic lab=voutn}
C {devices/gnd.sym} 1460 -620 0 0 {name=l30 lab=GND}
C {devices/capa.sym} 1460 -750 0 0 {name=C2
m=1
value=\{Cload\}
footprint=1206
device="ceramic capacitor"}
C {devices/capa.sym} 1360 -750 0 0 {name=C3
m=1
value=\{Cload\}
footprint=1206
device="ceramic capacitor"}
C {devices/vsource.sym} 920 -1290 0 1 {name=vpulse spice_ignore=True value="pulse(-1.5 1.5 0 10p 10p 100u 500u)"
}
C {devices/vsource.sym} 1060 -1290 0 1 {name=vsine spice_ignore=False value="sin(0 1m 100)"
}
C {devices/lab_pin.sym} 1460 -540 0 1 {name=l34 sig_type=std_logic lab=vout}
C {devices/vcvs.sym} 1460 -470 0 0 {name=E2 value=1}
C {devices/gnd.sym} 1460 -400 0 0 {name=l35 lab=GND}
C {devices/lab_pin.sym} 1390 -450 2 1 {name=l36 sig_type=std_logic lab=voutn}
C {devices/lab_pin.sym} 1390 -490 0 0 {name=l37 sig_type=std_logic lab=voutp
}
C {devices/gnd.sym} 920 -1220 0 0 {name=l10 lab=GND}
C {devices/vsource.sym} 1480 -1310 0 0 {name=Vcm value=0.75
}
C {devices/gnd.sym} 1480 -1220 0 0 {name=l40 lab=GND}
C {devices/lab_pin.sym} 1520 -1380 2 0 {name=l14 sig_type=std_logic lab=Vcm
}
C {devices/lab_pin.sym} 920 -840 2 1 {name=l17 sig_type=std_logic lab=Vcm
}
C {vdd.sym} 1060 -1040 0 0 {name=l6 lab=VDD}
C {devices/gnd.sym} 1060 -720 0 0 {name=l11 lab=GND}
C {devices/gnd.sym} 1000 -720 0 0 {name=l18 lab=GND}
C {vdd.sym} 1000 -1040 0 0 {name=l19 lab=VDD}
C {bio_amplifier/amplifier_core/telescopic_ota/telescopic_ota_simplified.sym} 1080 -840 0 0 {name=x1}
C {devices/lab_pin.sym} 1100 -980 1 0 {name=l51 sig_type=std_logic lab=Vbiasc}
C {devices/lab_pin.sym} 1140 -980 1 0 {name=l52 sig_type=std_logic lab=Vbias}
C {bio_amplifier/amplifier_core/bias_circuit/bias_circuit_2/bias_circuit_2.sym} 680 -560 0 0 {name=x3}
C {devices/gnd.sym} 680 -400 0 0 {name=l47 lab=GND}
C {devices/lab_pin.sym} 860 -580 0 1 {name=l49 sig_type=std_logic lab=Vbiasc}
C {devices/lab_pin.sym} 860 -540 0 1 {name=l50 sig_type=std_logic lab=Vbias}
C {vdd.sym} 680 -740 0 0 {name=l39 lab=VDD}
