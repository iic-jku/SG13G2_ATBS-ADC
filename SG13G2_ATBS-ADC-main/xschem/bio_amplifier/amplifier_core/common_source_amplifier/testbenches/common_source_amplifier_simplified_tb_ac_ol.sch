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
B 2 1640 -1200 2440 -800 {flags=graph
y1=-77
y2=-13
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
P 4 5 1330 -860 1330 -760 1530 -760 1530 -860 1330 -860 {dash = 8}
T {Testbench for AC OL analysis - Common-Source Amplifier with Current-Source Load} 170 -1720 0 0 1 1 {}
T {Capacitive Load (Comparator, DAC, etc.)} 1290 -650 0 0 0.25 0.25 {}
N 1180 -440 1180 -400 {lab=VDD}
N 1180 -340 1180 -300 {lab=GND}
N 880 -1400 880 -1340 {lab=vind}
N 860 -1400 880 -1400 {lab=vind}
N 880 -1400 960 -1400 {lab=vind}
N 960 -1360 960 -1320 {lab=GND}
N 960 -1320 1000 -1320 {lab=GND}
N 1000 -1350 1000 -1320 {
lab=GND}
N 1200 -1420 1200 -1380 {lab=#net1}
N 1200 -1520 1200 -1480 {lab=vinp}
N 1080 -1330 1160 -1330 {lab=#net2}
N 1080 -1470 1160 -1470 {lab=#net2}
N 1000 -1470 1000 -1410 {lab=#net2}
N 1120 -1290 1160 -1290 {lab=GND}
N 1000 -1320 1000 -1290 {
lab=GND}
N 1120 -1430 1160 -1430 {lab=GND}
N 1120 -1430 1120 -1290 {lab=GND}
N 1000 -1290 1120 -1290 {lab=GND}
N 1080 -1470 1080 -1330 {lab=#net2}
N 1000 -1470 1080 -1470 {lab=#net2}
N 1200 -1380 1200 -1340 {lab=#net1}
N 1200 -1280 1200 -1240 {lab=vinn}
N 1300 -1380 1300 -1340 {lab=#net1}
N 1200 -1380 1300 -1380 {
lab=#net1}
N 1300 -1280 1300 -1220 {lab=GND}
N 1000 -1290 1000 -1220 {lab=GND}
N 880 -1280 880 -1220 {lab=GND}
N 1460 -920 1500 -920 {lab=voutn}
N 1360 -880 1500 -880 {lab=voutp}
N 1360 -880 1360 -840 {lab=voutp}
N 1460 -920 1460 -840 {lab=voutn}
N 920 -940 960 -940 {lab=vinp}
N 920 -860 960 -860 {lab=vinn}
N 1200 -920 1460 -920 {lab=voutn}
N 1200 -880 1360 -880 {lab=voutp}
N 1390 -390 1420 -390 {
lab=voutp}
N 1390 -350 1420 -350 {
lab=voutn}
N 1460 -440 1460 -400 {lab=vout}
N 1460 -340 1460 -300 {lab=GND}
N 1360 -780 1360 -680 {lab=GND}
N 1460 -780 1460 -680 {lab=GND}
N 1060 -800 1060 -680 {lab=GND}
N 1060 -1100 1060 -1000 {lab=VDD}
N 1000 -1100 1000 -1000 {lab=VDD}
N 1000 -800 1000 -680 {lab=GND}
N 620 -440 660 -440 {lab=VDD}
N 620 -580 620 -440 {lab=VDD}
N 620 -580 800 -580 {lab=VDD}
N 800 -580 800 -540 {lab=VDD}
N 800 -620 800 -580 {lab=VDD}
N 800 -340 800 -300 {lab=GND}
N 940 -460 980 -460 {lab=Vbiasc}
N 940 -420 980 -420 {lab=Vbias}
N 1100 -1040 1100 -1000 {lab=Vbiasc}
N 1140 -1040 1140 -1000 {lab=Vbias}
C {devices/code_shown.sym} 40 -1390 0 0 {name=NGSPICE
only_toplevel=true 
value="
.param temp=27
* 228fF DAC + (1 - beta) * 3.3pF
.param Cload=3.49p
.param Vgs=0.345

.options savecurrents klu reltol=1e-3 abstol=1e-15 gmin=1e-15
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
write common_source_amplifier_simplified_tb_ac_ol.raw
set appendwrite

* AC Analysis
ac dec 101 $&const.f_min $&const.f_max
remzerovec
write common_source_amplifier_simplified_tb_ac_ol.raw

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
wrdata /foss/designs/SG13G2_ATBS-ADC-main/python/plot_simulations/data/common_source_amplifier_simplified_tb_ac_ol.txt v(Aol_dB) v(Aol_arg)

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
tclcommand="xschem raw_read $netlist_dir/common_source_amplifier_simplified_tb_ac_ol.raw ac"
}
C {devices/launcher.sym} 1700 -1300 0 0 {name=h3
descr="Annotate OP" 
tclcommand="set show_hidden_texts 1; xschem annotate_op"
}
C {devices/code_shown.sym} 40 -1550 0 0 {name=MODEL only_toplevel=true
format="tcleval( @value )"
value="
.lib cornerMOSlv.lib mos_tt
.lib cornerMOShv.lib mos_tt
.lib cornerRES.lib res_typ
"}
C {devices/vsource.sym} 1180 -370 0 0 {name=VDD value=1.5}
C {devices/gnd.sym} 1180 -300 0 0 {name=l3 lab=GND}
C {vdd.sym} 1180 -440 0 0 {name=l7 lab=VDD}
C {devices/lab_pin.sym} 1200 -1520 0 0 {name=l1 sig_type=std_logic lab=vinp}
C {devices/lab_pin.sym} 1200 -1240 0 0 {name=l4 sig_type=std_logic lab=vinn
}
C {devices/lab_pin.sym} 860 -1400 0 0 {name=l15 sig_type=std_logic lab=vind}
C {devices/vsource.sym} 1300 -1310 0 0 {name=Vgs value=\{Vgs\}
}
C {devices/vcvs.sym} 1200 -1310 0 0 {name=E4 value=0.5}
C {devices/vcvs.sym} 1200 -1450 0 0 {name=E5 value=0.5}
C {devices/gnd.sym} 880 -1220 0 0 {name=l16 lab=GND}
C {devices/gnd.sym} 1300 -1220 0 0 {name=l40 lab=GND}
C {devices/vcvs.sym} 1000 -1380 0 0 {name=E6 value=1}
C {devices/gnd.sym} 1000 -1220 0 0 {name=l41 lab=GND}
C {devices/vsource.sym} 880 -1310 0 0 {name=vin value="dc 0 ac 1"
}
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
C {vdd.sym} 1060 -1100 0 0 {name=l6 lab=VDD}
C {devices/lab_pin.sym} 1460 -440 0 1 {name=l13 sig_type=std_logic lab=vout}
C {devices/vcvs.sym} 1460 -370 0 0 {name=E1 value=1}
C {devices/gnd.sym} 1460 -300 0 0 {name=l17 lab=GND}
C {devices/lab_pin.sym} 1390 -350 2 1 {name=l18 sig_type=std_logic lab=voutn
}
C {devices/lab_pin.sym} 1390 -390 0 0 {name=l23 sig_type=std_logic lab=voutp
}
C {devices/gnd.sym} 1060 -680 0 0 {name=l11 lab=GND}
C {vdd.sym} 1000 -1100 0 0 {name=l14 lab=VDD}
C {devices/gnd.sym} 1000 -680 0 0 {name=l12 lab=GND}
C {bio_amplifier/amplifier_core/common_source_amplifier/common_source_amplifier_simplified.sym} 1080 -900 0 0 {name=x1}
C {bio_amplifier/amplifier_core/bias_circuit/bias_circuit_2/bias_circuit_2.sym} 800 -440 0 0 {name=x2}
C {vdd.sym} 800 -620 0 0 {name=l19 lab=VDD}
C {devices/gnd.sym} 800 -300 0 0 {name=l20 lab=GND}
C {devices/lab_pin.sym} 980 -460 0 1 {name=l21 sig_type=std_logic lab=Vbiasc}
C {devices/lab_pin.sym} 980 -420 0 1 {name=l22 sig_type=std_logic lab=Vbias}
C {devices/lab_pin.sym} 1100 -1040 1 0 {name=l10 sig_type=std_logic lab=Vbiasc}
C {devices/lab_pin.sym} 1140 -1040 1 0 {name=l24 sig_type=std_logic lab=Vbias}
