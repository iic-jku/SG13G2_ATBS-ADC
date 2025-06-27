v {xschem version=3.4.7 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
B 2 1640 -1440 2440 -1040 {flags=graph
y1=0.34
y2=0.35
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=0.0015
x2=0.0165
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
y1=0.63
y2=0.87
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=0.0015
x2=0.0165
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
autoload=0
hilight_wave=0}
B 2 1640 -600 2440 -200 {flags=graph
y1=-0.24
y2=0.24
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=0.0015
x2=0.0165
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
P 4 5 1330 -860 1330 -760 1530 -760 1530 -860 1330 -860 {dash = 8}
T {Testbench for transient analysis - Common-Source Amplifier with Current-Source Load} 130 -1720 0 0 1 1 {}
T {Capacitive Load (Comparator, DAC, etc.)} 1290 -650 0 0 0.25 0.25 {}
T {output distorts @ 14mV} 970 -1230 0 0 0.2 0.2 {}
N 1060 -480 1060 -440 {lab=VDD}
N 1060 -380 1060 -340 {lab=GND}
N 1460 -920 1500 -920 {lab=voutn}
N 1360 -880 1500 -880 {lab=voutp}
N 1360 -880 1360 -840 {lab=voutp}
N 1460 -920 1460 -840 {lab=voutn}
N 920 -940 960 -940 {lab=vinp}
N 920 -860 960 -860 {lab=vinn}
N 1200 -920 1460 -920 {lab=voutn}
N 1200 -880 1360 -880 {lab=voutp}
N 1390 -430 1420 -430 {
lab=voutp}
N 1390 -390 1420 -390 {
lab=voutn}
N 1460 -480 1460 -440 {lab=vout}
N 1460 -380 1460 -340 {lab=GND}
N 1360 -780 1360 -680 {lab=GND}
N 1460 -780 1460 -680 {lab=GND}
N 1060 -1400 1060 -1360 {lab=vind}
N 1060 -1440 1140 -1440 {lab=vind}
N 1140 -1400 1140 -1360 {lab=GND}
N 1140 -1360 1180 -1360 {lab=GND}
N 1180 -1390 1180 -1360 {
lab=GND}
N 1380 -1460 1380 -1420 {lab=#net1}
N 1380 -1560 1380 -1520 {lab=vinp}
N 1260 -1370 1340 -1370 {lab=#net2}
N 1260 -1510 1340 -1510 {lab=#net2}
N 1180 -1510 1180 -1450 {lab=#net2}
N 1300 -1330 1340 -1330 {lab=GND}
N 1180 -1360 1180 -1330 {
lab=GND}
N 1300 -1470 1340 -1470 {lab=GND}
N 1300 -1470 1300 -1330 {lab=GND}
N 1180 -1330 1300 -1330 {lab=GND}
N 1260 -1510 1260 -1370 {lab=#net2}
N 1180 -1510 1260 -1510 {lab=#net2}
N 1380 -1420 1380 -1380 {lab=#net1}
N 1380 -1320 1380 -1280 {lab=vinn}
N 1480 -1420 1480 -1380 {lab=#net1}
N 1380 -1420 1480 -1420 {
lab=#net1}
N 1480 -1320 1480 -1260 {lab=GND}
N 1180 -1330 1180 -1260 {lab=GND}
N 920 -1400 1060 -1400 {lab=vind}
N 1060 -1440 1060 -1400 {lab=vind}
N 920 -1400 920 -1360 {lab=vind}
N 1060 -1300 1060 -1260 {lab=GND}
N 920 -1300 920 -1260 {lab=GND}
N 1060 -800 1060 -680 {lab=GND}
N 1060 -1100 1060 -1000 {lab=VDD}
N 520 -480 560 -480 {lab=VDD}
N 520 -620 700 -620 {lab=VDD}
N 700 -620 700 -580 {lab=VDD}
N 700 -660 700 -620 {lab=VDD}
N 840 -500 880 -500 {lab=Vbiasc}
N 840 -460 880 -460 {lab=Vbias}
N 1100 -1040 1100 -1000 {lab=Vbiasc}
N 1140 -1040 1140 -1000 {lab=Vbias}
N 1000 -800 1000 -680 {lab=GND}
N 700 -380 700 -340 {lab=GND}
N 1000 -1100 1000 -1000 {lab=VDD}
N 520 -620 520 -480 {lab=VDD}
N 880 -1400 920 -1400 {lab=vind}
C {devices/code_shown.sym} 40 -1090 0 0 {name=NGSPICE
only_toplevel=true 
value="
.param temp=27
* 228fF DAC + (1 - beta) * 3.3pF
.param Cload=3.49p
.param Vgs=0.345

.options savecurrents klu reltol=1e-3 abstol=1e-15 gmin=1e-15
.control
save all

* Operating Point Analysis
op
remzerovec
write common_source_amplifier_simplified_tb_tran.raw
set appendwrite

* Transient Analysis
* Sine Input
tran 30u 15m
* Pulse Input
* tran 1u 1m
write common_source_amplifier_simplified_tb_tran.raw

* Plotting
plot vind
plot vinp vinn
plot vout
plot voutp voutn
plot i(VDD)

* Measurements
meas tran vin_peak MAX v(vind)
meas tran vout_peak MAX v(vout)
meas tran vout_dc FIND v(vout) at=0

let Adm = vout_peak / vin_peak
let Adm_dB = vdb(Adm)
print Adm_dB

meas tran vout_cs_max MAX v(voutp)
meas tran vout_cs_min MIN v(voutp)
let vout_cs = vout_cs_max - vout_cs_min
print vout_cs

* Write Data
set wr_vecnames
set wr_singlescale
wrdata /foss/designs/SG13G2_ATBS-ADC-main/python/plot_simulations/data/common_source_amplifier_simplified_tb_tran.txt v(vind) v(vout) v(vinp) v(vinn) v(voutp) v(voutn)

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
tclcommand="xschem raw_read $netlist_dir/common_source_amplifier_simplified_tb_tran.raw tran"
}
C {devices/launcher.sym} 1700 -1540 0 0 {name=h3
descr="Annotate OP" 
tclcommand="set show_hidden_texts 1; xschem annotate_op"
}
C {devices/code_shown.sym} 40 -1590 0 0 {name=MODEL only_toplevel=true
format="tcleval( @value )"
value="
.lib cornerMOSlv.lib mos_tt
.lib cornerMOShv.lib mos_tt
.lib cornerRES.lib res_typ
"}
C {devices/vsource.sym} 1060 -410 0 0 {name=VDD value=1.5}
C {devices/gnd.sym} 1060 -340 0 0 {name=l3 lab=GND}
C {vdd.sym} 1060 -480 0 0 {name=l7 lab=VDD}
C {devices/lab_pin.sym} 920 -940 0 0 {name=l5 sig_type=std_logic lab=vinp}
C {devices/lab_pin.sym} 920 -860 0 0 {name=l8 sig_type=std_logic lab=vinn
}
C {devices/gnd.sym} 1360 -680 0 0 {name=l9 lab=GND}
C {lab_pin.sym} 1500 -880 0 1 {name=p3 sig_type=std_logic lab=voutp}
C {lab_pin.sym} 1500 -920 0 1 {name=p4 sig_type=std_logic lab=voutn}
C {devices/gnd.sym} 1460 -680 0 0 {name=l30 lab=GND}
C {devices/capa.sym} 1460 -810 0 0 {name=C2
m=1
value=\{Cload\}
footprint=1206
device="ceramic capacitor"}
C {devices/capa.sym} 1360 -810 0 0 {name=C3
m=1
value=\{Cload\}
footprint=1206
device="ceramic capacitor"}
C {devices/lab_pin.sym} 1460 -480 0 1 {name=l13 sig_type=std_logic lab=vout}
C {devices/vcvs.sym} 1460 -410 0 0 {name=E1 value=1}
C {devices/gnd.sym} 1460 -340 0 0 {name=l17 lab=GND}
C {devices/lab_pin.sym} 1390 -390 2 1 {name=l18 sig_type=std_logic lab=voutn
}
C {devices/lab_pin.sym} 1390 -430 0 0 {name=l23 sig_type=std_logic lab=voutp
}
C {devices/lab_pin.sym} 1380 -1560 0 0 {name=l1 sig_type=std_logic lab=vinp}
C {devices/lab_pin.sym} 1380 -1280 0 0 {name=l4 sig_type=std_logic lab=vinn
}
C {devices/lab_pin.sym} 880 -1400 0 0 {name=l15 sig_type=std_logic lab=vind}
C {devices/vsource.sym} 1480 -1350 0 0 {name=Vgs value=\{Vgs\}
}
C {devices/vcvs.sym} 1380 -1350 0 0 {name=E4 value=0.5}
C {devices/vcvs.sym} 1380 -1490 0 0 {name=E5 value=0.5}
C {devices/gnd.sym} 1060 -1260 0 0 {name=l16 lab=GND}
C {devices/gnd.sym} 1480 -1260 0 0 {name=l40 lab=GND}
C {devices/vcvs.sym} 1180 -1420 0 0 {name=E6 value=1}
C {devices/gnd.sym} 1180 -1260 0 0 {name=l41 lab=GND}
C {devices/vsource.sym} 920 -1330 0 1 {name=vpulse spice_ignore=True value="pulse(-1.5 1.5 0 10p 10p 100u 500u)"
}
C {devices/vsource.sym} 1060 -1330 0 1 {name=vsine spice_ignore=False value="sin(0 5m 100)"
}
C {devices/gnd.sym} 920 -1260 0 0 {name=l10 lab=GND}
C {vdd.sym} 1060 -1100 0 0 {name=l6 lab=VDD}
C {devices/gnd.sym} 1060 -680 0 0 {name=l11 lab=GND}
C {vdd.sym} 1000 -1100 0 0 {name=l19 lab=VDD}
C {devices/gnd.sym} 1000 -680 0 0 {name=l20 lab=GND}
C {bio_amplifier/amplifier_core/common_source_amplifier/common_source_amplifier_simplified.sym} 1080 -900 0 0 {name=x1}
C {bio_amplifier/amplifier_core/bias_circuit/bias_circuit_2/bias_circuit_2.sym} 700 -480 0 0 {name=x2}
C {vdd.sym} 700 -660 0 0 {name=l21 lab=VDD}
C {devices/gnd.sym} 700 -340 0 0 {name=l22 lab=GND}
C {devices/lab_pin.sym} 880 -500 0 1 {name=l24 sig_type=std_logic lab=Vbiasc}
C {devices/lab_pin.sym} 880 -460 0 1 {name=l25 sig_type=std_logic lab=Vbias}
C {devices/lab_pin.sym} 1100 -1040 1 0 {name=l12 sig_type=std_logic lab=Vbiasc}
C {devices/lab_pin.sym} 1140 -1040 1 0 {name=l26 sig_type=std_logic lab=Vbias}
