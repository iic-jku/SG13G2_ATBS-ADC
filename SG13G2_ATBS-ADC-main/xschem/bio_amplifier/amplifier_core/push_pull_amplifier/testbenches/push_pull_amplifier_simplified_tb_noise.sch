v {xschem version=3.4.7 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
B 2 1640 -860 2440 -460 {flags=graph
y1=-4.8
y2=-3.1
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
B 2 1640 -1280 2440 -880 {flags=graph
y1=-6.7
y2=-5
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
P 4 5 1350 -880 1350 -780 1550 -780 1550 -880 1350 -880 {dash = 8}
T {Testbench for noise analysis - Push-Pull Amplifier (high gm, high output voltage swing)} 170 -1720 0 0 1 1 {}
T {Capacitive Load (Comparator, DAC, etc.)} 1310 -670 0 0 0.25 0.25 {}
N 1160 -540 1160 -500 {lab=VDD}
N 1160 -440 1160 -400 {lab=GND}
N 880 -1420 880 -1360 {lab=vind}
N 860 -1420 880 -1420 {lab=vind}
N 880 -1420 960 -1420 {lab=vind}
N 960 -1380 960 -1340 {lab=GND}
N 960 -1340 1000 -1340 {lab=GND}
N 1000 -1370 1000 -1340 {
lab=GND}
N 1200 -1440 1200 -1400 {lab=#net1}
N 1200 -1540 1200 -1500 {lab=vinp}
N 1080 -1350 1160 -1350 {lab=#net2}
N 1080 -1490 1160 -1490 {lab=#net2}
N 1000 -1490 1000 -1430 {lab=#net2}
N 1120 -1310 1160 -1310 {lab=GND}
N 1000 -1340 1000 -1310 {
lab=GND}
N 1120 -1450 1160 -1450 {lab=GND}
N 1120 -1450 1120 -1310 {lab=GND}
N 1000 -1310 1120 -1310 {lab=GND}
N 1080 -1490 1080 -1350 {lab=#net2}
N 1000 -1490 1080 -1490 {lab=#net2}
N 1200 -1400 1200 -1360 {lab=#net1}
N 1200 -1300 1200 -1260 {lab=vinn}
N 1300 -1400 1300 -1360 {lab=#net1}
N 1200 -1400 1300 -1400 {
lab=#net1}
N 1300 -1300 1300 -1240 {lab=GND}
N 1000 -1310 1000 -1240 {lab=GND}
N 880 -1300 880 -1240 {lab=GND}
N 1480 -940 1520 -940 {lab=voutn}
N 1380 -900 1520 -900 {lab=voutp}
N 1380 -900 1380 -860 {lab=voutp}
N 1480 -940 1480 -860 {lab=voutn}
N 940 -960 980 -960 {lab=vinp}
N 940 -880 980 -880 {lab=vinn}
N 1220 -940 1480 -940 {lab=voutn}
N 1220 -900 1380 -900 {lab=voutp}
N 1410 -490 1440 -490 {
lab=voutp}
N 1410 -450 1440 -450 {
lab=voutn}
N 1480 -540 1480 -500 {lab=vout}
N 1480 -440 1480 -400 {lab=GND}
N 1380 -800 1380 -700 {lab=GND}
N 1480 -800 1480 -700 {lab=GND}
N 1080 -820 1080 -700 {lab=GND}
N 1020 -1120 1020 -1020 {lab=VDD}
N 1020 -820 1020 -700 {lab=GND}
N 1080 -1120 1080 -1020 {lab=VDD}
N 1120 -1060 1120 -1020 {lab=Vbiasc}
N 1160 -1060 1160 -1020 {lab=Vbias}
N 640 -540 680 -540 {lab=VDD}
N 640 -680 640 -540 {lab=VDD}
N 640 -680 820 -680 {lab=VDD}
N 820 -680 820 -640 {lab=VDD}
N 820 -720 820 -680 {lab=VDD}
N 820 -440 820 -400 {lab=GND}
N 960 -560 1000 -560 {lab=Vbiasc}
N 960 -520 1000 -520 {lab=Vbias}
C {devices/code_shown.sym} 80 -1030 0 0 {name=NGSPICE
only_toplevel=true 
value="
.param temp=27
* 228fF DAC + (1 - beta) * 3.3pF
.param Cload=3.49p
.param Vgs=0.345

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
write push_pull_amplifier_simplified_tb_noise.raw
set appendwrite

* Noise Analysis
noise v(vout) vin dec 101 $&const.f_min $&const.f_max 1

* Plotting
setplot noise1
plot inoise_spectrum ylog xlog ylabel 'Input Noise'
plot onoise_spectrum ylog xlog ylabel 'Output Noise'
write push_pull_amplifier_simplified_tb_noise.raw
set appendwrite

* Write Data
set wr_vecnames
set wr_singlescale
wrdata /foss/designs/SG13G2_ATBS-ADC-main/python/plot_simulations/data/push_pull_amplifier_simplified_tb_noise.txt v(inoise_spectrum) v(onoise_spectrum)

* Measurements
setplot noise2
print inoise_total
print onoise_total

*quit
.endc
"}
C {devices/launcher.sym} 1700 -1440 0 0 {name=h2
descr="Simulate" 
tclcommand="xschem save; xschem netlist; xschem simulate"
}
C {title-3.sym} 0 0 0 0 {name=l2 author="Simon Dorrer" rev=1.0 lock=true}
C {devices/launcher.sym} 1700 -1320 0 0 {name=h1
descr="Load waves" 
tclcommand="xschem raw_read $netlist_dir/push_pull_amplifier_simplified_tb_noise.raw noise"
}
C {devices/launcher.sym} 1700 -1380 0 0 {name=h3
descr="Annotate OP" 
tclcommand="set show_hidden_texts 1; xschem annotate_op"
}
C {devices/code_shown.sym} 80 -1430 0 0 {name=MODEL only_toplevel=true
format="tcleval( @value )"
value="
.lib cornerMOSlv.lib mos_tt
.lib cornerMOShv.lib mos_tt
.lib cornerRES.lib res_typ
"}
C {devices/vsource.sym} 1160 -470 0 0 {name=VDD value=1.5}
C {devices/gnd.sym} 1160 -400 0 0 {name=l3 lab=GND}
C {vdd.sym} 1160 -540 0 0 {name=l7 lab=VDD}
C {devices/lab_pin.sym} 1200 -1540 0 0 {name=l1 sig_type=std_logic lab=vinp}
C {devices/lab_pin.sym} 1200 -1260 0 0 {name=l4 sig_type=std_logic lab=vinn
}
C {devices/lab_pin.sym} 860 -1420 0 0 {name=l15 sig_type=std_logic lab=vind}
C {devices/vsource.sym} 1300 -1330 0 0 {name=Vgs value=\{Vgs\}
}
C {devices/vcvs.sym} 1200 -1330 0 0 {name=E4 value=0.5}
C {devices/vcvs.sym} 1200 -1470 0 0 {name=E5 value=0.5}
C {devices/gnd.sym} 880 -1240 0 0 {name=l16 lab=GND}
C {devices/gnd.sym} 1300 -1240 0 0 {name=l40 lab=GND}
C {devices/vcvs.sym} 1000 -1400 0 0 {name=E6 value=1}
C {devices/gnd.sym} 1000 -1240 0 0 {name=l41 lab=GND}
C {devices/vsource.sym} 880 -1330 0 0 {name=vin value="dc 0 ac 1"
}
C {devices/lab_pin.sym} 940 -960 0 0 {name=l5 sig_type=std_logic lab=vinp}
C {devices/lab_pin.sym} 940 -880 0 0 {name=l8 sig_type=std_logic lab=vinn
}
C {devices/gnd.sym} 1380 -700 0 0 {name=l9 lab=GND}
C {lab_pin.sym} 1520 -900 0 1 {name=p3 sig_type=std_logic lab=voutp}
C {lab_pin.sym} 1520 -940 0 1 {name=p4 sig_type=std_logic lab=voutn}
C {devices/gnd.sym} 1480 -700 0 0 {name=l30 lab=GND}
C {devices/capa.sym} 1480 -830 0 0 {name=C2
m=1
value=\{Cload\}
footprint=1206
device="ceramic capacitor"}
C {devices/capa.sym} 1380 -830 0 0 {name=C3
m=1
value=\{Cload\}
footprint=1206
device="ceramic capacitor"}
C {devices/lab_pin.sym} 1480 -540 0 1 {name=l13 sig_type=std_logic lab=vout}
C {devices/vcvs.sym} 1480 -470 0 0 {name=E1 value=1}
C {devices/gnd.sym} 1480 -400 0 0 {name=l17 lab=GND}
C {devices/lab_pin.sym} 1410 -450 2 1 {name=l18 sig_type=std_logic lab=voutn
}
C {devices/lab_pin.sym} 1410 -490 0 0 {name=l23 sig_type=std_logic lab=voutp
}
C {devices/gnd.sym} 1080 -700 0 0 {name=l11 lab=GND}
C {vdd.sym} 1080 -1120 0 0 {name=l10 lab=VDD}
C {vdd.sym} 1020 -1120 0 0 {name=l12 lab=VDD}
C {devices/gnd.sym} 1020 -700 0 0 {name=l14 lab=GND}
C {bio_amplifier/amplifier_core/push_pull_amplifier/push_pull_amplifier_simplified.sym} 1100 -920 0 0 {name=x1}
C {devices/lab_pin.sym} 1120 -1060 1 0 {name=l6 sig_type=std_logic lab=Vbiasc}
C {devices/lab_pin.sym} 1160 -1060 1 0 {name=l24 sig_type=std_logic lab=Vbias}
C {bio_amplifier/amplifier_core/bias_circuit/bias_circuit_2/bias_circuit_2.sym} 820 -540 0 0 {name=x2}
C {vdd.sym} 820 -720 0 0 {name=l19 lab=VDD}
C {devices/gnd.sym} 820 -400 0 0 {name=l20 lab=GND}
C {devices/lab_pin.sym} 1000 -560 0 1 {name=l21 sig_type=std_logic lab=Vbiasc}
C {devices/lab_pin.sym} 1000 -520 0 1 {name=l22 sig_type=std_logic lab=Vbias}
