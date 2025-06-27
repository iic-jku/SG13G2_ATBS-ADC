v {xschem version=3.4.7 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
B 2 2440 -2000 3240 -1600 {flags=graph
y1=0.34
y2=0.35
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=0
x2=0.00132
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
B 2 2440 -1580 3240 -1180 {flags=graph
y1=0.66
y2=1.4
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=0
x2=0.00132
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
B 2 2440 -1160 3240 -760 {flags=graph
y1=-0.98
y2=1.1
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=0
x2=0.00132
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
B 2 2440 -740 3240 -340 {flags=graph
y1=1.2e-05
y2=0.28
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=0
x2=0.00132
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
P 4 5 1950 -1400 1950 -1300 2150 -1300 2150 -1400 1950 -1400 {dash = 8}
P 4 5 1950 -820 1950 -720 2150 -720 2150 -820 1950 -820 {dash = 8}
T {Testbench for transient analysis - Push-Pull Amplifier (high gm, high output voltage swing)} 490 -2360 0 0 1 1 {}
T {Capacitive Load (Comparator, DAC, etc.)} 1910 -1250 0 0 0.25 0.25 {}
T {Capacitive Load (Comparator, DAC, etc.)} 1910 -670 0 0 0.25 0.25 {}
T {output distorts @ 11mV} 1440 -1790 0 0 0.2 0.2 {}
N 1500 -2000 1580 -2000 {lab=vind}
N 1580 -1960 1580 -1920 {lab=GND}
N 1580 -1920 1620 -1920 {lab=GND}
N 1620 -1950 1620 -1920 {
lab=GND}
N 1820 -1980 1820 -1940 {lab=#net1}
N 1820 -2120 1820 -2080 {lab=vinp}
N 1700 -1930 1780 -1930 {lab=#net2}
N 1700 -2070 1780 -2070 {lab=#net2}
N 1620 -2070 1620 -2010 {lab=#net2}
N 1740 -1890 1780 -1890 {lab=GND}
N 1620 -1920 1620 -1890 {
lab=GND}
N 1740 -2030 1780 -2030 {lab=GND}
N 1740 -2030 1740 -1890 {lab=GND}
N 1620 -1890 1740 -1890 {lab=GND}
N 1700 -2070 1700 -1930 {lab=#net2}
N 1620 -2070 1700 -2070 {lab=#net2}
N 1820 -1880 1820 -1840 {lab=vinn}
N 1620 -1890 1620 -1820 {lab=GND}
N 2080 -1460 2120 -1460 {lab=voutn1}
N 1980 -1420 2120 -1420 {lab=voutp1}
N 1980 -1420 1980 -1380 {lab=voutp1}
N 2080 -1460 2080 -1380 {lab=voutn1}
N 1540 -1480 1580 -1480 {lab=vinp}
N 1540 -1400 1580 -1400 {lab=vinn}
N 1820 -1460 2080 -1460 {lab=voutn1}
N 1820 -1420 1980 -1420 {lab=voutp1}
N 2010 -1030 2040 -1030 {
lab=voutp2}
N 2010 -990 2040 -990 {
lab=voutn2}
N 2080 -1080 2080 -1040 {lab=vout2}
N 2080 -980 2080 -940 {lab=GND}
N 2080 -880 2120 -880 {lab=voutn2}
N 1980 -840 2120 -840 {lab=voutp2}
N 1980 -840 1980 -800 {lab=voutp2}
N 2080 -880 2080 -800 {lab=voutn2}
N 1540 -900 1580 -900 {lab=vinp}
N 1540 -820 1580 -820 {lab=vinn}
N 1820 -880 2080 -880 {lab=voutn2}
N 1820 -840 1980 -840 {lab=voutp2}
N 2010 -1610 2040 -1610 {
lab=voutp1}
N 2010 -1570 2040 -1570 {
lab=voutn1}
N 2080 -1660 2080 -1620 {lab=vout1}
N 2080 -1560 2080 -1520 {lab=GND}
N 1540 -860 1580 -860 {lab=Vcm}
N 1500 -1960 1500 -1920 {lab=vind}
N 1360 -1960 1500 -1960 {lab=vind}
N 1360 -1960 1360 -1920 {lab=vind}
N 1500 -1860 1500 -1820 {lab=GND}
N 1360 -1860 1360 -1820 {lab=GND}
N 1500 -2000 1500 -1960 {lab=vind}
N 1780 -400 1780 -360 {lab=VDD2}
N 1780 -300 1780 -260 {lab=GND}
N 1620 -400 1620 -360 {lab=VDD1}
N 1620 -300 1620 -260 {lab=GND}
N 2080 -1320 2080 -1280 {lab=GND}
N 1980 -1320 1980 -1280 {lab=GND}
N 1680 -1640 1680 -1540 {lab=VDD1}
N 1620 -1640 1620 -1540 {lab=VDD1}
N 1680 -1340 1680 -1280 {lab=GND}
N 1620 -1340 1620 -1280 {lab=GND}
N 2080 -740 2080 -700 {lab=GND}
N 1980 -740 1980 -700 {lab=GND}
N 1680 -1060 1680 -960 {lab=VDD2}
N 1620 -1060 1620 -960 {lab=VDD2}
N 1620 -760 1620 -700 {lab=GND}
N 1680 -760 1680 -700 {lab=GND}
N 1760 -760 1760 -720 {lab=phi_cmfb_2}
N 1720 -760 1720 -680 {lab=phi_cmfb_1}
N 940 -1440 980 -1440 {lab=VDD1}
N 940 -1580 940 -1440 {lab=VDD1}
N 940 -1580 1120 -1580 {lab=VDD1}
N 1120 -1580 1120 -1540 {lab=VDD1}
N 1120 -1620 1120 -1580 {lab=VDD1}
N 1260 -1460 1300 -1460 {lab=Vbiasc1}
N 1260 -1420 1300 -1420 {lab=Vbias1}
N 1720 -1580 1720 -1540 {lab=Vbiasc1}
N 1760 -1580 1760 -1540 {lab=Vbias1}
N 580 -520 580 -500 {lab=phi_cmfb_1}
N 580 -440 580 -420 {lab=GND}
N 980 -520 980 -500 {lab=phi_cmfb_2}
N 980 -440 980 -420 {lab=GND}
N 580 -360 580 -340 {lab=phi_bias_1}
N 580 -280 580 -260 {lab=GND}
N 980 -360 980 -340 {lab=phi_bias_2}
N 980 -280 980 -260 {lab=GND}
N 1120 -1000 1120 -960 {lab=VDD2}
N 1120 -1040 1120 -1000 {lab=VDD2}
N 1260 -880 1300 -880 {lab=Vbiasc2}
N 1260 -840 1300 -840 {lab=Vbias2}
N 1120 -1000 1200 -1000 {lab=VDD2}
N 1200 -1000 1200 -960 {lab=VDD2}
N 940 -880 980 -880 {lab=phi_bias_1}
N 940 -840 980 -840 {lab=phi_bias_2}
N 1120 -760 1120 -700 {lab=GND}
N 1120 -1340 1120 -1280 {lab=GND}
N 1720 -1000 1720 -960 {lab=Vbiasc2}
N 1760 -1000 1760 -960 {lab=Vbias2}
N 1920 -1980 1920 -1940 {lab=#net1}
N 1820 -1980 1920 -1980 {
lab=#net1}
N 1920 -1880 1920 -1820 {lab=GND}
N 1980 -400 1980 -360 {lab=Vcm}
N 1980 -300 1980 -260 {lab=GND}
N 1820 -2020 1820 -1980 {lab=#net1}
N 1320 -1960 1360 -1960 {lab=vind}
C {title-2.sym} 0 0 0 0 {name=l2 author="Simon Dorrer" rev=1.0 lock=true}
C {devices/code_shown.sym} 60 -2010 0 0 {name=NGSPICE
only_toplevel=true 
value="
.param temp=27
.param fclk=8000000
.csparam fclk=fclk
.param fphi_cmfb=62500
.param fphi_bias=62500
* 228fF DAC + (1 - beta) * 3.3pF
.param Cload=3.49p
.param Vgs=0.345
* Power-Down
* .param Vgs=0.047

* 1uV amplitude
* .options savecurrents reltol=1e-2 abstol=1e-15 gmin=1e-15

* 1mV amplitude
.options savecurrents klu reltol=1e-2 abstol=1e-15 gmin=1e-15
.control

* Turn on save all only for VDD current
* save all
save vind vinp vinn voutp1 voutn1 voutp2 voutn2 vout1 vout2 Vbias1 Vbiasc1 Vbias2 Vbiasc2

* User Constants
let tstep = 1/fclk
let tstop = 4m

* Operating Point Analysis
op
remzerovec
write push_pull_amplifier_tb_tran.raw
set appendwrite

* Transient Analysis
tran $&tstep $&tstop
write push_pull_amplifier_tb_tran.raw

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
wrdata /foss/designs/SG13G2_ATBS-ADC-main/python/plot_simulations/data/push_pull_amplifier_tb_tran.txt v(vind) v(vout2) v(vinp) v(vinn) v(voutp2) v(voutn2)

*quit
.endc
"}
C {devices/launcher.sym} 2500 -2160 0 0 {name=h2
descr="Simulate" 
tclcommand="xschem save; xschem netlist; xschem simulate"
}
C {devices/launcher.sym} 2500 -2040 0 0 {name=h1
descr="Load waves" 
tclcommand="xschem raw_read $netlist_dir/push_pull_amplifier_tb_tran.raw tran"
}
C {devices/launcher.sym} 2500 -2100 0 0 {name=h3
descr="Annotate OP" 
tclcommand="set show_hidden_texts 1; xschem annotate_op"
}
C {devices/code_shown.sym} 60 -2190 0 0 {name=MODEL only_toplevel=true
format="tcleval( @value )"
value="
.lib cornerMOSlv.lib mos_tt
.lib cornerMOShv.lib mos_tt
.lib cornerRES.lib res_typ
"}
C {devices/lab_pin.sym} 1820 -2120 0 0 {name=l1 sig_type=std_logic lab=vinp}
C {devices/lab_pin.sym} 1820 -1840 0 0 {name=l4 sig_type=std_logic lab=vinn
}
C {devices/lab_pin.sym} 1320 -1960 0 0 {name=l15 sig_type=std_logic lab=vind}
C {devices/vcvs.sym} 1820 -1910 0 0 {name=E4 value=0.5}
C {devices/vcvs.sym} 1820 -2050 0 0 {name=E5 value=0.5}
C {devices/vcvs.sym} 1620 -1980 0 0 {name=E6 value=1}
C {devices/gnd.sym} 1620 -1820 0 0 {name=l41 lab=GND}
C {devices/lab_pin.sym} 1540 -1480 0 0 {name=l5 sig_type=std_logic lab=vinp}
C {devices/lab_pin.sym} 1540 -1400 0 0 {name=l8 sig_type=std_logic lab=vinn
}
C {devices/gnd.sym} 1980 -1280 0 0 {name=l9 lab=GND}
C {lab_pin.sym} 2120 -1420 0 1 {name=p3 sig_type=std_logic lab=voutp1}
C {lab_pin.sym} 2120 -1460 0 1 {name=p4 sig_type=std_logic lab=voutn1}
C {devices/gnd.sym} 2080 -1280 0 0 {name=l30 lab=GND}
C {devices/capa.sym} 2080 -1350 0 0 {name=C2
m=1
value=\{Cload\}
footprint=1206
device="ceramic capacitor"}
C {devices/capa.sym} 1980 -1350 0 0 {name=C3
m=1
value=\{Cload\}
footprint=1206
device="ceramic capacitor"}
C {devices/lab_pin.sym} 2080 -1080 0 1 {name=l13 sig_type=std_logic lab=vout2}
C {devices/vcvs.sym} 2080 -1010 0 0 {name=E1 value=1}
C {devices/gnd.sym} 2080 -940 0 0 {name=l17 lab=GND}
C {devices/lab_pin.sym} 2010 -990 2 1 {name=l18 sig_type=std_logic lab=voutn2}
C {devices/lab_pin.sym} 2010 -1030 0 0 {name=l23 sig_type=std_logic lab=voutp2
}
C {devices/lab_pin.sym} 1540 -900 0 0 {name=l10 sig_type=std_logic lab=vinp}
C {devices/lab_pin.sym} 1540 -820 0 0 {name=l14 sig_type=std_logic lab=vinn
}
C {devices/gnd.sym} 1980 -700 0 0 {name=l19 lab=GND}
C {lab_pin.sym} 2120 -840 0 1 {name=p1 sig_type=std_logic lab=voutp2}
C {lab_pin.sym} 2120 -880 0 1 {name=p2 sig_type=std_logic lab=voutn2}
C {devices/gnd.sym} 2080 -700 0 0 {name=l20 lab=GND}
C {devices/capa.sym} 2080 -770 0 0 {name=C1
m=1
value=\{Cload\}
footprint=1206
device="ceramic capacitor"}
C {devices/capa.sym} 1980 -770 0 0 {name=C4
m=1
value=\{Cload\}
footprint=1206
device="ceramic capacitor"}
C {devices/gnd.sym} 1680 -700 0 0 {name=l22 lab=GND}
C {devices/lab_pin.sym} 1720 -680 0 1 {name=l28 sig_type=std_logic lab=phi_cmfb_1}
C {devices/lab_pin.sym} 1760 -720 0 1 {name=l29 sig_type=std_logic lab=phi_cmfb_2}
C {devices/lab_pin.sym} 2080 -1660 0 1 {name=l34 sig_type=std_logic lab=vout1}
C {devices/vcvs.sym} 2080 -1590 0 0 {name=E2 value=1}
C {devices/gnd.sym} 2080 -1520 0 0 {name=l35 lab=GND}
C {devices/lab_pin.sym} 2010 -1570 2 1 {name=l36 sig_type=std_logic lab=voutn1
}
C {devices/lab_pin.sym} 2010 -1610 0 0 {name=l37 sig_type=std_logic lab=voutp1
}
C {devices/lab_pin.sym} 1540 -860 0 0 {name=l38 sig_type=std_logic lab=Vcm
}
C {devices/gnd.sym} 1500 -1820 0 0 {name=l16 lab=GND}
C {devices/vsource.sym} 1360 -1890 0 1 {name=vpulse spice_ignore=True value="pulse(-1 1.5 0 10p 10p 100u 500u)"
}
C {devices/vsource.sym} 1500 -1890 0 1 {name=vsine spice_ignore=False value="sin(0 1m 500)"
}
C {devices/gnd.sym} 1360 -1820 0 0 {name=l25 lab=GND}
C {devices/gnd.sym} 1780 -260 0 0 {name=l3 lab=GND}
C {devices/vsource.sym} 1620 -330 0 0 {name=VDD1 value=1.5}
C {devices/gnd.sym} 1620 -260 0 0 {name=l27 lab=GND}
C {devices/lab_pin.sym} 1620 -400 1 0 {name=l7 sig_type=std_logic lab=VDD1
}
C {devices/lab_pin.sym} 1780 -400 1 0 {name=l31 sig_type=std_logic lab=VDD2
}
C {devices/lab_pin.sym} 1680 -1640 1 0 {name=l45 sig_type=std_logic lab=VDD1
}
C {devices/lab_pin.sym} 1620 -1640 1 0 {name=l11 sig_type=std_logic lab=VDD1
}
C {devices/gnd.sym} 1680 -1280 0 0 {name=l12 lab=GND}
C {devices/gnd.sym} 1620 -1280 0 0 {name=l24 lab=GND}
C {devices/lab_pin.sym} 1620 -1060 1 0 {name=l21 sig_type=std_logic lab=VDD2
}
C {devices/lab_pin.sym} 1680 -1060 1 0 {name=l46 sig_type=std_logic lab=VDD2
}
C {devices/gnd.sym} 1620 -700 0 0 {name=l48 lab=GND}
C {bio_amplifier/amplifier_core/bias_circuit/bias_circuit_2/bias_circuit_2.sym} 1120 -1440 0 0 {name=x3}
C {devices/gnd.sym} 1120 -1280 0 0 {name=l47 lab=GND}
C {devices/lab_pin.sym} 1300 -1460 0 1 {name=l49 sig_type=std_logic lab=Vbiasc1}
C {devices/lab_pin.sym} 1300 -1420 0 1 {name=l50 sig_type=std_logic lab=Vbias1}
C {devices/lab_pin.sym} 1720 -1580 1 0 {name=l51 sig_type=std_logic lab=Vbiasc1}
C {devices/lab_pin.sym} 1760 -1580 1 0 {name=l52 sig_type=std_logic lab=Vbias1}
C {devices/vsource.sym} 580 -470 0 0 {name=V1 value="pulse(0 1.5 0 10p 10p \{0.5/fphi_cmfb - 1/fclk\} \{1/fphi_cmfb\})"}
C {devices/gnd.sym} 580 -420 0 0 {name=l39 lab=GND}
C {devices/lab_pin.sym} 580 -520 2 0 {name=l42 sig_type=std_logic lab=phi_cmfb_1}
C {devices/vsource.sym} 980 -470 0 0 {name=V2 value="pulse(0 1.5 \{0.5/fphi_cmfb\} 10p 10p \{0.5/fphi_cmfb - 1/fclk\} \{1/fphi_cmfb\})"}
C {devices/gnd.sym} 980 -420 0 0 {name=l43 lab=GND}
C {devices/lab_pin.sym} 980 -520 2 0 {name=l44 sig_type=std_logic lab=phi_cmfb_2}
C {devices/vsource.sym} 580 -310 0 0 {name=V3 value="pulse(0 1.5 0 10p 10p \{0.5/fphi_bias - 1/fclk\} \{1/fphi_bias\})"}
C {devices/gnd.sym} 580 -260 0 0 {name=l53 lab=GND}
C {devices/lab_pin.sym} 580 -360 2 0 {name=l54 sig_type=std_logic lab=phi_bias_1}
C {devices/vsource.sym} 980 -310 0 0 {name=V4 value="pulse(0 1.5 \{0.5/fphi_bias\} 10p 10p \{0.5/fphi_bias - 1/fclk\} \{1/fphi_bias\})"}
C {devices/gnd.sym} 980 -260 0 0 {name=l55 lab=GND}
C {devices/lab_pin.sym} 980 -360 2 0 {name=l56 sig_type=std_logic lab=phi_bias_2}
C {devices/gnd.sym} 1120 -700 0 0 {name=l58 lab=GND}
C {devices/lab_pin.sym} 1300 -880 0 1 {name=l59 sig_type=std_logic lab=Vbiasc2}
C {devices/lab_pin.sym} 1300 -840 0 1 {name=l60 sig_type=std_logic lab=Vbias2}
C {bio_amplifier/amplifier_core/bias_circuit/bias_circuit_4/bias_circuit_4.sym} 1120 -860 0 0 {name=x4}
C {devices/lab_pin.sym} 1120 -1620 1 0 {name=l6 sig_type=std_logic lab=VDD1
}
C {devices/lab_pin.sym} 1120 -1040 1 0 {name=l57 sig_type=std_logic lab=VDD2
}
C {devices/vsource.sym} 1780 -330 0 0 {name=VDD2 value="pwl(0 0 100n 1.5)"}
C {devices/lab_pin.sym} 1720 -1000 1 0 {name=l63 sig_type=std_logic lab=Vbiasc2}
C {devices/lab_pin.sym} 1760 -1000 1 0 {name=l64 sig_type=std_logic lab=Vbias2}
C {devices/vsource.sym} 1920 -1910 0 0 {name=Vgs value=\{Vgs\}
}
C {devices/gnd.sym} 1920 -1820 0 0 {name=l65 lab=GND}
C {devices/vsource.sym} 1980 -330 0 0 {name=Vcm value=0.75}
C {devices/gnd.sym} 1980 -260 0 0 {name=l66 lab=GND}
C {devices/lab_pin.sym} 1980 -400 1 0 {name=l67 sig_type=std_logic lab=Vcm
}
C {bio_amplifier/amplifier_core/push_pull_amplifier/push_pull_amplifier.sym} 1700 -860 0 0 {name=x1}
C {bio_amplifier/amplifier_core/push_pull_amplifier/push_pull_amplifier_simplified.sym} 1700 -1440 0 0 {name=x2}
C {devices/lab_pin.sym} 940 -880 2 1 {name=l61 sig_type=std_logic lab=phi_bias_1}
C {devices/lab_pin.sym} 940 -840 2 1 {name=l62 sig_type=std_logic lab=phi_bias_2}
