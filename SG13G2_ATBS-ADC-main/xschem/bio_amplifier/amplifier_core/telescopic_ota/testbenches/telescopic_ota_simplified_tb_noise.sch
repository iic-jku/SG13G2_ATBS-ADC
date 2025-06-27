v {xschem version=3.4.7 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
B 2 1640 -800 2440 -400 {flags=graph
y1=-5.1
y2=-3.5
ypos1=0
ypos2=2
divy=5
subdivy=8
unity=1
x1=-0.82390874
x2=2.7008437
divx=5
subdivx=8
xlabmag=1.0
ylabmag=1.0
node="\\"Output Noise; onoise_spectrum\\""
color=4
dataset=-1
unitx=1
logx=1
logy=1
linewidth_mult=4}
B 2 1640 -1220 2440 -820 {flags=graph
y1=-7
y2=-5.5
ypos1=0
ypos2=2
divy=5
subdivy=8
unity=1
x1=-0.82390874
x2=2.7008437
divx=5
subdivx=8
xlabmag=1.0
ylabmag=1.0
node="\\"Input Noise; inoise_spectrum\\""
color=4
dataset=-1
unitx=1
logx=1
logy=1
linewidth_mult=4}
P 4 5 1330 -900 1330 -800 1530 -800 1530 -900 1330 -900 {dash = 8}
T {Testbench for noise analysis - Telescopic OTA} 590 -1720 0 0 1 1 {}
T {Capacitive Load (Comparator, DAC, etc.)} 1290 -690 0 0 0.25 0.25 {}
N 1160 -580 1160 -540 {lab=VDD}
N 1160 -480 1160 -440 {lab=GND}
N 860 -1460 860 -1400 {lab=vind}
N 840 -1460 860 -1460 {lab=vind}
N 860 -1460 940 -1460 {lab=vind}
N 940 -1420 940 -1380 {lab=GND}
N 940 -1380 980 -1380 {lab=GND}
N 980 -1410 980 -1380 {
lab=GND}
N 1180 -1480 1180 -1440 {lab=Vcm}
N 1180 -1580 1180 -1540 {lab=vinp}
N 1060 -1390 1140 -1390 {lab=#net1}
N 1060 -1530 1140 -1530 {lab=#net1}
N 980 -1530 980 -1470 {lab=#net1}
N 1100 -1350 1140 -1350 {lab=GND}
N 980 -1380 980 -1350 {
lab=GND}
N 1100 -1490 1140 -1490 {lab=GND}
N 1100 -1490 1100 -1350 {lab=GND}
N 980 -1350 1100 -1350 {lab=GND}
N 1060 -1530 1060 -1390 {lab=#net1}
N 980 -1530 1060 -1530 {lab=#net1}
N 1180 -1440 1180 -1400 {lab=Vcm}
N 1180 -1340 1180 -1300 {lab=vinn}
N 1280 -1440 1280 -1400 {lab=Vcm}
N 1180 -1440 1280 -1440 {
lab=Vcm}
N 1280 -1340 1280 -1280 {lab=GND}
N 980 -1350 980 -1280 {lab=GND}
N 860 -1340 860 -1280 {lab=GND}
N 1460 -960 1500 -960 {lab=voutn}
N 1360 -920 1500 -920 {lab=voutp}
N 1360 -920 1360 -880 {lab=voutp}
N 1460 -960 1460 -880 {lab=voutn}
N 920 -980 960 -980 {lab=vinp}
N 920 -900 960 -900 {lab=vinn}
N 1200 -960 1460 -960 {lab=voutn}
N 1200 -920 1360 -920 {lab=voutp}
N 1390 -530 1420 -530 {
lab=voutp}
N 1390 -490 1420 -490 {
lab=voutn}
N 1460 -580 1460 -540 {lab=vout}
N 1460 -480 1460 -440 {lab=GND}
N 1360 -820 1360 -720 {lab=GND}
N 1460 -820 1460 -720 {lab=GND}
N 920 -940 960 -940 {lab=Vcm}
N 1280 -1440 1320 -1440 {lab=Vcm}
N 1060 -840 1060 -820 {lab=GND}
N 1000 -1140 1000 -1040 {lab=VDD}
N 1000 -840 1000 -820 {lab=GND}
N 1060 -1140 1060 -1040 {lab=VDD}
N 1100 -1080 1100 -1040 {lab=Vbiasc}
N 1140 -1080 1140 -1040 {lab=Vbias}
N 640 -600 680 -600 {lab=VDD}
N 640 -740 640 -600 {lab=VDD}
N 640 -740 820 -740 {lab=VDD}
N 820 -740 820 -700 {lab=VDD}
N 820 -780 820 -740 {lab=VDD}
N 960 -620 1000 -620 {lab=Vbiasc}
N 960 -580 1000 -580 {lab=Vbias}
N 820 -500 820 -440 {lab=GND}
C {devices/code_shown.sym} 60 -1030 0 0 {name=NGSPICE
only_toplevel=true 
value="
.param temp=27
.param Cload=10f

.options savecurrents reltol=1e-3 abstol=1e-15 gmin=1e-15
.control
save all

set wr_vecnames
set wr_singlescale
set enable_noisy_r

* User Constants
let f_min = 0.15
let f_max = 500
* let f_min = 10m
* let f_max = 1e9

* Operating Point Analysis
op
remzerovec
write telescopic_ota_simplified_tb_noise.raw
set appendwrite

* Noise Analysis
noise v(vout) vin dec 101 $&const.f_min $&const.f_max 1

* Plotting
setplot noise1
plot inoise_spectrum ylog xlog ylabel 'Input Noise'
plot onoise_spectrum ylog xlog ylabel 'Output Noise'
write telescopic_ota_simplified_tb_noise.raw
set appendwrite

* Write Data
set wr_vecnames
set wr_singlescale
wrdata /foss/designs/SG13G2_ATBS-ADC-main/python/plot_simulations/data/telescopic_ota_simplified_tb_noise.txt v(inoise_spectrum) v(onoise_spectrum)

* Measurements
setplot noise2
print inoise_total
print onoise_total

*quit
.endc
"}
C {devices/launcher.sym} 1700 -1380 0 0 {name=h2
descr="Simulate" 
tclcommand="xschem save; xschem netlist; xschem simulate"
}
C {title-3.sym} 0 0 0 0 {name=l2 author="Simon Dorrer" rev=1.0 lock=true}
C {devices/launcher.sym} 1700 -1260 0 0 {name=h1
descr="Load waves" 
tclcommand="xschem raw_read $netlist_dir/telescopic_ota_simplified_tb_noise.raw noise"
}
C {devices/launcher.sym} 1700 -1320 0 0 {name=h3
descr="Annotate OP" 
tclcommand="set show_hidden_texts 1; xschem annotate_op"
}
C {devices/code_shown.sym} 60 -1470 0 0 {name=MODEL only_toplevel=true
format="tcleval( @value )"
value="
.lib cornerMOSlv.lib mos_tt
.lib cornerMOShv.lib mos_tt
.lib cornerRES.lib res_typ
"}
C {devices/vsource.sym} 1160 -510 0 0 {name=VDD value=1.5}
C {devices/gnd.sym} 1160 -440 0 0 {name=l3 lab=GND}
C {vdd.sym} 1160 -580 0 0 {name=l7 lab=VDD}
C {devices/lab_pin.sym} 1180 -1580 0 0 {name=l1 sig_type=std_logic lab=vinp}
C {devices/lab_pin.sym} 1180 -1300 0 0 {name=l4 sig_type=std_logic lab=vinn
}
C {devices/lab_pin.sym} 840 -1460 0 0 {name=l15 sig_type=std_logic lab=vind}
C {devices/vcvs.sym} 1180 -1370 0 0 {name=E4 value=0.5}
C {devices/vcvs.sym} 1180 -1510 0 0 {name=E5 value=0.5}
C {devices/gnd.sym} 860 -1280 0 0 {name=l16 lab=GND}
C {devices/gnd.sym} 1280 -1280 0 0 {name=l40 lab=GND}
C {devices/vcvs.sym} 980 -1440 0 0 {name=E6 value=1}
C {devices/gnd.sym} 980 -1280 0 0 {name=l41 lab=GND}
C {devices/vsource.sym} 860 -1370 0 0 {name=vin value="dc 0 ac 1"
}
C {devices/lab_pin.sym} 920 -980 0 0 {name=l5 sig_type=std_logic lab=vinp}
C {devices/lab_pin.sym} 920 -900 0 0 {name=l8 sig_type=std_logic lab=vinn
}
C {devices/gnd.sym} 1360 -720 0 0 {name=l9 lab=GND}
C {lab_pin.sym} 1500 -920 0 1 {name=p3 sig_type=std_logic lab=voutp}
C {lab_pin.sym} 1500 -960 0 1 {name=p4 sig_type=std_logic lab=voutn}
C {devices/gnd.sym} 1460 -720 0 0 {name=l30 lab=GND}
C {devices/capa.sym} 1460 -850 0 0 {name=C2
m=1
value=\{Cload\}
footprint=1206
device="ceramic capacitor"}
C {devices/capa.sym} 1360 -850 0 0 {name=C3
m=1
value=\{Cload\}
footprint=1206
device="ceramic capacitor"}
C {devices/lab_pin.sym} 1460 -580 0 1 {name=l13 sig_type=std_logic lab=vout}
C {devices/vcvs.sym} 1460 -510 0 0 {name=E1 value=1}
C {devices/gnd.sym} 1460 -440 0 0 {name=l17 lab=GND}
C {devices/lab_pin.sym} 1390 -490 2 1 {name=l18 sig_type=std_logic lab=voutn
}
C {devices/lab_pin.sym} 1390 -530 0 0 {name=l23 sig_type=std_logic lab=voutp
}
C {devices/lab_pin.sym} 920 -940 0 0 {name=l38 sig_type=std_logic lab=Vcm
}
C {devices/lab_pin.sym} 1320 -1440 0 1 {name=l10 sig_type=std_logic lab=Vcm
}
C {devices/vsource.sym} 1280 -1370 0 0 {name=Vcm value=0.75
}
C {vdd.sym} 1060 -1140 0 0 {name=l6 lab=VDD}
C {devices/gnd.sym} 1060 -820 0 0 {name=l11 lab=GND}
C {vdd.sym} 1000 -1140 0 0 {name=l14 lab=VDD}
C {devices/gnd.sym} 1000 -820 0 0 {name=l19 lab=GND}
C {bio_amplifier/amplifier_core/telescopic_ota/telescopic_ota_simplified.sym} 1080 -940 0 0 {name=x1}
C {devices/lab_pin.sym} 1100 -1080 1 0 {name=l51 sig_type=std_logic lab=Vbiasc}
C {devices/lab_pin.sym} 1140 -1080 1 0 {name=l52 sig_type=std_logic lab=Vbias}
C {bio_amplifier/amplifier_core/bias_circuit/bias_circuit_2/bias_circuit_2.sym} 820 -600 0 0 {name=x3}
C {devices/gnd.sym} 820 -440 0 0 {name=l47 lab=GND}
C {devices/lab_pin.sym} 1000 -620 0 1 {name=l49 sig_type=std_logic lab=Vbiasc}
C {devices/lab_pin.sym} 1000 -580 0 1 {name=l50 sig_type=std_logic lab=Vbias}
C {vdd.sym} 820 -780 0 0 {name=l39 lab=VDD}
