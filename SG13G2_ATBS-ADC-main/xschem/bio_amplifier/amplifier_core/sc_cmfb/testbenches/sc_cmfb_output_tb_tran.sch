v {xschem version=3.4.6 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
B 2 1600 -1260 2400 -860 {flags=graph
y1=0.5
y2=1
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=0
x2=0.004
divx=5
subdivx=1
xlabmag=1.0
ylabmag=1.0
node="Vb
Voutn
Voutp
Vbias
Vcmref"
color="4 5 12 18 17"
dataset=-1
unitx=1
logx=0
logy=0
hilight_wave=-1
linewidth_mult=4}
B 2 1600 -820 2400 -420 {flags=graph
y1=0
y2=1.5
ypos1=0
ypos2=1.5
divy=5
subdivy=1
unity=1
x1=0
x2=0.004
divx=5
subdivx=1
xlabmag=1.0
ylabmag=1.0
node="phi_1
x1.di_phi_1_n
phi_2
x1.di_phi_2_n"
color="4 5 12 21"
dataset=-1
unitx=1
logx=0
logy=0
hilight_wave=-1
linewidth_mult=4
digital=1}
T {Testbench for transient analysis - SC CMFB Output Stage} 510 -1690 0 0 1 1 {}
T {Vcm = Vb + Vcmref - Vbias} 1240 -882.5 0 0 0.4 0.4 {}
N 960 -640 960 -600 {lab=VDD}
N 960 -540 960 -500 {lab=GND}
N 820 -1060 820 -1020 {
lab=GND}
N 1160 -1060 1160 -1020 {
lab=GND}
N 820 -1160 820 -1120 {
lab=phi_1}
N 1160 -1160 1160 -1120 {
lab=phi_2}
N 1120 -640 1160 -640 {lab=phi_1}
N 1120 -580 1160 -580 {lab=phi_2}
N 1200 -780 1200 -760 {lab=VDD}
N 1200 -520 1200 -500 {lab=GND}
N 1280 -800 1280 -760 {lab=Vb}
N 1400 -720 1440 -720 {lab=Voutp}
N 1120 -720 1160 -720 {lab=Voutn}
N 640 -640 640 -600 {lab=Voutn}
N 640 -540 640 -500 {lab=GND}
N 800 -640 800 -600 {lab=Voutp}
N 800 -540 800 -500 {lab=GND}
N 1280 -520 1280 -480 {lab=Vbias}
N 1360 -520 1360 -480 {lab=Vcmref}
N 640 -860 640 -820 {lab=Vbias}
N 640 -760 640 -720 {lab=GND}
N 960 -860 960 -820 {lab=Vcmref}
N 960 -760 960 -720 {lab=GND}
N 1280 -800 1480 -800 {lab=Vb}
C {devices/code_shown.sym} 100 -490 0 0 {name=MODEL only_toplevel=true
format="tcleval( @value )"
value="
.lib cornerMOSlv.lib mos_tt
.lib cornerRES.lib res_typ
"}
C {devices/launcher.sym} 1660 -1430 0 0 {name=h2
descr="Simulate" 
tclcommand="xschem save; xschem netlist; xschem simulate"
}
C {devices/launcher.sym} 1660 -1310 0 0 {name=h1
descr="Load waves" 
tclcommand="xschem raw_read $netlist_dir/sc_cmfb_output_tb_tran.raw tran"
}
C {devices/launcher.sym} 1660 -1370 0 0 {name=h3
descr="Annotate OP" 
tclcommand="set show_hidden_texts 1; xschem annotate_op"
}
C {devices/lab_wire.sym} 1480 -800 2 0 {name=p1 sig_type=std_logic lab=Vb}
C {code_shown.sym} 100 -1390 0 0 {name=NGSPICE
only_toplevel=true
value="
.param temp=27
.param fclk=8000000
.param fphi=62500
.options reltol=1e-3 abstol=1e-12 gmin=1e-15
.control
* save all

* Operating Point Analysis
op
remzerovec
write sc_cmfb_output_tb_tran.raw
set appendwrite

* Transient Analysis
tran 100u 4m
write sc_cmfb_output_tb_tran.raw

* Plotting
plot v(Vb) v(Voutp) v(Voutn) v(Vbias) v(Vcmref)
plot v(Vb) v(Vbias)

* Write Data
set wr_vecnames
set wr_singlescale
wrdata /foss/designs/SG13G2_ATBS-ADC-main/python/plot_simulations/data/sc_cmfb_output_tb_tran.txt v(Vb) v(Voutp) v(Voutn) v(Vbias) v(Vcmref)

*quit
.endc"}
C {devices/vsource.sym} 960 -570 0 0 {name=VDD value="1.5"}
C {devices/gnd.sym} 960 -500 0 0 {name=l2 lab=GND}
C {devices/vdd.sym} 960 -640 0 0 {name=l8 lab=VDD}
C {title-3.sym} 0 0 0 0 {name=l1 author="Simon Dorrer" rev=1.0 lock=true}
C {devices/gnd.sym} 1200 -500 0 0 {name=l12 lab=GND}
C {devices/vdd.sym} 1200 -780 0 0 {name=l13 lab=VDD}
C {devices/lab_wire.sym} 1120 -640 2 1 {name=l18 sig_type=std_logic lab=phi_1}
C {devices/vsource.sym} 820 -1090 0 0 {name=V1 value="pulse(0 1.5 0 10p 10p \{0.5/fphi - 1/fclk\} \{1/fphi\})"}
C {devices/gnd.sym} 820 -1020 0 0 {name=l7 lab=GND}
C {devices/lab_wire.sym} 820 -1160 0 1 {name=l9 sig_type=std_logic lab=phi_1}
C {devices/gnd.sym} 1160 -1020 0 0 {name=l14 lab=GND}
C {devices/lab_wire.sym} 1160 -1160 0 1 {name=l15 sig_type=std_logic lab=phi_2}
C {devices/vsource.sym} 1160 -1090 0 0 {name=V2 value="pulse(0 1.5 \{0.5/fphi\} 10p 10p \{0.5/fphi - 1/fclk\} \{1/fphi\})"}
C {devices/lab_wire.sym} 1120 -580 2 1 {name=l20 sig_type=std_logic lab=phi_2}
C {devices/lab_wire.sym} 1440 -720 2 0 {name=p2 sig_type=std_logic lab=Voutp}
C {devices/lab_wire.sym} 1120 -720 2 1 {name=p3 sig_type=std_logic lab=Voutn}
C {devices/vsource.sym} 640 -570 0 0 {name=Voutn value="0.75"}
C {devices/gnd.sym} 640 -500 0 0 {name=l4 lab=GND}
C {devices/lab_wire.sym} 640 -640 0 1 {name=p4 sig_type=std_logic lab=Voutn}
C {devices/vsource.sym} 800 -570 0 0 {name=Voutp value="0.75"}
C {devices/gnd.sym} 800 -500 0 0 {name=l6 lab=GND}
C {devices/lab_wire.sym} 800 -640 0 1 {name=p5 sig_type=std_logic lab=Voutp}
C {devices/lab_wire.sym} 1360 -480 1 1 {name=p6 sig_type=std_logic lab=Vcmref}
C {devices/lab_wire.sym} 1280 -480 1 1 {name=p7 sig_type=std_logic lab=Vbias}
C {devices/vsource.sym} 640 -790 0 0 {name=Vbias value="0 dc pwl(0 0.75 1m 1 2m 0.75 3m 0.5 4m 0.75)"}
C {devices/gnd.sym} 640 -720 0 0 {name=l22 lab=GND}
C {devices/vsource.sym} 960 -790 0 0 {name=Vcmref value="0.75"}
C {devices/gnd.sym} 960 -720 0 0 {name=l23 lab=GND}
C {devices/lab_wire.sym} 960 -860 0 1 {name=p8 sig_type=std_logic lab=Vcmref}
C {devices/lab_wire.sym} 640 -860 0 1 {name=p9 sig_type=std_logic lab=Vbias}
C {bio_amplifier/amplifier_core/sc_cmfb/sc_cmfb_output.sym} 1280 -640 0 0 {name=x1 W_P_CMFB=2.0u L_P_CMFB=0.5u W_N_CMFB=2.0u L_N_CMFB=0.5u W_P_CMFB_D=1.0u W_N_CMFB_D=1.0u C1=100f a=9}
