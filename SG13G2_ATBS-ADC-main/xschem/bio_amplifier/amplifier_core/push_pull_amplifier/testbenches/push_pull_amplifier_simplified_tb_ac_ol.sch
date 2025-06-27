v {xschem version=3.4.7 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
B 2 1640 -780 2440 -380 {flags=graph
y1=-180
y2=180
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=-14.042356
x2=-3.0423544
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
B 2 1640 -1200 2440 -800 {flags=graph
y1=-129.87291
y2=-19.872912
ypos1=0
ypos2=2
divy=5
subdivy=4
unity=1
x1=-14.042356
x2=-3.0423544
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
P 4 5 1330 -800 1330 -700 1530 -700 1530 -800 1330 -800 {dash = 8}
T {Testbench for AC OL analysis - Push-Pull Amplifier (high gm, high output voltage swing)} 160 -1740 0 0 1 1 {}
T {Capacitive Load (Comparator, DAC, etc.)} 1290 -590 0 0 0.25 0.25 {}
N 1180 -400 1180 -360 {lab=VDD}
N 1180 -300 1180 -260 {lab=GND}
N 860 -1360 860 -1300 {lab=vind}
N 840 -1360 860 -1360 {lab=vind}
N 860 -1360 940 -1360 {lab=vind}
N 940 -1320 940 -1280 {lab=GND}
N 940 -1280 980 -1280 {lab=GND}
N 980 -1310 980 -1280 {
lab=GND}
N 1180 -1380 1180 -1340 {lab=#net1}
N 1180 -1480 1180 -1440 {lab=vinp}
N 1060 -1290 1140 -1290 {lab=#net2}
N 1060 -1430 1140 -1430 {lab=#net2}
N 980 -1430 980 -1370 {lab=#net2}
N 1100 -1250 1140 -1250 {lab=GND}
N 980 -1280 980 -1250 {
lab=GND}
N 1100 -1390 1140 -1390 {lab=GND}
N 1100 -1390 1100 -1250 {lab=GND}
N 980 -1250 1100 -1250 {lab=GND}
N 1060 -1430 1060 -1290 {lab=#net2}
N 980 -1430 1060 -1430 {lab=#net2}
N 1180 -1340 1180 -1300 {lab=#net1}
N 1180 -1240 1180 -1200 {lab=vinn}
N 1280 -1340 1280 -1300 {lab=#net1}
N 1180 -1340 1280 -1340 {
lab=#net1}
N 1280 -1240 1280 -1180 {lab=GND}
N 980 -1250 980 -1180 {lab=GND}
N 860 -1240 860 -1180 {lab=GND}
N 1460 -860 1500 -860 {lab=voutn}
N 1360 -820 1500 -820 {lab=voutp}
N 1360 -820 1360 -780 {lab=voutp}
N 1460 -860 1460 -780 {lab=voutn}
N 920 -880 960 -880 {lab=vinp}
N 920 -800 960 -800 {lab=vinn}
N 1200 -860 1460 -860 {lab=voutn}
N 1200 -820 1360 -820 {lab=voutp}
N 1390 -350 1420 -350 {
lab=voutp}
N 1390 -310 1420 -310 {
lab=voutn}
N 1460 -400 1460 -360 {lab=vout}
N 1460 -300 1460 -260 {lab=GND}
N 1360 -720 1360 -620 {lab=GND}
N 1460 -720 1460 -620 {lab=GND}
N 1060 -740 1060 -620 {lab=GND}
N 1060 -1040 1060 -940 {lab=VDD}
N 620 -400 660 -400 {lab=VDD}
N 620 -540 800 -540 {lab=VDD}
N 800 -540 800 -500 {lab=VDD}
N 800 -580 800 -540 {lab=VDD}
N 940 -420 980 -420 {lab=Vbiasc}
N 940 -380 980 -380 {lab=Vbias}
N 1100 -980 1100 -940 {lab=Vbiasc}
N 1140 -980 1140 -940 {lab=Vbias}
N 800 -300 800 -260 {lab=GND}
N 1000 -740 1000 -620 {lab=GND}
N 1000 -1040 1000 -940 {lab=VDD}
N 620 -540 620 -400 {lab=VDD}
C {devices/code_shown.sym} 40 -1430 0 0 {name=NGSPICE
only_toplevel=true 
value="
.param temp=27
* 228fF DAC + (1 - beta) * 3.3pF
.param Cload=3.49p
.param Vgs=0.345
* Power-Down
* .param Vgs=0.047

.options savecurrents reltol=1e-3 abstol=1e-12 gmin=1e-15
.control
save all

set wr_vecnames
set wr_singlescale

* User Constants
let f_min = 0.01
let f_max = 1G
let fdc = 10

* Operating Point Analysis
op
remzerovec
write push_pull_amplifier_simplified_tb_ac_ol.raw
set appendwrite

* AC Analysis
ac dec 101 $&const.f_min $&const.f_max
remzerovec
write push_pull_amplifier_simplified_tb_ac_ol.raw

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
let PM = abs(arg_0dB)
print PM

* RHZ Frequency
meas ac Adc_ol_dB_min MIN Aol_dB
let Aol_fz = Adc_ol_dB_min + 3
meas ac fz find frequency when Aol_dB = Aol_fz
print fz

* Write Data
set wr_vecnames
set wr_singlescale
wrdata /foss/designs/SG13G2_ATBS-ADC-main/python/plot_simulations/data/push_pull_amplifier_simplified_tb_ac_ol.txt v(Aol_dB) v(Aol_arg)

*quit
.endc
"}
C {devices/launcher.sym} 1700 -1360 0 0 {name=h2
descr="Simulate" 
tclcommand="xschem save; xschem netlist; xschem simulate"
}
C {title-3.sym} 0 0 0 0 {name=l2 author="Simon Dorrer" rev=1.0 lock=true}
C {devices/launcher.sym} 1700 -1240 0 0 {name=h1
descr="Load waves" 
tclcommand="xschem raw_read $netlist_dir/push_pull_amplifier_simplified_tb_ac_ol.raw ac"
}
C {devices/launcher.sym} 1700 -1300 0 0 {name=h3
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
C {devices/vsource.sym} 1180 -330 0 0 {name=VDD value=1.5}
C {devices/gnd.sym} 1180 -260 0 0 {name=l3 lab=GND}
C {vdd.sym} 1180 -400 0 0 {name=l7 lab=VDD}
C {devices/lab_pin.sym} 1180 -1480 0 0 {name=l1 sig_type=std_logic lab=vinp}
C {devices/lab_pin.sym} 1180 -1200 0 0 {name=l4 sig_type=std_logic lab=vinn
}
C {devices/lab_pin.sym} 840 -1360 0 0 {name=l15 sig_type=std_logic lab=vind}
C {devices/vsource.sym} 1280 -1270 0 0 {name=Vgs value=\{Vgs\}
}
C {devices/vcvs.sym} 1180 -1270 0 0 {name=E4 value=0.5}
C {devices/vcvs.sym} 1180 -1410 0 0 {name=E5 value=0.5}
C {devices/gnd.sym} 860 -1180 0 0 {name=l16 lab=GND}
C {devices/gnd.sym} 1280 -1180 0 0 {name=l40 lab=GND}
C {devices/vcvs.sym} 980 -1340 0 0 {name=E6 value=1}
C {devices/gnd.sym} 980 -1180 0 0 {name=l41 lab=GND}
C {devices/vsource.sym} 860 -1270 0 0 {name=vin value="dc 0 ac 1"
}
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
C {devices/lab_pin.sym} 1460 -400 0 1 {name=l13 sig_type=std_logic lab=vout}
C {devices/vcvs.sym} 1460 -330 0 0 {name=E1 value=1}
C {devices/gnd.sym} 1460 -260 0 0 {name=l17 lab=GND}
C {devices/lab_pin.sym} 1390 -310 2 1 {name=l18 sig_type=std_logic lab=voutn
}
C {devices/lab_pin.sym} 1390 -350 0 0 {name=l23 sig_type=std_logic lab=voutp
}
C {devices/gnd.sym} 1060 -620 0 0 {name=l11 lab=GND}
C {vdd.sym} 1060 -1040 0 0 {name=l10 lab=VDD}
C {vdd.sym} 1000 -1040 0 0 {name=l12 lab=VDD}
C {devices/gnd.sym} 1000 -620 0 0 {name=l14 lab=GND}
C {bio_amplifier/amplifier_core/push_pull_amplifier/push_pull_amplifier_simplified.sym} 1080 -840 0 0 {name=x1}
C {bio_amplifier/amplifier_core/bias_circuit/bias_circuit_2/bias_circuit_2.sym} 800 -400 0 0 {name=x2}
C {vdd.sym} 800 -580 0 0 {name=l19 lab=VDD}
C {devices/gnd.sym} 800 -260 0 0 {name=l20 lab=GND}
C {devices/lab_pin.sym} 980 -420 0 1 {name=l21 sig_type=std_logic lab=Vbiasc}
C {devices/lab_pin.sym} 980 -380 0 1 {name=l22 sig_type=std_logic lab=Vbias}
C {devices/lab_pin.sym} 1100 -980 1 0 {name=l6 sig_type=std_logic lab=Vbiasc}
C {devices/lab_pin.sym} 1140 -980 1 0 {name=l24 sig_type=std_logic lab=Vbias}
