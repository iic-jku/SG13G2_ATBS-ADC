v {xschem version=3.4.6 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
B 2 1580 -820 2380 -420 {flags=graph
y1=-87
y2=-0.035
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=-1
x2=10
divx=5
subdivx=8
xlabmag=1.0
ylabmag=1.0
node="\\"Phase; ph(vout)\\""
color=4
dataset=-1
unitx=1
logx=1
logy=0
linewidth_mult=4}
B 2 1580 -1260 2380 -860 {flags=graph
y1=-63
y2=-0.0007
ypos1=0
ypos2=2
divy=5
subdivy=4
unity=1
x1=-1
x2=10
divx=5
subdivx=8
xlabmag=1.0
ylabmag=1.0
node="\\"Magnitude; vout vin / db20()\\""
color=4
dataset=-1
unitx=1
logx=1
logy=0
linewidth_mult=4}
T {Testbench for AC analysis - Programmable Capacitor} 560 -1690 0 0 1 1 {}
T {3-Bit Thermometer coded programmable capacitor:
-) di_en = [0 0 0]: open (required if bio-amplifier is not used)
-) di_en = [0 0 1]: Ctot1 = C1 = 33pF
-) di_en = [0 1 1]: Ctot2 = C1 + C2 = 165pF
-) di_en = [1 1 1]: Ctot3 = C1 + C2 + C3 = 330pF} 840 -390 0 0 0.4 0.4 {}
T {fc = 1 / (2 pi R C)} 1320 -790 0 0 0.4 0.4 {}
N 1120 -560 1160 -560 {lab=en_3}
N 1120 -600 1160 -600 {lab=en_2}
N 1220 -520 1220 -480 {lab=GND}
N 1200 -520 1200 -480 {lab=GND}
N 880 -740 880 -640 {lab=vin}
N 880 -580 880 -480 {lab=GND}
N 800 -1120 800 -1080 {lab=VDD}
N 800 -1020 800 -980 {lab=GND}
N 880 -740 1000 -740 {lab=vin}
N 1000 -1020 1000 -980 {
lab=GND}
N 1000 -1120 1000 -1080 {
lab=en_1}
N 1180 -1020 1180 -980 {
lab=GND}
N 1180 -1120 1180 -1080 {
lab=en_2}
N 1360 -1020 1360 -980 {
lab=GND}
N 1360 -1120 1360 -1080 {
lab=en_3}
N 1220 -740 1220 -680 {lab=vout}
N 1060 -740 1220 -740 {lab=vout}
N 1200 -780 1200 -680 {lab=VDD}
N 1120 -640 1160 -640 {lab=en_1}
N 1220 -740 1460 -740 {lab=vout}
C {devices/launcher.sym} 1640 -1430 0 0 {name=h2
descr="Simulate" 
tclcommand="xschem save; xschem netlist; xschem simulate"
}
C {devices/launcher.sym} 1640 -1310 0 0 {name=h1
descr="Load waves" 
tclcommand="xschem raw_read $netlist_dir/programmable_cap_tb_ac.raw ac"
}
C {devices/launcher.sym} 1640 -1370 0 0 {name=h3
descr="Annotate OP" 
tclcommand="set show_hidden_texts 1; xschem annotate_op"
}
C {code_shown.sym} 180 -1350 0 0 {name=NGSPICE
only_toplevel=true
value="
.param temp=27
.param EN1=1
.param EN2=1
.param EN3=1
.options savecurrents
.control
save all

* Operating Point Analysis
op
remzerovec
write programmable_cap_tb_ac.raw
set appendwrite

* AC Analysis
ac dec 101 100m 10G
remzerovec
write programmable_cap_tb_ac.raw

* Measurements
let Amag = v(vout)/v(vin)		
let Amag_dB = vdb(Amag)
let Aarg = 180/PI*cphase(Amag)

* DC gain
meas ac Adc_dB find Amag_dB when frequency = 10

* 3dB cut-off frequency
let Amag_dB_fc = Adc_dB - 3
meas ac fc find frequency when Amag_dB = Amag_dB_fc

* Plotting
plot Amag_dB ylabel 'Magnitude'
plot Aarg ylabel 'Phase'

*quit
.endc"}
C {title-3.sym} 0 0 0 0 {name=l1 author="Simon Dorrer" rev=1.0 lock=true}
C {devices/gnd.sym} 880 -480 0 0 {name=l6 lab=GND}
C {devices/code_shown.sym} 180 -530 0 0 {name=MODEL only_toplevel=true
format="tcleval( @value )"
value="
.lib cornerMOSlv.lib mos_tt
.lib cornerRES.lib res_typ
"}
C {devices/lab_wire.sym} 1460 -740 2 0 {name=p1 sig_type=std_logic lab=vout}
C {devices/gnd.sym} 1220 -480 0 0 {name=l12 lab=GND}
C {devices/gnd.sym} 1200 -480 0 1 {name=l13 lab=GND}
C {devices/vdd.sym} 1200 -780 0 0 {name=l18 lab=VDD}
C {devices/lab_wire.sym} 1120 -600 0 0 {name=l20 sig_type=std_logic lab=en_2}
C {devices/lab_wire.sym} 1120 -640 0 0 {name=l23 sig_type=std_logic lab=en_1}
C {devices/lab_wire.sym} 1120 -560 0 0 {name=l26 sig_type=std_logic lab=en_3}
C {devices/res.sym} 1030 -740 1 0 {name=R2
value=1Meg
footprint=1206
device=resistor
m=1}
C {devices/vsource.sym} 800 -1050 0 0 {name=VDD value="1.5"}
C {devices/gnd.sym} 800 -980 0 0 {name=l2 lab=GND}
C {devices/vdd.sym} 800 -1120 0 0 {name=l8 lab=VDD}
C {devices/lab_wire.sym} 880 -740 0 0 {name=p2 sig_type=std_logic lab=vin}
C {devices/vsource.sym} 1000 -1050 0 0 {name=V1 value=\{\{EN1\}*1.5\}}
C {devices/gnd.sym} 1000 -980 0 0 {name=l7 lab=GND}
C {devices/lab_wire.sym} 1000 -1120 0 1 {name=l9 sig_type=std_logic lab=en_1}
C {devices/gnd.sym} 1180 -980 0 0 {name=l27 lab=GND}
C {devices/lab_wire.sym} 1180 -1120 0 1 {name=l28 sig_type=std_logic lab=en_2}
C {devices/gnd.sym} 1360 -980 0 0 {name=l14 lab=GND}
C {devices/lab_wire.sym} 1360 -1120 0 1 {name=l15 sig_type=std_logic lab=en_3}
C {devices/vsource.sym} 1180 -1050 0 0 {name=V2 value=\{\{EN2\}*1.5\}}
C {devices/vsource.sym} 1360 -1050 0 0 {name=V3 value=\{\{EN3\}*1.5\}}
C {programmable_cap/programmable_cap_x3.sym} 1220 -600 0 0 {name=x1 W_P_PC=1.0u L_P_PC=0.13u W_N_PC=1.0u L_N_PC=0.13u C1=33p C2=132p C3=165p}
C {devices/vsource.sym} 880 -610 0 0 {name=vin value="0.75 AC 1"}
