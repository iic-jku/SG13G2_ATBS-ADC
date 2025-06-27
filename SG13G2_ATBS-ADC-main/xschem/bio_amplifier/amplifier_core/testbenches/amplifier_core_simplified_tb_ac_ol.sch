v {xschem version=3.4.7 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
B 2 1620 -700 2420 -300 {flags=graph
y1=-180
y2=180
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=-2
x2=9
divx=5
subdivx=8
xlabmag=1.0
ylabmag=1.0
node="\\"OL Phase; ph(vout)\\""
color=4
dataset=-1
unitx=1
logx=1
logy=0
linewidth_mult=4}
B 2 1620 -1120 2420 -720 {flags=graph
y1=-170
y2=74
ypos1=0
ypos2=2
divy=5
subdivy=4
unity=1
x1=-2
x2=9
divx=5
subdivx=8
xlabmag=1.0
ylabmag=1.0
node="\\"OL Magnitude; vout vind / db20()\\""
color=4
dataset=-1
unitx=1
logx=1
logy=0
linewidth_mult=4}
P 4 5 1160 -760 1160 -660 1360 -660 1360 -760 1160 -760 {dash = 8}
T {Design Testbench for AC OL analysis - Amplifier Core (simplified)} 400 -1730 0 0 1 1 {}
T {Capacitive Load (Comparator, DAC, etc.)} 1130 -610 0 0 0.25 0.25 {}
N 780 -840 820 -840 {lab=#net1}
N 780 -760 820 -760 {lab=#net2}
N 920 -920 920 -900 {lab=amp_core_en}
N 780 -1300 780 -1240 {lab=vind}
N 760 -1300 780 -1300 {lab=vind}
N 780 -1300 860 -1300 {lab=vind}
N 860 -1260 860 -1220 {lab=GND}
N 860 -1220 900 -1220 {lab=GND}
N 900 -1250 900 -1220 {
lab=GND}
N 1100 -1320 1100 -1280 {lab=Vcm}
N 1100 -1420 1100 -1380 {lab=vinp}
N 980 -1230 1060 -1230 {lab=#net3}
N 980 -1370 1060 -1370 {lab=#net3}
N 900 -1370 900 -1310 {lab=#net3}
N 1020 -1190 1060 -1190 {lab=GND}
N 900 -1220 900 -1190 {
lab=GND}
N 1020 -1330 1060 -1330 {lab=GND}
N 1020 -1330 1020 -1190 {lab=GND}
N 900 -1190 1020 -1190 {lab=GND}
N 980 -1370 980 -1230 {lab=#net3}
N 900 -1370 980 -1370 {lab=#net3}
N 1100 -1280 1100 -1240 {lab=Vcm}
N 1100 -1180 1100 -1140 {lab=vinn}
N 1200 -1280 1200 -1240 {lab=Vcm}
N 1100 -1280 1200 -1280 {
lab=Vcm}
N 1200 -1180 1200 -1120 {lab=GND}
N 900 -1190 900 -1120 {lab=GND}
N 780 -1180 780 -1120 {lab=GND}
N 780 -380 780 -340 {lab=VDD}
N 780 -280 780 -240 {lab=GND}
N 900 -380 900 -340 {lab=amp_core_en}
N 900 -280 900 -240 {lab=GND}
N 1230 -330 1260 -330 {
lab=voutp}
N 1230 -290 1260 -290 {
lab=voutn}
N 900 -940 900 -900 {lab=VDD}
N 900 -700 900 -640 {lab=GND}
N 1200 -1300 1200 -1280 {lab=Vcm}
N 1300 -820 1340 -820 {lab=voutn}
N 1200 -780 1340 -780 {lab=voutp}
N 1200 -780 1200 -740 {lab=voutp}
N 1000 -780 1200 -780 {lab=voutp}
N 1200 -680 1200 -640 {lab=GND}
N 1300 -820 1300 -740 {lab=voutn}
N 1000 -820 1300 -820 {lab=voutn}
N 1300 -680 1300 -640 {lab=GND}
N 1300 -380 1300 -340 {lab=vout}
N 1300 -280 1300 -240 {lab=GND}
N 680 -840 720 -840 {lab=vinp}
N 680 -800 820 -800 {lab=Vcm}
N 680 -760 720 -760 {lab=vinn}
C {devices/code_shown.sym} 60 -1630 0 0 {name=NGSPICE
only_toplevel=true 
value="
.param temp=27
* 228fF DAC + (1 - beta) * 3.3pF
.param Cload=3.49p
.param R1=1e-3
*.param R1=300e6
.options savecurrents klu method=gear reltol=1e-2 abstol=1e-15 gmin=1e-15 rshunt=1e12
.control

optran 0 0 0 1u 1m 0

save all

set wr_vecnames
set wr_singlescale

* User Constants
let f_min = 0.01
let f_max = 1G
let fdc = 1

* Operating Point Analysis
op
remzerovec
write amplifier_core_simplified_tb_ac_ol.raw
set appendwrite

* AC Analysis
ac dec 101 $&const.f_min $&const.f_max
remzerovec
write amplifier_core_simplified_tb_ac_ol.raw

* Plotting
let Aol = v(vout)/v(vind)		
let Aol_dB = vdb(Aol)
let Aol_arg = 180/PI*cphase(Aol)

plot Aol_dB ylabel 'Magnitude'
plot Aol_arg ylabel 'Phase'
plot Aol_dB Aol_arg ylabel 'Magnitude, Phase'

* Measurements
* DC open-loop gain
meas ac Adc_ol_dB find Aol_dB when frequency = fdc
print Adc_ol_dB

* 3dB cut-off frequency
let Aol_fc = Adc_ol_dB - 3
meas ac fc find frequency when Aol_dB = Aol_fc
print fc

* Unity Gain Bandwidth (Aol=1 or Aol_dB = 0dB)
meas ac UGB when Aol_dB=0  fall=1
print UGB

* Phase Margin at Aol=1 or Aol_dB = 0dB
meas ac arg_0dB find Aol_arg when Aol_dB=0
let PM = 180-abs(arg_0dB)
print PM

* Write Data
set wr_vecnames
set wr_singlescale
wrdata /foss/designs/SG13G2_ATBS-ADC-main/python/plot_simulations/data/amplifier_core_simplified_tb_ac_ol.txt v(Aol_dB) v(Aol_arg)

*quit
.endc
"}
C {devices/launcher.sym} 1680 -1280 0 0 {name=h2
descr="Simulate" 
tclcommand="xschem save; xschem netlist; xschem simulate"
}
C {title-3.sym} 0 0 0 0 {name=l2 author="Simon Dorrer" rev=1.0 lock=true}
C {devices/launcher.sym} 1680 -1160 0 0 {name=h1
descr="Load waves" 
tclcommand="xschem raw_read $netlist_dir/amplifier_core_simplified_tb_ac_ol.raw ac"
}
C {devices/launcher.sym} 1680 -1220 0 0 {name=h3
descr="Annotate OP" 
tclcommand="set show_hidden_texts 1; xschem annotate_op"
}
C {devices/code_shown.sym} 60 -330 0 0 {name=MODEL only_toplevel=true
format="tcleval( @value )"
value="
.lib cornerMOSlv.lib mos_tt
.lib cornerMOShv.lib mos_tt
.lib cornerRES.lib res_typ
"}
C {devices/gnd.sym} 1200 -640 0 0 {name=l1 lab=GND}
C {devices/vsource.sym} 780 -310 0 0 {name=VDD value=1.5}
C {devices/gnd.sym} 780 -240 0 0 {name=l3 lab=GND}
C {devices/capa.sym} 1200 -710 0 0 {name=C1
m=1
value=\{Cload\}
footprint=1206
device="ceramic capacitor"}
C {vdd.sym} 780 -380 0 0 {name=l7 lab=VDD}
C {vdd.sym} 900 -940 0 0 {name=l8 lab=VDD}
C {devices/gnd.sym} 900 -640 0 0 {name=l9 lab=GND}
C {lab_pin.sym} 1340 -780 0 1 {name=p3 sig_type=std_logic lab=voutp}
C {lab_pin.sym} 1340 -820 0 1 {name=p4 sig_type=std_logic lab=voutn}
C {devices/lab_pin.sym} 1100 -1420 0 0 {name=l10 sig_type=std_logic lab=vinp}
C {devices/lab_pin.sym} 1100 -1140 0 0 {name=l11 sig_type=std_logic lab=vinn
}
C {devices/lab_pin.sym} 760 -1300 0 0 {name=l13 sig_type=std_logic lab=vind}
C {devices/capa.sym} 1300 -710 0 0 {name=C2
m=1
value=\{Cload\}
footprint=1206
device="ceramic capacitor"}
C {devices/gnd.sym} 1300 -640 0 0 {name=l30 lab=GND}
C {devices/gnd.sym} 900 -240 0 0 {name=l6 lab=GND}
C {devices/vsource.sym} 1200 -1210 0 0 {name=Vcm value=0.75
}
C {devices/vcvs.sym} 1100 -1210 0 0 {name=E4 value=0.5}
C {devices/vcvs.sym} 1100 -1350 0 0 {name=E5 value=0.5}
C {devices/lab_pin.sym} 1200 -1300 1 0 {name=l38 sig_type=std_logic lab=Vcm}
C {devices/gnd.sym} 780 -1120 0 0 {name=l39 lab=GND}
C {devices/gnd.sym} 1200 -1120 0 0 {name=l40 lab=GND}
C {devices/vcvs.sym} 900 -1280 0 0 {name=E6 value=1}
C {devices/gnd.sym} 900 -1120 0 0 {name=l41 lab=GND}
C {devices/vsource.sym} 900 -310 0 0 {name=V1 value=1.5}
C {devices/lab_pin.sym} 1300 -380 0 1 {name=l12 sig_type=std_logic lab=vout}
C {devices/vcvs.sym} 1300 -310 0 0 {name=E1 value=1}
C {devices/gnd.sym} 1300 -240 0 0 {name=l14 lab=GND}
C {devices/lab_pin.sym} 1230 -290 2 1 {name=l15 sig_type=std_logic lab=voutn
}
C {devices/lab_pin.sym} 1230 -330 0 0 {name=l23 sig_type=std_logic lab=voutp
}
C {devices/vsource.sym} 780 -1210 0 0 {name=vin value="0 AC 1"
}
C {bio_amplifier/amplifier_core/amplifier_core_simplified.sym} 900 -800 0 0 {name=x1}
C {devices/lab_pin.sym} 900 -380 2 0 {name=l4 sig_type=std_logic lab=amp_core_en}
C {devices/lab_pin.sym} 920 -920 2 0 {name=l24 sig_type=std_logic lab=amp_core_en}
C {devices/lab_pin.sym} 680 -800 0 0 {name=l5 sig_type=std_logic lab=Vcm}
C {devices/lab_pin.sym} 680 -840 0 0 {name=l16 sig_type=std_logic lab=vinp}
C {devices/lab_pin.sym} 680 -760 0 0 {name=l19 sig_type=std_logic lab=vinn
}
C {res.sym} 750 -840 1 1 {name=R1
value=\{R1\}
footprint=1206
device=resistor
m=1}
C {res.sym} 750 -760 3 1 {name=R2
value=\{R1\}
footprint=1206
device=resistor
m=1}
