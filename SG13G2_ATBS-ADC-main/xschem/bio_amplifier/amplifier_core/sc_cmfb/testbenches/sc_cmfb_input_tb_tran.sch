v {xschem version=3.4.6 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
B 2 1580 -1300 2380 -900 {flags=graph
y1=0.6
y2=0.85
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=0
x2=0.002
divx=5
subdivx=1
xlabmag=1.0
ylabmag=1.0
node="Vcmfb
Voutn
Voutp"
color="4 5 12"
dataset=-1
unitx=1
logx=0
logy=0
hilight_wave=-1
linewidth_mult=4}
B 2 1580 -860 2380 -460 {flags=graph
y1=0
y2=1.5
ypos1=0
ypos2=1.5
divy=5
subdivy=1
unity=1
x1=0
x2=0.002
divx=5
subdivx=1
xlabmag=1.0
ylabmag=1.0
node="phi_1
phi_2"
color="4 5"
dataset=-1
unitx=1
logx=0
logy=0
hilight_wave=-1
linewidth_mult=4
digital=1}
T {Testbench for transient analysis - SC CMFB Input Stage} 520 -1690 0 0 1 1 {}
T {Vcmfb = (Voutp + Voutn) / 2} 1220 -852.5 0 0 0.4 0.4 {}
N 620 -1120 620 -1080 {lab=VDD}
N 620 -1020 620 -980 {lab=GND}
N 820 -1020 820 -980 {
lab=GND}
N 1180 -1020 1180 -980 {
lab=GND}
N 820 -1120 820 -1080 {
lab=phi_1}
N 1180 -1120 1180 -1080 {
lab=phi_2}
N 1040 -640 1080 -640 {lab=phi_1}
N 1040 -580 1080 -580 {lab=phi_2}
N 1120 -780 1120 -760 {lab=VDD}
N 1120 -520 1120 -500 {lab=GND}
N 1200 -800 1200 -760 {lab=Vcmfb}
N 1320 -720 1360 -720 {lab=Voutp}
N 1040 -720 1080 -720 {lab=Voutn}
N 620 -640 620 -600 {lab=Voutn}
N 620 -540 620 -500 {lab=GND}
N 820 -640 820 -600 {lab=Voutp}
N 820 -540 820 -500 {lab=GND}
N 1200 -800 1400 -800 {lab=Vcmfb}
C {devices/code_shown.sym} 100 -530 0 0 {name=MODEL only_toplevel=true
format="tcleval( @value )"
value="
.lib cornerMOSlv.lib mos_tt
.lib cornerRES.lib res_typ
"}
C {devices/launcher.sym} 1640 -1470 0 0 {name=h2
descr="Simulate" 
tclcommand="xschem save; xschem netlist; xschem simulate"
}
C {devices/launcher.sym} 1640 -1350 0 0 {name=h1
descr="Load waves" 
tclcommand="xschem raw_read $netlist_dir/sc_cmfb_input_tb_tran.raw tran"
}
C {devices/launcher.sym} 1640 -1410 0 0 {name=h3
descr="Annotate OP" 
tclcommand="set show_hidden_texts 1; xschem annotate_op"
}
C {devices/lab_wire.sym} 1400 -800 2 0 {name=p1 sig_type=std_logic lab=Vcmfb}
C {code_shown.sym} 100 -1330 0 0 {name=NGSPICE
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
write sc_cmfb_input_tb_tran.raw
set appendwrite

* Transient Analysis
tran 10u 2m
write sc_cmfb_input_tb_tran.raw

plot v(Vcmfb) v(Voutp) v(Voutn)

* Write Data
set wr_vecnames
set wr_singlescale
wrdata /foss/designs/SG13G2_ATBS-ADC-main/python/plot_simulations/data/sc_cmfb_input_tb_tran.txt v(Vcmfb) v(Voutp) v(Voutn)

*quit
.endc"}
C {devices/vsource.sym} 620 -1050 0 0 {name=VDD value="1.5"}
C {devices/gnd.sym} 620 -980 0 0 {name=l2 lab=GND}
C {devices/vdd.sym} 620 -1120 0 0 {name=l8 lab=VDD}
C {title-3.sym} 0 0 0 0 {name=l1 author="Simon Dorrer" rev=1.0 lock=true}
C {devices/gnd.sym} 1120 -500 0 0 {name=l12 lab=GND}
C {devices/vdd.sym} 1120 -780 0 0 {name=l13 lab=VDD}
C {devices/lab_wire.sym} 1040 -640 2 1 {name=l18 sig_type=std_logic lab=phi_1}
C {devices/vsource.sym} 820 -1050 0 0 {name=V1 value="pulse(0 1.5 0 10p 10p \{0.5/fphi - 1/fclk\} \{1/fphi\})"}
C {devices/gnd.sym} 820 -980 0 0 {name=l7 lab=GND}
C {devices/lab_wire.sym} 820 -1120 0 1 {name=l9 sig_type=std_logic lab=phi_1}
C {devices/gnd.sym} 1180 -980 0 0 {name=l14 lab=GND}
C {devices/lab_wire.sym} 1180 -1120 0 1 {name=l15 sig_type=std_logic lab=phi_2}
C {devices/vsource.sym} 1180 -1050 0 0 {name=V2 value="pulse(0 1.5 \{0.5/fphi\} 10p 10p \{0.5/fphi - 1/fclk\} \{1/fphi\})"}
C {devices/lab_wire.sym} 1040 -580 2 1 {name=l20 sig_type=std_logic lab=phi_2}
C {devices/lab_wire.sym} 1360 -720 2 0 {name=p2 sig_type=std_logic lab=Voutp}
C {devices/lab_wire.sym} 1040 -720 2 1 {name=p3 sig_type=std_logic lab=Voutn}
C {devices/vsource.sym} 620 -570 0 0 {name=Voutn value="0.8"}
C {devices/gnd.sym} 620 -500 0 0 {name=l4 lab=GND}
C {devices/lab_wire.sym} 620 -640 0 1 {name=p4 sig_type=std_logic lab=Voutn}
C {devices/vsource.sym} 820 -570 0 0 {name=Voutp value="0.6"}
C {devices/gnd.sym} 820 -500 0 0 {name=l6 lab=GND}
C {devices/lab_wire.sym} 820 -640 0 1 {name=p5 sig_type=std_logic lab=Voutp}
C {bio_amplifier/amplifier_core/sc_cmfb/sc_cmfb_input.sym} 1200 -640 0 0 {name=x1 W_P_CMFB=2.0u L_P_CMFB=0.5u W_N_CMFB=2.0u L_N_CMFB=0.5u C1=100f a=9}
