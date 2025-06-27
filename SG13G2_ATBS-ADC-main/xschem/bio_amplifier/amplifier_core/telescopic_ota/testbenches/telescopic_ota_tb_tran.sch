v {xschem version=3.4.7 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
B 2 2500 -2000 3300 -1600 {flags=graph
y1=0.34
y2=0.35
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=-0.0004
x2=0.0036
divx=5
subdivx=1
xlabmag=1.0
ylabmag=1.0
node="vinp
vinn"
color="4 7"
dataset=-1
unitx=1
logx=0
logy=0
linewidth_mult=3
autoload=0}
B 2 2500 -1580 3300 -1180 {flags=graph
y1=0.808
y2=1.548
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=-0.0004
x2=0.0036
divx=5
subdivx=1
xlabmag=1.0
ylabmag=1.0
node="voutp1
voutn1
voutp2
voutn2"
color="4 7 12 21"
dataset=-1
unitx=1
logx=0
logy=0
linewidth_mult=3
autoload=0}
B 2 2500 -1160 3300 -760 {flags=graph
y1=-0.12428623
y2=0.10393129
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=-0.0004
x2=0.0036
divx=5
subdivx=1
xlabmag=1.0
ylabmag=1.0
node="vind
vout1
vout2"
color="4 7 12"
dataset=-1
unitx=1
logx=0
logy=0
linewidth_mult=3
autoload=0}
B 2 2500 -740 3300 -340 {flags=graph
y1=1.2e-05
y2=0.28
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=-0.0004
x2=0.0036
divx=5
subdivx=1
xlabmag=1.0
ylabmag=1.0
node="Vbiasc1
Vbias1
Vbiasc2
Vbias2"
color="4 7 10 21"
dataset=-1
unitx=1
logx=0
logy=0
linewidth_mult=3
autoload=0}
P 4 5 2110 -1400 2110 -1300 2310 -1300 2310 -1400 2110 -1400 {dash = 8}
P 4 5 2110 -820 2110 -720 2310 -720 2310 -820 2110 -820 {dash = 8}
T {Capacitive Load (Comparator, DAC, etc.)} 2070 -1250 0 0 0.25 0.25 {}
T {Capacitive Load (Comparator, DAC, etc.)} 2070 -670 0 0 0.25 0.25 {}
T {output distorts @ 11mV} 1600 -1790 0 0 0.2 0.2 {}
T {Testbench for transient analysis - Telescopic OTA} 1070 -2370 0 0 1 1 {}
N 1660 -2000 1740 -2000 {lab=vind}
N 1740 -1960 1740 -1920 {lab=GND}
N 1740 -1920 1780 -1920 {lab=GND}
N 1780 -1950 1780 -1920 {
lab=GND}
N 1980 -2020 1980 -1980 {lab=Vcm}
N 1980 -2120 1980 -2080 {lab=vinp}
N 1860 -1930 1940 -1930 {lab=#net1}
N 1860 -2070 1940 -2070 {lab=#net1}
N 1780 -2070 1780 -2010 {lab=#net1}
N 1900 -1890 1940 -1890 {lab=GND}
N 1780 -1920 1780 -1890 {
lab=GND}
N 1900 -2030 1940 -2030 {lab=GND}
N 1900 -2030 1900 -1890 {lab=GND}
N 1780 -1890 1900 -1890 {lab=GND}
N 1860 -2070 1860 -1930 {lab=#net1}
N 1780 -2070 1860 -2070 {lab=#net1}
N 1980 -1980 1980 -1940 {lab=Vcm}
N 1980 -1880 1980 -1840 {lab=vinn}
N 1980 -1980 2080 -1980 {
lab=Vcm}
N 1780 -1890 1780 -1820 {lab=GND}
N 2240 -1460 2280 -1460 {lab=voutn1}
N 2140 -1420 2280 -1420 {lab=voutp1}
N 2140 -1420 2140 -1380 {lab=voutp1}
N 2240 -1460 2240 -1380 {lab=voutn1}
N 1700 -1480 1740 -1480 {lab=vinp}
N 1700 -1400 1740 -1400 {lab=vinn}
N 1980 -1460 2240 -1460 {lab=voutn1}
N 1980 -1420 2140 -1420 {lab=voutp1}
N 2170 -1030 2200 -1030 {
lab=voutp2}
N 2170 -990 2200 -990 {
lab=voutn2}
N 2240 -1080 2240 -1040 {lab=vout2}
N 2240 -980 2240 -940 {lab=GND}
N 2240 -880 2280 -880 {lab=voutn2}
N 2140 -840 2280 -840 {lab=voutp2}
N 2140 -840 2140 -800 {lab=voutp2}
N 2240 -880 2240 -800 {lab=voutn2}
N 1700 -900 1740 -900 {lab=vinp}
N 1700 -820 1740 -820 {lab=vinn}
N 1980 -880 2240 -880 {lab=voutn2}
N 1980 -840 2140 -840 {lab=voutp2}
N 2080 -1980 2080 -1940 {lab=Vcm}
N 2080 -1880 2080 -1840 {lab=GND}
N 2170 -1610 2200 -1610 {
lab=voutp1}
N 2170 -1570 2200 -1570 {
lab=voutn1}
N 2240 -1660 2240 -1620 {lab=vout1}
N 2240 -1560 2240 -1520 {lab=GND}
N 1700 -860 1740 -860 {lab=Vcm}
N 1660 -1960 1660 -1920 {lab=vind}
N 1520 -1960 1660 -1960 {lab=vind}
N 1520 -1960 1520 -1920 {lab=vind}
N 1660 -1860 1660 -1820 {lab=GND}
N 1520 -1860 1520 -1820 {lab=GND}
N 1660 -2000 1660 -1960 {lab=vind}
N 1940 -400 1940 -360 {lab=VDD2}
N 1940 -300 1940 -260 {lab=GND}
N 1780 -400 1780 -360 {lab=VDD1}
N 1780 -300 1780 -260 {lab=GND}
N 2240 -1320 2240 -1280 {lab=GND}
N 2140 -1320 2140 -1280 {lab=GND}
N 1840 -1640 1840 -1540 {lab=VDD1}
N 1780 -1640 1780 -1540 {lab=VDD1}
N 1840 -1340 1840 -1280 {lab=GND}
N 1780 -1340 1780 -1280 {lab=GND}
N 2240 -740 2240 -700 {lab=GND}
N 2140 -740 2140 -700 {lab=GND}
N 1840 -1060 1840 -960 {lab=VDD2}
N 1780 -1060 1780 -960 {lab=VDD2}
N 1780 -760 1780 -700 {lab=GND}
N 1840 -760 1840 -700 {lab=GND}
N 1920 -760 1920 -720 {lab=phi_cmfb_2}
N 1880 -760 1880 -680 {lab=phi_cmfb_1}
N 1100 -1440 1140 -1440 {lab=VDD1}
N 1100 -1580 1100 -1440 {lab=VDD1}
N 1100 -1580 1280 -1580 {lab=VDD1}
N 1280 -1580 1280 -1540 {lab=VDD1}
N 1280 -1620 1280 -1580 {lab=VDD1}
N 1420 -1460 1460 -1460 {lab=Vbiasc1}
N 1420 -1420 1460 -1420 {lab=Vbias1}
N 1880 -1580 1880 -1540 {lab=Vbiasc1}
N 1920 -1580 1920 -1540 {lab=Vbias1}
N 740 -520 740 -500 {lab=phi_cmfb_1}
N 740 -440 740 -420 {lab=GND}
N 1140 -520 1140 -500 {lab=phi_cmfb_2}
N 1140 -440 1140 -420 {lab=GND}
N 740 -360 740 -340 {lab=phi_bias_1}
N 740 -280 740 -260 {lab=GND}
N 1140 -360 1140 -340 {lab=phi_bias_2}
N 1140 -280 1140 -260 {lab=GND}
N 1280 -1000 1280 -960 {lab=VDD2}
N 1280 -1040 1280 -1000 {lab=VDD2}
N 1420 -880 1460 -880 {lab=Vbiasc2}
N 1420 -840 1460 -840 {lab=Vbias2}
N 1280 -1000 1360 -1000 {lab=VDD2}
N 1360 -1000 1360 -960 {lab=VDD2}
N 1100 -880 1140 -880 {lab=phi_bias_1}
N 1100 -840 1140 -840 {lab=phi_bias_2}
N 1280 -760 1280 -700 {lab=GND}
N 1280 -1340 1280 -1280 {lab=GND}
N 1880 -1000 1880 -960 {lab=Vbiasc2}
N 1920 -1000 1920 -960 {lab=Vbias2}
N 2080 -1980 2120 -1980 {lab=Vcm}
N 1700 -1440 1740 -1440 {lab=Vcm}
N 1480 -1960 1520 -1960 {lab=vind}
C {title-2.sym} 0 0 0 0 {name=l2 author="Simon Dorrer" rev=1.0 lock=true}
C {devices/code_shown.sym} 120 -1950 0 0 {name=NGSPICE
only_toplevel=true 
value="
.param temp=27
.param fclk=8000000
.csparam fclk=fclk
.param fphi_cmfb=62500
.param fphi_bias=62500
.param Cload=10f

* 1uV amplitude
* .options savecurrents reltol=1e-2 abstol=1e-15 gmin=1e-15

* 1mV amplitude
.options savecurrents klu reltol=1e-2 abstol=1e-15 gmin=1e-15
.control

optran 0 0 0 1u 1m 0

* Turn on save all only for VDD current
* save all
save vind vinp vinn voutp1 voutn1 voutp2 voutn2 vout1 vout2 Vbias1 Vbiasc1 Vbias2 Vbiasc2

* User Constants
let tstep = 1/fclk
let tstop = 4m

* Operating Point Analysis
op
remzerovec
write telescopic_ota_tb_tran.raw
set appendwrite

* Transient Analysis
tran $&tstep $&tstop
write telescopic_ota_tb_tran.raw

* Plotting
plot vind
plot vinp vinn
plot vout1 vout2
plot voutp1 voutn1 voutp2 voutn2
plot Vbias1 Vbiasc1 Vbias2 Vbiasc2
* plot i(VDD1) i(VDD2)

* Measurements
meas tran vin_peak PP v(vind) from=1m to=tstop
meas tran vout1_peak PP v(vout1) from=1m to=tstop
meas tran vout2_peak PP v(vout2) from=1m to=tstop

let Adm1 = vout1_peak / vin_peak
let Adm1_dB = vdb(Adm1)
print Adm1_dB

let Adm2 = vout2_peak / vin_peak
let Adm2_dB = vdb(Adm2)
print Adm2_dB

meas tran vout1_pp_max MAX v(voutp1) from=1m to=tstop
meas tran vout1_pp_min MIN v(voutp1) from=1m to=tstop
let vout1_pp = vout1_pp_max - vout1_pp_min
print vout1_pp
let vout1_vcm_pp = (vout1_pp_max + vout1_pp_min) / 2
print vout1_vcm_pp

meas tran vout2_pp_max MAX v(voutp2) from=1m to=tstop
meas tran vout2_pp_min MIN v(voutp2) from=1m to=tstop
let vout2_pp = vout2_pp_max - vout2_pp_min
print vout2_pp
let vout2_vcm_pp = (vout2_pp_max + vout2_pp_min) / 2
print vout2_vcm_pp

* Write Data
set wr_vecnames
set wr_singlescale
wrdata /foss/designs/SG13G2_ATBS-ADC-main/python/plot_simulations/data/telescopic_ota_tb_tran.txt v(vind) v(vout2) v(vinp) v(vinn) v(voutp2) v(voutn2)

*quit
.endc
"}
C {devices/launcher.sym} 2560 -2160 0 0 {name=h2
descr="Simulate" 
tclcommand="xschem save; xschem netlist; xschem simulate"
}
C {devices/launcher.sym} 2560 -2040 0 0 {name=h1
descr="Load waves" 
tclcommand="xschem raw_read $netlist_dir/telescopic_ota_tb_tran.raw tran"
}
C {devices/launcher.sym} 2560 -2100 0 0 {name=h3
descr="Annotate OP" 
tclcommand="set show_hidden_texts 1; xschem annotate_op"
}
C {devices/code_shown.sym} 120 -2170 0 0 {name=MODEL only_toplevel=true
format="tcleval( @value )"
value="
.lib cornerMOSlv.lib mos_tt
.lib cornerMOShv.lib mos_tt
.lib cornerRES.lib res_typ
"}
C {devices/lab_pin.sym} 1980 -2120 0 0 {name=l1 sig_type=std_logic lab=vinp}
C {devices/lab_pin.sym} 1980 -1840 0 0 {name=l4 sig_type=std_logic lab=vinn
}
C {devices/lab_pin.sym} 1480 -1960 0 0 {name=l15 sig_type=std_logic lab=vind}
C {devices/vcvs.sym} 1980 -1910 0 0 {name=E4 value=0.5}
C {devices/vcvs.sym} 1980 -2050 0 0 {name=E5 value=0.5}
C {devices/vcvs.sym} 1780 -1980 0 0 {name=E6 value=1}
C {devices/gnd.sym} 1780 -1820 0 0 {name=l41 lab=GND}
C {devices/lab_pin.sym} 1700 -1480 0 0 {name=l5 sig_type=std_logic lab=vinp}
C {devices/lab_pin.sym} 1700 -1400 0 0 {name=l8 sig_type=std_logic lab=vinn
}
C {devices/gnd.sym} 2140 -1280 0 0 {name=l9 lab=GND}
C {lab_pin.sym} 2280 -1420 0 1 {name=p3 sig_type=std_logic lab=voutp1}
C {lab_pin.sym} 2280 -1460 0 1 {name=p4 sig_type=std_logic lab=voutn1}
C {devices/gnd.sym} 2240 -1280 0 0 {name=l30 lab=GND}
C {devices/capa.sym} 2240 -1350 0 0 {name=C2
m=1
value=\{Cload\}
footprint=1206
device="ceramic capacitor"}
C {devices/capa.sym} 2140 -1350 0 0 {name=C3
m=1
value=\{Cload\}
footprint=1206
device="ceramic capacitor"}
C {devices/lab_pin.sym} 2240 -1080 0 1 {name=l13 sig_type=std_logic lab=vout2}
C {devices/vcvs.sym} 2240 -1010 0 0 {name=E1 value=1}
C {devices/gnd.sym} 2240 -940 0 0 {name=l17 lab=GND}
C {devices/lab_pin.sym} 2170 -990 2 1 {name=l18 sig_type=std_logic lab=voutn2}
C {devices/lab_pin.sym} 2170 -1030 0 0 {name=l23 sig_type=std_logic lab=voutp2
}
C {devices/lab_pin.sym} 1700 -900 0 0 {name=l10 sig_type=std_logic lab=vinp}
C {devices/lab_pin.sym} 1700 -820 0 0 {name=l14 sig_type=std_logic lab=vinn
}
C {devices/gnd.sym} 2140 -700 0 0 {name=l19 lab=GND}
C {lab_pin.sym} 2280 -840 0 1 {name=p1 sig_type=std_logic lab=voutp2}
C {lab_pin.sym} 2280 -880 0 1 {name=p2 sig_type=std_logic lab=voutn2}
C {devices/gnd.sym} 2240 -700 0 0 {name=l20 lab=GND}
C {devices/capa.sym} 2240 -770 0 0 {name=C1
m=1
value=\{Cload\}
footprint=1206
device="ceramic capacitor"}
C {devices/capa.sym} 2140 -770 0 0 {name=C4
m=1
value=\{Cload\}
footprint=1206
device="ceramic capacitor"}
C {devices/gnd.sym} 1840 -700 0 0 {name=l22 lab=GND}
C {devices/lab_pin.sym} 1880 -680 0 1 {name=l28 sig_type=std_logic lab=phi_cmfb_1}
C {devices/lab_pin.sym} 1920 -720 0 1 {name=l29 sig_type=std_logic lab=phi_cmfb_2}
C {devices/vsource.sym} 2080 -1910 0 0 {name=Vcm value=0.75}
C {devices/gnd.sym} 2080 -1840 0 0 {name=l32 lab=GND}
C {devices/lab_pin.sym} 2120 -1980 2 0 {name=l33 sig_type=std_logic lab=Vcm
}
C {devices/lab_pin.sym} 2240 -1660 0 1 {name=l34 sig_type=std_logic lab=vout1}
C {devices/vcvs.sym} 2240 -1590 0 0 {name=E2 value=1}
C {devices/gnd.sym} 2240 -1520 0 0 {name=l35 lab=GND}
C {devices/lab_pin.sym} 2170 -1570 2 1 {name=l36 sig_type=std_logic lab=voutn1
}
C {devices/lab_pin.sym} 2170 -1610 0 0 {name=l37 sig_type=std_logic lab=voutp1
}
C {devices/lab_pin.sym} 1700 -860 0 0 {name=l38 sig_type=std_logic lab=Vcm
}
C {devices/gnd.sym} 1660 -1820 0 0 {name=l16 lab=GND}
C {devices/vsource.sym} 1520 -1890 0 1 {name=vpulse spice_ignore=True value="pulse(-1 1.5 0 10p 10p 100u 500u)"
}
C {devices/vsource.sym} 1660 -1890 0 1 {name=vsine spice_ignore=False value="sin(0 1m 500)"
}
C {devices/gnd.sym} 1520 -1820 0 0 {name=l25 lab=GND}
C {devices/gnd.sym} 1940 -260 0 0 {name=l3 lab=GND}
C {devices/vsource.sym} 1780 -330 0 0 {name=VDD1 value=1.5}
C {devices/gnd.sym} 1780 -260 0 0 {name=l27 lab=GND}
C {devices/lab_pin.sym} 1780 -400 1 0 {name=l7 sig_type=std_logic lab=VDD1
}
C {devices/lab_pin.sym} 1940 -400 1 0 {name=l31 sig_type=std_logic lab=VDD2
}
C {devices/lab_pin.sym} 1840 -1640 1 0 {name=l45 sig_type=std_logic lab=VDD1
}
C {devices/lab_pin.sym} 1780 -1640 1 0 {name=l11 sig_type=std_logic lab=VDD1
}
C {devices/gnd.sym} 1840 -1280 0 0 {name=l12 lab=GND}
C {devices/gnd.sym} 1780 -1280 0 0 {name=l24 lab=GND}
C {devices/lab_pin.sym} 1780 -1060 1 0 {name=l21 sig_type=std_logic lab=VDD2
}
C {devices/lab_pin.sym} 1840 -1060 1 0 {name=l46 sig_type=std_logic lab=VDD2
}
C {devices/gnd.sym} 1780 -700 0 0 {name=l48 lab=GND}
C {bio_amplifier/amplifier_core/bias_circuit/bias_circuit_2/bias_circuit_2.sym} 1280 -1440 0 0 {name=x3}
C {devices/gnd.sym} 1280 -1280 0 0 {name=l47 lab=GND}
C {devices/lab_pin.sym} 1460 -1460 0 1 {name=l49 sig_type=std_logic lab=Vbiasc1}
C {devices/lab_pin.sym} 1460 -1420 0 1 {name=l50 sig_type=std_logic lab=Vbias1}
C {devices/lab_pin.sym} 1880 -1580 1 0 {name=l51 sig_type=std_logic lab=Vbiasc1}
C {devices/lab_pin.sym} 1920 -1580 1 0 {name=l52 sig_type=std_logic lab=Vbias1}
C {devices/vsource.sym} 740 -470 0 0 {name=V1 value="pulse(0 1.5 0 10p 10p \{0.5/fphi_cmfb - 1/fclk\} \{1/fphi_cmfb\})"}
C {devices/gnd.sym} 740 -420 0 0 {name=l39 lab=GND}
C {devices/lab_pin.sym} 740 -520 2 0 {name=l42 sig_type=std_logic lab=phi_cmfb_1}
C {devices/vsource.sym} 1140 -470 0 0 {name=V2 value="pulse(0 1.5 \{0.5/fphi_cmfb\} 10p 10p \{0.5/fphi_cmfb - 1/fclk\} \{1/fphi_cmfb\})"}
C {devices/gnd.sym} 1140 -420 0 0 {name=l43 lab=GND}
C {devices/lab_pin.sym} 1140 -520 2 0 {name=l44 sig_type=std_logic lab=phi_cmfb_2}
C {devices/vsource.sym} 740 -310 0 0 {name=V3 value="pulse(0 1.5 0 10p 10p \{0.5/fphi_bias - 1/fclk\} \{1/fphi_bias\})"}
C {devices/gnd.sym} 740 -260 0 0 {name=l53 lab=GND}
C {devices/lab_pin.sym} 740 -360 2 0 {name=l54 sig_type=std_logic lab=phi_bias_1}
C {devices/vsource.sym} 1140 -310 0 0 {name=V4 value="pulse(0 1.5 \{0.5/fphi_bias\} 10p 10p \{0.5/fphi_bias - 1/fclk\} \{1/fphi_bias\})"}
C {devices/gnd.sym} 1140 -260 0 0 {name=l55 lab=GND}
C {devices/lab_pin.sym} 1140 -360 2 0 {name=l56 sig_type=std_logic lab=phi_bias_2}
C {devices/gnd.sym} 1280 -700 0 0 {name=l58 lab=GND}
C {devices/lab_pin.sym} 1460 -880 0 1 {name=l59 sig_type=std_logic lab=Vbiasc2}
C {devices/lab_pin.sym} 1460 -840 0 1 {name=l60 sig_type=std_logic lab=Vbias2}
C {bio_amplifier/amplifier_core/bias_circuit/bias_circuit_4/bias_circuit_4.sym} 1280 -860 0 0 {name=x4}
C {devices/lab_pin.sym} 1280 -1620 1 0 {name=l6 sig_type=std_logic lab=VDD1
}
C {devices/lab_pin.sym} 1280 -1040 1 0 {name=l57 sig_type=std_logic lab=VDD2
}
C {devices/vsource.sym} 1940 -330 0 0 {name=VDD2 value="pwl(0 0 100n 1.5)"}
C {devices/lab_pin.sym} 1880 -1000 1 0 {name=l63 sig_type=std_logic lab=Vbiasc2}
C {devices/lab_pin.sym} 1920 -1000 1 0 {name=l64 sig_type=std_logic lab=Vbias2}
C {bio_amplifier/amplifier_core/telescopic_ota/telescopic_ota_simplified.sym} 1860 -1440 0 0 {name=x2}
C {bio_amplifier/amplifier_core/telescopic_ota/telescopic_ota.sym} 1860 -860 0 0 {name=x1}
C {devices/lab_pin.sym} 1100 -880 2 1 {name=l61 sig_type=std_logic lab=phi_bias_1}
C {devices/lab_pin.sym} 1100 -840 2 1 {name=l62 sig_type=std_logic lab=phi_bias_2}
C {devices/lab_pin.sym} 1700 -1440 2 1 {name=l40 sig_type=std_logic lab=Vcm
}
C {lab_wire.sym} 270 -1360 0 1 {name=p22 sig_type=std_logic lab=vs}
