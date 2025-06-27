v {xschem version=3.4.7 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
B 2 1640 -1000 2440 -600 {flags=graph
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
node="\\"DM Phase; ph(vout_dm)\\"
\\"CM Phase; ph(vout_cm)\\""
color="4 7"
dataset=-1
unitx=1
logx=1
logy=0
linewidth_mult=4}
B 2 1640 -580 2440 -180 {flags=graph
y1=27
y2=150
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
node="\\"CMRR; vout_dm vout_cm / db20()\\""
color=4
dataset=-1
unitx=1
logx=1
logy=0
linewidth_mult=4}
B 2 1640 -1420 2440 -1020 {flags=graph
y1=-120
y2=39
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
node="\\"DM Gain; vout_dm vind / db20()\\"
\\"CM Gain; vout_cm vind / db20()\\""
color="4 7"
dataset=-1
unitx=1
logx=1
logy=0
linewidth_mult=4}
P 4 5 1330 -620 1330 -520 1530 -520 1530 -620 1330 -620 {dash = 8}
P 4 5 1330 -1360 1330 -1260 1530 -1260 1530 -1360 1330 -1360 {dash = 8}
T {Testbench for AC OL analysis - Telescopic OTA} 550 -1740 0 0 1 1 {}
T {Capacitive Load (Comparator, DAC, etc.)} 1290 -470 0 0 0.25 0.25 {}
T {Output CM voltage: vout_cm = (voutp_cm + voutn_cm)/2} 1260 -200 0 0 0.2 0.2 {}
T {Output DM voltage: vout_dm = voutp_dm - voutn_dm} 1260 -950 0 0 0.2 0.2 {}
T {Capacitive Load (Comparator, DAC, etc.)} 1290 -1210 0 0 0.25 0.25 {}
T {-0.5 for CM} 850 -240 0 0 0.3 0.3 {}
N 1140 -1120 1140 -1080 {lab=VDD}
N 1140 -1020 1140 -980 {lab=GND}
N 580 -420 580 -360 {lab=vind}
N 560 -420 580 -420 {lab=vind}
N 580 -420 660 -420 {lab=vind}
N 660 -380 660 -340 {lab=GND}
N 660 -340 700 -340 {lab=GND}
N 700 -370 700 -340 {
lab=GND}
N 900 -440 900 -400 {lab=Vcm}
N 900 -540 900 -500 {lab=vinp2}
N 780 -350 860 -350 {lab=#net1}
N 780 -490 860 -490 {lab=#net1}
N 700 -490 700 -430 {lab=#net1}
N 820 -310 860 -310 {lab=GND}
N 700 -340 700 -310 {
lab=GND}
N 820 -450 860 -450 {lab=GND}
N 820 -450 820 -310 {lab=GND}
N 700 -310 820 -310 {lab=GND}
N 780 -490 780 -350 {lab=#net1}
N 700 -490 780 -490 {lab=#net1}
N 900 -400 900 -360 {lab=Vcm}
N 900 -300 900 -260 {lab=vinn2}
N 1000 -400 1000 -360 {lab=Vcm}
N 900 -400 1000 -400 {
lab=Vcm}
N 1000 -300 1000 -240 {lab=GND}
N 700 -310 700 -240 {lab=GND}
N 580 -300 580 -240 {lab=GND}
N 1460 -680 1500 -680 {lab=voutn_cm}
N 1360 -640 1500 -640 {lab=voutp_cm}
N 1360 -640 1360 -600 {lab=voutp_cm}
N 1460 -680 1460 -600 {lab=voutn_cm}
N 920 -700 960 -700 {lab=vinp2}
N 920 -620 960 -620 {lab=vinn2}
N 1200 -680 1460 -680 {lab=voutn_cm}
N 1200 -640 1360 -640 {lab=voutp_cm}
N 920 -660 960 -660 {lab=Vcm}
N 1000 -400 1040 -400 {lab=Vcm}
N 1060 -560 1060 -540 {lab=GND}
N 1060 -860 1060 -760 {lab=VDD}
N 1390 -1070 1420 -1070 {
lab=voutp_dm}
N 1390 -1030 1420 -1030 {
lab=voutn_dm}
N 1460 -1120 1460 -1080 {lab=vout_dm}
N 1460 -1020 1460 -980 {lab=GND}
N 1460 -420 1460 -380 {lab=vout_cm}
N 1460 -320 1460 -240 {lab=GND}
N 1340 -260 1340 -240 {lab=GND}
N 1340 -330 1420 -330 {lab=#net2}
N 1340 -330 1340 -320 {lab=#net2}
N 1260 -270 1300 -270 {lab=GND}
N 1260 -270 1260 -240 {lab=GND}
N 1260 -310 1300 -310 {lab=voutn_cm}
N 1260 -370 1420 -370 {lab=voutp_cm}
N 1460 -540 1460 -500 {lab=GND}
N 1360 -540 1360 -500 {lab=GND}
N 660 -1120 660 -1080 {lab=GND}
N 660 -1080 700 -1080 {lab=GND}
N 700 -1110 700 -1080 {
lab=GND}
N 900 -1140 900 -1100 {lab=Vcm}
N 900 -1280 900 -1240 {lab=vinp1}
N 780 -1090 860 -1090 {lab=#net3}
N 780 -1230 860 -1230 {lab=#net3}
N 700 -1230 700 -1170 {lab=#net3}
N 820 -1050 860 -1050 {lab=GND}
N 700 -1080 700 -1050 {
lab=GND}
N 820 -1190 860 -1190 {lab=GND}
N 820 -1190 820 -1050 {lab=GND}
N 700 -1050 820 -1050 {lab=GND}
N 780 -1230 780 -1090 {lab=#net3}
N 700 -1230 780 -1230 {lab=#net3}
N 900 -1040 900 -1000 {lab=vinn1}
N 700 -1050 700 -980 {lab=GND}
N 1460 -1420 1500 -1420 {lab=voutn_dm}
N 1360 -1380 1500 -1380 {lab=voutp_dm}
N 1360 -1380 1360 -1340 {lab=voutp_dm}
N 1460 -1420 1460 -1340 {lab=voutn_dm}
N 920 -1440 960 -1440 {lab=vinp1}
N 920 -1360 960 -1360 {lab=vinn1}
N 1200 -1420 1460 -1420 {lab=voutn_dm}
N 1200 -1380 1360 -1380 {lab=voutp_dm}
N 920 -1400 960 -1400 {lab=Vcm}
N 1060 -1300 1060 -1280 {lab=GND}
N 1060 -1600 1060 -1500 {lab=VDD}
N 1460 -1280 1460 -1240 {lab=GND}
N 1360 -1280 1360 -1240 {lab=GND}
N 620 -1160 660 -1160 {lab=vind}
N 900 -1140 940 -1140 {lab=Vcm}
N 900 -1180 900 -1140 {lab=Vcm}
N 1000 -560 1000 -540 {lab=GND}
N 1000 -860 1000 -760 {lab=VDD}
N 1000 -1600 1000 -1500 {lab=VDD}
N 1000 -1300 1000 -1280 {lab=GND}
N 1100 -800 1100 -760 {lab=Vbiasc}
N 1140 -800 1140 -760 {lab=Vbias}
N 1980 -1580 2020 -1580 {lab=VDD}
N 1980 -1700 1980 -1580 {lab=VDD}
N 2160 -1700 2160 -1680 {lab=VDD}
N 2300 -1600 2340 -1600 {lab=Vbiasc}
N 2300 -1560 2340 -1560 {lab=Vbias}
N 1980 -1700 2160 -1700 {lab=VDD}
N 2160 -1720 2160 -1700 {lab=VDD}
N 2160 -1480 2160 -1460 {lab=GND}
N 1100 -1540 1100 -1500 {lab=Vbiasc}
N 1140 -1540 1140 -1500 {lab=Vbias}
C {devices/code_shown.sym} 60 -1610 0 0 {name=NGSPICE
only_toplevel=true 
value="
.param temp=27
.param Cload=1p

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
write telescopic_ota_simplified_tb_CMRR.raw
set appendwrite

* AC Analysis
ac dec 101 $&const.f_min $&const.f_max
remzerovec
write telescopic_ota_simplified_tb_CMRR.raw

* Plotting Differential Mode Gain
let Adm = v(vout_dm)/v(vind)		
let Adm_dB = vdb(Adm)
let Adm_arg = 180/PI*cphase(Adm)
plot Adm_dB Adm_arg ylabel 'Magnitude, Phase'

* Plotting Common Mode Gain
let Acm = v(vout_cm)/v(vind)		
let Acm_dB = vdb(Acm)
let Acm_arg = 180/PI*cphase(Acm)
plot Acm_dB Acm_arg ylabel 'Magnitude, Phase'

* Plotting Common Mode Rejection Ratio
* let CMRR = v(vout_dm)/v(vout_cm)
let CMRR = v(Adm)/v(Acm)
let CMRR_dB = vdb(CMRR)
* let CMRR_dB = Adm_dB - Acm_dB
let CMRR_arg = 180/PI*cphase(CMRR)
plot CMRR_dB CMRR_arg ylabel 'Magnitude, Phase'

* Measurements
meas ac CMRRdc_dB find CMRR_dB when frequency = fdc
print CMRRdc_dB

*quit
.endc
"}
C {devices/launcher.sym} 1700 -1590 0 0 {name=h2
descr="Simulate" 
tclcommand="xschem save; xschem netlist; xschem simulate"
}
C {title-3.sym} 0 0 0 0 {name=l2 author="Simon Dorrer" rev=1.0 lock=true}
C {devices/launcher.sym} 1700 -1470 0 0 {name=h1
descr="Load waves" 
tclcommand="xschem raw_read $netlist_dir/telescopic_ota_simplified_tb_CMRR.raw ac"
}
C {devices/launcher.sym} 1700 -1530 0 0 {name=h3
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
C {devices/vsource.sym} 1140 -1050 0 0 {name=VDD value=1.5}
C {devices/gnd.sym} 1140 -980 0 0 {name=l3 lab=GND}
C {vdd.sym} 1140 -1120 0 0 {name=l7 lab=VDD}
C {devices/lab_pin.sym} 900 -540 0 0 {name=l1 sig_type=std_logic lab=vinp2}
C {devices/lab_pin.sym} 900 -260 0 0 {name=l4 sig_type=std_logic lab=vinn2
}
C {devices/lab_pin.sym} 560 -420 0 0 {name=l15 sig_type=std_logic lab=vind}
C {devices/vsource.sym} 1000 -330 0 0 {name=Vcm value=0.75
}
C {devices/vcvs.sym} 900 -330 0 0 {name=E4 value=-0.5}
C {devices/vcvs.sym} 900 -470 0 0 {name=E5 value=0.5}
C {devices/gnd.sym} 580 -240 0 0 {name=l16 lab=GND}
C {devices/gnd.sym} 1000 -240 0 0 {name=l40 lab=GND}
C {devices/vcvs.sym} 700 -400 0 0 {name=E6 value=1}
C {devices/gnd.sym} 700 -240 0 0 {name=l41 lab=GND}
C {devices/vsource.sym} 580 -330 0 0 {name=vin value="dc 0 ac 1"
}
C {devices/lab_pin.sym} 920 -700 0 0 {name=l5 sig_type=std_logic lab=vinp2}
C {devices/lab_pin.sym} 920 -620 0 0 {name=l8 sig_type=std_logic lab=vinn2
}
C {devices/gnd.sym} 1360 -500 0 0 {name=l9 lab=GND}
C {lab_pin.sym} 1500 -640 0 1 {name=p3 sig_type=std_logic lab=voutp_cm}
C {lab_pin.sym} 1500 -680 0 1 {name=p4 sig_type=std_logic lab=voutn_cm}
C {devices/gnd.sym} 1460 -500 0 0 {name=l30 lab=GND}
C {devices/capa.sym} 1460 -570 0 0 {name=C2
m=1
value=\{Cload\}
footprint=1206
device="ceramic capacitor"}
C {devices/capa.sym} 1360 -570 0 0 {name=C3
m=1
value=\{Cload\}
footprint=1206
device="ceramic capacitor"}
C {vdd.sym} 1060 -860 0 0 {name=l6 lab=VDD}
C {devices/gnd.sym} 1060 -540 0 0 {name=l11 lab=GND}
C {devices/lab_pin.sym} 920 -660 0 0 {name=l38 sig_type=std_logic lab=Vcm
}
C {devices/lab_pin.sym} 1040 -400 2 0 {name=l14 sig_type=std_logic lab=Vcm
}
C {devices/lab_pin.sym} 1460 -1120 0 1 {name=l12 sig_type=std_logic lab=vout_dm}
C {devices/vcvs.sym} 1460 -1050 0 0 {name=E1 value=1}
C {devices/gnd.sym} 1460 -980 0 0 {name=l13 lab=GND}
C {devices/lab_pin.sym} 1390 -1030 2 1 {name=l17 sig_type=std_logic lab=voutn_dm
}
C {devices/lab_pin.sym} 1390 -1070 0 0 {name=l23 sig_type=std_logic lab=voutp_dm}
C {devices/lab_pin.sym} 1460 -420 0 1 {name=l34 sig_type=std_logic lab=vout_cm}
C {devices/vcvs.sym} 1460 -350 0 0 {name=E8 value=0.5}
C {devices/gnd.sym} 1460 -240 0 0 {name=l35 lab=GND}
C {devices/lab_pin.sym} 1260 -310 2 1 {name=l36 sig_type=std_logic lab=voutn_cm
}
C {devices/lab_pin.sym} 1260 -370 0 0 {name=l37 sig_type=std_logic lab=voutp_cm
}
C {devices/vcvs.sym} 1340 -290 0 0 {name=E10 value=-1}
C {devices/gnd.sym} 1340 -240 0 0 {name=l45 lab=GND}
C {devices/gnd.sym} 1260 -240 0 0 {name=l46 lab=GND}
C {devices/lab_pin.sym} 900 -1280 0 0 {name=l18 sig_type=std_logic lab=vinp1}
C {devices/lab_pin.sym} 900 -1000 0 0 {name=l19 sig_type=std_logic lab=vinn1
}
C {devices/lab_pin.sym} 620 -1160 0 0 {name=l20 sig_type=std_logic lab=vind}
C {devices/vcvs.sym} 900 -1070 0 0 {name=E2 value=0.5}
C {devices/vcvs.sym} 900 -1210 0 0 {name=E3 value=0.5}
C {devices/vcvs.sym} 700 -1140 0 0 {name=E7 value=1}
C {devices/gnd.sym} 700 -980 0 0 {name=l24 lab=GND}
C {devices/lab_pin.sym} 920 -1440 0 0 {name=l25 sig_type=std_logic lab=vinp1}
C {devices/lab_pin.sym} 920 -1360 0 0 {name=l26 sig_type=std_logic lab=vinn1
}
C {devices/gnd.sym} 1360 -1240 0 0 {name=l27 lab=GND}
C {lab_pin.sym} 1500 -1380 0 1 {name=p1 sig_type=std_logic lab=voutp_dm}
C {lab_pin.sym} 1500 -1420 0 1 {name=p2 sig_type=std_logic lab=voutn_dm}
C {devices/gnd.sym} 1460 -1240 0 0 {name=l28 lab=GND}
C {devices/capa.sym} 1460 -1310 0 0 {name=C1
m=1
value=\{Cload\}
footprint=1206
device="ceramic capacitor"}
C {devices/capa.sym} 1360 -1310 0 0 {name=C4
m=1
value=\{Cload\}
footprint=1206
device="ceramic capacitor"}
C {vdd.sym} 1060 -1600 0 0 {name=l29 lab=VDD}
C {devices/gnd.sym} 1060 -1280 0 0 {name=l31 lab=GND}
C {devices/lab_pin.sym} 920 -1400 0 0 {name=l32 sig_type=std_logic lab=Vcm
}
C {devices/lab_pin.sym} 940 -1140 2 0 {name=l33 sig_type=std_logic lab=Vcm
}
C {devices/gnd.sym} 1000 -540 0 0 {name=l21 lab=GND}
C {vdd.sym} 1000 -860 0 0 {name=l22 lab=VDD}
C {vdd.sym} 1000 -1600 0 0 {name=l42 lab=VDD}
C {devices/gnd.sym} 1000 -1280 0 0 {name=l43 lab=GND}
C {bio_amplifier/amplifier_core/telescopic_ota/telescopic_ota_simplified.sym} 1080 -1400 0 0 {name=x1}
C {bio_amplifier/amplifier_core/telescopic_ota/telescopic_ota_simplified.sym} 1080 -660 0 0 {name=x2}
C {devices/lab_pin.sym} 1100 -800 1 0 {name=l51 sig_type=std_logic lab=Vbiasc}
C {devices/lab_pin.sym} 1140 -800 1 0 {name=l52 sig_type=std_logic lab=Vbias}
C {bio_amplifier/amplifier_core/bias_circuit/bias_circuit_2/bias_circuit_2.sym} 2160 -1580 0 0 {name=x3}
C {devices/gnd.sym} 2160 -1460 0 0 {name=l47 lab=GND}
C {devices/lab_pin.sym} 2340 -1600 0 1 {name=l49 sig_type=std_logic lab=Vbiasc}
C {devices/lab_pin.sym} 2340 -1560 0 1 {name=l50 sig_type=std_logic lab=Vbias}
C {vdd.sym} 2160 -1720 0 0 {name=l39 lab=VDD}
C {devices/lab_pin.sym} 1100 -1540 1 0 {name=l10 sig_type=std_logic lab=Vbiasc}
C {devices/lab_pin.sym} 1140 -1540 1 0 {name=l44 sig_type=std_logic lab=Vbias}
