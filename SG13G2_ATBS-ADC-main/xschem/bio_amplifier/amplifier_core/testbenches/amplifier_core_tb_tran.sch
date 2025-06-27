v {xschem version=3.4.7 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
B 2 1680 -1000 2480 -600 {flags=graph
y1=0.71
y2=1.5
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
node="vinp
vinn
voutp
voutn"
color="4 18 21 12"
dataset=-1
unitx=1
logx=0
logy=0
linewidth_mult=3
autoload=0}
B 2 1680 -580 2480 -180 {flags=graph
y1=-9.2e-05
y2=1.6
ypos1=-9.2e-05
ypos2=1.6
divy=5
subdivy=1
unity=1
x1=0
x2=0.004
divx=5
subdivx=1
xlabmag=1.0
ylabmag=1.0


dataset=-1
unitx=1
logx=0
logy=0
linewidth_mult=3
digital=1
color="4 4 18 18 21"
node="phi_cmfb_1
phi_cmfb_2
phi_bias_1
phi_bias_2
bio_amp_en"
legend=1}
B 2 1680 -1420 2480 -1020 {flags=graph
y1=-0.0059
y2=0.015
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
node="vind
vout"
color="4 21"
dataset=-1
unitx=1
logx=0
logy=0
linewidth_mult=3
autoload=0}
P 4 5 1420 -680 1420 -580 1620 -580 1620 -680 1420 -680 {dash = 8}
T {Testbench for transient analysis - Amplifier Core} 520 -1720 0 0 1 1 {}
T {Capacitive Load (Comparator, DAC, etc.)} 1400 -510 0 0 0.25 0.25 {}
N 1180 -660 1180 -640 {lab=GND}
N 1020 -800 1060 -800 {lab=vinp}
N 1020 -760 1060 -760 {lab=Vcm}
N 1020 -720 1060 -720 {lab=vinn}
N 1220 -660 1220 -600 {lab=phi_cmfb_1}
N 1260 -660 1260 -600 {lab=phi_cmfb_2}
N 1100 -660 1100 -600 {lab=phi_bias_1}
N 1140 -660 1140 -600 {lab=phi_bias_2}
N 1460 -740 1600 -740 {lab=voutp}
N 1560 -780 1600 -780 {lab=voutn}
N 1460 -600 1460 -540 {lab=GND}
N 1560 -600 1560 -540 {lab=GND}
N 1460 -740 1460 -660 {lab=voutp}
N 1300 -740 1460 -740 {lab=voutp}
N 1560 -780 1560 -660 {lab=voutn}
N 1300 -780 1560 -780 {lab=voutn}
N 520 -660 520 -620 {lab=GND}
N 520 -620 560 -620 {lab=GND}
N 560 -650 560 -620 {
lab=GND}
N 860 -680 880 -680 {
lab=Vcm}
N 760 -720 760 -680 {lab=Vcm}
N 760 -820 760 -780 {lab=vinp}
N 640 -630 720 -630 {lab=#net1}
N 640 -770 720 -770 {lab=#net1}
N 560 -770 560 -710 {lab=#net1}
N 680 -590 720 -590 {lab=GND}
N 560 -620 560 -590 {
lab=GND}
N 680 -730 720 -730 {lab=GND}
N 680 -730 680 -590 {lab=GND}
N 560 -590 680 -590 {lab=GND}
N 640 -770 640 -630 {lab=#net1}
N 560 -770 640 -770 {lab=#net1}
N 760 -680 760 -640 {lab=Vcm}
N 760 -580 760 -540 {lab=vinn}
N 860 -680 860 -640 {lab=Vcm}
N 760 -680 860 -680 {
lab=Vcm}
N 860 -580 860 -540 {lab=GND}
N 560 -590 560 -540 {lab=GND}
N 560 -440 560 -400 {lab=VDD}
N 560 -340 560 -300 {lab=GND}
N 860 -440 860 -400 {lab=amp_core_en}
N 860 -340 860 -300 {lab=GND}
N 480 -700 520 -700 {lab=vind}
N 760 -980 760 -940 {lab=GND}
N 480 -980 480 -940 {lab=GND}
N 480 -1100 480 -1040 {lab=vind}
N 460 -1100 480 -1100 {lab=vind}
N 760 -1100 760 -1040 {lab=vind}
N 480 -1100 760 -1100 {lab=vind}
N 1160 -900 1160 -860 {lab=VDD}
N 1200 -880 1200 -860 {lab=amp_core_en}
N 740 -1520 740 -1500 {lab=phi_cmfb_1}
N 740 -1440 740 -1420 {lab=GND}
N 1140 -1520 1140 -1500 {lab=phi_cmfb_2}
N 1140 -1440 1140 -1420 {lab=GND}
N 740 -1360 740 -1340 {lab=phi_bias_1}
N 740 -1280 740 -1260 {lab=GND}
N 1140 -1360 1140 -1340 {lab=phi_bias_2}
N 1140 -1280 1140 -1260 {lab=GND}
N 1560 -400 1560 -380 {
lab=vout}
N 1490 -370 1520 -370 {
lab=voutp}
N 1490 -330 1520 -330 {
lab=voutn}
N 1560 -320 1560 -300 {lab=GND}
C {devices/code_shown.sym} 40 -1570 0 0 {name=MODEL only_toplevel=true
format="tcleval( @value )"
value="
.lib cornerMOSlv.lib mos_tt
.lib cornerMOShv.lib mos_tt
.lib cornerRES.lib res_typ
"}
C {devices/code_shown.sym} 40 -1050 0 0 {name=NGSPICE
only_toplevel=true 
value="
.param temp=27
.param fclk=8000000
.csparam fclk=fclk
.param fphi_cmfb=62500
.param fphi_bias=62500
* 228fF DAC + (1 - beta) * 3.3pF
.param Cload=3.49p

.options reltol=1e-2 abstol=1e-15 gmin=1e-15 rshunt=1e15
.control

* Turn on save all only for VDD current
* save all
save vind vinp vinn voutp voutn vout v(x1.Vbias) v(x1.Vbiasc)

* User Constants
let tstep = 1/fclk
* Sine
let tstop = 4m
* Pulse
* let tstop = 200u

* Operating Point Analysis
op
remzerovec
write amplifier_core_tb_tran.raw
set appendwrite

* Transient Analysis
tran $&tstep $&tstop
write amplifier_core_tb_tran.raw

* Plotting
plot vind
plot vinp vinn
plot vout
plot voutp voutn
plot v(x1.Vbias) v(x1.Vbiasc)
* plot i(VDD)

* Write Data
set wr_vecnames
set wr_singlescale
let Vbias=x1.Vbias
let Vbiasc=x1.Vbiasc
wrdata /foss/designs/SG13G2_ATBS-ADC-main/python/plot_simulations/data/amplifier_core_tb_tran.txt v(vind) v(vinp) v(vinn) v(voutp) v(voutn) v(vout) v(Vbias) v(Vbiasc)

* quit
.endc
"}
C {devices/gnd.sym} 1460 -540 0 0 {name=l1 lab=GND}
C {devices/gnd.sym} 560 -300 0 0 {name=l3 lab=GND}
C {devices/launcher.sym} 1740 -1590 0 0 {name=h2
descr="Simulate" 
tclcommand="xschem save; xschem netlist; xschem simulate"
}
C {devices/capa.sym} 1460 -630 0 0 {name=C1
m=1
value=\{Cload\}
footprint=1206
device="ceramic capacitor"}
C {title-3.sym} 0 0 0 0 {name=l2 author="Simon Dorrer" rev=1.0 lock=true}
C {devices/launcher.sym} 1740 -1470 0 0 {name=h1
descr="Load waves" 
tclcommand="xschem raw_read $netlist_dir/amplifier_core_tb_tran.raw tran"
}
C {devices/launcher.sym} 1740 -1530 0 0 {name=h3
descr="Annotate OP" 
tclcommand="set show_hidden_texts 1; xschem annotate_op"
}
C {vdd.sym} 560 -440 0 0 {name=l7 lab=VDD}
C {vdd.sym} 1160 -900 0 0 {name=l8 lab=VDD}
C {devices/gnd.sym} 1180 -640 0 0 {name=l9 lab=GND}
C {lab_pin.sym} 1600 -740 0 1 {name=p3 sig_type=std_logic lab=voutp}
C {lab_pin.sym} 1600 -780 0 1 {name=p4 sig_type=std_logic lab=voutn}
C {devices/lab_pin.sym} 760 -820 0 0 {name=l10 sig_type=std_logic lab=vinp}
C {devices/lab_pin.sym} 760 -540 0 0 {name=l11 sig_type=std_logic lab=vinn
}
C {devices/lab_pin.sym} 1020 -760 0 0 {name=l4 sig_type=std_logic lab=Vcm}
C {devices/lab_pin.sym} 1020 -800 0 0 {name=l5 sig_type=std_logic lab=vinp}
C {devices/lab_pin.sym} 1020 -720 0 0 {name=l19 sig_type=std_logic lab=vinn
}
C {devices/lab_pin.sym} 1220 -600 1 1 {name=l20 sig_type=std_logic lab=phi_cmfb_1}
C {devices/lab_pin.sym} 1260 -600 1 1 {name=l21 sig_type=std_logic lab=phi_cmfb_2}
C {devices/lab_pin.sym} 1100 -600 1 1 {name=l22 sig_type=std_logic lab=phi_bias_1}
C {devices/lab_pin.sym} 1140 -600 1 1 {name=l23 sig_type=std_logic lab=phi_bias_2}
C {devices/capa.sym} 1560 -630 0 0 {name=C2
m=1
value=\{Cload\}
footprint=1206
device="ceramic capacitor"}
C {devices/gnd.sym} 1560 -540 0 0 {name=l30 lab=GND}
C {devices/gnd.sym} 860 -300 0 0 {name=l6 lab=GND}
C {devices/lab_pin.sym} 860 -440 2 0 {name=l35 sig_type=std_logic lab=amp_core_en}
C {devices/vsource.sym} 860 -610 0 0 {name=Vcm value=0.75
}
C {devices/vcvs.sym} 760 -610 0 0 {name=E4 value=0.5}
C {devices/vcvs.sym} 760 -750 0 0 {name=E5 value=0.5}
C {devices/lab_pin.sym} 880 -680 2 0 {name=l38 sig_type=std_logic lab=Vcm}
C {devices/gnd.sym} 860 -540 0 0 {name=l40 lab=GND}
C {devices/vcvs.sym} 560 -680 0 0 {name=E6 value=1}
C {devices/gnd.sym} 560 -540 0 0 {name=l41 lab=GND}
C {devices/vsource.sym} 860 -370 0 0 {name=V5 value="1.5"}
C {devices/lab_pin.sym} 480 -700 0 0 {name=l18 sig_type=std_logic lab=vind}
C {devices/lab_pin.sym} 460 -1100 0 0 {name=l50 sig_type=std_logic lab=vind}
C {devices/vsource.sym} 760 -1010 0 0 {name=vsine spice_ignore=False value="sin(0 10u 500)"
}
C {devices/gnd.sym} 760 -940 0 0 {name=l51 lab=GND}
C {devices/gnd.sym} 480 -940 0 0 {name=l52 lab=GND}
C {bio_amplifier/amplifier_core/amplifier_core.sym} 1180 -760 0 0 {name=x1}
C {devices/lab_pin.sym} 1200 -880 2 0 {name=l13 sig_type=std_logic lab=amp_core_en}
C {devices/vsource.sym} 740 -1470 0 0 {name=V1 value="pulse(0 1.5 0 10p 10p \{0.5/fphi_cmfb - 1/fclk\} \{1/fphi_cmfb\})"}
C {devices/gnd.sym} 740 -1420 0 0 {name=l31 lab=GND}
C {devices/lab_pin.sym} 740 -1520 2 0 {name=l12 sig_type=std_logic lab=phi_cmfb_1}
C {devices/vsource.sym} 1140 -1470 0 0 {name=V2 value="pulse(0 1.5 \{0.5/fphi_cmfb\} 10p 10p \{0.5/fphi_cmfb - 1/fclk\} \{1/fphi_cmfb\})"}
C {devices/gnd.sym} 1140 -1420 0 0 {name=l14 lab=GND}
C {devices/lab_pin.sym} 1140 -1520 2 0 {name=l15 sig_type=std_logic lab=phi_cmfb_2}
C {devices/vsource.sym} 740 -1310 0 0 {name=V3 value="pulse(0 1.5 0 10p 10p \{0.5/fphi_bias - 1/fclk\} \{1/fphi_bias\})"}
C {devices/gnd.sym} 740 -1260 0 0 {name=l16 lab=GND}
C {devices/lab_pin.sym} 740 -1360 2 0 {name=l32 sig_type=std_logic lab=phi_bias_1}
C {devices/vsource.sym} 1140 -1310 0 0 {name=V4 value="pulse(0 1.5 \{0.5/fphi_bias\} 10p 10p \{0.5/fphi_bias - 1/fclk\} \{1/fphi_bias\})"}
C {devices/gnd.sym} 1140 -1260 0 0 {name=l33 lab=GND}
C {devices/lab_pin.sym} 1140 -1360 2 0 {name=l34 sig_type=std_logic lab=phi_bias_2}
C {devices/vsource.sym} 480 -1010 0 0 {name=vpulse spice_ignore=True value="pulse(-1.5 1.5 0 10p 10p 100u 500u)"
}
C {devices/lab_pin.sym} 1560 -400 0 1 {name=l17 sig_type=std_logic lab=vout}
C {devices/vcvs.sym} 1560 -350 0 0 {name=E1 value=1}
C {devices/gnd.sym} 1560 -300 0 0 {name=l24 lab=GND}
C {devices/lab_pin.sym} 1490 -330 2 1 {name=l25 sig_type=std_logic lab=voutn
}
C {devices/lab_pin.sym} 1490 -370 0 0 {name=l26 sig_type=std_logic lab=voutp
}
C {devices/vsource.sym} 560 -370 0 0 {name=VDD value="pwl(0 0 100n 1.5)"}
