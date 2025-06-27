v {xschem version=3.4.7 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
B 2 1660 -1140 2460 -740 {flags=graph
y1=-24
y2=140
ypos1=0
ypos2=2
divy=5
subdivy=4
unity=1
x1=-2
x2=9
divx=5
subdivx=8
xlabmag=1.0
ylabmag=1.0
node="\\"PSRR; vdd vout / db20()\\"
\\"PSRR+; vdd voutp / db20()\\"
\\"PSRR-; vdd voutn / db20()\\""
color="4 7 12"
dataset=-1
unitx=1
logx=1
logy=0
linewidth_mult=4}
P 4 5 1380 -1080 1380 -980 1580 -980 1580 -1080 1380 -1080 {dash = 8}
T {Testbench for PSRR analysis - Bio-signal Amplifier (simplified)} 430 -1720 0 0 1 1 {}
T {Capacitive Load (Comparator, DAC, etc.)} 1350 -910 0 0 0.25 0.25 {}
N 820 -1200 860 -1200 {lab=#net1}
N 820 -1120 860 -1120 {lab=#net1}
N 820 -1160 860 -1160 {
lab=#net1}
N 740 -1160 740 -1080 {lab=#net1}
N 1450 -670 1480 -670 {
lab=voutp}
N 1450 -630 1480 -630 {
lab=voutn}
N 1420 -1000 1420 -940 {lab=GND}
N 1520 -1000 1520 -940 {lab=GND}
N 1520 -720 1520 -680 {lab=vout}
N 1520 -620 1520 -580 {lab=GND}
N 740 -760 740 -740 {lab=VDD}
N 740 -680 740 -660 {lab=#net2}
N 740 -600 740 -580 {lab=GND}
N 820 -1160 820 -1120 {lab=#net1}
N 820 -1200 820 -1160 {lab=#net1}
N 740 -1160 820 -1160 {lab=#net1}
N 1060 -720 1060 -680 {lab=bio_amp_en}
N 1060 -620 1060 -580 {lab=GND}
N 1060 -960 1060 -940 {lab=GND}
N 1520 -1180 1560 -1180 {lab=voutn}
N 1420 -1140 1560 -1140 {lab=voutp}
N 740 -1020 740 -940 {lab=GND}
N 1420 -1140 1420 -1060 {lab=voutp}
N 1260 -1140 1420 -1140 {lab=voutp}
N 1040 -1380 1040 -1360 {lab=VDD}
N 1080 -1380 1080 -1360 {lab=bio_amp_en}
N 1520 -1180 1520 -1060 {lab=voutn}
N 1260 -1180 1520 -1180 {lab=voutn}
C {devices/code_shown.sym} 40 -1390 0 0 {name=NGSPICE
only_toplevel=true 
value="
.param temp=27
* 227.56fF DAC
.param Cload=227.56f
.options savecurrents method=gear reltol=1e-2 abstol=1e-15 gmin=1e-15 rshunt=1e15
.control

optran 0 0 0 1u 1m 0

save v(VDD) v(vout) v(voutp) v(voutn)

* User Constants
let f_min = 10m
let f_max = 1G
let fdc = 1

* Operating Point Analysis
op
remzerovec
write bio_amplifier_simplified_tb_PSRR.raw
set appendwrite

* AC Analysis
ac dec 101 $&const.f_min $&const.f_max
remzerovec
write bio_amplifier_simplified_tb_PSRR.raw

* Plotting
let PSRR = v(VDD)/v(vout)
let PSRRp = v(VDD)/v(voutp)
let PSRRn = v(VDD)/v(voutn)
		
let PSRR_dB = vdb(PSRR)
let PSRRp_dB = vdb(PSRRp)
let PSRRn_dB = vdb(PSRRn)

plot PSRR_dB PSRRp_dB PSRRn_dB ylabel 'PSRR, PSRR+, PSRR-'

* Measurements
meas ac PSRRdc_dB find PSRR_dB when frequency = fdc
print PSRRdc_dB

meas ac PSRRpdc_dB find PSRRp_dB when frequency = fdc
print PSRRpdc_dB

meas ac PSRRndc_dB find PSRRn_dB when frequency = fdc
print PSRRndc_dB

* Write Data
set wr_vecnames
set wr_singlescale
wrdata /foss/designs/SG13G2_ATBS-ADC-main/python/plot_simulations/data/bio_amplifier_simplified_tb_PSRR.txt v(PSRR_dB)

*quit
.endc
"}
C {devices/launcher.sym} 1720 -1320 0 0 {name=h2
descr="Simulate" 
tclcommand="xschem save; xschem netlist; xschem simulate"
}
C {title-3.sym} 0 0 0 0 {name=l2 author="Simon Dorrer" rev=1.0 lock=true}
C {devices/launcher.sym} 1720 -1200 0 0 {name=h1
descr="Load waves" 
tclcommand="xschem raw_read $netlist_dir/bio_amplifier_simplified_tb_PSRR.raw ac"
}
C {devices/launcher.sym} 1720 -1260 0 0 {name=h3
descr="Annotate OP" 
tclcommand="set show_hidden_texts 1; xschem annotate_op"
}
C {devices/code_shown.sym} 40 -1550 0 0 {name=MODEL only_toplevel=true
format="tcleval( @value )"
value="
.lib cornerMOSlv.lib mos_tt
.lib cornerMOShv.lib mos_tt
.lib cornerRES.lib res_typ
"}
C {devices/gnd.sym} 1420 -940 0 0 {name=l1 lab=GND}
C {devices/capa.sym} 1420 -1030 0 0 {name=C1
m=1
value=\{Cload\}
footprint=1206
device="ceramic capacitor"}
C {devices/gnd.sym} 1060 -940 0 0 {name=l9 lab=GND}
C {lab_pin.sym} 1560 -1140 0 1 {name=p3 sig_type=std_logic lab=voutp}
C {lab_pin.sym} 1560 -1180 0 1 {name=p4 sig_type=std_logic lab=voutn}
C {devices/capa.sym} 1520 -1030 0 0 {name=C2
m=1
value=\{Cload\}
footprint=1206
device="ceramic capacitor"}
C {devices/gnd.sym} 1520 -940 0 0 {name=l30 lab=GND}
C {devices/vsource.sym} 740 -1050 0 0 {name=Vcm value=0.75
}
C {devices/gnd.sym} 740 -940 0 0 {name=l40 lab=GND}
C {devices/lab_pin.sym} 1520 -720 0 1 {name=l12 sig_type=std_logic lab=vout}
C {devices/vcvs.sym} 1520 -650 0 0 {name=E1 value=1}
C {devices/gnd.sym} 1520 -580 0 0 {name=l14 lab=GND}
C {devices/lab_pin.sym} 1450 -630 2 1 {name=l15 sig_type=std_logic lab=voutn
}
C {devices/lab_pin.sym} 1450 -670 0 0 {name=l23 sig_type=std_logic lab=voutp
}
C {devices/gnd.sym} 740 -580 0 0 {name=l16 lab=GND}
C {devices/vdd.sym} 740 -760 0 0 {name=l17 lab=VDD}
C {devices/vsource.sym} 740 -630 0 0 {name=VDD value=1.5}
C {devices/vsource.sym} 740 -710 0 0 {name=VDD_NOISE value="dc 0 ac 1"}
C {devices/gnd.sym} 1060 -580 0 0 {name=l6 lab=GND}
C {devices/lab_pin.sym} 1060 -720 2 0 {name=l35 sig_type=std_logic lab=bio_amp_en}
C {devices/vsource.sym} 1060 -650 0 0 {name=V7 value="1.5"}
C {bio_amplifier/bio_amplifier_simplified.sym} 1060 -1160 0 0 {name=x1 C1=330p C2=3.3p R2=160G}
C {devices/vdd.sym} 1040 -1380 0 0 {name=l4 lab=VDD}
C {devices/lab_pin.sym} 1080 -1380 2 0 {name=l8 sig_type=std_logic lab=bio_amp_en}
