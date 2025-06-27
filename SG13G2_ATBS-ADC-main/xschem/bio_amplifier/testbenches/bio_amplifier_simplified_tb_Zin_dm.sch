v {xschem version=3.4.7 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
B 2 1580 -1380 2380 -980 {flags=graph
y1=53000000
y2=1.6e+11
ypos1=0
ypos2=2
divy=5
subdivy=4
unity=1
x1=-2
x2=3
divx=5
subdivx=8
xlabmag=1.0
ylabmag=1.0
node="\\"DM Zin; v(vin_dm) i(Vmeasp) i(Vmeasn) + /\\""
color=4
dataset=-1
unitx=1
logx=1
logy=0
linewidth_mult=4}
P 4 5 2140 -560 2140 -460 2340 -460 2340 -560 2140 -560 {dash = 8}
T {Testbench for Differential Zin analysis - Bio-signal Amplifier (simplified)} 360 -1720 0 0 1 1 {}
T {Capacitive Load (Comparator, DAC, etc.)} 2120 -410 0 0 0.25 0.25 {}
N 1200 -1140 1200 -1100 {lab=VDD}
N 1200 -1040 1200 -1000 {lab=GND}
N 1340 -1140 1340 -1100 {lab=bio_amp_en}
N 1340 -1040 1340 -1000 {lab=GND}
N 2180 -480 2180 -440 {lab=GND}
N 2280 -480 2280 -440 {lab=GND}
N 1620 -700 1640 -700 {lab=#net1}
N 1620 -620 1640 -620 {lab=#net2}
N 1600 -660 1640 -660 {lab=Vcm}
N 1860 -880 1860 -860 {lab=bio_amp_en}
N 1820 -880 1820 -860 {lab=VDD}
N 2280 -680 2320 -680 {lab=voutp_dm}
N 2180 -640 2320 -640 {lab=voutn_dm}
N 1840 -460 1840 -440 {lab=GND}
N 2180 -640 2180 -540 {lab=voutn_dm}
N 2040 -640 2180 -640 {lab=voutn_dm}
N 2280 -680 2280 -540 {lab=voutp_dm}
N 2040 -680 2280 -680 {lab=voutp_dm}
N 960 -600 960 -540 {lab=vin_dm}
N 940 -600 960 -600 {lab=vin_dm}
N 960 -600 1040 -600 {lab=vin_dm}
N 1040 -560 1040 -520 {lab=GND}
N 1040 -520 1080 -520 {lab=GND}
N 1080 -550 1080 -520 {
lab=GND}
N 1380 -580 1400 -580 {
lab=Vcm}
N 1280 -620 1280 -580 {lab=Vcm}
N 1280 -720 1280 -680 {lab=vinp}
N 1160 -530 1240 -530 {lab=#net3}
N 1160 -670 1240 -670 {lab=#net3}
N 1080 -670 1080 -610 {lab=#net3}
N 1200 -490 1240 -490 {lab=GND}
N 1080 -520 1080 -490 {
lab=GND}
N 1200 -630 1240 -630 {lab=GND}
N 1200 -630 1200 -490 {lab=GND}
N 1080 -490 1200 -490 {lab=GND}
N 1160 -670 1160 -530 {lab=#net3}
N 1080 -670 1160 -670 {lab=#net3}
N 1280 -580 1280 -540 {lab=Vcm}
N 1280 -480 1280 -440 {lab=vinn}
N 1380 -580 1380 -540 {lab=Vcm}
N 1280 -580 1380 -580 {
lab=Vcm}
N 1380 -480 1380 -440 {lab=GND}
N 1080 -490 1080 -440 {lab=GND}
N 960 -480 960 -440 {lab=GND}
N 1540 -700 1560 -700 {lab=vinp}
N 1540 -620 1560 -620 {lab=vinn}
C {devices/code_shown.sym} 80 -1050 0 0 {name=NGSPICE
only_toplevel=true 
value="
.param temp=27
* 227.56fF DAC
.param Cload=227.56f
.options savecurrents klu method=gear reltol=1e-2 abstol=1e-15 gmin=1e-15 rshunt=1e12
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
write bio_amplifier_simplified_tb_Zin_dm.raw
set appendwrite

* AC Analysis
ac dec 101 $&const.f_min $&const.f_max
remzerovec
write bio_amplifier_simplified_tb_Zin_dm.raw

* Plotting Differential Mode Zin
* let Zin_dm = (v(vinp) - v(vinn)) / (i(Vmeasp) - i(Vmeasn))
* let Zin_dm = (v(vinp) - v(vinn)) / (i(Vmeasp) + i(Vmeasn))
let Zin_dm = (v(vinp) - v(vinn)) / i(Vmeasp)
* let Zin_dm = ((v(vinp) + v(vinn)) / 2) / i(Vmeasp)
plot Zin_dm ylabel 'DM Zin'

* Measurements
meas ac Zindc_dm find Zin_dm when frequency = 1
print Zindc_dm

meas ac Zindc_dm find Zin_dm when frequency = fdc
print Zindc_dm

* Write Data
set wr_vecnames
set wr_singlescale
wrdata /foss/designs/SG13G2_ATBS-ADC-main/python/plot_simulations/data/bio_amplifier_simplified_tb_Zin_dm.txt v(Zin_dm)

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
tclcommand="xschem raw_read $netlist_dir/bio_amplifier_simplified_tb_Zin_dm.raw ac"
}
C {devices/launcher.sym} 1640 -1480 0 0 {name=h3
descr="Annotate OP" 
tclcommand="set show_hidden_texts 1; xschem annotate_op"
}
C {devices/gnd.sym} 2180 -440 0 0 {name=l1 lab=GND}
C {devices/vsource.sym} 1200 -1070 0 0 {name=VDD value=1.5}
C {devices/gnd.sym} 1200 -1000 0 0 {name=l3 lab=GND}
C {devices/capa.sym} 2180 -510 0 0 {name=C1
m=1
value=\{Cload\}
footprint=1206
device="ceramic capacitor"}
C {vdd.sym} 1200 -1140 0 0 {name=l7 lab=VDD}
C {lab_pin.sym} 2320 -680 0 1 {name=p3 sig_type=std_logic lab=voutp_dm}
C {lab_pin.sym} 2320 -640 0 1 {name=p4 sig_type=std_logic lab=voutn_dm}
C {devices/capa.sym} 2280 -510 0 0 {name=C2
m=1
value=\{Cload\}
footprint=1206
device="ceramic capacitor"}
C {devices/gnd.sym} 2280 -440 0 0 {name=l30 lab=GND}
C {devices/gnd.sym} 1340 -1000 0 0 {name=l6 lab=GND}
C {devices/vsource.sym} 1340 -1070 0 0 {name=V1 value="1.5"}
C {devices/lab_pin.sym} 1600 -660 0 0 {name=l10 sig_type=std_logic lab=Vcm}
C {ammeter.sym} 1590 -700 3 0 {name=Vmeasp savecurrent=true spice_ignore=0}
C {lab_pin.sym} 940 -600 2 1 {name=p5 sig_type=std_logic lab=vin_dm}
C {ammeter.sym} 1590 -620 3 1 {name=Vmeasn savecurrent=true spice_ignore=0}
C {devices/lab_pin.sym} 1340 -1140 2 0 {name=l4 sig_type=std_logic lab=bio_amp_en}
C {bio_amplifier/bio_amplifier_simplified.sym} 1840 -660 0 0 {name=x1 C1=330p C2=3.3p R2=160G}
C {vdd.sym} 1820 -880 0 0 {name=l8 lab=VDD}
C {devices/lab_pin.sym} 1860 -880 2 0 {name=l9 sig_type=std_logic lab=bio_amp_en}
C {devices/gnd.sym} 1840 -440 0 0 {name=l18 lab=GND}
C {devices/code_shown.sym} 80 -1270 0 0 {name=MODEL only_toplevel=true
format="tcleval( @value )"
value="
.lib cornerMOSlv.lib mos_tt
.lib cornerMOShv.lib mos_tt
.lib cornerRES.lib res_typ
"}
C {devices/lab_pin.sym} 1280 -720 0 0 {name=l5 sig_type=std_logic lab=vinp}
C {devices/lab_pin.sym} 1280 -440 0 0 {name=l13 sig_type=std_logic lab=vinn
}
C {devices/vsource.sym} 1380 -510 0 0 {name=Vcm value=0.75
}
C {devices/vcvs.sym} 1280 -510 0 0 {name=E3 value=0.5}
C {devices/vcvs.sym} 1280 -650 0 0 {name=E2 value=0.5}
C {devices/lab_pin.sym} 1400 -580 2 0 {name=l15 sig_type=std_logic lab=Vcm}
C {devices/gnd.sym} 960 -440 0 0 {name=l39 lab=GND}
C {devices/gnd.sym} 1380 -440 0 0 {name=l16 lab=GND}
C {devices/vcvs.sym} 1080 -580 0 0 {name=E1 value=1}
C {devices/gnd.sym} 1080 -440 0 0 {name=l41 lab=GND}
C {devices/vsource.sym} 960 -510 0 0 {name=vin_dm value="dc 0 ac 1"
}
C {devices/lab_pin.sym} 1540 -700 0 0 {name=l17 sig_type=std_logic lab=vinp}
C {devices/lab_pin.sym} 1540 -620 0 0 {name=l19 sig_type=std_logic lab=vinn
}
