v {xschem version=3.4.7 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
L 4 0 0 65 0 {}
L 4 1360 -160 1360 0 {}
L 4 1360 -160 2680 -160 {}
L 4 1360 -80 2680 -80 {}
L 4 1990 -80 1990 0 {}
L 4 1990 -160 1990 -80 {}
L 4 1700 -80 1700 0 {}
L 4 380 0 1000 0 {}
L 4 1000 -0 2680 -0 {}
L 4 0 -2080 2680 -2080 {}
L 4 0 -2080 0 -0 {}
L 4 2680 -2080 2680 -0 {}
P 4 5 2080 -1280 2080 -1180 2280 -1180 2280 -1280 2080 -1280 {dash = 8}
P 4 5 2080 -540 2080 -440 2280 -440 2280 -540 2080 -540 {dash = 8}
P 4 6 1280 -1720 2600 -1720 2600 -240 1260 -240 1260 -1720 1280 -1720 {dash = 8}
P 5 38 140 -15 135 -10 125 0 135 10 147.5 22.5 155 30 147.5 30 140 30 135 30 130 25 125 20 115 10 105 20 100 25 95 30 90 30 82.5 30 75 30 82.5 22.5 95 10 105 0 95 -10 82.5 -22.5 75 -30 82.5 -30 90 -30 95 -30 100 -25 105 -20 115 -10 125 -20 130 -25 135 -30 140 -30 147.5 -30 155 -30 147.5 -22.5 140 -15 {fill=true
bezier=1}
T {Testbench for loop gain analysis - Bio-signal Amplifier (simplified)} 540 -2060 0 0 1 1 {}
T {Capacitive Load (Comparator, DAC, etc.)} 2080 -1110 0 0 0.25 0.25 {}
T {Capacitive Load (Comparator, DAC, etc.)} 2080 -370 0 0 0.25 0.25 {}
T {Middlebrook’s Method} 1260 -1760 0 0 0.5 0.5 {}
T {2025-01-14} 2000 -60 0 0 0.8 0.8 {}
T {Simon Dorrer} 1370 -140 0 0 0.8 0.8 {}
T {Page 1 of 1} 1370 -60 0 0 0.8 0.8 {}
T {Rev. 1} 1710 -60 0 0 0.8 0.8 {}
T {SCHEM} 155 -25 0 0 1 1 {}
N 1720 -1920 1720 -1880 {lab=VDD}
N 1720 -1820 1720 -1780 {lab=GND}
N 2040 -1920 2040 -1880 {lab=bio_amp_en}
N 2040 -1820 2040 -1780 {lab=GND}
N 1860 -1500 1860 -1460 {lab=VDD}
N 1380 -1480 1420 -1480 {lab=#net1}
N 1760 -1360 1780 -1360 {lab=Vcm}
N 1380 -1240 1420 -1240 {lab=#net2}
N 2120 -1340 2260 -1340 {lab=voutp2}
N 2220 -1380 2260 -1380 {lab=voutn2}
N 2120 -1200 2120 -1140 {lab=GND}
N 2220 -1200 2220 -1140 {lab=GND}
N 2120 -1340 2120 -1260 {lab=voutp2}
N 2220 -1380 2220 -1260 {lab=voutn2}
N 2520 -1410 2520 -1390 {
lab=vout2}
N 2450 -1380 2480 -1380 {
lab=voutp2}
N 2450 -1340 2480 -1340 {
lab=voutn2}
N 2520 -1330 2520 -1310 {lab=GND}
N 1860 -1260 1860 -1220 {
lab=GND}
N 1880 -1480 1880 -1460 {
lab=bio_amp_en}
N 1960 -1380 2060 -1380 {lab=voutn2}
N 1960 -1340 2060 -1340 {lab=voutp2}
N 2060 -1340 2120 -1340 {lab=voutp2}
N 2060 -1380 2220 -1380 {lab=voutn2}
N 2060 -1120 2060 -1040 {lab=voutp2}
N 1520 -1240 1520 -1120 {lab=vrn2}
N 1520 -1480 1520 -1400 {lab=vrp2}
N 1520 -1600 1520 -1480 {lab=vrp2}
N 1520 -1320 1520 -1240 {lab=vrn2}
N 1480 -1240 1520 -1240 {lab=vrn2}
N 1480 -1480 1520 -1480 {lab=vrp2}
N 1520 -1120 1760 -1120 {lab=vrn2}
N 1820 -1120 2060 -1120 {lab=voutp2}
N 2060 -1340 2060 -1120 {lab=voutp2}
N 1820 -1040 2060 -1040 {lab=voutp2}
N 1520 -1040 1760 -1040 {lab=vrn2}
N 1520 -1120 1520 -1040 {lab=vrn2}
N 1520 -1600 1760 -1600 {lab=vrp2}
N 1520 -1680 1520 -1600 {lab=vrp2}
N 1520 -1680 1760 -1680 {lab=vrp2}
N 1820 -1680 2060 -1680 {lab=voutn2}
N 1820 -1600 2060 -1600 {lab=voutn2}
N 2060 -1600 2060 -1380 {lab=voutn2}
N 2060 -1680 2060 -1600 {lab=voutn2}
N 1860 -760 1860 -720 {lab=VDD}
N 1380 -740 1420 -740 {lab=#net3}
N 1760 -620 1780 -620 {lab=Vcm}
N 1380 -500 1420 -500 {lab=#net4}
N 2120 -600 2260 -600 {lab=voutp3}
N 2220 -640 2260 -640 {lab=voutn3}
N 2120 -460 2120 -400 {lab=GND}
N 2220 -460 2220 -400 {lab=GND}
N 2120 -600 2120 -520 {lab=voutp3}
N 2220 -640 2220 -520 {lab=voutn3}
N 2520 -670 2520 -650 {
lab=vout3}
N 2450 -640 2480 -640 {
lab=voutp3}
N 2450 -600 2480 -600 {
lab=voutn3}
N 2520 -590 2520 -570 {lab=GND}
N 1860 -520 1860 -480 {
lab=GND}
N 1880 -740 1880 -720 {
lab=bio_amp_en}
N 1960 -640 2060 -640 {lab=voutn3}
N 1960 -600 2060 -600 {lab=voutp3}
N 2060 -600 2120 -600 {lab=voutp3}
N 2060 -640 2220 -640 {lab=voutn3}
N 2060 -380 2060 -300 {lab=voutp3}
N 1520 -500 1520 -380 {lab=#net5}
N 1520 -860 1520 -740 {lab=#net6}
N 1520 -560 1520 -500 {lab=#net5}
N 1480 -500 1520 -500 {lab=#net5}
N 1480 -740 1520 -740 {lab=#net6}
N 1520 -380 1760 -380 {lab=#net5}
N 1820 -380 2060 -380 {lab=voutp3}
N 2060 -600 2060 -380 {lab=voutp3}
N 1820 -300 2060 -300 {lab=voutp3}
N 1520 -300 1760 -300 {lab=#net5}
N 1520 -380 1520 -300 {lab=#net5}
N 1520 -860 1760 -860 {lab=#net6}
N 1520 -940 1520 -860 {lab=#net6}
N 1520 -940 1760 -940 {lab=#net6}
N 1820 -940 2060 -940 {lab=voutn3}
N 1820 -860 2060 -860 {lab=voutn3}
N 2060 -860 2060 -640 {lab=voutn3}
N 2060 -940 2060 -860 {lab=voutn3}
N 1340 -1360 1380 -1360 {lab=Vcm}
N 1340 -620 1380 -620 {lab=Vcm}
N 2280 -1630 2280 -1610 {
lab=vf2}
N 2210 -1600 2240 -1600 {
lab=vfp2}
N 2210 -1560 2240 -1560 {
lab=vfn2}
N 2280 -1550 2280 -1520 {
lab=GND}
N 2520 -1630 2520 -1610 {
lab=vr2}
N 2450 -1600 2480 -1600 {
lab=vrp2}
N 2450 -1560 2480 -1560 {
lab=vrn2}
N 2520 -1550 2520 -1520 {
lab=GND}
N 1520 -1400 1620 -1400 {lab=vrp2}
N 1680 -1400 1780 -1400 {lab=vfp2}
N 1520 -1320 1620 -1320 {lab=vrn2}
N 1680 -1320 1780 -1320 {lab=vfn2}
N 1640 -560 1660 -560 {
lab=#net7}
N 1620 -560 1640 -560 {
lab=#net7}
N 1640 -680 1660 -680 {
lab=#net8}
N 1620 -680 1640 -680 {
lab=#net8}
N 1640 -480 1640 -460 {lab=GND}
N 1640 -560 1640 -540 {lab=#net7}
N 1640 -700 1640 -680 {lab=#net8}
N 1640 -780 1640 -760 {lab=GND}
N 1720 -680 1760 -680 {lab=#net9}
N 1760 -680 1760 -660 {lab=#net9}
N 1760 -660 1780 -660 {lab=#net9}
N 1760 -580 1780 -580 {lab=#net10}
N 1760 -580 1760 -560 {lab=#net10}
N 1720 -560 1760 -560 {lab=#net10}
N 1520 -560 1560 -560 {lab=#net5}
N 1520 -680 1560 -680 {lab=#net6}
N 1520 -740 1520 -680 {lab=#net6}
N 1880 -1820 1880 -1780 {lab=GND}
N 1880 -1920 1880 -1880 {lab=Vcm}
N 1380 -1480 1380 -1450 {lab=#net1}
N 1380 -1390 1380 -1360 {lab=Vcm}
N 1380 -1360 1380 -1330 {lab=Vcm}
N 1380 -1270 1380 -1240 {lab=#net2}
N 1380 -740 1380 -710 {lab=#net3}
N 1380 -650 1380 -620 {lab=Vcm}
N 1380 -620 1380 -590 {lab=Vcm}
N 1380 -530 1380 -500 {lab=#net4}
C {devices/code_shown.sym} 2310 -1850 0 0 {name=MODEL only_toplevel=true
format="tcleval( @value )"
value="
.lib cornerMOSlv.lib mos_tt
.lib cornerMOShv.lib mos_tt
.lib cornerRES.lib res_typ
"}
C {devices/code_shown.sym} 40 -1750 0 0 {name=NGSPICE
only_toplevel=true 
value="
.param temp=27
.param C1=33e-12
* .param C1=165e-12
* .param C1=330e-12
.param C2=3.3e-12
* 227.56fF DAC
.param CL=227.56f
.param R1=1e-3
* 10Hz
*.param R1=53e6
* 500Hz
*.param R1=1e6
.param R2=160e9
* .param R2=320e9
.options savecurrents method=gear reltol=1e-2 abstol=1e-15 gmin=1e-15 rshunt=1e12
.control

optran 0 0 0 1u 1m 0

save all

* User Constants
let f_min = 0.01
let f_max = 1G
let fdc = 1
* ===================================================

* Operating Point Analysis
op
remzerovec
write bio_amplifier_simplified_tb_loopgain.raw
set appendwrite
* ===================================================

* AC Analysis
ac dec 101 $&const.f_min $&const.f_max
remzerovec
write bio_amplifier_simplified_tb_loopgain.raw
set appendwrite
* ===================================================

* Middlebrook's method
let Tv=-v(vr2)/v(vf2)
let Ti=-(i(Virp3) - i(Virn3))/(i(Vifp3) - i(Vifn3))
let Tmb =(Tv * Ti - 1)/(Tv + Ti + 2)

let Tmb_dB = vdb(Tmb)
let Tmb_arg = 180/PI*cphase(Tmb)

* DC loop gain	
meas ac Tmbdc_dB find Tmb_dB when frequency = fdc
print Tmbdc_dB

* Phase margin
meas ac fug find frequency when Tmb_dB=0
meas ac pm find Tmb_arg when frequency=fug
let pm = 180-abs(pm)
print pm
	
* Plotting
plot Tmb_dB Tmb_arg title 'Bode Plot (Middlebrook)' ylabel 'Magnitude (dB), Phase (Deg)'

let Tmb_re = real(Tmb)
let Tmb_im = imag(Tmb)	
plot Tmb_im vs Tmb_re retraceplot title 'Nyquist Plot (Middlebrook)' ylabel 'Imaginary Part' xlabel 'Real Part' 
* ===================================================

* Write Data
set wr_vecnames
set wr_singlescale
wrdata /foss/designs/SG13G2_ATBS-ADC-main/python/plot_simulations/data/bio_amplifier_simplified_tb_loopgain.txt v(Tmb_dB) v(Tmb_arg) 
* ===================================================

*quit
.endc
"}
C {devices/vsource.sym} 1720 -1850 0 0 {name=VDD value=1.5}
C {devices/gnd.sym} 1720 -1780 0 0 {name=l3 lab=GND}
C {devices/launcher.sym} 1320 -1860 0 0 {name=h2
descr="Simulate" 
tclcommand="xschem save; xschem netlist; xschem simulate"
}
C {devices/launcher.sym} 1320 -1800 0 0 {name=h3
descr="Annotate OP" 
tclcommand="set show_hidden_texts 1; xschem annotate_op"
}
C {vdd.sym} 1720 -1920 0 0 {name=l7 lab=VDD}
C {devices/gnd.sym} 2040 -1780 0 0 {name=l6 lab=GND}
C {devices/lab_pin.sym} 2040 -1920 2 0 {name=l35 sig_type=std_logic lab=bio_amp_en}
C {devices/vsource.sym} 2040 -1850 0 0 {name=V1 value="1.5"}
C {devices/gnd.sym} 2120 -1140 0 0 {name=l26 lab=GND}
C {devices/capa.sym} 2120 -1230 0 0 {name=C4
m=1
value=\{CL\}
footprint=1206
device="ceramic capacitor"}
C {vdd.sym} 1860 -1500 0 0 {name=l27 lab=VDD}
C {devices/gnd.sym} 1860 -1220 0 0 {name=l29 lab=GND}
C {lab_pin.sym} 2260 -1340 0 1 {name=p1 sig_type=std_logic lab=voutp2}
C {lab_pin.sym} 2260 -1380 0 1 {name=p2 sig_type=std_logic lab=voutn2}
C {devices/lab_pin.sym} 1760 -1360 0 0 {name=l31 sig_type=std_logic lab=Vcm}
C {devices/lab_pin.sym} 1880 -1480 2 0 {name=l34 sig_type=std_logic lab=bio_amp_en}
C {devices/capa.sym} 2220 -1230 0 0 {name=C5
m=1
value=\{CL\}
footprint=1206
device="ceramic capacitor"}
C {devices/gnd.sym} 2220 -1140 0 0 {name=l36 lab=GND}
C {devices/lab_pin.sym} 2520 -1410 0 1 {name=l37 sig_type=std_logic lab=vout2}
C {devices/vcvs.sym} 2520 -1360 0 0 {name=E3 value=1}
C {devices/gnd.sym} 2520 -1310 0 0 {name=l42 lab=GND}
C {devices/lab_pin.sym} 2450 -1340 2 1 {name=l43 sig_type=std_logic lab=voutn2
}
C {devices/lab_pin.sym} 2450 -1380 0 0 {name=l44 sig_type=std_logic lab=voutp2
}
C {res.sym} 1790 -1680 1 0 {name=R1
value=\{R2\}
footprint=1206
device=resistor
m=1}
C {res.sym} 1790 -1040 1 0 {name=R2
value=\{R2\}
footprint=1206
device=resistor
m=1}
C {bio_amplifier/amplifier_core/amplifier_core_simplified.sym} 1860 -1360 0 0 {name=x2}
C {capa.sym} 1790 -1600 1 0 {name=C6
m=1
value=\{C2\}
footprint=1206
device="ceramic capacitor"}
C {capa.sym} 1790 -1120 1 1 {name=C7
m=1
value=\{C2\}
footprint=1206
device="ceramic capacitor"}
C {capa.sym} 1450 -1480 1 0 {name=C9
m=1
value=\{C1\}
footprint=1206
device="ceramic capacitor"}
C {capa.sym} 1450 -1240 1 0 {name=C10
m=1
value=\{C1\}
footprint=1206
device="ceramic capacitor"}
C {devices/gnd.sym} 2120 -400 0 0 {name=l49 lab=GND}
C {devices/capa.sym} 2120 -490 0 0 {name=C13
m=1
value=\{CL\}
footprint=1206
device="ceramic capacitor"}
C {vdd.sym} 1860 -760 0 0 {name=l50 lab=VDD}
C {devices/gnd.sym} 1860 -480 0 0 {name=l51 lab=GND}
C {lab_pin.sym} 2260 -600 0 1 {name=p5 sig_type=std_logic lab=voutp3}
C {lab_pin.sym} 2260 -640 0 1 {name=p6 sig_type=std_logic lab=voutn3}
C {devices/lab_pin.sym} 1760 -620 0 0 {name=l52 sig_type=std_logic lab=Vcm}
C {devices/lab_pin.sym} 1880 -740 2 0 {name=l55 sig_type=std_logic lab=bio_amp_en}
C {devices/capa.sym} 2220 -490 0 0 {name=C14
m=1
value=\{CL\}
footprint=1206
device="ceramic capacitor"}
C {devices/gnd.sym} 2220 -400 0 0 {name=l56 lab=GND}
C {devices/lab_pin.sym} 2520 -670 0 1 {name=l57 sig_type=std_logic lab=vout3}
C {devices/vcvs.sym} 2520 -620 0 0 {name=E7 value=1}
C {devices/gnd.sym} 2520 -570 0 0 {name=l58 lab=GND}
C {devices/lab_pin.sym} 2450 -600 2 1 {name=l59 sig_type=std_logic lab=voutn3
}
C {devices/lab_pin.sym} 2450 -640 0 0 {name=l60 sig_type=std_logic lab=voutp3
}
C {res.sym} 1790 -940 1 0 {name=R3
value=\{R2\}
footprint=1206
device=resistor
m=1}
C {res.sym} 1790 -300 1 0 {name=R4
value=\{R2\}
footprint=1206
device=resistor
m=1}
C {bio_amplifier/amplifier_core/amplifier_core_simplified.sym} 1860 -620 0 0 {name=x3}
C {capa.sym} 1790 -860 1 0 {name=C15
m=1
value=\{C2\}
footprint=1206
device="ceramic capacitor"}
C {capa.sym} 1790 -380 1 1 {name=C16
m=1
value=\{C2\}
footprint=1206
device="ceramic capacitor"}
C {capa.sym} 1450 -740 1 0 {name=C17
m=1
value=\{C1\}
footprint=1206
device="ceramic capacitor"}
C {capa.sym} 1450 -500 1 0 {name=C18
m=1
value=\{C1\}
footprint=1206
device="ceramic capacitor"}
C {devices/lab_pin.sym} 1340 -1360 0 0 {name=l65 sig_type=std_logic lab=Vcm}
C {devices/lab_pin.sym} 1340 -620 0 0 {name=l32 sig_type=std_logic lab=Vcm}
C {devices/lab_pin.sym} 2280 -1630 0 1 {name=l48 sig_type=std_logic lab=vf2}
C {devices/vcvs.sym} 2280 -1580 0 0 {name=E8 value=0.5}
C {devices/gnd.sym} 2280 -1520 0 0 {name=l33 lab=GND}
C {devices/lab_pin.sym} 2210 -1560 2 1 {name=l45 sig_type=std_logic lab=vfn2
}
C {devices/lab_pin.sym} 2210 -1600 0 0 {name=l46 sig_type=std_logic lab=vfp2

}
C {devices/lab_pin.sym} 2520 -1630 0 1 {name=l47 sig_type=std_logic lab=vr2}
C {devices/vcvs.sym} 2520 -1580 0 0 {name=E9 value=0.5}
C {devices/gnd.sym} 2520 -1520 0 0 {name=l53 lab=GND}
C {devices/lab_pin.sym} 2450 -1560 2 1 {name=l54 sig_type=std_logic lab=vrn2
}
C {devices/lab_pin.sym} 2450 -1600 0 0 {name=l61 sig_type=std_logic lab=vrp2

}
C {devices/vsource.sym} 1650 -1400 1 1 {name=Vtestp2 value="dc 0 ac 1"}
C {lab_wire.sym} 1740 -1400 0 0 {name=p9 sig_type=std_logic lab=vfp2}
C {lab_wire.sym} 1580 -1400 0 0 {name=p13 sig_type=std_logic lab=vrp2}
C {devices/vsource.sym} 1650 -1320 1 0 {name=Vtestn2 value="dc 0 ac -1"}
C {lab_wire.sym} 1740 -1320 0 0 {name=p10 sig_type=std_logic lab=vfn2}
C {lab_wire.sym} 1580 -1320 0 0 {name=p11 sig_type=std_logic lab=vrn2}
C {ammeter.sym} 1590 -680 3 1 {name=Virp3 savecurrent=true spice_ignore=0}
C {ammeter.sym} 1690 -680 3 1 {name=Vifp3 savecurrent=true spice_ignore=0}
C {isource.sym} 1640 -510 2 1 {name=Itestn3 value="dc 0 ac -1"}
C {devices/gnd.sym} 1640 -460 0 0 {name=l62 lab=GND}
C {ammeter.sym} 1590 -560 3 0 {name=Virn3 savecurrent=true spice_ignore=0}
C {ammeter.sym} 1690 -560 3 0 {name=Vifn3 savecurrent=true spice_ignore=0}
C {isource.sym} 1640 -730 0 0 {name=Itestp3 value="dc 0 ac 1"}
C {devices/gnd.sym} 1640 -780 2 0 {name=l63 lab=GND}
C {devices/vsource.sym} 1880 -1850 0 0 {name=Vcm value=0.75
}
C {devices/lab_pin.sym} 1880 -1920 1 0 {name=l38 sig_type=std_logic lab=Vcm}
C {devices/gnd.sym} 1880 -1780 0 0 {name=l40 lab=GND}
C {res.sym} 1380 -1420 0 0 {name=R1a
value=\{R1\}
footprint=1206
device=resistor
m=1}
C {res.sym} 1380 -1300 0 0 {name=R1b
value=\{R1\}
footprint=1206
device=resistor
m=1}
C {res.sym} 1380 -680 0 0 {name=R1c
value=\{R1\}
footprint=1206
device=resistor
m=1}
C {res.sym} 1380 -560 0 0 {name=R1d
value=\{R1\}
footprint=1206
device=resistor
m=1}
