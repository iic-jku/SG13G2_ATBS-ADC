v {xschem version=3.4.7 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
B 2 1660 -1420 2460 -1020 {flags=graph
y1=-1.5
y2=1.5
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=0.0001
x2=0.0021
divx=5
subdivx=1
xlabmag=1.0
ylabmag=1.0


dataset=-1
unitx=1
logx=0
logy=0
linewidth_mult=4
color=4
node="\\"vinp - vinn; vinp vinn -\\""}
B 2 1660 -1000 2460 -600 {flags=graph
y1=-0.47
y2=0.99
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=0.0001
x2=0.0021
divx=5
subdivx=1
xlabmag=1.0
ylabmag=1.0


dataset=-1
unitx=1
logx=0
logy=0
linewidth_mult=4
color="4 7 12"
node="\\"voutp1 - voutn1; voutp1 voutn1 -\\"
voutp1
voutn1"}
B 2 1660 -580 2460 -180 {flags=graph
y1=-0.47
y2=0.99
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=0.0001
x2=0.0021
divx=5
subdivx=1
xlabmag=1.0
ylabmag=1.0


dataset=-1
unitx=1
logx=0
logy=0
linewidth_mult=4
color="4 7 12"
node="\\"voutp2 - voutn2; voutp2 voutn2 -\\"
voutp2
voutn2"}
B 2 840 -580 1640 -180 {flags=graph
y1=-4.4e-05
y2=1.6
ypos1=-4.4e-05
ypos2=1.6
divy=5
subdivy=1
unity=1
x1=0.0001
x2=0.0021
divx=5
subdivx=1
xlabmag=1.0
ylabmag=1.0


dataset=-1
unitx=1
logx=0
logy=0
linewidth_mult=4

digital=1
color="4 7 7 7 7"
node="clk
D0
D1
D2
D3"}
P 4 5 1460 -750 1590 -750 1590 -670 1460 -670 1460 -750 {dash = 4}
P 4 5 1460 -1210 1590 -1210 1590 -1130 1460 -1130 1460 -1210 {dash = 4}
T {Testbench for transient analysis - CR DAC with tracking C} 450 -1750 0 0 1 1 {}
T {Resolution and number of adaptive thresholds:
Resolution = 7 Bit
Number of adaptive thresholds = 5
The resolution can be adapted from 7 Bit ( 1 LSB) to  3 Bit ( 16 LSB). 
============================================= 

Input tracking capacitor C2:
C_2 = 1024.0 fF
============================================= 

Adaptive capacitors C1:
C_1[ 0 ] = 8.0 fF
C_1[ 1 ] = 16.0 fF
C_1[ 2 ] = 32.0 fF
C_1[ 3 ] = 64.0 fF
C_1[ 4 ] = 128.0 fF
C_1_total = 248.0 fF with default architecture.
C_1_total = 128.0 fF with thermometer code.
============================================= 

LSB voltages:
1 LSB = 23.44 mV
2 LSB = 46.88 mV
4 LSB = 93.75 mV
8 LSB = 187.5 mV
16 LSB = 375.0 mV
============================================= 

Start / Reset voltage at t = 0:
voutp1(t=0) - voutn1(t=0) = - 2 C_1 / (C_1 + C_2) * Vref = -23.26 mV with C_1 = 8.0 fF
voutp1(t=0) - voutn1(t=0) = - 2 C_1 / (C_1 + C_2) * Vref = -46.15 mV with C_1 = 16.0 fF
voutp1(t=0) - voutn1(t=0) = - 2 C_1 / (C_1 + C_2) * Vref = -90.91 mV with C_1 = 32.0 fF
voutp1(t=0) - voutn1(t=0) = - 2 C_1 / (C_1 + C_2) * Vref = -176.47 mV with C_1 = 64.0 fF
voutp1(t=0) - voutn1(t=0) = - 2 C_1 / (C_1 + C_2) * Vref = -333.33 mV with C_1 = 128.0 fF
============================================= 

Calculate the minimum (Tmin) and average (Tavg) time between sampled sine data:
fsig = 512.0 Hz and Vfs = 1.5 Vp (fully-differential)
Tmin = 4.86 us / fmax = 205.89 kHz with C_1 = 8.0 fF
Tavg = 7.63 us / favg = 131.07 kHz with C_1 = 8.0 fF 
Tmin = 9.71 us / fmax = 102.94 kHz with C_1 = 16.0 fF
Tavg = 15.26 us / favg = 65.54 kHz with C_1 = 16.0 fF 
Tmin = 19.43 us / fmax = 51.47 kHz with C_1 = 32.0 fF
Tavg = 30.52 us / favg = 32.77 kHz with C_1 = 32.0 fF 
Tmin = 38.86 us / fmax = 25.74 kHz with C_1 = 64.0 fF
Tavg = 61.04 us / favg = 16.38 kHz with C_1 = 64.0 fF 
Tmin = 77.71 us / fmax = 12.87 kHz with C_1 = 128.0 fF
Tavg = 122.07 us / favg = 8.19 kHz with C_1 = 128.0 fF 
============================================= 

Input capacitance:
Cin_min = 15.88 fF @ 1 LSB per differential output.
Cin_max = 227.56 fF @ 16 LSB per differential output.
The output stage of the OTA must be able to drive 227.56 fF single-ended and 113.77 fF differentially in the worst case.
============================================= 

kT/C noise:
vnoise_min = 134.914475 uVrms @ 16 LSB.
vnoise_max = 510.777958 uVrms @ 1 LSB.
============================================= 

Energy per conversion: 
epc = 71.44 fJ / conv. with C_1 = 8.0 fF
epc = 141.78 fJ / conv. with C_1 = 16.0 fF
epc = 279.27 fJ / conv. with C_1 = 32.0 fF
epc = 542.12 fJ / conv. with C_1 = 64.0 fF
epc = 1024.0 fJ / conv. with C_1 = 128.0 fF
============================================= 

Total power consumption: 
power = 4.68 nW with C_1 = 8.0 fF and 128 Samples
power = 9.29 nW with C_1 = 16.0 fF and 128 Samples
power = 18.3 nW with C_1 = 32.0 fF and 128 Samples
power = 35.53 nW with C_1 = 64.0 fF and 128 Samples
power = 67.11 nW with C_1 = 128.0 fF and 128 Samples
=============================================} 40 -660 0 0 0.14 0.14 {}
T {Capacitive load (e.g. Comparator)} 1440 -610 0 0 0.2 0.2 {}
T {Capacitive load (e.g. Comparator)} 1440 -1280 0 0 0.2 0.2 {}
N 1320 -1440 1320 -1400 {
lab=GND}
N 1320 -1540 1320 -1500 {
lab=clk}
N 1120 -1440 1120 -1400 {lab=GND}
N 1120 -1540 1120 -1500 {lab=VDD}
N 540 -780 540 -740 {lab=GND}
N 540 -740 580 -740 {lab=GND}
N 580 -770 580 -740 {
lab=GND}
N 780 -840 780 -800 {lab=Vcm}
N 780 -940 780 -900 {lab=vinp}
N 660 -750 740 -750 {lab=#net1}
N 660 -890 740 -890 {lab=#net1}
N 580 -890 580 -830 {lab=#net1}
N 700 -710 740 -710 {lab=GND}
N 580 -740 580 -710 {
lab=GND}
N 700 -850 740 -850 {lab=GND}
N 700 -850 700 -710 {lab=GND}
N 580 -710 700 -710 {lab=GND}
N 660 -890 660 -750 {lab=#net1}
N 580 -890 660 -890 {lab=#net1}
N 780 -800 780 -760 {lab=Vcm}
N 780 -700 780 -660 {lab=vinn}
N 880 -800 880 -760 {lab=Vcm}
N 780 -800 880 -800 {
lab=Vcm}
N 880 -700 880 -640 {lab=GND}
N 580 -710 580 -640 {lab=GND}
N 440 -700 440 -640 {lab=GND}
N 440 -820 440 -760 {lab=vind}
N 1440 -1100 1480 -1100 {lab=voutp1}
N 1540 -1020 1560 -1020 {lab=voutn1}
N 440 -820 540 -820 {lab=vind}
N 960 -1020 1000 -1020 {lab=vinp}
N 960 -860 1000 -860 {lab=vinn}
N 1060 -1220 1060 -1200 {lab=VDD}
N 1060 -1240 1060 -1220 {lab=VDD}
N 1380 -1240 1380 -1200 {lab=clk}
N 1060 -680 1060 -640 {lab=GND}
N 1220 -680 1220 -640 {lab=D0}
N 1260 -680 1260 -640 {lab=D1}
N 1300 -680 1300 -640 {lab=D2}
N 1340 -680 1340 -640 {lab=D3}
N 740 -1440 740 -1400 {
lab=GND}
N 740 -1540 740 -1500 {
lab=D0}
N 880 -1440 880 -1400 {
lab=GND}
N 880 -1540 880 -1500 {
lab=D1}
N 740 -1200 740 -1160 {
lab=GND}
N 740 -1300 740 -1260 {
lab=D2}
N 880 -1200 880 -1160 {
lab=GND}
N 880 -1300 880 -1260 {
lab=D3}
N 880 -940 880 -800 {lab=Vcm}
N 880 -800 920 -800 {lab=Vcm}
N 1540 -1240 1540 -1200 {lab=GND}
N 1480 -1240 1480 -1200 {lab=GND}
N 1540 -860 1560 -860 {lab=voutp2}
N 1480 -680 1480 -640 {lab=GND}
N 1440 -780 1480 -780 {lab=voutn2}
N 1480 -780 1480 -740 {lab=voutn2}
N 1480 -780 1560 -780 {lab=voutn2}
N 1540 -860 1540 -740 {lab=voutp2}
N 1440 -860 1540 -860 {lab=voutp2}
N 1540 -680 1540 -640 {lab=GND}
N 1480 -1140 1480 -1100 {lab=voutp1}
N 1480 -1100 1560 -1100 {lab=voutp1}
N 1540 -1140 1540 -1020 {lab=voutn1}
N 1440 -1020 1540 -1020 {lab=voutn1}
N 880 -940 1000 -940 {lab=Vcm}
N 420 -820 440 -820 {lab=vind}
N 1140 -1220 1140 -1200 {lab=VDD}
N 1060 -1220 1140 -1220 {lab=VDD}
N 1220 -1240 1220 -1200 {lab=D0}
N 1260 -1240 1260 -1200 {lab=D1}
N 1300 -1240 1300 -1200 {lab=D2}
N 1340 -1240 1340 -1200 {lab=D3}
N 1380 -680 1380 -640 {lab=clk}
C {devices/code_shown.sym} 2160 -1530 0 0 {name=MODEL only_toplevel=true
format="tcleval( @value )"
value="
.lib cornerMOSlv.lib mos_tt
.lib cornerMOShv.lib mos_tt
.lib cornerRES.lib res_typ
"}
C {devices/code_shown.sym} 20 -1730 0 0 {name=NGSPICE
only_toplevel=true
value="
.param temp=27
.param C2 = 1024f
.param Cu = 8f
.param Cucomp = 8.1f
* Cl = approx. Cin of DT Comparator
.param Cl = 1.2f
.param W_P = 1.0u
.param L_P = 0.13u
.param W_N = 1.0u
.param L_N = 0.13u
.param fclk=8000000
.csparam fclk = fclk
* Ensure that 1/fphi is an exact multiple of 1/fclk.
* Take approx. Tavg for a good result for sine waves.
* fphi=7812.5, fphi=15625, fphi=31250, fphi=62500, fphi=125000
.param fphi=15625
.param D0 = 1
.param D1 = 1
.param D2 = 1
.param D3 = 0
.options savecurrents klu method=gear reltol=1e-3 abstol=1e-12 gmin=1e-15
.control

save all
* save v(VDD) v(Vcm) v(clk) v(D0) v(D1) v(D2) v(D3) v(vind) v(vinp) v(vinn) v(voutp1) v(voutn1) v(voutp2) v(voutn2)

* User Constants
let tstop = 2m
let tstep = 1/fclk

* Transient Analysis
tran $&tstep $&tstop
write dac_tb_tran.raw
set appendwrite

* Plotting
let vin = vinp - vinn
let vout1 = voutp1 - voutn1
let vout2 = voutp2 - voutn2
plot vin
plot vout1 voutp1 voutn1
plot vout2 voutp2 voutn2

* Measurement of start voltages
meas tran vstart1 FIND vout1 at=150n
meas tran vstart2 FIND vout2 at=150n

* Calculate Power Consumption
* i_int in As
* energy in Ws = J
meas tran i_int INTEG i(VDD) from=0p to=tstop
let energy = 1.5 * i_int
let energy_pico = energy * 1e12
echo Energy $&energy_pico pJ
let power = energy / tstop * 1e9
echo Power Consumption $&power nW

.endc
"}
C {devices/vsource.sym} 1120 -1470 0 0 {name=VDD value=1.5}
C {devices/gnd.sym} 1120 -1400 0 0 {name=l3 lab=GND}
C {devices/launcher.sym} 1720 -1520 0 0 {name=h2
descr="Simulate" 
tclcommand="xschem save; xschem netlist; xschem simulate"
}
C {devices/launcher.sym} 1720 -1460 0 0 {name=h1
descr="Load waves" 
tclcommand="xschem raw_read $netlist_dir/dac_tb_tran.raw tran"
}
C {vdd.sym} 1120 -1540 0 0 {name=l7 lab=VDD}
C {title-3.sym} 0 0 0 0 {name=l2 author="Simon Dorrer" rev=1.0 lock=true}
C {devices/vsource.sym} 1320 -1470 0 0 {name=Vclk value="pulse(0 1.5 0 1p 1p \{1/fclk\} \{1/fphi\})"}
C {devices/gnd.sym} 1320 -1400 0 0 {name=l11 lab=GND}
C {devices/lab_wire.sym} 1320 -1540 0 1 {name=l12 sig_type=std_logic lab=clk}
C {devices/lab_pin.sym} 780 -940 0 0 {name=l14 sig_type=std_logic lab=vinp}
C {devices/lab_pin.sym} 780 -660 0 0 {name=l15 sig_type=std_logic lab=vinn
}
C {devices/vsource.sym} 880 -730 0 0 {name=Vcm value=0.75
}
C {devices/vcvs.sym} 780 -730 0 0 {name=E4 value=0.5}
C {devices/vcvs.sym} 780 -870 0 0 {name=E5 value=0.5}
C {devices/lab_pin.sym} 920 -800 2 0 {name=l38 sig_type=std_logic lab=Vcm}
C {devices/gnd.sym} 880 -640 0 0 {name=l40 lab=GND}
C {devices/vcvs.sym} 580 -800 0 0 {name=E6 value=1}
C {devices/gnd.sym} 580 -640 0 0 {name=l41 lab=GND}
C {devices/lab_pin.sym} 420 -820 0 0 {name=l16 sig_type=std_logic lab=vind}
C {devices/vsource.sym} 440 -730 0 0 {name=vsine  value="sin(0 1.5 512)" spice_ignore=false
}
C {devices/gnd.sym} 440 -640 0 0 {name=l17 lab=GND}
C {devices/vsource.sym} 580 -510 0 0 {name=V2 value="pulse(0 1.5 0 1m 1m 1m 4m)" spice_ignore=true}
C {lab_wire.sym} 1560 -1100 0 1 {name=p1 sig_type=std_logic lab=voutp1}
C {lab_wire.sym} 1560 -1020 0 1 {name=p2 sig_type=std_logic lab=voutn1}
C {lab_wire.sym} 1560 -860 0 1 {name=p3 sig_type=std_logic lab=voutp2}
C {lab_wire.sym} 1560 -780 0 1 {name=p4 sig_type=std_logic lab=voutn2}
C {devices/lab_pin.sym} 960 -1020 0 0 {name=l1 sig_type=std_logic lab=vinp}
C {devices/lab_pin.sym} 960 -860 0 0 {name=l4 sig_type=std_logic lab=vinn
}
C {vdd.sym} 1060 -1240 0 0 {name=l5 lab=VDD}
C {devices/gnd.sym} 1060 -640 0 0 {name=l6 lab=GND}
C {devices/lab_wire.sym} 1380 -1240 0 1 {name=l8 sig_type=std_logic lab=clk}
C {devices/lab_wire.sym} 1220 -640 3 0 {name=l9 sig_type=std_logic lab=D0}
C {devices/lab_wire.sym} 1260 -640 3 0 {name=l10 sig_type=std_logic lab=D1}
C {devices/lab_wire.sym} 1300 -640 3 0 {name=l13 sig_type=std_logic lab=D2}
C {devices/lab_wire.sym} 1340 -640 3 0 {name=l18 sig_type=std_logic lab=D3}
C {devices/vsource.sym} 740 -1470 0 0 {name=VD0 value=\{\{D0\}*1.5\}}
C {devices/gnd.sym} 740 -1400 0 0 {name=l20 lab=GND}
C {devices/gnd.sym} 880 -1400 0 0 {name=l27 lab=GND}
C {devices/gnd.sym} 740 -1160 0 0 {name=l22 lab=GND}
C {devices/vsource.sym} 880 -1470 0 0 {name=VD1 value=\{\{D1\}*1.5\}}
C {devices/vsource.sym} 740 -1230 0 0 {name=VD2 value=\{\{D2\}*1.5\}}
C {devices/lab_wire.sym} 740 -1540 0 1 {name=l24 sig_type=std_logic lab=D0}
C {devices/gnd.sym} 880 -1160 0 0 {name=l21 lab=GND}
C {devices/vsource.sym} 880 -1230 0 0 {name=VD3 value=\{\{D3\}*1.5\}}
C {devices/lab_wire.sym} 880 -1540 0 1 {name=l25 sig_type=std_logic lab=D1}
C {devices/lab_wire.sym} 740 -1300 0 1 {name=l26 sig_type=std_logic lab=D2}
C {devices/lab_wire.sym} 880 -1300 0 1 {name=l28 sig_type=std_logic lab=D3}
C {devices/capa.sym} 1480 -710 0 0 {name=C1
m=1
value=\{Cl\}
footprint=1206
device="ceramic capacitor"}
C {devices/capa.sym} 1540 -710 0 0 {name=C2
m=1
value=\{Cl\}
footprint=1206
device="ceramic capacitor"}
C {devices/capa.sym} 1540 -1170 2 1 {name=C3
m=1
value=\{Cl\}
footprint=1206
device="ceramic capacitor"}
C {devices/capa.sym} 1480 -1170 2 1 {name=C4
m=1
value=\{Cl\}
footprint=1206
device="ceramic capacitor"}
C {devices/gnd.sym} 1480 -640 0 0 {name=l30 lab=GND}
C {devices/gnd.sym} 1540 -640 0 0 {name=l31 lab=GND}
C {devices/gnd.sym} 1540 -1240 2 0 {name=l32 lab=GND}
C {devices/gnd.sym} 1480 -1240 2 0 {name=l33 lab=GND}
C {devices/vsource.sym} 580 -410 0 0 {name=vecg spice_ignore=true hide_texts=true value="dc 0 pwl(0.0 0.5981 0.00010101010101010101 0.5983 0.00020202020202020202 0.592 0.00030303030303030303 0.58 0.00040404040404040404 0.5702 0.000505050505050505 0.5708 0.0006060606060606061 0.5752 0.0007070707070707071 0.5777 0.0008080808080808081 0.578 0.0009090909090909091 0.5793 0.00101010101010101 0.5826 0.0011111111111111111 0.5978 0.0012121212121212121 0.6213 0.0013131313131313131 0.6388 0.0014141414141414141 0.6554 0.0015151515151515152 0.6703 0.0016161616161616162 0.6918 0.0017171717171717172 0.7181 0.0018181818181818182 0.7519 0.0019191919191919192 0.7929 0.00202020202020202 0.8382 0.002121212121212121 0.8855 0.0022222222222222222 0.9325 0.0023232323232323234 0.9836 0.0024242424242424242 1.0344 0.002525252525252525 1.0885 0.0026262626262626263 1.1466 0.0027272727272727275 1.2035 0.0028282828282828283 1.2532 0.002929292929292929 1.3 0.0030303030303030303 1.2942 0.0031313131313131315 1.2885 0.0032323232323232323 1.2826 0.003333333333333333 1.2769 0.0034343434343434343 1.2714 0.0035353535353535356 1.2668 0.0036363636363636364 1.2598 0.003737373737373737 1.2536 0.0038383838383838384 1.2482 0.00393939393939394 1.2423 0.00404040404040404 1.2365 0.004141414141414141 1.231 0.004242424242424242 1.2252 0.004343434343434344 1.2196 0.0044444444444444444 1.2133 0.004545454545454545 1.1967 0.004646464646464647 1.1296 0.004747474747474748 1.0419 0.0048484848484848485 0.9281 0.004949494949494949 0.8036 0.00505050505050505 0.6811 0.005151515151515152 0.5654 0.0052525252525252525 0.4556 0.005353535353535353 0.3608 0.005454545454545455 0.2826 0.005555555555555556 0.217 0.0056565656565656566 0.1684 0.005757575757575757 0.1376 0.005858585858585858 0.1154 0.00595959595959596 0.1 0.006060606060606061 0.1009 0.006161616161616161 0.1122 0.006262626262626263 0.1309 0.006363636363636364 0.159 0.006464646464646465 0.1921 0.0065656565656565654 0.2272 0.006666666666666666 0.2652 0.006767676767676768 0.2953 0.006868686868686869 0.3131 0.0069696969696969695 0.3249 0.007070707070707071 0.3361 0.007171717171717172 0.3577 0.007272727272727273 0.382 0.0073737373737373735 0.3989 0.007474747474747474 0.4072 0.007575757575757576 0.4052 0.007676767676767677 0.4011 0.0077777777777777776 0.3957 0.00787878787878788 0.3998 0.00797979797979798 0.4047 0.00808080808080808 0.4115 0.008181818181818182 0.4171 0.008282828282828282 0.4189 0.008383838383838384 0.4211 0.008484848484848484 0.4295 0.008585858585858586 0.4436 0.008686868686868687 0.453 0.008787878787878787 0.4584 0.008888888888888889 0.4591 0.00898989898989899 0.4579 0.00909090909090909 0.4602 0.009191919191919192 0.4714 0.009292929292929294 0.4834 0.009393939393939394 0.487 0.009494949494949495 0.4845 0.009595959595959595 0.4786 0.009696969696969697 0.4672 0.009797979797979799 0.4578 0.009898989898989899 0.4515 0.01 0.4524 )"}
C {dac/dac.sym} 1220 -1060 0 0 {name=x1 W_P_SPDT=1.0u L_P_SPDT=0.13u W_N_SPDT=1.0u L_N_SPDT=0.13u C2=\{C2\} Cu=\{Cu\} Cucomp=\{Cucomp\}}
C {devices/lab_wire.sym} 1220 -1240 3 1 {name=l19 sig_type=std_logic lab=D0}
C {devices/lab_wire.sym} 1260 -1240 3 1 {name=l23 sig_type=std_logic lab=D1}
C {devices/lab_wire.sym} 1300 -1240 3 1 {name=l29 sig_type=std_logic lab=D2}
C {devices/lab_wire.sym} 1340 -1240 3 1 {name=l34 sig_type=std_logic lab=D3}
C {devices/lab_wire.sym} 1380 -640 2 0 {name=l35 sig_type=std_logic lab=clk}
