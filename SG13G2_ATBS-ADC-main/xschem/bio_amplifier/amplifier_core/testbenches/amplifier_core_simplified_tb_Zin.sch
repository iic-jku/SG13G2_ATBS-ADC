v {xschem version=3.4.7 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
B 2 1660 -800 2460 -400 {flags=graph,unlocked
y1=4.2e+12
y2=4e+16
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=-2
x2=2
divx=5
subdivx=8
xlabmag=1.0
ylabmag=1.0
node="\\"CM Zin; v(vin_cm) i(Vmeas_cm) /\\""
color=4
dataset=-1
unitx=1
logx=1
logy=0
linewidth_mult=4}
B 2 1660 -1220 2460 -820 {flags=graph
y1=0
y2=0.01
ypos1=0
ypos2=2
divy=5
subdivy=4
unity=1
x1=-2
x2=2
divx=5
subdivx=8
xlabmag=1.0
ylabmag=1.0
node="\\"DM Zin; v(vin_dm) i(Vmeasp) i(Vmeasn) + /\\""
color=4
dataset=-1
unitx=1
logx=1
logy=0
linewidth_mult=4}
P 4 5 1340 -980 1340 -880 1540 -880 1540 -980 1340 -980 {dash = 8}
P 4 5 1340 -600 1340 -500 1540 -500 1540 -600 1340 -600 {dash = 8}
T {Testbench for Zin analysis - Amplifier Core (simplified)} 500 -1720 0 0 1 1 {}
T {Capacitive Load (Comparator, DAC, etc.)} 1320 -830 0 0 0.25 0.25 {}
T {Capacitive Load (Comparator, DAC, etc.)} 1320 -450 0 0 0.25 0.25 {}
N 1160 -1140 1160 -1120 {lab=amp_core_en}
N 640 -1420 640 -1380 {lab=VDD}
N 640 -1320 640 -1280 {lab=GND}
N 920 -1420 920 -1380 {lab=amp_core_en}
N 920 -1320 920 -1280 {lab=GND}
N 1140 -1160 1140 -1120 {lab=VDD}
N 1140 -920 1140 -860 {lab=GND}
N 1480 -1040 1520 -1040 {lab=voutn_dm}
N 1380 -1000 1520 -1000 {lab=voutp_dm}
N 1380 -1000 1380 -960 {lab=voutp_dm}
N 1380 -900 1380 -860 {lab=GND}
N 1480 -1040 1480 -960 {lab=voutn_dm}
N 1480 -900 1480 -860 {lab=GND}
N 1240 -1000 1380 -1000 {lab=voutp_dm}
N 1240 -1040 1480 -1040 {lab=voutn_dm}
N 1160 -760 1160 -740 {lab=amp_core_en}
N 1140 -780 1140 -740 {lab=VDD}
N 1140 -540 1140 -480 {lab=GND}
N 1480 -660 1520 -660 {lab=voutn_cm}
N 1380 -620 1520 -620 {lab=voutp_cm}
N 1380 -620 1380 -580 {lab=voutp_cm}
N 1380 -520 1380 -480 {lab=GND}
N 1480 -660 1480 -580 {lab=voutn_cm}
N 1480 -520 1480 -480 {lab=GND}
N 1240 -620 1380 -620 {lab=voutp_cm}
N 1240 -660 1480 -660 {lab=voutn_cm}
N 780 -1420 780 -1380 {lab=Vcm}
N 780 -1320 780 -1280 {lab=GND}
N 1020 -1020 1060 -1020 {lab=Vcm}
N 1020 -640 1060 -640 {lab=Vcm}
N 800 -500 800 -480 {lab=GND}
N 800 -600 800 -560 {lab=#net1}
N 760 -680 800 -680 {lab=vin_cm}
N 800 -680 800 -660 {lab=vin_cm}
N 940 -680 940 -600 {lab=#net2}
N 940 -600 1060 -600 {lab=#net2}
N 940 -680 1060 -680 {lab=#net2}
N 1200 -1460 1200 -1400 {lab=vin_dm}
N 1180 -1460 1200 -1460 {lab=vin_dm}
N 1200 -1460 1280 -1460 {lab=vin_dm}
N 1280 -1420 1280 -1380 {lab=GND}
N 1280 -1380 1320 -1380 {lab=GND}
N 1320 -1410 1320 -1380 {
lab=GND}
N 1520 -1440 1520 -1400 {lab=Vcm}
N 1520 -1580 1520 -1540 {lab=vinp}
N 1400 -1390 1480 -1390 {lab=#net3}
N 1400 -1530 1480 -1530 {lab=#net3}
N 1320 -1530 1320 -1470 {lab=#net3}
N 1440 -1350 1480 -1350 {lab=GND}
N 1320 -1380 1320 -1350 {
lab=GND}
N 1440 -1490 1480 -1490 {lab=GND}
N 1440 -1490 1440 -1350 {lab=GND}
N 1320 -1350 1440 -1350 {lab=GND}
N 1400 -1530 1400 -1390 {lab=#net3}
N 1320 -1530 1400 -1530 {lab=#net3}
N 1520 -1340 1520 -1300 {lab=vinn}
N 1320 -1350 1320 -1280 {lab=GND}
N 1200 -1340 1200 -1280 {lab=GND}
N 960 -1060 980 -1060 {lab=vinp}
N 960 -980 980 -980 {lab=vinn}
N 1040 -980 1060 -980 {lab=#net4}
N 1040 -1060 1060 -1060 {lab=#net5}
N 1520 -1440 1560 -1440 {lab=Vcm}
N 1520 -1480 1520 -1440 {lab=Vcm}
N 800 -680 840 -680 {lab=vin_cm}
N 900 -680 940 -680 {lab=#net2}
C {devices/code_shown.sym} 40 -1110 0 0 {name=NGSPICE
only_toplevel=true 
value="
.param temp=27
* 228fF DAC + (1 - beta) * 3.3pF
.param Cload=3.49p
.options savecurrents reltol=1e-2 abstol=1e-15 gmin=1e-15 rshunt=1e15
.control

save v(vinp) v(vinn) i(Vmeasp) i(Vmeasn) v(vin_cm) i(Vmeas_cm)

set wr_vecnames
set wr_singlescale

* User Constants
let f_min = 10m
let f_max = 100
let fdc = 10

* Operating Point Analysis
op
remzerovec
write amplifier_core_simplified_tb_Zin.raw
set appendwrite

* AC Analysis
ac dec 101 $&const.f_min $&const.f_max
remzerovec
write amplifier_core_simplified_tb_Zin.raw

* Plotting Differential Mode Zin
* let Zin_dm = (v(vinp) - v(vinn)) / (i(Vmeasp) - i(Vmeasn))
* let Zin_dm = (v(vinp) - v(vinn)) / (i(Vmeasp) + i(Vmeasn))
let Zin_dm = (v(vinp) - v(vinn)) / i(Vmeasp)
plot Zin_dm ylabel 'DM Zin'

* Plotting Common Mode Zin
let Zin_cm = v(vin_cm) / i(Vmeas_cm)
plot Zin_cm ylabel 'CM Zin'

* Measurements
meas ac Zindc_dm find Zin_dm when frequency = fdc
print Zindc_dm

meas ac Zindc_cm find Zin_cm when frequency = fdc
print Zindc_cm

* Write Data
set wr_vecnames
set wr_singlescale
wrdata /foss/designs/SG13G2_ATBS-ADC-main/python/plot_simulations/data/amplifier_core_simplified_tb_Zin.txt v(Zin_dm) v(Zin_cm)

*quit
.endc
"}
C {devices/launcher.sym} 1720 -1380 0 0 {name=h2
descr="Simulate" 
tclcommand="xschem save; xschem netlist; xschem simulate"
}
C {title-3.sym} 0 0 0 0 {name=l2 author="Simon Dorrer" rev=1.0 lock=true}
C {devices/launcher.sym} 1720 -1260 0 0 {name=h1
descr="Load waves" 
tclcommand="xschem raw_read $netlist_dir/amplifier_core_simplified_tb_Zin.raw ac"
}
C {devices/launcher.sym} 1720 -1320 0 0 {name=h3
descr="Annotate OP" 
tclcommand="set show_hidden_texts 1; xschem annotate_op"
}
C {devices/code_shown.sym} 40 -1410 0 0 {name=MODEL only_toplevel=true
format="tcleval( @value )"
value="
.lib cornerMOSlv.lib mos_tt
.lib cornerMOShv.lib mos_tt
.lib cornerRES.lib res_typ
"}
C {devices/gnd.sym} 1380 -860 0 0 {name=l1 lab=GND}
C {devices/vsource.sym} 640 -1350 0 0 {name=VDD value=1.5}
C {devices/gnd.sym} 640 -1280 0 0 {name=l3 lab=GND}
C {devices/capa.sym} 1380 -930 0 0 {name=C1
m=1
value=\{Cload\}
footprint=1206
device="ceramic capacitor"}
C {vdd.sym} 640 -1420 0 0 {name=l7 lab=VDD}
C {vdd.sym} 1140 -1160 0 0 {name=l8 lab=VDD}
C {devices/gnd.sym} 1140 -860 0 0 {name=l9 lab=GND}
C {lab_pin.sym} 1520 -1000 0 1 {name=p3 sig_type=std_logic lab=voutp_dm}
C {lab_pin.sym} 1520 -1040 0 1 {name=p4 sig_type=std_logic lab=voutn_dm}
C {devices/capa.sym} 1480 -930 0 0 {name=C2
m=1
value=\{Cload\}
footprint=1206
device="ceramic capacitor"}
C {devices/gnd.sym} 1480 -860 0 0 {name=l30 lab=GND}
C {devices/gnd.sym} 920 -1280 0 0 {name=l6 lab=GND}
C {devices/vsource.sym} 780 -1350 0 0 {name=Vcm value=0.75
}
C {devices/lab_pin.sym} 780 -1420 2 0 {name=l38 sig_type=std_logic lab=Vcm}
C {devices/gnd.sym} 780 -1280 0 0 {name=l40 lab=GND}
C {devices/vsource.sym} 920 -1350 0 0 {name=V1 value="1.5"}
C {bio_amplifier/amplifier_core/amplifier_core_simplified.sym} 1140 -1020 0 0 {name=x1}
C {devices/lab_pin.sym} 920 -1420 2 0 {name=l4 sig_type=std_logic lab=amp_core_en}
C {devices/lab_pin.sym} 1160 -1140 2 0 {name=l24 sig_type=std_logic lab=amp_core_en}
C {devices/gnd.sym} 1380 -480 0 0 {name=l16 lab=GND}
C {devices/capa.sym} 1380 -550 0 0 {name=C3
m=1
value=\{Cload\}
footprint=1206
device="ceramic capacitor"}
C {vdd.sym} 1140 -780 0 0 {name=l17 lab=VDD}
C {devices/gnd.sym} 1140 -480 0 0 {name=l18 lab=GND}
C {lab_pin.sym} 1520 -620 0 1 {name=p1 sig_type=std_logic lab=voutp_cm}
C {lab_pin.sym} 1520 -660 0 1 {name=p2 sig_type=std_logic lab=voutn_cm}
C {devices/capa.sym} 1480 -550 0 0 {name=C4
m=1
value=\{Cload\}
footprint=1206
device="ceramic capacitor"}
C {devices/gnd.sym} 1480 -480 0 0 {name=l27 lab=GND}
C {bio_amplifier/amplifier_core/amplifier_core_simplified.sym} 1140 -640 0 0 {name=x2}
C {devices/lab_pin.sym} 1160 -760 2 0 {name=l33 sig_type=std_logic lab=amp_core_en}
C {devices/lab_pin.sym} 1020 -1020 0 0 {name=l10 sig_type=std_logic lab=Vcm}
C {devices/lab_pin.sym} 1020 -640 0 0 {name=l5 sig_type=std_logic lab=Vcm}
C {devices/vsource.sym} 800 -630 0 0 {name=vin_cm value="dc 0 ac 1"
}
C {devices/gnd.sym} 800 -480 0 0 {name=l13 lab=GND}
C {ammeter.sym} 1010 -1060 3 0 {name=Vmeasp savecurrent=true spice_ignore=0}
C {lab_pin.sym} 760 -680 2 1 {name=p6 sig_type=std_logic lab=vin_cm}
C {ammeter.sym} 1010 -980 3 1 {name=Vmeasn savecurrent=true spice_ignore=0}
C {ammeter.sym} 870 -680 3 0 {name=Vmeas_cm savecurrent=true spice_ignore=0}
C {devices/vsource.sym} 800 -530 0 0 {name=Vcm_cm value=0.75
}
C {lab_pin.sym} 1180 -1460 2 1 {name=p5 sig_type=std_logic lab=vin_dm}
C {devices/lab_pin.sym} 1520 -1580 0 0 {name=l11 sig_type=std_logic lab=vinp}
C {devices/lab_pin.sym} 1520 -1300 0 0 {name=l12 sig_type=std_logic lab=vinn
}
C {devices/vcvs.sym} 1520 -1370 0 0 {name=E3 value=0.5}
C {devices/vcvs.sym} 1520 -1510 0 0 {name=E2 value=0.5}
C {devices/lab_pin.sym} 1560 -1440 2 0 {name=l15 sig_type=std_logic lab=Vcm}
C {devices/gnd.sym} 1200 -1280 0 0 {name=l39 lab=GND}
C {devices/vcvs.sym} 1320 -1440 0 0 {name=E1 value=1}
C {devices/gnd.sym} 1320 -1280 0 0 {name=l41 lab=GND}
C {devices/vsource.sym} 1200 -1370 0 0 {name=vin_dm value="dc 0 ac 1"
}
C {devices/lab_pin.sym} 960 -1060 0 0 {name=l19 sig_type=std_logic lab=vinp}
C {devices/lab_pin.sym} 960 -980 0 0 {name=l20 sig_type=std_logic lab=vinn
}
