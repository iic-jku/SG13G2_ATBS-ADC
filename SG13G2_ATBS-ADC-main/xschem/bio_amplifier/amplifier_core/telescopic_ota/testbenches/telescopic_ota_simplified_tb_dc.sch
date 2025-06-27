v {xschem version=3.4.7 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
B 2 1640 -1220 2440 -820 {flags=graph
y1=0.006
y2=1
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=0.5
x2=1
divx=5
subdivx=1
xlabmag=1.0
ylabmag=1.0
node="vinp
voutp
voutn"
color="4 7 12"
dataset=-1
unitx=1
logx=0
logy=0
linewidth_mult=3
autoload=0}
B 2 1640 -800 2440 -400 {flags=graph
y1=0
y2=39
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=0.5
x2=1
divx=5
subdivx=1
xlabmag=1.0
ylabmag=1.0


dataset=-1
unitx=1
logx=0
logy=0
linewidth_mult=3
autoload=0
color=4
node="\\"d(voutp)/d(vinp); voutp deriv()\\""}
P 4 5 1330 -760 1330 -660 1530 -660 1530 -760 1330 -760 {dash = 8}
T {Testbench for DC analysis - Telescopic OTA} 570 -1710 0 0 1 1 {}
T {Capacitive Load (Comparator, DAC, etc.)} 1290 -550 0 0 0.25 0.25 {}
N 1460 -1240 1460 -1200 {lab=VDD}
N 1460 -1140 1460 -1100 {lab=GND}
N 780 -640 780 -580 {lab=GND}
N 1460 -820 1500 -820 {lab=voutn}
N 1360 -780 1500 -780 {lab=voutp}
N 1360 -780 1360 -740 {lab=voutp}
N 1460 -820 1460 -740 {lab=voutn}
N 1200 -820 1460 -820 {lab=voutn}
N 1200 -780 1360 -780 {lab=voutp}
N 1360 -680 1360 -580 {lab=GND}
N 1460 -680 1460 -580 {lab=GND}
N 900 -760 960 -760 {lab=Vcm}
N 780 -840 960 -840 {lab=vinp}
N 780 -840 780 -700 {lab=vinp}
N 740 -840 780 -840 {lab=vinp}
N 900 -800 960 -800 {lab=Vcm}
N 900 -800 900 -760 {lab=Vcm}
N 880 -800 900 -800 {lab=Vcm}
N 900 -760 900 -700 {lab=Vcm}
N 900 -640 900 -580 {lab=GND}
N 1060 -700 1060 -680 {lab=GND}
N 1000 -1000 1000 -900 {lab=VDD}
N 1000 -700 1000 -680 {lab=GND}
N 1060 -1000 1060 -900 {lab=VDD}
N 1100 -940 1100 -900 {lab=Vbiasc}
N 1140 -940 1140 -900 {lab=Vbias}
N 880 -1260 920 -1260 {lab=VDD}
N 880 -1400 880 -1260 {lab=VDD}
N 880 -1400 1060 -1400 {lab=VDD}
N 1060 -1400 1060 -1360 {lab=VDD}
N 1060 -1440 1060 -1400 {lab=VDD}
N 1200 -1280 1240 -1280 {lab=Vbiasc}
N 1200 -1240 1240 -1240 {lab=Vbias}
N 1060 -1160 1060 -1100 {lab=GND}
C {devices/code_shown.sym} 60 -1070 0 0 {name=NGSPICE
only_toplevel=true 
value="
.param temp=27
.param Cload=10f

.options savecurrents reltol=1e-3 abstol=1e-12 gmin=1e-15
.control
save all

* Operating Point Analysis
op
remzerovec
write telescopic_ota_simplified_tb_dc.raw
set appendwrite

* DC Sweep
dc Vgsp 0.5 1.0 1m
write telescopic_ota_simplified_tb_dc.raw

* Plotting
plot vinp voutp voutn
plot deriv(voutp)

* Measurement
meas dc Vgsp_at_Vcm when voutp=0.345 rise=1
print Vgsp_at_Vcm

meas dc vout_pp_max MAX v(voutp)
meas dc vout_pp_min MIN v(voutp)
let vout_pp = vout_pp_max - vout_pp_min
print vout_pp

* Write Data
set wr_vecnames
set wr_singlescale
wrdata /foss/designs/SG13G2_ATBS-ADC-main/python/plot_simulations/data/telescopic_ota_simplified_tb_dc.txt v(vinp) v(voutp)

*quit
.endc
"}
C {devices/launcher.sym} 1700 -1380 0 0 {name=h2
descr="Simulate" 
tclcommand="xschem save; xschem netlist; xschem simulate"
}
C {title-3.sym} 0 0 0 0 {name=l2 author="Simon Dorrer" rev=1.0 lock=true}
C {devices/launcher.sym} 1700 -1260 0 0 {name=h1
descr="Load waves" 
tclcommand="xschem raw_read $netlist_dir/telescopic_ota_simplified_tb_dc.raw dc"
}
C {devices/launcher.sym} 1700 -1320 0 0 {name=h3
descr="Annotate OP" 
tclcommand="set show_hidden_texts 1; xschem annotate_op"
}
C {devices/code_shown.sym} 60 -1350 0 0 {name=MODEL only_toplevel=true
format="tcleval( @value )"
value="
.lib cornerMOSlv.lib mos_tt
.lib cornerMOShv.lib mos_tt
.lib cornerRES.lib res_typ
"}
C {devices/vsource.sym} 1460 -1170 0 0 {name=VDD value=1.5}
C {devices/gnd.sym} 1460 -1100 0 0 {name=l3 lab=GND}
C {vdd.sym} 1460 -1240 0 0 {name=l7 lab=VDD}
C {devices/vsource.sym} 780 -670 0 0 {name=Vgsp value=0
}
C {devices/gnd.sym} 780 -580 0 0 {name=l40 lab=GND}
C {devices/lab_pin.sym} 740 -840 0 0 {name=l5 sig_type=std_logic lab=vinp}
C {devices/lab_pin.sym} 880 -800 0 0 {name=l8 sig_type=std_logic lab=Vcm
}
C {devices/gnd.sym} 1360 -580 0 0 {name=l9 lab=GND}
C {lab_pin.sym} 1500 -780 0 1 {name=p3 sig_type=std_logic lab=voutp}
C {lab_pin.sym} 1500 -820 0 1 {name=p4 sig_type=std_logic lab=voutn}
C {devices/gnd.sym} 1460 -580 0 0 {name=l30 lab=GND}
C {devices/capa.sym} 1460 -710 0 0 {name=C2
m=1
value=\{Cload\}
footprint=1206
device="ceramic capacitor"}
C {devices/capa.sym} 1360 -710 0 0 {name=C3
m=1
value=\{Cload\}
footprint=1206
device="ceramic capacitor"}
C {devices/vsource.sym} 900 -670 0 0 {name=Vcm value=0.75}
C {devices/gnd.sym} 900 -580 0 0 {name=l1 lab=GND}
C {vdd.sym} 1060 -1000 0 0 {name=l6 lab=VDD}
C {devices/gnd.sym} 1060 -680 0 0 {name=l11 lab=GND}
C {vdd.sym} 1000 -1000 0 0 {name=l4 lab=VDD}
C {devices/gnd.sym} 1000 -680 0 0 {name=l12 lab=GND}
C {bio_amplifier/amplifier_core/telescopic_ota/telescopic_ota_simplified.sym} 1080 -800 0 0 {name=x1}
C {devices/lab_pin.sym} 1100 -940 1 0 {name=l51 sig_type=std_logic lab=Vbiasc}
C {devices/lab_pin.sym} 1140 -940 1 0 {name=l52 sig_type=std_logic lab=Vbias}
C {bio_amplifier/amplifier_core/bias_circuit/bias_circuit_2/bias_circuit_2.sym} 1060 -1260 0 0 {name=x3}
C {devices/gnd.sym} 1060 -1100 0 0 {name=l47 lab=GND}
C {devices/lab_pin.sym} 1240 -1280 0 1 {name=l49 sig_type=std_logic lab=Vbiasc}
C {devices/lab_pin.sym} 1240 -1240 0 1 {name=l50 sig_type=std_logic lab=Vbias}
C {vdd.sym} 1060 -1440 0 0 {name=l39 lab=VDD}
