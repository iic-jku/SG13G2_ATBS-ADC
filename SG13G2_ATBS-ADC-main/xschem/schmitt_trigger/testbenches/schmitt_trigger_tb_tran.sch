v {xschem version=3.4.6 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
B 2 1560 -1300 2360 -900 {flags=graph
y1=-1.3e-05
y2=3.4
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=0
x2=0.003
divx=5
subdivx=1
xlabmag=1.0
ylabmag=1.0
node="vin
vout_buf"
color="4 7"
dataset=-1
unitx=1
logx=0
logy=0
hilight_wave=1
linewidth_mult=2}
B 2 1560 -860 2360 -460 {flags=graph
y1=-2.4e-05
y2=3.4
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=0
x2=0.003
divx=5
subdivx=1
xlabmag=1.0
ylabmag=1.0
node="vin
vout_st"
color="4 7"
dataset=-1
unitx=1
logx=0
logy=0
hilight_wave=1
linewidth_mult=2}
T {Testbench for transient analysis - Schmitt Trigger's Hysteresis} 440 -1730 0 0 1 1 {}
T {Buffer} 1000 -830 0 0 0.5 0.5 {}
T {Schmitt-Trigger} 950 -1320 0 0 0.5 0.5 {}
N 1080 -1220 1080 -1200 {
lab=VDD}
N 1080 -1040 1080 -940 {
lab=GND}
N 580 -1040 580 -1020 {
lab=VDD}
N 580 -960 580 -940 {
lab=GND}
N 1320 -1120 1400 -1120 {lab=vout_st}
N 740 -960 740 -940 {lab=GND}
N 740 -1120 740 -1020 {lab=vin}
N 700 -1120 740 -1120 {lab=vin}
N 1320 -1120 1320 -1060 {lab=vout_st}
N 1320 -1000 1320 -940 {lab=GND}
N 920 -660 1020 -660 {lab=vin}
N 1080 -720 1080 -700 {lab=VDD}
N 1080 -620 1080 -480 {lab=GND}
N 1320 -660 1400 -660 {lab=vout_buf}
N 1320 -660 1320 -600 {lab=vout_buf}
N 1320 -540 1320 -480 {lab=GND}
N 740 -1120 1000 -1120 {lab=vin}
N 1160 -1120 1320 -1120 {lab=vout_st}
N 1140 -660 1320 -660 {lab=vout_buf}
C {devices/lab_pin.sym} 1400 -1120 2 0 {name=p2 sig_type=std_logic lab=vout_st}
C {devices/capa.sym} 1320 -1030 0 0 {name=C1
m=1
value=5f
footprint=1206
device="ceramic capacitor"}
C {devices/vdd.sym} 1080 -1220 0 0 {name=l7 lab=VDD}
C {devices/gnd.sym} 1080 -940 0 0 {name=l10 lab=GND}
C {devices/gnd.sym} 1320 -940 0 0 {name=l11 lab=GND}
C {devices/lab_wire.sym} 700 -1120 2 1 {name=l12 sig_type=std_logic lab=vin}
C {devices/vsource.sym} 740 -990 0 0 {name=vin value="pulse(0, 3.3, 0, 1m, 1m, 1m, 3m)"}
C {devices/gnd.sym} 740 -940 0 0 {name=l1 lab=GND}
C {devices/title-3.sym} 0 0 0 0 {name=l3 author="Simon Dorrer" rev=1.0 lock=true}
C {devices/launcher.sym} 1620 -1340 0 0 {name=h1
descr="Load waves" 
tclcommand="xschem raw_read $netlist_dir/schmitt_trigger_tb_tran.raw tran"
}
C {devices/launcher.sym} 1620 -1400 0 0 {name=h2
descr="Annotate OP" 
tclcommand="set show_hidden_texts 1; xschem annotate_op"
}
C {devices/launcher.sym} 1620 -1460 0 0 {name=h3
descr="Simulate" 
tclcommand="xschem save; xschem netlist; xschem simulate"
}
C {code_shown.sym} 80 -1010 0 0 {name=NGSPICE
only_toplevel=true
value="
.param temp=27
.param W_N=1u
.param L_N=0.5u
.param W_P=3u
.param L_P=0.5u
.param R=4
.options savecurrents reltol=1e-3 abstol=1e-12 gmin=1e-15
.control

save all

* Operating Point Analysis
op
remzerovec
write schmitt_trigger_tb_tran.raw
set appendwrite

* Transient Analysis
tran 5u 3ms
write schmitt_trigger_tb_tran.raw

* Measurements
meas tran cross_time1 find time WHEN vin = vout_st TD=0.1m
meas tran y_value1 find vin WHEN time = cross_time1

meas tran cross_time2 find time WHEN vin = vout_st TD=2.1m
meas tran y_value2 find vin WHEN time = cross_time2

let VH = y_value1 - y_value2
print VH

* Plotting
plot v(vin) v(vout_buf)
plot v(vin) v(vout_st)

* Writing Data
set wr_singlescale
set wr_vecnames
wrdata /foss/designs/SG13G2_ATBS-ADC-main/python/plot_simulations/data/schmitt_trigger_tb_tran.txt v(vin) v(vout_buf) v(vout_st)

*quit
.endc"}
C {devices/code_shown.sym} 100 -1430 0 0 {name=MODEL only_toplevel=true
format="tcleval( @value )"
value="
.lib cornerMOShv.lib mos_tt
.lib cornerRES.lib res_typ
"}
C {devices/vsource.sym} 580 -990 0 0 {name=VDD value=3.3}
C {devices/gnd.sym} 580 -940 0 0 {name=l6 lab=GND}
C {devices/vdd.sym} 580 -1040 0 0 {name=l8 lab=VDD}
C {devices/vdd.sym} 1080 -720 0 0 {name=l2 lab=VDD}
C {devices/gnd.sym} 1080 -480 0 0 {name=l4 lab=GND}
C {devices/lab_wire.sym} 920 -660 2 1 {name=l5 sig_type=std_logic lab=vin}
C {devices/lab_pin.sym} 1400 -660 2 0 {name=p1 sig_type=std_logic lab=vout_buf}
C {devices/capa.sym} 1320 -570 0 0 {name=C2
m=1
value=5f
footprint=1206
device="ceramic capacitor"}
C {devices/gnd.sym} 1320 -480 0 0 {name=l9 lab=GND}
C {schmitt_trigger/schmitt_trigger.sym} 1080 -1120 0 0 {name=x1 W_P_ST=\{W_P\} L_P_ST=\{L_P\} W_N_ST=\{W_N\} L_N_ST=\{L_N\} R=\{R\}}
C {buffer/buffer_hv.sym} 1080 -660 0 0 {name=x2 W_P_INV=\{W_P\} L_P_INV=\{L_P\} W_N_INV=\{W_N\} L_N_INV=\{L_N\}}
