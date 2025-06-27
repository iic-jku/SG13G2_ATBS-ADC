v {xschem version=3.4.7 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
B 2 1640 -1220 2440 -820 {flags=graph
y1=0
y2=1.5
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=0
x2=0.75
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
y1=-0.00074
y2=11
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=0
x2=0.75
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
P 4 5 1330 -860 1330 -760 1530 -760 1530 -860 1330 -860 {dash = 8}
T {Testbench for DC analysis - Common-Source Amplifier with Current-Source Load} 180 -1720 0 0 1 1 {}
T {Capacitive Load (Comparator, DAC, etc.)} 1290 -650 0 0 0.25 0.25 {}
N 1460 -1340 1460 -1300 {lab=VDD}
N 1460 -1240 1460 -1200 {lab=GND}
N 780 -740 780 -680 {lab=GND}
N 1460 -920 1500 -920 {lab=voutn}
N 1360 -880 1500 -880 {lab=voutp}
N 1360 -880 1360 -840 {lab=voutp}
N 1460 -920 1460 -840 {lab=voutn}
N 1200 -920 1460 -920 {lab=voutn}
N 1200 -880 1360 -880 {lab=voutp}
N 1360 -780 1360 -680 {lab=GND}
N 1460 -780 1460 -680 {lab=GND}
N 920 -860 960 -860 {lab=vinn}
N 920 -860 920 -800 {lab=vinn}
N 880 -860 920 -860 {lab=vinn}
N 920 -740 920 -680 {lab=GND}
N 780 -940 960 -940 {lab=vinp}
N 780 -940 780 -800 {lab=vinp}
N 740 -940 780 -940 {lab=vinp}
N 1060 -800 1060 -680 {lab=GND}
N 1060 -1100 1060 -1000 {lab=VDD}
N 880 -1340 920 -1340 {lab=VDD}
N 1060 -1480 1060 -1440 {lab=VDD}
N 1200 -1360 1240 -1360 {lab=Vbiasc}
N 1200 -1320 1240 -1320 {lab=Vbias}
N 1100 -1040 1100 -1000 {lab=Vbiasc}
N 1140 -1040 1140 -1000 {lab=Vbias}
N 1000 -800 1000 -680 {lab=GND}
N 1060 -1240 1060 -1200 {lab=GND}
N 1000 -1100 1000 -1000 {lab=VDD}
N 880 -1480 1060 -1480 {lab=VDD}
N 1060 -1520 1060 -1480 {lab=VDD}
N 880 -1480 880 -1340 {lab=VDD}
C {devices/code_shown.sym} 60 -1110 0 0 {name=NGSPICE
only_toplevel=true 
value="
.param temp=27
* 228fF DAC + (1 - beta) * 3.3pF
.param Cload=3.49p
.param Vgsn=0.345

.options savecurrents reltol=1e-3 abstol=1e-15 gmin=1e-15
.control
save all

* Operating Point Analysis
op
remzerovec
write common_source_amplifier_simplified_tb_dc.raw
set appendwrite

* DC Sweep
dc Vgsp 0 0.75 1m
write common_source_amplifier_simplified_tb_dc.raw

* Plotting
plot vinp voutp
plot deriv(voutp)

* Measurement
meas dc Vgsp_at_Vcm when voutp=0.75 rise=1
print Vgsp_at_Vcm

meas dc vout_cs_max MAX v(voutp)
meas dc vout_cs_min MIN v(voutp)
let vout_cs = vout_cs_max - vout_cs_min
print vout_cs

* Write Data
set wr_vecnames
set wr_singlescale
wrdata /foss/designs/SG13G2_ATBS-ADC-main/python/plot_simulations/data/common_source_amplifier_simplified_tb_dc.txt v(vinp) v(voutp)

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
tclcommand="xschem raw_read $netlist_dir/common_source_amplifier_simplified_tb_dc.raw dc"
}
C {devices/launcher.sym} 1700 -1320 0 0 {name=h3
descr="Annotate OP" 
tclcommand="set show_hidden_texts 1; xschem annotate_op"
}
C {devices/code_shown.sym} 60 -1410 0 0 {name=MODEL only_toplevel=true
format="tcleval( @value )"
value="
.lib cornerMOSlv.lib mos_tt
.lib cornerMOShv.lib mos_tt
.lib cornerRES.lib res_typ
"}
C {devices/vsource.sym} 1460 -1270 0 0 {name=VDD value=1.5}
C {devices/gnd.sym} 1460 -1200 0 0 {name=l3 lab=GND}
C {vdd.sym} 1460 -1340 0 0 {name=l7 lab=VDD}
C {devices/vsource.sym} 780 -770 0 0 {name=Vgsp value=0
}
C {devices/gnd.sym} 780 -680 0 0 {name=l40 lab=GND}
C {devices/lab_pin.sym} 740 -940 0 0 {name=l5 sig_type=std_logic lab=vinp}
C {devices/lab_pin.sym} 880 -860 0 0 {name=l8 sig_type=std_logic lab=vinn
}
C {devices/gnd.sym} 1360 -680 0 0 {name=l9 lab=GND}
C {lab_pin.sym} 1500 -880 0 1 {name=p3 sig_type=std_logic lab=voutp}
C {lab_pin.sym} 1500 -920 0 1 {name=p4 sig_type=std_logic lab=voutn}
C {devices/gnd.sym} 1460 -680 0 0 {name=l30 lab=GND}
C {devices/capa.sym} 1460 -810 0 0 {name=C2
m=1
value=\{Cload\}
footprint=1206
device="ceramic capacitor"}
C {devices/capa.sym} 1360 -810 0 0 {name=C3
m=1
value=\{Cload\}
footprint=1206
device="ceramic capacitor"}
C {devices/vsource.sym} 920 -770 0 0 {name=Vgsn value=\{Vgsn\}
}
C {devices/gnd.sym} 920 -680 0 0 {name=l10 lab=GND}
C {vdd.sym} 1060 -1100 0 0 {name=l6 lab=VDD}
C {devices/gnd.sym} 1060 -680 0 0 {name=l11 lab=GND}
C {vdd.sym} 1000 -1100 0 0 {name=l14 lab=VDD}
C {devices/gnd.sym} 1000 -680 0 0 {name=l12 lab=GND}
C {bio_amplifier/amplifier_core/common_source_amplifier/common_source_amplifier_simplified.sym} 1080 -900 0 0 {name=x1}
C {bio_amplifier/amplifier_core/bias_circuit/bias_circuit_2/bias_circuit_2.sym} 1060 -1340 0 0 {name=x2}
C {vdd.sym} 1060 -1520 0 0 {name=l19 lab=VDD}
C {devices/gnd.sym} 1060 -1200 0 0 {name=l20 lab=GND}
C {devices/lab_pin.sym} 1240 -1360 0 1 {name=l21 sig_type=std_logic lab=Vbiasc}
C {devices/lab_pin.sym} 1240 -1320 0 1 {name=l22 sig_type=std_logic lab=Vbias}
C {devices/lab_pin.sym} 1100 -1040 1 0 {name=l1 sig_type=std_logic lab=Vbiasc}
C {devices/lab_pin.sym} 1140 -1040 1 0 {name=l4 sig_type=std_logic lab=Vbias}
