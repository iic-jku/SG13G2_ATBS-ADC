v {xschem version=3.4.7 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
B 2 1640 -680 2440 -280 {flags=graph
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
color="4 4"
dataset=-1
unitx=1
logx=1
logy=0
linewidth_mult=4}
B 2 1640 -1100 2440 -700 {flags=graph
y1=-92
y2=20
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
color="4 4"
dataset=-1
unitx=1
logx=1
logy=0
linewidth_mult=4}
P 4 5 1360 -720 1360 -620 1560 -620 1560 -720 1360 -720 {dash = 8}
T {Testbench for CMRR analysis - Bio-signal Amplifier (simplified)} 410 -1740 0 0 1 1 {}
T {Capacitive Load (Comparator, DAC, etc.)} 1340 -550 0 0 0.25 0.25 {}
T {Output CM voltage: vout_cm = (voutp_cm + voutn_cm)/2} 1150 -270 0 0 0.2 0.2 {}
T {Output DM voltage: vout_dm = voutp_dm - voutn_dm} 740 -270 0 0 0.2 0.2 {}
T {-0.5 for CM} 1010 -1180 0 0 0.3 0.3 {}
N 1040 -600 1040 -580 {lab=GND}
N 800 -800 840 -800 {lab=Vcm}
N 800 -760 840 -760 {lab=vinn}
N 1060 -1020 1060 -1000 {lab=bio_amp_en}
N 1400 -780 1540 -780 {lab=voutn}
N 1500 -820 1540 -820 {lab=voutp}
N 1400 -640 1400 -580 {lab=GND}
N 1500 -640 1500 -580 {lab=GND}
N 1400 -780 1400 -700 {lab=voutn}
N 1240 -780 1400 -780 {lab=voutn}
N 1500 -820 1500 -700 {lab=voutp}
N 1240 -820 1500 -820 {lab=voutp}
N 740 -1360 740 -1300 {lab=vind}
N 720 -1360 740 -1360 {lab=vind}
N 740 -1360 820 -1360 {lab=vind}
N 820 -1320 820 -1280 {lab=GND}
N 820 -1280 860 -1280 {lab=GND}
N 860 -1310 860 -1280 {
lab=GND}
N 1160 -1340 1180 -1340 {
lab=Vcm}
N 1060 -1380 1060 -1340 {lab=Vcm}
N 1060 -1480 1060 -1440 {lab=vinp}
N 940 -1290 1020 -1290 {lab=#net1}
N 940 -1430 1020 -1430 {lab=#net1}
N 860 -1430 860 -1370 {lab=#net1}
N 980 -1250 1020 -1250 {lab=GND}
N 860 -1280 860 -1250 {
lab=GND}
N 980 -1390 1020 -1390 {lab=GND}
N 980 -1390 980 -1250 {lab=GND}
N 860 -1250 980 -1250 {lab=GND}
N 940 -1430 940 -1290 {lab=#net1}
N 860 -1430 940 -1430 {lab=#net1}
N 1060 -1340 1060 -1300 {lab=Vcm}
N 1060 -1240 1060 -1200 {lab=vinn}
N 1160 -1340 1160 -1300 {lab=Vcm}
N 1060 -1340 1160 -1340 {
lab=Vcm}
N 1160 -1240 1160 -1200 {lab=GND}
N 860 -1250 860 -1200 {lab=GND}
N 740 -1240 740 -1200 {lab=GND}
N 1300 -1340 1300 -1300 {lab=VDD}
N 1300 -1240 1300 -1200 {lab=GND}
N 1420 -1340 1420 -1300 {lab=bio_amp_en}
N 1420 -1240 1420 -1200 {lab=GND}
N 800 -840 840 -840 {lab=vinp}
N 1020 -1020 1020 -1000 {lab=VDD}
N 850 -390 880 -390 {
lab=voutp}
N 850 -350 880 -350 {
lab=voutn}
N 920 -440 920 -400 {lab=vout_dm}
N 920 -340 920 -300 {lab=GND}
N 1400 -480 1400 -440 {lab=vout_cm}
N 1400 -380 1400 -300 {lab=GND}
N 1280 -320 1280 -300 {lab=GND}
N 1280 -390 1360 -390 {lab=#net2}
N 1280 -390 1280 -380 {lab=#net2}
N 1200 -330 1240 -330 {lab=GND}
N 1200 -330 1200 -300 {lab=GND}
N 1200 -370 1240 -370 {lab=voutn}
N 1200 -430 1360 -430 {lab=voutp}
C {devices/code_shown.sym} 40 -1630 0 0 {name=MODEL only_toplevel=true
format="tcleval( @value )"
value="
.lib cornerMOSlv.lib mos_tt
.lib cornerMOShv.lib mos_tt
.lib cornerRES.lib res_typ
"}
C {devices/code_shown.sym} 40 -1470 0 0 {name=NGSPICE
only_toplevel=true 
value="
.param temp=27
* 227.56fF DAC
.param Cload=227.56f
.param vphi=0.5
.param f_min = 10m
.csparam f_min = f_min
.param f_max = 1G
.csparam f_max = f_max
.param fdc = 10
.csparam fdc = fdc
.options savecurrents method=gear reltol=1e-2 abstol=1e-15 gmin=1e-15 rshunt=1e12
.control

* Operating Point Analysis
optran 0 0 0 1u 1m 0
save all
op
remzerovec
write bio_amplifier_simplified_tb_CMRR.raw
set appendwrite
reset

* Differential-Mode
optran 0 0 0 1u 1m 0
save v(vout_dm) v(vind)

* AC Analysis (Differential-Mode)
ac dec 101 $&f_min $&f_max
remzerovec
write bio_amplifier_simplified_tb_CMRR.raw

* Plotting Differential Mode Gain
let Adm = v(vout_dm)/v(vind)		
let Adm_dB = vdb(Adm)
let Adm_arg = 180/PI*cphase(Adm)
plot Adm_dB Adm_arg ylabel 'Magnitude, Phase'

* Change to Common-Mode
alterparam vphi = -0.5
reset

optran 0 0 0 1u 1m 0
save v(vout_cm) v(vind)

* AC Analysis (Common-Mode)
ac dec 101 $&f_min $&f_max
remzerovec
write bio_amplifier_simplified_tb_CMRR.raw

* Plotting Common Mode Gain
let Acm = v(vout_cm)/v(vind)	
let Acm_dB = vdb(Acm)
let Acm_arg = 180/PI*cphase(Acm)
plot Acm_dB Acm_arg ylabel 'Magnitude, Phase'

* Plotting Common Mode Rejection Ratio
* let CMRR = v(ac1.vout_dm)/v(ac2.vout_cm)
let CMRR = v(ac1.Adm)/v(ac2.Acm)
let CMRR_dB = vdb(CMRR)
* let CMRR_dB = ac1.Adm_dB - ac2.Acm_dB
let CMRR_arg = 180/PI*cphase(CMRR)
plot CMRR_dB CMRR_arg ylabel 'Magnitude, Phase'

* Measurements
meas ac CMRRdc_dB find CMRR_dB when frequency = fdc
print CMRRdc_dB

* Write Data
set wr_vecnames
set wr_singlescale
wrdata /foss/designs/SG13G2_ATBS-ADC-main/python/plot_simulations/data/bio_amplifier_simplified_tb_CMRR.txt v(CMRR_dB) v(CMRR_arg)

*quit
.endc
"}
C {devices/gnd.sym} 1400 -580 0 0 {name=l1 lab=GND}
C {devices/vsource.sym} 1300 -1270 0 0 {name=VDD value=1.5}
C {devices/gnd.sym} 1300 -1200 0 0 {name=l3 lab=GND}
C {devices/capa.sym} 1400 -670 0 0 {name=C1
m=1
value=\{Cload\}
footprint=1206
device="ceramic capacitor"}
C {title-3.sym} 0 0 0 0 {name=l2 author="Simon Dorrer" rev=1.0 lock=true}
C {vdd.sym} 1300 -1340 0 0 {name=l7 lab=VDD}
C {vdd.sym} 1020 -1020 0 0 {name=l8 lab=VDD}
C {devices/gnd.sym} 1040 -580 0 0 {name=l9 lab=GND}
C {lab_pin.sym} 1540 -820 0 1 {name=p3 sig_type=std_logic lab=voutp}
C {lab_pin.sym} 1540 -780 0 1 {name=p4 sig_type=std_logic lab=voutn}
C {devices/lab_pin.sym} 1060 -1480 0 0 {name=l10 sig_type=std_logic lab=vinp}
C {devices/lab_pin.sym} 1060 -1200 0 0 {name=l11 sig_type=std_logic lab=vinn
}
C {devices/lab_pin.sym} 720 -1360 0 0 {name=l13 sig_type=std_logic lab=vind}
C {devices/lab_pin.sym} 800 -800 0 0 {name=l4 sig_type=std_logic lab=Vcm}
C {devices/lab_pin.sym} 800 -840 0 0 {name=l5 sig_type=std_logic lab=vinp}
C {devices/lab_pin.sym} 800 -760 0 0 {name=l19 sig_type=std_logic lab=vinn
}
C {devices/lab_pin.sym} 1060 -1020 1 0 {name=l24 sig_type=std_logic lab=bio_amp_en}
C {devices/capa.sym} 1500 -670 0 0 {name=C2
m=1
value=\{Cload\}
footprint=1206
device="ceramic capacitor"}
C {devices/gnd.sym} 1500 -580 0 0 {name=l30 lab=GND}
C {devices/gnd.sym} 1420 -1200 0 0 {name=l6 lab=GND}
C {devices/lab_pin.sym} 1420 -1340 1 0 {name=l35 sig_type=std_logic lab=bio_amp_en}
C {devices/vsource.sym} 1160 -1270 0 0 {name=Vcm value=0.75
}
C {devices/vcvs.sym} 1060 -1270 0 0 {name=E4 value=\{vphi\}}
C {devices/vcvs.sym} 1060 -1410 0 0 {name=E5 value=0.5}
C {devices/lab_pin.sym} 1180 -1340 2 0 {name=l38 sig_type=std_logic lab=Vcm}
C {devices/gnd.sym} 740 -1200 0 0 {name=l39 lab=GND}
C {devices/gnd.sym} 1160 -1200 0 0 {name=l40 lab=GND}
C {devices/vcvs.sym} 860 -1340 0 0 {name=E6 value=1}
C {devices/gnd.sym} 860 -1200 0 0 {name=l41 lab=GND}
C {devices/vsource.sym} 1420 -1270 0 0 {name=V1 value="1.5"}
C {devices/vsource.sym} 740 -1270 0 0 {name=vin value="dc 0 ac 1"
}
C {bio_amplifier/bio_amplifier_simplified.sym} 1040 -800 0 0 {name=x1 C1=330p C2=3.3p R2=160G}
C {devices/launcher.sym} 1700 -1260 0 0 {name=h2
descr="Simulate" 
tclcommand="xschem save; xschem netlist; xschem simulate"
}
C {devices/launcher.sym} 1700 -1140 0 0 {name=h1
descr="Load waves" 
tclcommand="xschem raw_read $netlist_dir/bio_amplifier_simplified_tb_CMRR.raw ac"
}
C {devices/launcher.sym} 1700 -1200 0 0 {name=h3
descr="Annotate OP" 
tclcommand="set show_hidden_texts 1; xschem annotate_op"
}
C {devices/lab_pin.sym} 920 -440 0 1 {name=l12 sig_type=std_logic lab=vout_dm}
C {devices/vcvs.sym} 920 -370 0 0 {name=E1 value=1}
C {devices/gnd.sym} 920 -300 0 0 {name=l14 lab=GND}
C {devices/lab_pin.sym} 850 -350 2 1 {name=l15 sig_type=std_logic lab=voutn
}
C {devices/lab_pin.sym} 850 -390 0 0 {name=l23 sig_type=std_logic lab=voutp}
C {devices/lab_pin.sym} 1400 -480 0 1 {name=l34 sig_type=std_logic lab=vout_cm}
C {devices/vcvs.sym} 1400 -410 0 0 {name=E8 value=0.5}
C {devices/gnd.sym} 1400 -300 0 0 {name=l16 lab=GND}
C {devices/lab_pin.sym} 1200 -370 2 1 {name=l36 sig_type=std_logic lab=voutn
}
C {devices/lab_pin.sym} 1200 -430 0 0 {name=l37 sig_type=std_logic lab=voutp
}
C {devices/vcvs.sym} 1280 -350 0 0 {name=E10 value=-1}
C {devices/gnd.sym} 1280 -300 0 0 {name=l45 lab=GND}
C {devices/gnd.sym} 1200 -300 0 0 {name=l46 lab=GND}
