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
P 4 5 1370 -820 1370 -720 1570 -720 1570 -820 1370 -820 {dash = 8}
T {Testbench for AC OL analysis - Telescopic OTA} 550 -1740 0 0 1 1 {}
T {Capacitive Load (Comparator, DAC, etc.)} 1330 -610 0 0 0.25 0.25 {}
N 1100 -480 1100 -440 {lab=VDD}
N 1100 -380 1100 -340 {lab=GND}
N 900 -1360 900 -1300 {lab=vind}
N 880 -1360 900 -1360 {lab=vind}
N 900 -1360 980 -1360 {lab=vind}
N 980 -1320 980 -1280 {lab=GND}
N 980 -1280 1020 -1280 {lab=GND}
N 1020 -1310 1020 -1280 {
lab=GND}
N 1220 -1380 1220 -1340 {lab=Vcm}
N 1220 -1480 1220 -1440 {lab=vinp}
N 1100 -1290 1180 -1290 {lab=#net1}
N 1100 -1430 1180 -1430 {lab=#net1}
N 1020 -1430 1020 -1370 {lab=#net1}
N 1140 -1250 1180 -1250 {lab=GND}
N 1020 -1280 1020 -1250 {
lab=GND}
N 1140 -1390 1180 -1390 {lab=GND}
N 1140 -1390 1140 -1250 {lab=GND}
N 1020 -1250 1140 -1250 {lab=GND}
N 1100 -1430 1100 -1290 {lab=#net1}
N 1020 -1430 1100 -1430 {lab=#net1}
N 1220 -1340 1220 -1300 {lab=Vcm}
N 1220 -1240 1220 -1200 {lab=vinn}
N 1320 -1340 1320 -1300 {lab=Vcm}
N 1220 -1340 1320 -1340 {
lab=Vcm}
N 1320 -1240 1320 -1180 {lab=GND}
N 1020 -1250 1020 -1180 {lab=GND}
N 900 -1240 900 -1180 {lab=GND}
N 1500 -880 1540 -880 {lab=voutn}
N 1400 -840 1540 -840 {lab=voutp}
N 1400 -840 1400 -800 {lab=voutp}
N 1500 -880 1500 -800 {lab=voutn}
N 960 -900 1000 -900 {lab=vinp}
N 960 -820 1000 -820 {lab=vinn}
N 1240 -880 1500 -880 {lab=voutn}
N 1240 -840 1400 -840 {lab=voutp}
N 1430 -430 1460 -430 {
lab=voutp}
N 1430 -390 1460 -390 {
lab=voutn}
N 1500 -480 1500 -440 {lab=vout}
N 1500 -380 1500 -340 {lab=GND}
N 1400 -740 1400 -640 {lab=GND}
N 1500 -740 1500 -640 {lab=GND}
N 960 -860 1000 -860 {lab=Vcm}
N 1320 -1340 1360 -1340 {lab=Vcm}
N 1100 -760 1100 -740 {lab=GND}
N 1100 -1060 1100 -960 {lab=VDD}
N 1140 -1000 1140 -960 {lab=Vbiasc}
N 1180 -1000 1180 -960 {lab=Vbias}
N 600 -500 640 -500 {lab=VDD}
N 600 -640 780 -640 {lab=VDD}
N 780 -640 780 -600 {lab=VDD}
N 780 -680 780 -640 {lab=VDD}
N 920 -520 960 -520 {lab=Vbiasc}
N 920 -480 960 -480 {lab=Vbias}
N 1040 -760 1040 -740 {lab=GND}
N 780 -400 780 -340 {lab=GND}
N 600 -640 600 -500 {lab=VDD}
N 1040 -1060 1040 -960 {lab=VDD}
C {devices/code_shown.sym} 60 -1430 0 0 {name=NGSPICE
only_toplevel=true 
value="
.param temp=27
.param Cload=1p

.options savecurrents reltol=1e-3 abstol=1e-15 gmin=1e-15
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
write telescopic_ota_simplified_tb_ac_ol.raw
set appendwrite

* AC Analysis
ac dec 101 $&const.f_min $&const.f_max
remzerovec
write telescopic_ota_simplified_tb_ac_ol.raw

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
wrdata /foss/designs/SG13G2_ATBS-ADC-main/python/plot_simulations/data/telescopic_ota_simplified_tb_ac_ol.txt v(Aol_dB) v(Aol_arg)

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
tclcommand="xschem raw_read $netlist_dir/telescopic_ota_simplified_tb_ac_ol.raw ac"
}
C {devices/launcher.sym} 1700 -1300 0 0 {name=h3
descr="Annotate OP" 
tclcommand="set show_hidden_texts 1; xschem annotate_op"
}
C {devices/code_shown.sym} 60 -1610 0 0 {name=MODEL only_toplevel=true
format="tcleval( @value )"
value="
.lib cornerMOSlv.lib mos_tt
.lib cornerMOShv.lib mos_tt
.lib cornerRES.lib res_typ
"}
C {devices/vsource.sym} 1100 -410 0 0 {name=VDD value=1.5}
C {devices/gnd.sym} 1100 -340 0 0 {name=l3 lab=GND}
C {vdd.sym} 1100 -480 0 0 {name=l7 lab=VDD}
C {devices/lab_pin.sym} 1220 -1480 0 0 {name=l1 sig_type=std_logic lab=vinp}
C {devices/lab_pin.sym} 1220 -1200 0 0 {name=l4 sig_type=std_logic lab=vinn
}
C {devices/lab_pin.sym} 880 -1360 0 0 {name=l15 sig_type=std_logic lab=vind}
C {devices/vsource.sym} 1320 -1270 0 0 {name=Vcm value=0.75
}
C {devices/vcvs.sym} 1220 -1270 0 0 {name=E4 value=0.5}
C {devices/vcvs.sym} 1220 -1410 0 0 {name=E5 value=0.5}
C {devices/gnd.sym} 900 -1180 0 0 {name=l16 lab=GND}
C {devices/gnd.sym} 1320 -1180 0 0 {name=l40 lab=GND}
C {devices/vcvs.sym} 1020 -1340 0 0 {name=E6 value=1}
C {devices/gnd.sym} 1020 -1180 0 0 {name=l41 lab=GND}
C {devices/vsource.sym} 900 -1270 0 0 {name=vin value="dc 0 ac 1"
}
C {devices/lab_pin.sym} 960 -900 0 0 {name=l5 sig_type=std_logic lab=vinp}
C {devices/lab_pin.sym} 960 -820 0 0 {name=l8 sig_type=std_logic lab=vinn
}
C {devices/gnd.sym} 1400 -640 0 0 {name=l9 lab=GND}
C {lab_pin.sym} 1540 -840 0 1 {name=p3 sig_type=std_logic lab=voutp}
C {lab_pin.sym} 1540 -880 0 1 {name=p4 sig_type=std_logic lab=voutn}
C {devices/gnd.sym} 1500 -640 0 0 {name=l30 lab=GND}
C {devices/capa.sym} 1500 -770 0 0 {name=C2
m=1
value=\{Cload\}
footprint=1206
device="ceramic capacitor"}
C {devices/capa.sym} 1400 -770 0 0 {name=C3
m=1
value=\{Cload\}
footprint=1206
device="ceramic capacitor"}
C {vdd.sym} 1100 -1060 0 0 {name=l6 lab=VDD}
C {devices/lab_pin.sym} 1500 -480 0 1 {name=l13 sig_type=std_logic lab=vout}
C {devices/vcvs.sym} 1500 -410 0 0 {name=E1 value=1}
C {devices/gnd.sym} 1500 -340 0 0 {name=l17 lab=GND}
C {devices/lab_pin.sym} 1430 -390 2 1 {name=l18 sig_type=std_logic lab=voutn
}
C {devices/lab_pin.sym} 1430 -430 0 0 {name=l23 sig_type=std_logic lab=voutp
}
C {devices/gnd.sym} 1100 -740 0 0 {name=l11 lab=GND}
C {devices/lab_pin.sym} 960 -860 0 0 {name=l38 sig_type=std_logic lab=Vcm
}
C {devices/lab_pin.sym} 1360 -1340 2 0 {name=l14 sig_type=std_logic lab=Vcm
}
C {devices/gnd.sym} 1040 -740 0 0 {name=l12 lab=GND}
C {vdd.sym} 1040 -1060 0 0 {name=l19 lab=VDD}
C {bio_amplifier/amplifier_core/telescopic_ota/telescopic_ota_simplified.sym} 1120 -860 0 0 {name=x1}
C {devices/lab_pin.sym} 1140 -1000 1 0 {name=l51 sig_type=std_logic lab=Vbiasc}
C {devices/lab_pin.sym} 1180 -1000 1 0 {name=l52 sig_type=std_logic lab=Vbias}
C {bio_amplifier/amplifier_core/bias_circuit/bias_circuit_2/bias_circuit_2.sym} 780 -500 0 0 {name=x3}
C {devices/gnd.sym} 780 -340 0 0 {name=l47 lab=GND}
C {devices/lab_pin.sym} 960 -520 0 1 {name=l49 sig_type=std_logic lab=Vbiasc}
C {devices/lab_pin.sym} 960 -480 0 1 {name=l50 sig_type=std_logic lab=Vbias}
C {vdd.sym} 780 -680 0 0 {name=l39 lab=VDD}
