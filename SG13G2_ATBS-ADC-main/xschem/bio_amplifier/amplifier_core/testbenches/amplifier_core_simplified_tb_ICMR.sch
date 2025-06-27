v {xschem version=3.4.7 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
B 2 1660 -860 2460 -460 {flags=graph
y1=0.032
y2=1.5
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=0.748
x2=0.752
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
B 2 1660 -1300 2460 -900 {flags=graph
y1=-9.2e-07
y2=-7.2e-07
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=0.748
x2=0.752
divx=5
subdivx=1
xlabmag=1.0
ylabmag=1.0


dataset=-1
unitx=1
logx=0
logy=0
linewidth_mult=3
color=4
node=i(VDD)}
P 4 5 1310 -1100 1310 -1000 1510 -1000 1510 -1100 1310 -1100 {dash = 8}
T {Testbench for ICMR analysis - Amplifier Core (simplified)} 470 -1730 0 0 1 1 {}
T {Capacitive Load (Comparator, DAC, etc.)} 1270 -890 0 0 0.25 0.25 {}
N 1100 -700 1100 -660 {lab=VDD}
N 1100 -600 1100 -560 {lab=GND}
N 1400 -700 1400 -660 {lab=amp_core_en}
N 1400 -600 1400 -560 {lab=GND}
N 820 -980 820 -920 {lab=GND}
N 1440 -1160 1480 -1160 {lab=voutn}
N 1340 -1120 1480 -1120 {lab=voutp}
N 1340 -1120 1340 -1080 {lab=voutp}
N 1440 -1160 1440 -1080 {lab=voutn}
N 1180 -1160 1440 -1160 {lab=voutn}
N 1180 -1120 1340 -1120 {lab=voutp}
N 1340 -1020 1340 -920 {lab=GND}
N 1440 -1020 1440 -920 {lab=GND}
N 940 -1100 1000 -1100 {lab=Vcm}
N 820 -1180 1000 -1180 {lab=vinp}
N 820 -1180 820 -1040 {lab=vinp}
N 780 -1180 820 -1180 {lab=vinp}
N 940 -1140 1000 -1140 {lab=Vcm}
N 940 -1140 940 -1100 {lab=Vcm}
N 920 -1140 940 -1140 {lab=Vcm}
N 940 -1100 940 -1040 {lab=Vcm}
N 940 -980 940 -920 {lab=GND}
N 1080 -1340 1080 -1240 {lab=VDD}
N 1080 -1040 1080 -1020 {lab=GND}
N 1100 -1280 1100 -1240 {lab=amp_core_en}
C {devices/code_shown.sym} 40 -1130 0 0 {name=NGSPICE
only_toplevel=true 
value="
.param temp=27
* 228fF DAC + (1 - beta) * 3.3pF
.param Cload=3.49p
.options savecurrents method=gear reltol=1e-2 abstol=1e-15 gmin=1e-15 rshunt=1e15
.control

save all

* Operating Point Analysis
op
remzerovec
write amplifier_core_simplified_tb_ICMR.raw
set appendwrite

* DC Sweep
dc Vgsp 0.748 0.752 10u
remzerovec
write amplifier_core_simplified_tb_ICMR.raw
set appendwrite

* Plotting
plot vinp voutp voutn

* Measurement
meas dc Vgsp_at_Vcm when voutp=voutn
print Vgsp_at_Vcm

meas dc vout_pp_max MAX v(voutp)
meas dc vout_pp_min MIN v(voutp)
let vout_pp = vout_pp_max - vout_pp_min
print vout_pp

* Write Data
set wr_vecnames
set wr_singlescale
wrdata /foss/designs/SG13G2_ATBS-ADC-main/python/plot_simulations/data/amplifier_core_simplified_tb_ICMR.txt v(vinp) v(voutp) v(voutn)

*quit
.endc
"}
C {devices/launcher.sym} 1720 -1480 0 0 {name=h2
descr="Simulate" 
tclcommand="xschem save; xschem netlist; xschem simulate"
}
C {title-3.sym} 0 0 0 0 {name=l2 author="Simon Dorrer" rev=1.0 lock=true}
C {devices/launcher.sym} 1720 -1360 0 0 {name=h1
descr="Load waves" 
tclcommand="xschem raw_read $netlist_dir/amplifier_core_simplified_tb_ICMR.raw dc"
}
C {devices/launcher.sym} 1720 -1420 0 0 {name=h3
descr="Annotate OP" 
tclcommand="set show_hidden_texts 1; xschem annotate_op"
}
C {devices/code_shown.sym} 40 -1490 0 0 {name=MODEL only_toplevel=true
format="tcleval( @value )"
value="
.lib cornerMOSlv.lib mos_tt
.lib cornerMOShv.lib mos_tt
.lib cornerRES.lib res_typ
"}
C {devices/vsource.sym} 1100 -630 0 0 {name=VDD value="1.5"}
C {devices/gnd.sym} 1100 -560 0 0 {name=l3 lab=GND}
C {vdd.sym} 1100 -700 0 0 {name=l7 lab=VDD}
C {devices/gnd.sym} 1400 -560 0 0 {name=l6 lab=GND}
C {devices/lab_pin.sym} 1400 -700 2 0 {name=l13 sig_type=std_logic lab=amp_core_en}
C {devices/vsource.sym} 1400 -630 0 0 {name=V1 value="1.5"}
C {devices/vsource.sym} 820 -1010 0 0 {name=Vgsp value=0
}
C {devices/gnd.sym} 820 -920 0 0 {name=l40 lab=GND}
C {devices/lab_pin.sym} 780 -1180 0 0 {name=l5 sig_type=std_logic lab=vinp}
C {devices/lab_pin.sym} 920 -1140 0 0 {name=l8 sig_type=std_logic lab=Vcm
}
C {devices/gnd.sym} 1340 -920 0 0 {name=l9 lab=GND}
C {lab_pin.sym} 1480 -1120 0 1 {name=p3 sig_type=std_logic lab=voutp}
C {lab_pin.sym} 1480 -1160 0 1 {name=p4 sig_type=std_logic lab=voutn}
C {devices/gnd.sym} 1440 -920 0 0 {name=l30 lab=GND}
C {devices/capa.sym} 1440 -1050 0 0 {name=C2
m=1
value=\{Cload\}
footprint=1206
device="ceramic capacitor"}
C {devices/capa.sym} 1340 -1050 0 0 {name=C3
m=1
value=\{Cload\}
footprint=1206
device="ceramic capacitor"}
C {devices/vsource.sym} 940 -1010 0 0 {name=Vcm value=0.75}
C {devices/gnd.sym} 940 -920 0 0 {name=l1 lab=GND}
C {vdd.sym} 1080 -1340 0 0 {name=l12 lab=VDD}
C {devices/gnd.sym} 1080 -1020 0 0 {name=l14 lab=GND}
C {bio_amplifier/amplifier_core/amplifier_core_simplified.sym} 1080 -1140 0 0 {name=x1}
C {devices/lab_pin.sym} 1100 -1280 2 0 {name=l4 sig_type=std_logic lab=amp_core_en}
