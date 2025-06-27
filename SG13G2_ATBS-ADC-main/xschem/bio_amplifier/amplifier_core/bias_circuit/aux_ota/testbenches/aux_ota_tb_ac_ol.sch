v {xschem version=3.4.6 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
B 2 1640 -740 2440 -340 {flags=graph
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
B 2 1640 -1160 2440 -760 {flags=graph
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
T {Testbench for AC OL analysis - Auxiliary Amplifier} 510 -1720 0 0 1 1 {}
N 1000 -520 1000 -480 {lab=VDD}
N 1000 -420 1000 -380 {lab=GND}
N 880 -1360 880 -1300 {lab=vind}
N 860 -1360 880 -1360 {lab=vind}
N 880 -1360 960 -1360 {lab=vind}
N 960 -1320 960 -1280 {lab=GND}
N 960 -1280 1000 -1280 {lab=GND}
N 1000 -1310 1000 -1280 {
lab=GND}
N 1200 -1380 1200 -1340 {lab=#net1}
N 1200 -1480 1200 -1440 {lab=vinp}
N 1080 -1290 1160 -1290 {lab=#net2}
N 1080 -1430 1160 -1430 {lab=#net2}
N 1000 -1430 1000 -1370 {lab=#net2}
N 1120 -1250 1160 -1250 {lab=GND}
N 1000 -1280 1000 -1250 {
lab=GND}
N 1120 -1390 1160 -1390 {lab=GND}
N 1120 -1390 1120 -1250 {lab=GND}
N 1000 -1250 1120 -1250 {lab=GND}
N 1080 -1430 1080 -1290 {lab=#net2}
N 1000 -1430 1080 -1430 {lab=#net2}
N 1200 -1340 1200 -1300 {lab=#net1}
N 1200 -1240 1200 -1200 {lab=vinn}
N 1300 -1340 1300 -1300 {lab=#net1}
N 1200 -1340 1300 -1340 {
lab=#net1}
N 1300 -1240 1300 -1180 {lab=GND}
N 1000 -1250 1000 -1180 {lab=GND}
N 880 -1240 880 -1180 {lab=GND}
N 880 -900 920 -900 {lab=vinp}
N 880 -820 920 -820 {lab=vinn}
N 1000 -760 1000 -640 {lab=GND}
N 1000 -1000 1000 -960 {lab=VDD}
N 1000 -1000 1020 -1000 {lab=VDD}
N 1000 -1060 1000 -1000 {lab=VDD}
N 1020 -1000 1020 -960 {lab=VDD}
N 1180 -720 1180 -640 {lab=GND}
N 1180 -860 1180 -780 {lab=vout}
N 1100 -860 1180 -860 {lab=vout}
N 1180 -860 1260 -860 {lab=vout}
C {devices/code_shown.sym} 40 -1570 0 0 {name=NGSPICE
only_toplevel=true 
value="
.param temp=27
.param Cload=100f

.options savecurrents reltol=1e-3 abstol=1e-15 gmin=1e-18
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
write aux_ota_tb_ac_ol.raw
set appendwrite

* AC Analysis
ac dec 101 $&const.f_min $&const.f_max
remzerovec
write aux_ota_tb_ac_ol.raw

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

*quit
.endc
"}
C {devices/launcher.sym} 1700 -1320 0 0 {name=h2
descr="Simulate" 
tclcommand="xschem save; xschem netlist; xschem simulate"
}
C {title-3.sym} 0 0 0 0 {name=l2 author="Simon Dorrer" rev=1.0 lock=true}
C {devices/launcher.sym} 1700 -1200 0 0 {name=h1
descr="Load waves" 
tclcommand="xschem raw_read $netlist_dir/aux_ota_tb_ac_ol.raw ac"
}
C {devices/launcher.sym} 1700 -1260 0 0 {name=h3
descr="Annotate OP" 
tclcommand="set show_hidden_texts 1; xschem annotate_op"
}
C {devices/code_shown.sym} 60 -310 0 0 {name=MODEL only_toplevel=true
format="tcleval( @value )"
value="
.lib cornerMOSlv.lib mos_tt
.lib cornerMOShv.lib mos_tt
.lib cornerRES.lib res_typ
"}
C {devices/vsource.sym} 1000 -450 0 0 {name=VDD value=1.5}
C {devices/gnd.sym} 1000 -380 0 0 {name=l3 lab=GND}
C {vdd.sym} 1000 -520 0 0 {name=l7 lab=VDD}
C {devices/lab_pin.sym} 1200 -1480 0 0 {name=l1 sig_type=std_logic lab=vinp}
C {devices/lab_pin.sym} 1200 -1200 0 0 {name=l4 sig_type=std_logic lab=vinn
}
C {devices/lab_pin.sym} 860 -1360 0 0 {name=l15 sig_type=std_logic lab=vind}
C {devices/vsource.sym} 1300 -1270 0 0 {name=Vcm value=0.128
}
C {devices/vcvs.sym} 1200 -1270 0 0 {name=E4 value=0.5}
C {devices/vcvs.sym} 1200 -1410 0 0 {name=E5 value=0.5}
C {devices/gnd.sym} 880 -1180 0 0 {name=l16 lab=GND}
C {devices/gnd.sym} 1300 -1180 0 0 {name=l40 lab=GND}
C {devices/vcvs.sym} 1000 -1340 0 0 {name=E6 value=1}
C {devices/gnd.sym} 1000 -1180 0 0 {name=l41 lab=GND}
C {devices/vsource.sym} 880 -1270 0 0 {name=vin value="dc 0 ac 1"
}
C {devices/lab_pin.sym} 880 -900 0 0 {name=l5 sig_type=std_logic lab=vinp}
C {devices/lab_pin.sym} 880 -820 0 0 {name=l8 sig_type=std_logic lab=vinn
}
C {devices/gnd.sym} 1180 -640 0 0 {name=l9 lab=GND}
C {lab_pin.sym} 1260 -860 0 1 {name=p3 sig_type=std_logic lab=vout}
C {devices/capa.sym} 1180 -750 0 0 {name=C3
m=1
value=\{Cload\}
footprint=1206
device="ceramic capacitor"}
C {devices/gnd.sym} 1000 -640 0 0 {name=l11 lab=GND}
C {vdd.sym} 1000 -1060 0 0 {name=l14 lab=VDD}
C {bio_amplifier/amplifier_core/bias_circuit/aux_ota/aux_ota.sym} 1020 -860 0 0 {name=x1}
