v {xschem version=3.4.7 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
B 2 1640 -660 2440 -260 {flags=graph
y1=-110
y2=90
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
node="\\"CL Phase; ph(vout)\\""
color=4
dataset=-1
unitx=1
logx=1
logy=0
linewidth_mult=4}
B 2 1640 -1080 2440 -680 {flags=graph
y1=-140
y2=40
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
node="\\"CL Magnitude; vout vind / db20()\\""
color=4
dataset=-1
unitx=1
logx=1
logy=0
linewidth_mult=4}
P 4 5 1360 -720 1360 -620 1560 -620 1560 -720 1360 -720 {dash = 8}
T {Testbench for AC CL analysis - Bio-signal Amplifier (simplified)} 440 -1720 0 0 1 1 {}
T {Capacitive Load (Comparator, DAC, etc.)} 1340 -550 0 0 0.25 0.25 {}
N 1040 -600 1040 -580 {lab=GND}
N 1060 -1020 1060 -1000 {lab=bio_amp_en}
N 1400 -780 1540 -780 {lab=voutn}
N 1500 -820 1540 -820 {lab=voutp}
N 1400 -640 1400 -580 {lab=GND}
N 1500 -640 1500 -580 {lab=GND}
N 1400 -780 1400 -700 {lab=voutn}
N 1240 -780 1400 -780 {lab=voutn}
N 1500 -820 1500 -700 {lab=voutp}
N 1240 -820 1500 -820 {lab=voutp}
N 820 -1400 820 -1340 {lab=vind}
N 800 -1400 820 -1400 {lab=vind}
N 820 -1400 900 -1400 {lab=vind}
N 900 -1360 900 -1320 {lab=GND}
N 900 -1320 940 -1320 {lab=GND}
N 940 -1350 940 -1320 {
lab=GND}
N 1240 -1380 1260 -1380 {
lab=Vcm}
N 1140 -1420 1140 -1380 {lab=Vcm}
N 1140 -1520 1140 -1480 {lab=vinp}
N 1020 -1330 1100 -1330 {lab=#net1}
N 1020 -1470 1100 -1470 {lab=#net1}
N 940 -1470 940 -1410 {lab=#net1}
N 1060 -1290 1100 -1290 {lab=GND}
N 940 -1320 940 -1290 {
lab=GND}
N 1060 -1430 1100 -1430 {lab=GND}
N 1060 -1430 1060 -1290 {lab=GND}
N 940 -1290 1060 -1290 {lab=GND}
N 1020 -1470 1020 -1330 {lab=#net1}
N 940 -1470 1020 -1470 {lab=#net1}
N 1140 -1380 1140 -1340 {lab=Vcm}
N 1140 -1280 1140 -1240 {lab=vinn}
N 1240 -1380 1240 -1340 {lab=Vcm}
N 1140 -1380 1240 -1380 {
lab=Vcm}
N 1240 -1280 1240 -1240 {lab=GND}
N 940 -1290 940 -1240 {lab=GND}
N 820 -1280 820 -1240 {lab=GND}
N 860 -460 860 -420 {lab=VDD}
N 860 -360 860 -320 {lab=GND}
N 1040 -460 1040 -420 {lab=bio_amp_en}
N 1040 -360 1040 -320 {lab=GND}
N 1500 -420 1500 -400 {
lab=vout}
N 1430 -390 1460 -390 {
lab=voutp}
N 1430 -350 1460 -350 {
lab=voutn}
N 1500 -340 1500 -320 {lab=GND}
N 1020 -1020 1020 -1000 {lab=VDD}
N 780 -840 840 -840 {lab=#net2}
N 660 -840 720 -840 {lab=vinp}
N 780 -760 840 -760 {lab=#net3}
N 660 -760 720 -760 {lab=vinn}
N 660 -800 840 -800 {lab=Vcm}
C {devices/code_shown.sym} 60 -1490 0 0 {name=MODEL only_toplevel=true
format="tcleval( @value )"
value="
.lib cornerMOSlv.lib mos_tt
.lib cornerMOShv.lib mos_tt
.lib cornerRES.lib res_typ
"}
C {devices/code_shown.sym} 60 -1290 0 0 {name=NGSPICE
only_toplevel=true 
value="
.param temp=27
* 227.56fF DAC
.param Cload=227.56f
.param R1=1e-3
* 10Hz, C1 = 330p
*.param R1=48e6
* 10Hz, C1 = 165p
*.param R1=96e6
* 10Hz, C1 = 33p
*.param R1=480e6
* 500Hz
*.param R1=1e6
.options savecurrents method=gear reltol=1e-2 abstol=1e-15 gmin=1e-15 rshunt=1e12
.control

optran 0 0 0 1u 1m 0

save all
* save v(voutp) v(voutn) v(vout) v(vind)

set wr_vecnames
set wr_singlescale

* User Constants
let f_min = 0.01
let f_max = 1G
let fdc = 1

* Operating Point Analysis
op
remzerovec
write bio_amplifier_simplified_tb_ac_cl.raw
set appendwrite

* AC Analysis
ac dec 101 $&const.f_min $&const.f_max
remzerovec
write bio_amplifier_simplified_tb_ac_cl.raw
set appendwrite

* Plotting
let Amag = v(vout)/v(vind)		
let Amag_dB = vdb(Amag)
let Aarg = 180/PI*cphase(Amag)

plot Amag_dB ylabel 'Magnitude'
plot Aarg ylabel 'Phase'
plot Amag_dB Aarg ylabel 'Magnitude, Phase'

* Measurements
meas ac Adc_cl_dB find Amag_dB when frequency = fdc
print Adc_cl_dB

let Amag_fc = Adc_cl_dB-3
meas ac fcl find frequency when Amag_dB = Amag_fc RISE=1
print fcl

meas ac fcu find frequency when Amag_dB = Amag_fc FALL=1
print fcu

* Write Data
set wr_vecnames
set wr_singlescale
wrdata /foss/designs/SG13G2_ATBS-ADC-main/python/plot_simulations/data/bio_amplifier_simplified_tb_ac_cl.txt v(Amag_dB) v(Aarg)

*quit
.endc
"}
C {devices/gnd.sym} 1400 -580 0 0 {name=l1 lab=GND}
C {devices/vsource.sym} 860 -390 0 0 {name=VDD value=1.5}
C {devices/gnd.sym} 860 -320 0 0 {name=l3 lab=GND}
C {devices/launcher.sym} 1700 -1260 0 0 {name=h2
descr="Simulate" 
tclcommand="xschem save; xschem netlist; xschem simulate"
}
C {devices/capa.sym} 1400 -670 0 0 {name=C1
m=1
value=\{Cload\}
footprint=1206
device="ceramic capacitor"}
C {title-3.sym} 0 0 0 0 {name=l2 author="Simon Dorrer" rev=1.0 lock=true}
C {devices/launcher.sym} 1700 -1140 0 0 {name=h1
descr="Load waves" 
tclcommand="xschem raw_read $netlist_dir/bio_amplifier_simplified_tb_ac_cl.raw ac"
}
C {devices/launcher.sym} 1700 -1200 0 0 {name=h3
descr="Annotate OP" 
tclcommand="set show_hidden_texts 1; xschem annotate_op"
}
C {vdd.sym} 860 -460 0 0 {name=l7 lab=VDD}
C {vdd.sym} 1020 -1020 0 0 {name=l8 lab=VDD}
C {devices/gnd.sym} 1040 -580 0 0 {name=l9 lab=GND}
C {lab_pin.sym} 1540 -820 0 1 {name=p3 sig_type=std_logic lab=voutp}
C {lab_pin.sym} 1540 -780 0 1 {name=p4 sig_type=std_logic lab=voutn}
C {devices/lab_pin.sym} 1140 -1520 0 0 {name=l10 sig_type=std_logic lab=vinp}
C {devices/lab_pin.sym} 1140 -1240 0 0 {name=l11 sig_type=std_logic lab=vinn
}
C {devices/lab_pin.sym} 800 -1400 0 0 {name=l13 sig_type=std_logic lab=vind}
C {devices/lab_pin.sym} 660 -800 0 0 {name=l4 sig_type=std_logic lab=Vcm}
C {devices/lab_pin.sym} 660 -840 0 0 {name=l5 sig_type=std_logic lab=vinp}
C {devices/lab_pin.sym} 660 -760 0 0 {name=l19 sig_type=std_logic lab=vinn
}
C {devices/lab_pin.sym} 1060 -1020 1 0 {name=l24 sig_type=std_logic lab=bio_amp_en}
C {devices/capa.sym} 1500 -670 0 0 {name=C2
m=1
value=\{Cload\}
footprint=1206
device="ceramic capacitor"}
C {devices/gnd.sym} 1500 -580 0 0 {name=l30 lab=GND}
C {devices/gnd.sym} 1040 -320 0 0 {name=l6 lab=GND}
C {devices/lab_pin.sym} 1040 -460 2 0 {name=l35 sig_type=std_logic lab=bio_amp_en}
C {devices/vsource.sym} 1240 -1310 0 0 {name=Vcm value=0.75
}
C {devices/vcvs.sym} 1140 -1310 0 0 {name=E4 value=0.5}
C {devices/vcvs.sym} 1140 -1450 0 0 {name=E5 value=0.5}
C {devices/lab_pin.sym} 1260 -1380 2 0 {name=l38 sig_type=std_logic lab=Vcm}
C {devices/gnd.sym} 820 -1240 0 0 {name=l39 lab=GND}
C {devices/gnd.sym} 1240 -1240 0 0 {name=l40 lab=GND}
C {devices/vcvs.sym} 940 -1380 0 0 {name=E6 value=1}
C {devices/gnd.sym} 940 -1240 0 0 {name=l41 lab=GND}
C {devices/vsource.sym} 1040 -390 0 0 {name=V1 value="1.5"}
C {devices/lab_pin.sym} 1500 -420 0 1 {name=l12 sig_type=std_logic lab=vout}
C {devices/vcvs.sym} 1500 -370 0 0 {name=E1 value=1}
C {devices/gnd.sym} 1500 -320 0 0 {name=l14 lab=GND}
C {devices/lab_pin.sym} 1430 -350 2 1 {name=l15 sig_type=std_logic lab=voutn
}
C {devices/lab_pin.sym} 1430 -390 0 0 {name=l23 sig_type=std_logic lab=voutp
}
C {devices/vsource.sym} 820 -1310 0 0 {name=vin value="dc 0 ac 1"
}
C {bio_amplifier/bio_amplifier_simplified.sym} 1040 -800 0 0 {name=x1 C1=330p C2=3.3p R2=160G}
C {res.sym} 750 -840 1 1 {name=R1a
value=\{R1\}
footprint=1206
device=resistor
m=1}
C {res.sym} 750 -760 3 1 {name=R1b
value=\{R1\}
footprint=1206
device=resistor
m=1}
