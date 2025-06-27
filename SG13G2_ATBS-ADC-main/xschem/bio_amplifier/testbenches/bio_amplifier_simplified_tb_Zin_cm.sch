v {xschem version=3.4.7 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
B 2 1580 -1380 2380 -980 {flags=graph,unlocked
y1=2.3661051e+09
y2=4.4661045e+09
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=1.8
x2=10.8
divx=5
subdivx=8
xlabmag=1.0
ylabmag=1.0
node="\\"CM Zin; v(vin_cm) i(Vmeas_cm) /\\""
color=4
dataset=-1
unitx=1
logx=1
logy=0
linewidth_mult=4
legend=1}
P 4 5 1500 -560 1500 -460 1700 -460 1700 -560 1500 -560 {dash = 8}
T {Testbench for Common-Mode Zin analysis - Bio-signal Amplifier (simplified)} 260 -1720 0 0 1 1 {}
T {Capacitive Load (Comparator, DAC, etc.)} 1480 -400 0 0 0.25 0.25 {}
N 1540 -480 1540 -440 {lab=GND}
N 1640 -480 1640 -440 {lab=GND}
N 960 -660 1000 -660 {lab=Vcm}
N 720 -700 800 -700 {lab=vin_cm}
N 900 -700 900 -620 {lab=#net1}
N 860 -700 900 -700 {lab=#net1}
N 900 -700 1000 -700 {lab=#net1}
N 900 -620 1000 -620 {lab=#net1}
N 1540 -640 1680 -640 {lab=voutn_cm}
N 1640 -680 1680 -680 {lab=voutp_cm}
N 1200 -460 1200 -440 {lab=GND}
N 720 -700 720 -660 {lab=vin_cm}
N 680 -700 720 -700 {lab=vin_cm}
N 720 -480 720 -440 {lab=GND}
N 720 -600 720 -540 {lab=#net2}
N 1180 -880 1180 -860 {lab=VDD}
N 1220 -880 1220 -860 {lab=bio_amp_en}
N 1540 -640 1540 -540 {lab=voutn_cm}
N 1400 -640 1540 -640 {lab=voutn_cm}
N 1640 -680 1640 -540 {lab=voutp_cm}
N 1400 -680 1640 -680 {lab=voutp_cm}
N 1020 -1140 1020 -1100 {lab=VDD}
N 1020 -1040 1020 -1000 {lab=GND}
N 1340 -1140 1340 -1100 {lab=bio_amp_en}
N 1340 -1040 1340 -1000 {lab=GND}
N 1180 -1140 1180 -1100 {lab=Vcm}
N 1180 -1040 1180 -1000 {lab=GND}
C {devices/code_shown.sym} 80 -1050 0 0 {name=NGSPICE
only_toplevel=true 
value="
.param temp=27
* 227.56fF DAC
.param Cload=227.56f
.options savecurrents method=gear reltol=1e-2 abstol=1e-15 gmin=1e-15 rshunt=1e12
.control

optran 0 0 0 1u 1m 0

save all

set wr_vecnames
set wr_singlescale

* User Constants
let f_min = 10m
let f_max = 100
let fdc = 10

* Operating Point Analysis
op
remzerovec
write bio_amplifier_simplified_tb_Zin_cm.raw
set appendwrite

* AC Analysis
ac dec 101 $&const.f_min $&const.f_max
remzerovec
write bio_amplifier_simplified_tb_Zin_cm.raw

* Plotting Common Mode Zin
let Zin_cm = v(vin_cm) / i(Vmeas_cm)
plot Zin_cm ylabel 'CM Zin'

* Measurements
meas ac Zindc_cm find Zin_cm when frequency = fdc
print Zindc_cm

* Write Data
set wr_vecnames
set wr_singlescale
wrdata /foss/designs/SG13G2_ATBS-ADC-main/python/plot_simulations/data/bio_amplifier_simplified_tb_Zin_cm.txt v(Zin_cm)

*quit
.endc
"}
C {devices/launcher.sym} 1640 -1540 0 0 {name=h2
descr="Simulate" 
tclcommand="xschem save; xschem netlist; xschem simulate"
}
C {title-3.sym} 0 0 0 0 {name=l2 author="Simon Dorrer" rev=1.0 lock=true}
C {devices/launcher.sym} 1640 -1420 0 0 {name=h1
descr="Load waves" 
tclcommand="xschem raw_read $netlist_dir/bio_amplifier_simplified_tb_Zin_cm.raw ac"
}
C {devices/launcher.sym} 1640 -1480 0 0 {name=h3
descr="Annotate OP" 
tclcommand="set show_hidden_texts 1; xschem annotate_op"
}
C {devices/code_shown.sym} 80 -1270 0 0 {name=MODEL only_toplevel=true
format="tcleval( @value )"
value="
.lib cornerMOSlv.lib mos_tt
.lib cornerMOShv.lib mos_tt
.lib cornerRES.lib res_typ
"}
C {devices/gnd.sym} 1540 -440 0 0 {name=l16 lab=GND}
C {devices/capa.sym} 1540 -510 0 0 {name=C3
m=1
value=\{Cload\}
footprint=1206
device="ceramic capacitor"}
C {lab_pin.sym} 1680 -680 0 1 {name=p1 sig_type=std_logic lab=voutp_cm}
C {lab_pin.sym} 1680 -640 0 1 {name=p2 sig_type=std_logic lab=voutn_cm}
C {devices/capa.sym} 1640 -510 0 0 {name=C4
m=1
value=\{Cload\}
footprint=1206
device="ceramic capacitor"}
C {devices/gnd.sym} 1640 -440 0 0 {name=l27 lab=GND}
C {devices/lab_pin.sym} 960 -660 0 0 {name=l5 sig_type=std_logic lab=Vcm}
C {devices/vsource.sym} 720 -630 0 0 {name=vin_cm value="0 AC 1"
}
C {devices/gnd.sym} 720 -440 0 0 {name=l13 lab=GND}
C {lab_pin.sym} 680 -700 2 1 {name=p6 sig_type=std_logic lab=vin_cm}
C {ammeter.sym} 830 -700 3 0 {name=Vmeas_cm savecurrent=true spice_ignore=0}
C {devices/vsource.sym} 720 -510 0 0 {name=Vcm_cm value=0.75
}
C {bio_amplifier/bio_amplifier_simplified.sym} 1200 -660 0 0 {name=x2 C1=330p C2=3.3p R2=160G}
C {devices/gnd.sym} 1200 -440 0 0 {name=l14 lab=GND}
C {vdd.sym} 1180 -880 0 0 {name=l15 lab=VDD}
C {devices/lab_pin.sym} 1220 -880 2 0 {name=l17 sig_type=std_logic lab=bio_amp_en}
C {devices/vsource.sym} 1020 -1070 0 0 {name=VDD value=1.5}
C {devices/gnd.sym} 1020 -1000 0 0 {name=l3 lab=GND}
C {vdd.sym} 1020 -1140 0 0 {name=l7 lab=VDD}
C {devices/gnd.sym} 1340 -1000 0 0 {name=l6 lab=GND}
C {devices/vsource.sym} 1180 -1070 0 0 {name=Vcm value=0.75
}
C {devices/lab_pin.sym} 1180 -1140 2 0 {name=l38 sig_type=std_logic lab=Vcm}
C {devices/gnd.sym} 1180 -1000 0 0 {name=l40 lab=GND}
C {devices/vsource.sym} 1340 -1070 0 0 {name=V1 value="1.5"}
C {devices/lab_pin.sym} 1340 -1140 2 0 {name=l4 sig_type=std_logic lab=bio_amp_en}
