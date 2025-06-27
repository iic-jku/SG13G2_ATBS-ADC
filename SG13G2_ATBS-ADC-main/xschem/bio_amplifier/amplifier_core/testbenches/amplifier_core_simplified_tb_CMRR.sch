v {xschem version=3.4.7 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
B 2 1660 -1020 2460 -620 {flags=graph
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
B 2 1660 -600 2460 -200 {flags=graph
y1=9.4
y2=170
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
B 2 1660 -1440 2460 -1040 {flags=graph
y1=-89
y2=77
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
P 4 5 1340 -720 1340 -620 1540 -620 1540 -720 1340 -720 {dash = 8}
P 4 5 1340 -340 1340 -240 1540 -240 1540 -340 1340 -340 {dash = 8}
T {Testbench for CMRR analysis - Amplifier Core (simplified)} 500 -1740 0 0 1 1 {}
T {Capacitive Load (Comparator, DAC, etc.)} 1320 -570 0 0 0.25 0.25 {}
T {Capacitive Load (Comparator, DAC, etc.)} 1320 -190 0 0 0.25 0.25 {}
T {-0.5 for CM} 740 -220 0 0 0.3 0.3 {}
T {Output CM voltage: vout_cm = (voutp_cm + voutn_cm)/2} 1200 -1010 0 0 0.2 0.2 {}
T {Output DM voltage: vout_dm = voutp_dm - voutn_dm} 1200 -1310 0 0 0.2 0.2 {}
N 1020 -800 1060 -800 {lab=vinp1}
N 1020 -720 1060 -720 {lab=vinn1}
N 1160 -880 1160 -860 {lab=amp_core_en}
N 480 -780 480 -720 {lab=vind}
N 460 -780 480 -780 {lab=vind}
N 480 -780 560 -780 {lab=vind}
N 560 -740 560 -700 {lab=GND}
N 560 -700 600 -700 {lab=GND}
N 600 -730 600 -700 {
lab=GND}
N 800 -800 800 -760 {lab=Vcm}
N 800 -900 800 -860 {lab=vinp1}
N 680 -710 760 -710 {lab=#net1}
N 680 -850 760 -850 {lab=#net1}
N 600 -850 600 -790 {lab=#net1}
N 720 -670 760 -670 {lab=GND}
N 600 -700 600 -670 {
lab=GND}
N 720 -810 760 -810 {lab=GND}
N 720 -810 720 -670 {lab=GND}
N 600 -670 720 -670 {lab=GND}
N 680 -850 680 -710 {lab=#net1}
N 600 -850 680 -850 {lab=#net1}
N 800 -760 800 -720 {lab=Vcm}
N 800 -660 800 -620 {lab=vinn1}
N 900 -760 900 -720 {lab=Vcm}
N 800 -760 900 -760 {
lab=Vcm}
N 900 -660 900 -600 {lab=GND}
N 600 -670 600 -600 {lab=GND}
N 480 -660 480 -600 {lab=GND}
N 800 -1200 800 -1160 {lab=VDD}
N 800 -1100 800 -1060 {lab=GND}
N 900 -1200 900 -1160 {lab=amp_core_en}
N 900 -1100 900 -1060 {lab=GND}
N 1330 -1430 1360 -1430 {
lab=voutp_dm}
N 1330 -1390 1360 -1390 {
lab=voutn_dm}
N 1140 -900 1140 -860 {lab=VDD}
N 1140 -660 1140 -600 {lab=GND}
N 900 -780 900 -760 {lab=Vcm}
N 1480 -780 1520 -780 {lab=voutn_dm}
N 1380 -740 1520 -740 {lab=voutp_dm}
N 1380 -740 1380 -700 {lab=voutp_dm}
N 1380 -640 1380 -600 {lab=GND}
N 1480 -780 1480 -700 {lab=voutn_dm}
N 1480 -640 1480 -600 {lab=GND}
N 1400 -1480 1400 -1440 {lab=vout_dm}
N 1400 -1380 1400 -1340 {lab=GND}
N 1240 -740 1380 -740 {lab=voutp_dm}
N 1240 -780 1480 -780 {lab=voutn_dm}
N 900 -760 1060 -760 {lab=Vcm}
N 1020 -420 1060 -420 {lab=vinp2}
N 1020 -340 1060 -340 {lab=vinn2}
N 1160 -500 1160 -480 {lab=amp_core_en}
N 460 -400 560 -400 {lab=vind}
N 560 -360 560 -320 {lab=GND}
N 560 -320 600 -320 {lab=GND}
N 600 -350 600 -320 {
lab=GND}
N 800 -420 800 -380 {lab=Vcm}
N 800 -520 800 -480 {lab=vinp2}
N 680 -330 760 -330 {lab=#net2}
N 680 -470 760 -470 {lab=#net2}
N 600 -470 600 -410 {lab=#net2}
N 720 -290 760 -290 {lab=GND}
N 600 -320 600 -290 {
lab=GND}
N 720 -430 760 -430 {lab=GND}
N 720 -430 720 -290 {lab=GND}
N 600 -290 720 -290 {lab=GND}
N 680 -470 680 -330 {lab=#net2}
N 600 -470 680 -470 {lab=#net2}
N 800 -380 800 -340 {lab=Vcm}
N 800 -280 800 -240 {lab=vinn2}
N 800 -380 900 -380 {
lab=Vcm}
N 600 -290 600 -220 {lab=GND}
N 1140 -520 1140 -480 {lab=VDD}
N 1140 -280 1140 -220 {lab=GND}
N 900 -400 900 -380 {lab=Vcm}
N 1480 -400 1520 -400 {lab=voutn_cm}
N 1380 -360 1520 -360 {lab=voutp_cm}
N 1380 -360 1380 -320 {lab=voutp_cm}
N 1380 -260 1380 -220 {lab=GND}
N 1480 -400 1480 -320 {lab=voutn_cm}
N 1480 -260 1480 -220 {lab=GND}
N 1240 -360 1380 -360 {lab=voutp_cm}
N 1240 -400 1480 -400 {lab=voutn_cm}
N 900 -380 1060 -380 {lab=Vcm}
N 1400 -1240 1400 -1200 {lab=vout_cm}
N 1400 -1140 1400 -1060 {lab=GND}
N 1280 -1080 1280 -1060 {lab=GND}
N 1280 -1150 1360 -1150 {lab=#net3}
N 1280 -1150 1280 -1140 {lab=#net3}
N 1200 -1090 1240 -1090 {lab=GND}
N 1200 -1090 1200 -1060 {lab=GND}
N 1200 -1130 1240 -1130 {lab=voutn_cm}
N 1200 -1190 1360 -1190 {lab=voutp_cm}
C {devices/code_shown.sym} 40 -1170 0 0 {name=NGSPICE
only_toplevel=true 
value="
.param temp=27
* 228fF DAC + (1 - beta) * 3.3pF
.param Cload=3.49p
.options savecurrents method=gear reltol=1e-2 abstol=1e-15 gmin=1e-15 rshunt=1e15
.control

save v(vout_dm) v(vout_cm) v(vind)

set wr_vecnames
set wr_singlescale

* User Constants
let f_min = 10m
let f_max = 1G
let fdc = 1

* Operating Point Analysis
op
remzerovec
write amplifier_core_simplified_tb_CMRR.raw
set appendwrite

* AC Analysis
ac dec 101 $&const.f_min $&const.f_max
remzerovec
write amplifier_core_simplified_tb_CMRR.raw

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

* Write Data
set wr_vecnames
set wr_singlescale
wrdata /foss/designs/SG13G2_ATBS-ADC-main/python/plot_simulations/data/amplifier_core_simplified_tb_CMRR.txt v(Adm_dB) v(Adm_arg) v(Acm_dB) v(Acm_arg) v(CMRR_dB) v(CMRR_arg)

*quit
.endc
"}
C {devices/launcher.sym} 1720 -1600 0 0 {name=h2
descr="Simulate" 
tclcommand="xschem save; xschem netlist; xschem simulate"
}
C {title-3.sym} 0 0 0 0 {name=l2 author="Simon Dorrer" rev=1.0 lock=true}
C {devices/launcher.sym} 1720 -1480 0 0 {name=h1
descr="Load waves" 
tclcommand="xschem raw_read $netlist_dir/amplifier_core_simplified_tb_CMRR.raw ac"
}
C {devices/launcher.sym} 1720 -1540 0 0 {name=h3
descr="Annotate OP" 
tclcommand="set show_hidden_texts 1; xschem annotate_op"
}
C {devices/code_shown.sym} 40 -1570 0 0 {name=MODEL only_toplevel=true
format="tcleval( @value )"
value="
.lib cornerMOSlv.lib mos_tt
.lib cornerMOShv.lib mos_tt
.lib cornerRES.lib res_typ
"}
C {devices/gnd.sym} 1380 -600 0 0 {name=l1 lab=GND}
C {devices/vsource.sym} 800 -1130 0 0 {name=VDD value=1.5}
C {devices/gnd.sym} 800 -1060 0 0 {name=l3 lab=GND}
C {devices/capa.sym} 1380 -670 0 0 {name=C1
m=1
value=\{Cload\}
footprint=1206
device="ceramic capacitor"}
C {vdd.sym} 800 -1200 0 0 {name=l7 lab=VDD}
C {vdd.sym} 1140 -900 0 0 {name=l8 lab=VDD}
C {devices/gnd.sym} 1140 -600 0 0 {name=l9 lab=GND}
C {lab_pin.sym} 1520 -740 0 1 {name=p3 sig_type=std_logic lab=voutp_dm}
C {lab_pin.sym} 1520 -780 0 1 {name=p4 sig_type=std_logic lab=voutn_dm}
C {devices/lab_pin.sym} 800 -900 0 0 {name=l10 sig_type=std_logic lab=vinp1}
C {devices/lab_pin.sym} 800 -620 0 0 {name=l11 sig_type=std_logic lab=vinn1}
C {devices/lab_pin.sym} 460 -780 0 0 {name=l13 sig_type=std_logic lab=vind}
C {devices/lab_pin.sym} 1020 -800 0 0 {name=l5 sig_type=std_logic lab=vinp1}
C {devices/lab_pin.sym} 1020 -720 0 0 {name=l19 sig_type=std_logic lab=vinn1
}
C {devices/capa.sym} 1480 -670 0 0 {name=C2
m=1
value=\{Cload\}
footprint=1206
device="ceramic capacitor"}
C {devices/gnd.sym} 1480 -600 0 0 {name=l30 lab=GND}
C {devices/gnd.sym} 900 -1060 0 0 {name=l6 lab=GND}
C {devices/vsource.sym} 900 -690 0 0 {name=Vcm value=0.75
}
C {devices/vcvs.sym} 800 -690 0 0 {name=E4 value=0.5}
C {devices/vcvs.sym} 800 -830 0 0 {name=E5 value=0.5}
C {devices/lab_pin.sym} 900 -780 1 0 {name=l38 sig_type=std_logic lab=Vcm}
C {devices/gnd.sym} 480 -600 0 0 {name=l39 lab=GND}
C {devices/gnd.sym} 900 -600 0 0 {name=l40 lab=GND}
C {devices/vcvs.sym} 600 -760 0 0 {name=E6 value=1}
C {devices/gnd.sym} 600 -600 0 0 {name=l41 lab=GND}
C {devices/vsource.sym} 900 -1130 0 0 {name=V1 value="1.5"}
C {devices/lab_pin.sym} 1400 -1480 0 1 {name=l12 sig_type=std_logic lab=vout_dm}
C {devices/vcvs.sym} 1400 -1410 0 0 {name=E1 value=1}
C {devices/gnd.sym} 1400 -1340 0 0 {name=l14 lab=GND}
C {devices/lab_pin.sym} 1330 -1390 2 1 {name=l15 sig_type=std_logic lab=voutn_dm
}
C {devices/lab_pin.sym} 1330 -1430 0 0 {name=l23 sig_type=std_logic lab=voutp_dm}
C {devices/vsource.sym} 480 -690 0 0 {name=vin value="0 AC 1"
}
C {bio_amplifier/amplifier_core/amplifier_core_simplified.sym} 1140 -760 0 0 {name=x1}
C {devices/lab_pin.sym} 900 -1200 2 0 {name=l4 sig_type=std_logic lab=amp_core_en}
C {devices/lab_pin.sym} 1160 -880 2 0 {name=l24 sig_type=std_logic lab=amp_core_en}
C {devices/gnd.sym} 1380 -220 0 0 {name=l16 lab=GND}
C {devices/capa.sym} 1380 -290 0 0 {name=C3
m=1
value=\{Cload\}
footprint=1206
device="ceramic capacitor"}
C {vdd.sym} 1140 -520 0 0 {name=l17 lab=VDD}
C {devices/gnd.sym} 1140 -220 0 0 {name=l18 lab=GND}
C {lab_pin.sym} 1520 -360 0 1 {name=p1 sig_type=std_logic lab=voutp_cm}
C {lab_pin.sym} 1520 -400 0 1 {name=p2 sig_type=std_logic lab=voutn_cm}
C {devices/lab_pin.sym} 800 -520 0 0 {name=l20 sig_type=std_logic lab=vinp2}
C {devices/lab_pin.sym} 800 -240 0 0 {name=l21 sig_type=std_logic lab=vinn2
}
C {devices/lab_pin.sym} 460 -400 0 0 {name=l22 sig_type=std_logic lab=vind}
C {devices/lab_pin.sym} 1020 -420 0 0 {name=l25 sig_type=std_logic lab=vinp2}
C {devices/lab_pin.sym} 1020 -340 0 0 {name=l26 sig_type=std_logic lab=vinn2
}
C {devices/capa.sym} 1480 -290 0 0 {name=C4
m=1
value=\{Cload\}
footprint=1206
device="ceramic capacitor"}
C {devices/gnd.sym} 1480 -220 0 0 {name=l27 lab=GND}
C {devices/vcvs.sym} 800 -310 0 0 {name=E2 value=-0.5}
C {devices/vcvs.sym} 800 -450 0 0 {name=E3 value=0.5}
C {devices/lab_pin.sym} 900 -400 1 0 {name=l28 sig_type=std_logic lab=Vcm}
C {devices/vcvs.sym} 600 -380 0 0 {name=E7 value=1}
C {devices/gnd.sym} 600 -220 0 0 {name=l32 lab=GND}
C {bio_amplifier/amplifier_core/amplifier_core_simplified.sym} 1140 -380 0 0 {name=x2}
C {devices/lab_pin.sym} 1160 -500 2 0 {name=l33 sig_type=std_logic lab=amp_core_en}
C {devices/lab_pin.sym} 1400 -1240 0 1 {name=l34 sig_type=std_logic lab=vout_cm}
C {devices/vcvs.sym} 1400 -1170 0 0 {name=E8 value=0.5}
C {devices/gnd.sym} 1400 -1060 0 0 {name=l35 lab=GND}
C {devices/lab_pin.sym} 1200 -1130 2 1 {name=l36 sig_type=std_logic lab=voutn_cm
}
C {devices/lab_pin.sym} 1200 -1190 0 0 {name=l37 sig_type=std_logic lab=voutp_cm
}
C {devices/vcvs.sym} 1280 -1110 0 0 {name=E10 value=-1}
C {devices/gnd.sym} 1280 -1060 0 0 {name=l45 lab=GND}
C {devices/gnd.sym} 1200 -1060 0 0 {name=l46 lab=GND}
