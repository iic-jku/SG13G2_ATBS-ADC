v {xschem version=3.4.7 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
B 2 1740 -1660 2540 -1260 {flags=graph
y1=3500
y2=960000
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=0
x2=1.5
divx=5
subdivx=1
xlabmag=1.0
ylabmag=1.0


dataset=-1
unitx=1
logx=0
logy=0
hilight_wave=-1
color=4
node="\\"r_hv_w_dummy_on; vout_tg_hv_w_dummy_on vin_tg - i(vds_x4) /\\""
linewidth_mult=4}
B 2 1740 -1220 2540 -820 {flags=graph
y1=3500
y2=960000
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=0
x2=1.5
divx=5
subdivx=1
xlabmag=1.0
ylabmag=1.0


dataset=-1
unitx=1
logx=0
logy=0
hilight_wave=-1
color=4
node="\\"r_hv_wo_dummy_on; vout_tg_hv_wo_dummy_on vin_tg - i(vds_x1) /\\""
linewidth_mult=4
rainbow=0}
B 2 2580 -1660 3380 -1260 {flags=graph
y1=1400
y2=7900
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=0
x2=1.5
divx=5
subdivx=1
xlabmag=1.0
ylabmag=1.0


dataset=-1
unitx=1
logx=0
logy=0
hilight_wave=-1
color=7
node="\\"r_lv_w_dummy_on; vout_tg_lv_w_dummy_on vin_tg - i(vds_x3) /\\""
linewidth_mult=4}
B 2 2580 -1220 3380 -820 {flags=graph
y1=1400
y2=7900
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=0
x2=1.5
divx=5
subdivx=1
xlabmag=1.0
ylabmag=1.0


dataset=-1
unitx=1
logx=0
logy=0
hilight_wave=-1
color=7
node="\\"r_lv_wo_dummy_on; vout_tg_lv_wo_dummy_on vin_tg - i(vds_x2) /\\""
linewidth_mult=4}
T {Testbench for Ron analysis - Parameterizable Transmission Gate} 840 -2240 0 0 1 1 {}
T {LV & HV TGs are ON!} 1280 -1280 0 0 0.5 0.5 {}
N 1020 -800 1020 -720 {
lab=vin_tg}
N 1100 -1140 1140 -1140 {
lab=vin_tg}
N 1300 -1140 1400 -1140 {
lab=vout_tg_lv_wo_dummy_on}
N 1020 -1140 1100 -1140 {
lab=vin_tg}
N 1020 -660 1020 -600 {
lab=GND}
N 1200 -1200 1200 -1180 {
lab=VDD}
N 1220 -1200 1220 -1180 {
lab=VDD}
N 860 -660 860 -600 {
lab=GND}
N 860 -780 860 -720 {
lab=VDD}
N 1400 -1140 1440 -1140 {
lab=vout_tg_lv_wo_dummy_on}
N 980 -1140 1020 -1140 {
lab=vin_tg}
N 1100 -1560 1140 -1560 {
lab=vin_tg}
N 1300 -1560 1400 -1560 {
lab=vout_tg_lv_w_dummy_on}
N 1200 -1620 1200 -1600 {
lab=VDD}
N 1220 -1620 1220 -1600 {
lab=VDD}
N 1400 -1560 1440 -1560 {
lab=vout_tg_lv_w_dummy_on}
N 1020 -1560 1100 -1560 {
lab=vin_tg}
N 1020 -1560 1020 -1140 {lab=vin_tg}
N 1220 -1100 1220 -1080 {lab=GND}
N 1200 -1080 1220 -1080 {lab=GND}
N 1200 -1100 1200 -1080 {
lab=GND}
N 1200 -1080 1200 -1060 {lab=GND}
N 1200 -1200 1220 -1200 {lab=VDD}
N 1200 -1220 1200 -1200 {lab=VDD}
N 1200 -1620 1220 -1620 {lab=VDD}
N 1200 -1640 1200 -1620 {lab=VDD}
N 1200 -1500 1200 -1480 {lab=GND}
N 1220 -1520 1220 -1500 {lab=GND}
N 1200 -1500 1220 -1500 {lab=GND}
N 1200 -1520 1200 -1500 {lab=GND}
N 1260 -1380 1400 -1380 {lab=vout_tg_lv_w_dummy_on}
N 1400 -1560 1400 -1380 {
lab=vout_tg_lv_w_dummy_on}
N 1100 -1380 1200 -1380 {lab=vin_tg}
N 1100 -1560 1100 -1380 {
lab=vin_tg}
N 1100 -1900 1140 -1900 {
lab=vin_tg}
N 1300 -1900 1400 -1900 {
lab=vout_tg_hv_w_dummy_on}
N 1200 -1960 1200 -1940 {
lab=VDD}
N 1220 -1960 1220 -1940 {
lab=VDD}
N 1400 -1900 1440 -1900 {
lab=vout_tg_hv_w_dummy_on}
N 1200 -1960 1220 -1960 {lab=VDD}
N 1200 -1980 1200 -1960 {lab=VDD}
N 1200 -1840 1200 -1820 {lab=GND}
N 1220 -1860 1220 -1840 {lab=GND}
N 1200 -1840 1220 -1840 {lab=GND}
N 1200 -1860 1200 -1840 {lab=GND}
N 1260 -1720 1400 -1720 {lab=vout_tg_hv_w_dummy_on}
N 1400 -1900 1400 -1720 {
lab=vout_tg_hv_w_dummy_on}
N 1100 -1720 1200 -1720 {lab=vin_tg}
N 1100 -1900 1100 -1720 {
lab=vin_tg}
N 1260 -960 1400 -960 {lab=vout_tg_lv_wo_dummy_on}
N 1400 -1140 1400 -960 {
lab=vout_tg_lv_wo_dummy_on}
N 1100 -960 1200 -960 {lab=vin_tg}
N 1100 -1140 1100 -960 {
lab=vin_tg}
N 1100 -800 1140 -800 {
lab=vin_tg}
N 1300 -800 1400 -800 {
lab=vout_tg_hv_wo_dummy_on}
N 1020 -800 1100 -800 {
lab=vin_tg}
N 1200 -860 1200 -840 {
lab=VDD}
N 1220 -860 1220 -840 {
lab=VDD}
N 1400 -800 1440 -800 {
lab=vout_tg_hv_wo_dummy_on}
N 1220 -760 1220 -740 {lab=GND}
N 1200 -740 1220 -740 {lab=GND}
N 1200 -760 1200 -740 {
lab=GND}
N 1200 -740 1200 -720 {lab=GND}
N 1200 -860 1220 -860 {lab=VDD}
N 1200 -880 1200 -860 {lab=VDD}
N 1260 -620 1400 -620 {lab=vout_tg_hv_wo_dummy_on}
N 1400 -800 1400 -620 {
lab=vout_tg_hv_wo_dummy_on}
N 1100 -620 1200 -620 {lab=vin_tg}
N 1100 -800 1100 -620 {
lab=vin_tg}
N 1020 -1900 1100 -1900 {lab=vin_tg}
N 1020 -1900 1020 -1560 {lab=vin_tg}
N 1020 -1140 1020 -800 {lab=vin_tg}
C {devices/lab_wire.sym} 1440 -1140 0 1 {name=p1 sig_type=std_logic lab=vout_tg_lv_wo_dummy_on}
C {devices/vsource.sym} 860 -690 0 0 {name=VDD value="1.5"}
C {devices/gnd.sym} 860 -600 0 0 {name=l6 lab=GND}
C {devices/vdd.sym} 860 -780 0 0 {name=l8 lab=VDD}
C {devices/vsource.sym} 1020 -690 0 0 {name=vin value=0
}
C {devices/gnd.sym} 1200 -1060 0 0 {name=l2 lab=GND}
C {devices/vdd.sym} 1200 -1220 0 0 {name=l4 lab=VDD}
C {devices/lab_wire.sym} 980 -1140 0 0 {name=p2 sig_type=std_logic lab=vin_tg}
C {devices/gnd.sym} 1020 -600 0 0 {name=l1 lab=GND}
C {devices/vsource.sym} 1230 -960 3 0 {name=vds_x2 value=1mV
}
C {devices/code_shown.sym} 40 -1810 0 0 {name=MODEL only_toplevel=true
format="tcleval( @value )"
value="
.lib cornerMOShv.lib mos_tt
.lib cornerMOSlv.lib mos_tt
.lib cornerRES.lib res_typ
"}
C {devices/launcher.sym} 1800 -1830 0 0 {name=h2
descr="Simulate" 
tclcommand="xschem save; xschem netlist; xschem simulate"
}
C {devices/launcher.sym} 1800 -1710 0 0 {name=h1
descr="Load waves" 
tclcommand="xschem raw_read $netlist_dir/transmission_gate_tb_dc_Ron.raw dc"
}
C {devices/launcher.sym} 1800 -1770 0 0 {name=h3
descr="Annotate OP" 
tclcommand="set show_hidden_texts 1; xschem annotate_op"
}
C {code_shown.sym} 40 -1210 0 0 {name=NGSPICE
only_toplevel=true
value="
.param temp=27
.param W_N=1u
.param L_N=0.50u
.param W_P=1u
.param L_P=0.50u
.options savecurrents
.control
save all

* Operating Point Analysis
op
remzerovec
write transmission_gate_tb_dc_Ron.raw
set appendwrite

* DC Sweep Analysis
dc vin 0 1.5 0.01
write transmission_gate_tb_dc_Ron.raw

* On-Resistance
* HV with Dummy
let r_hv_w_dummy_on = (v(vout_tg_hv_w_dummy_on)-v(vin_tg))/I(vds_x4)
plot r_hv_w_dummy_on xlabel 'Vin in V' ylabel 'HV Ron with Dummy in Ohm'

* LV with Dummy
let r_lv_w_dummy_on = (v(vout_tg_lv_w_dummy_on)-v(vin_tg))/I(vds_x3)
plot r_lv_w_dummy_on xlabel 'Vin in V' ylabel 'LV Ron with Dummy in Ohm'

* LV without Dummy
let r_lv_wo_dummy_on = (v(vout_tg_lv_wo_dummy_on)-v(vin_tg))/I(vds_x2)
plot r_lv_wo_dummy_on xlabel 'Vin in V' ylabel 'LV Ron without Dummy in Ohm'

* HV without Dummy
let r_hv_wo_dummy_on = (v(vout_tg_hv_wo_dummy_on)-v(vin_tg))/I(vds_x1)
plot r_hv_wo_dummy_on xlabel 'Vin in V' ylabel 'HV Ron without Dummy in Ohm'

* Writing Data
set wr_singlescale
set wr_vecnames
wrdata /foss/designs/SG13G2_ATBS-ADC-main/python/plot_simulations/data/transmission_gate_tb_dc_Ron.txt v(r_hv_w_dummy_on) v(r_lv_w_dummy_on) v(r_lv_wo_dummy_on) v(r_hv_wo_dummy_on)

*quit
.endc"}
C {devices/lab_wire.sym} 1440 -1560 0 1 {name=p3 sig_type=std_logic lab=vout_tg_lv_w_dummy_on}
C {devices/gnd.sym} 1200 -1480 0 0 {name=l3 lab=GND}
C {devices/vdd.sym} 1200 -1640 0 0 {name=l5 lab=VDD}
C {devices/vsource.sym} 1230 -1380 3 0 {name=vds_x3 value=1mV
}
C {transmission_gate/transmission_gate_lv_wo_dummy.sym} 1220 -1140 0 0 {name=x1 W_P=\{W_P\} L_P=\{L_P\} W_N=\{W_N\} L_N=\{L_N\}}
C {transmission_gate/transmission_gate_lv_w_dummy.sym} 1220 -1560 0 0 {name=x2 W_P=\{W_P\} L_P=\{L_P\} W_N=\{W_N\} L_N=\{L_N\} W_P_D=\{W_P\}/2 L_P_D=\{L_N\} W_N_D=\{W_N\}/2 L_N_D=\{L_N\}}
C {devices/lab_wire.sym} 1440 -1900 0 1 {name=p4 sig_type=std_logic lab=vout_tg_hv_w_dummy_on}
C {devices/gnd.sym} 1200 -1820 0 0 {name=l9 lab=GND}
C {devices/vdd.sym} 1200 -1980 0 0 {name=l10 lab=VDD}
C {devices/vsource.sym} 1230 -1720 3 0 {name=vds_x4 value=1mV
}
C {devices/lab_wire.sym} 1440 -800 0 1 {name=p5 sig_type=std_logic lab=vout_tg_hv_wo_dummy_on}
C {devices/gnd.sym} 1200 -720 0 0 {name=l11 lab=GND}
C {devices/vdd.sym} 1200 -880 0 0 {name=l12 lab=VDD}
C {devices/vsource.sym} 1230 -620 3 0 {name=vds_x1 value=1mV
}
C {transmission_gate/transmission_gate_hv_w_dummy.sym} 1220 -1900 0 0 {name=x3 W_P=\{W_P\} L_P=\{L_P\} W_N=\{W_N\} L_N=\{L_N\} W_P_D=\{W_P\}/2 L_P_D=\{L_N\} W_N_D=\{W_N\}/2 L_N_D=\{L_N\}}
C {transmission_gate/transmission_gate_hv_wo_dummy.sym} 1220 -800 0 0 {name=x4 W_P=\{W_P\} L_P=\{L_P\} W_N=\{W_N\} L_N=\{L_N\}}
C {title-2.sym} 0 0 0 0 {name=l7 author="Simon Dorrer" rev=1.0 lock=true}
