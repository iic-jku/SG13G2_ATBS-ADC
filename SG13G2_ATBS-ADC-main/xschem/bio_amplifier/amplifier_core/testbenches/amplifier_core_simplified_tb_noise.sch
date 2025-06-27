v {xschem version=3.4.7 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
B 2 1660 -880 2460 -480 {flags=graph
y1=-9.9
y2=-3.1
ypos1=0
ypos2=2
divy=5
subdivy=8
unity=1
x1=-2
x2=9
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
B 2 1660 -1300 2460 -900 {flags=graph
y1=-8.5
y2=-4.6
ypos1=0
ypos2=2
divy=5
subdivy=8
unity=1
x1=-2
x2=9
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
P 4 5 1360 -980 1360 -880 1560 -880 1560 -980 1360 -980 {dash = 8}
T {Testbench for noise analysis - Amplifier Core (simplified)} 460 -1730 0 0 1 1 {}
T {Capacitive Load (Comparator, DAC, etc.)} 1330 -820 0 0 0.25 0.25 {}
N 980 -1060 1020 -1060 {lab=vinp}
N 980 -980 1020 -980 {lab=vinn}
N 1120 -1140 1120 -1120 {lab=amp_core_en}
N 400 -1040 400 -980 {lab=vind}
N 380 -1040 400 -1040 {lab=vind}
N 400 -1040 480 -1040 {lab=vind}
N 480 -1000 480 -960 {lab=GND}
N 480 -960 520 -960 {lab=GND}
N 520 -990 520 -960 {
lab=GND}
N 820 -1020 1020 -1020 {
lab=Vcm}
N 720 -1060 720 -1020 {lab=Vcm}
N 720 -1160 720 -1120 {lab=vinp}
N 600 -970 680 -970 {lab=#net1}
N 600 -1110 680 -1110 {lab=#net1}
N 520 -1110 520 -1050 {lab=#net1}
N 640 -930 680 -930 {lab=GND}
N 520 -960 520 -930 {
lab=GND}
N 640 -1070 680 -1070 {lab=GND}
N 640 -1070 640 -930 {lab=GND}
N 520 -930 640 -930 {lab=GND}
N 600 -1110 600 -970 {lab=#net1}
N 520 -1110 600 -1110 {lab=#net1}
N 720 -1020 720 -980 {lab=Vcm}
N 720 -920 720 -880 {lab=vinn}
N 820 -1020 820 -980 {lab=Vcm}
N 720 -1020 820 -1020 {
lab=Vcm}
N 820 -920 820 -860 {lab=GND}
N 520 -930 520 -860 {lab=GND}
N 400 -920 400 -860 {lab=GND}
N 860 -760 860 -720 {lab=VDD}
N 860 -660 860 -620 {lab=GND}
N 980 -760 980 -720 {lab=amp_core_en}
N 980 -660 980 -620 {lab=GND}
N 1500 -720 1500 -700 {
lab=vout}
N 1430 -690 1460 -690 {
lab=voutp}
N 1430 -650 1460 -650 {
lab=voutn}
N 1500 -640 1500 -620 {lab=GND}
N 1100 -1160 1100 -1120 {lab=VDD}
N 1100 -920 1100 -860 {lab=GND}
N 820 -1040 820 -1020 {lab=Vcm}
N 1500 -1040 1540 -1040 {lab=voutn}
N 1400 -1000 1540 -1000 {lab=voutp}
N 1400 -1000 1400 -960 {lab=voutp}
N 1200 -1000 1400 -1000 {lab=voutp}
N 1400 -900 1400 -860 {lab=GND}
N 1500 -1040 1500 -960 {lab=voutn}
N 1200 -1040 1500 -1040 {lab=voutn}
N 1500 -900 1500 -860 {lab=GND}
C {devices/code_shown.sym} 40 -1450 0 0 {name=MODEL only_toplevel=true
format="tcleval( @value )"
value="
.lib cornerMOSlv.lib mos_tt
.lib cornerMOShv.lib mos_tt
.lib cornerRES.lib res_typ
"}
C {devices/code_shown.sym} 40 -1270 0 0 {name=NGSPICE
only_toplevel=true 
value="
.param temp=27
* 228fF DAC + (1 - beta) * 3.3pF
.param Cload=3.49p
.options savecurrents method=gear reltol=1e-2 abstol=1e-15 gmin=1e-15
.control

optran 0 0 0 1u 1m 0

save all

set wr_vecnames
set wr_singlescale
set enable_noisy_r

* User Constants
let f_min = 0.15
let f_max = 500
* let f_min = 10m
* let f_max = 1G

* Operating Point Analysis
op
remzerovec
write amplifier_core_simplified_tb_noise.raw
set appendwrite

* Noise Analysis
noise v(vout) vin dec 101 $&const.f_min $&const.f_max 1

* Plotting
setplot noise1
plot inoise_spectrum ylog xlog ylabel 'Input Noise'
plot onoise_spectrum ylog xlog ylabel 'Output Noise'
write amplifier_core_simplified_tb_noise.raw
set appendwrite

* Write Data
set wr_vecnames
set wr_singlescale
wrdata /foss/designs/SG13G2_ATBS-ADC-main/python/plot_simulations/data/amplifier_core_simplified_tb_noise.txt v(inoise_spectrum) v(onoise_spectrum)

* Measurements
setplot noise2
print inoise_total
print onoise_total


*quit
.endc
"}
C {devices/gnd.sym} 1400 -860 0 0 {name=l1 lab=GND}
C {devices/vsource.sym} 860 -690 0 0 {name=VDD value=1.5}
C {devices/gnd.sym} 860 -620 0 0 {name=l3 lab=GND}
C {devices/launcher.sym} 1720 -1460 0 0 {name=h2
descr="Simulate" 
tclcommand="xschem save; xschem netlist; xschem simulate"
}
C {devices/capa.sym} 1400 -930 0 0 {name=C1
m=1
value=\{Cload\}
footprint=1206
device="ceramic capacitor"}
C {title-3.sym} 0 0 0 0 {name=l2 author="Simon Dorrer" rev=1.0 lock=true}
C {devices/launcher.sym} 1720 -1340 0 0 {name=h1
descr="Load waves" 
tclcommand="xschem raw_read $netlist_dir/amplifier_core_simplified_tb_noise.raw noise"
}
C {devices/launcher.sym} 1720 -1400 0 0 {name=h3
descr="Annotate OP" 
tclcommand="set show_hidden_texts 1; xschem annotate_op"
}
C {vdd.sym} 860 -760 0 0 {name=l7 lab=VDD}
C {vdd.sym} 1100 -1160 0 0 {name=l8 lab=VDD}
C {devices/gnd.sym} 1100 -860 0 0 {name=l9 lab=GND}
C {lab_pin.sym} 1540 -1000 0 1 {name=p3 sig_type=std_logic lab=voutp}
C {lab_pin.sym} 1540 -1040 0 1 {name=p4 sig_type=std_logic lab=voutn}
C {devices/lab_pin.sym} 720 -1160 0 0 {name=l10 sig_type=std_logic lab=vinp}
C {devices/lab_pin.sym} 720 -880 0 0 {name=l11 sig_type=std_logic lab=vinn
}
C {devices/lab_pin.sym} 380 -1040 0 0 {name=l13 sig_type=std_logic lab=vind}
C {devices/lab_pin.sym} 980 -1060 0 0 {name=l5 sig_type=std_logic lab=vinp}
C {devices/lab_pin.sym} 980 -980 0 0 {name=l19 sig_type=std_logic lab=vinn
}
C {devices/capa.sym} 1500 -930 0 0 {name=C2
m=1
value=\{Cload\}
footprint=1206
device="ceramic capacitor"}
C {devices/gnd.sym} 1500 -860 0 0 {name=l30 lab=GND}
C {devices/gnd.sym} 980 -620 0 0 {name=l6 lab=GND}
C {devices/vsource.sym} 820 -950 0 0 {name=Vcm value=0.75
}
C {devices/vcvs.sym} 720 -950 0 0 {name=E4 value=0.5}
C {devices/vcvs.sym} 720 -1090 0 0 {name=E5 value=0.5}
C {devices/lab_pin.sym} 820 -1040 1 0 {name=l38 sig_type=std_logic lab=Vcm}
C {devices/gnd.sym} 400 -860 0 0 {name=l39 lab=GND}
C {devices/gnd.sym} 820 -860 0 0 {name=l40 lab=GND}
C {devices/vcvs.sym} 520 -1020 0 0 {name=E6 value=1}
C {devices/gnd.sym} 520 -860 0 0 {name=l41 lab=GND}
C {devices/vsource.sym} 980 -690 0 0 {name=V1 value="1.5"}
C {devices/lab_pin.sym} 1500 -720 0 1 {name=l12 sig_type=std_logic lab=vout}
C {devices/vcvs.sym} 1500 -670 0 0 {name=E1 value=1}
C {devices/gnd.sym} 1500 -620 0 0 {name=l14 lab=GND}
C {devices/lab_pin.sym} 1430 -650 2 1 {name=l15 sig_type=std_logic lab=voutn
}
C {devices/lab_pin.sym} 1430 -690 0 0 {name=l23 sig_type=std_logic lab=voutp
}
C {devices/vsource.sym} 400 -950 0 0 {name=vin value="0 AC 1"
}
C {bio_amplifier/amplifier_core/amplifier_core_simplified.sym} 1100 -1020 0 0 {name=x1}
C {devices/lab_pin.sym} 980 -760 2 0 {name=l4 sig_type=std_logic lab=amp_core_en}
C {devices/lab_pin.sym} 1120 -1140 2 0 {name=l16 sig_type=std_logic lab=amp_core_en}
