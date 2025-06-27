v {xschem version=3.4.7 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
B 2 1640 -1000 2440 -600 {flags=graph
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
P 4 5 1280 -980 1280 -880 1480 -880 1480 -980 1280 -980 {dash = 8}
T {Testbench for PSRR analysis - Amplifier Core (simplified)} 500 -1720 0 0 1 1 {}
T {Capacitive Load (Comparator, DAC, etc.)} 1250 -830 0 0 0.25 0.25 {}
N 900 -1060 940 -1060 {lab=#net1}
N 900 -980 940 -980 {lab=#net1}
N 1040 -1140 1040 -1120 {lab=amp_core_en}
N 900 -1020 940 -1020 {
lab=#net1}
N 820 -1020 820 -980 {lab=#net1}
N 820 -920 820 -860 {lab=GND}
N 960 -700 960 -660 {lab=amp_core_en}
N 960 -600 960 -560 {lab=GND}
N 1350 -650 1380 -650 {
lab=voutp}
N 1350 -610 1380 -610 {
lab=voutn}
N 1020 -1160 1020 -1120 {lab=VDD}
N 1020 -920 1020 -860 {lab=GND}
N 1420 -1040 1460 -1040 {lab=voutn}
N 1320 -1000 1460 -1000 {lab=voutp}
N 1320 -1000 1320 -960 {lab=voutp}
N 1120 -1000 1320 -1000 {lab=voutp}
N 1320 -900 1320 -860 {lab=GND}
N 1420 -1040 1420 -960 {lab=voutn}
N 1120 -1040 1420 -1040 {lab=voutn}
N 1420 -900 1420 -860 {lab=GND}
N 1420 -700 1420 -660 {lab=vout}
N 1420 -600 1420 -560 {lab=GND}
N 820 -740 820 -720 {lab=VDD}
N 820 -660 820 -640 {lab=#net2}
N 820 -580 820 -560 {lab=GND}
N 900 -1020 900 -980 {lab=#net1}
N 900 -1060 900 -1020 {lab=#net1}
N 820 -1020 900 -1020 {lab=#net1}
C {devices/code_shown.sym} 40 -1310 0 0 {name=NGSPICE
only_toplevel=true 
value="
.param temp=27
* 228fF DAC + (1 - beta) * 3.3pF
.param Cload=3.49p
.options savecurrents method=gear reltol=1e-2 abstol=1e-15 gmin=1e-15 rshunt=1e15
.control

save v(VDD) v(vout) v(voutp) v(voutn)

set wr_vecnames
set wr_singlescale

* User Constants
let f_min = 10m
let f_max = 1G
let fdc = 1

* Operating Point Analysis
op
remzerovec
write amplifier_core_simplified_tb_PSRR.raw
set appendwrite

* AC Analysis
ac dec 101 $&const.f_min $&const.f_max
remzerovec
write amplifier_core_simplified_tb_PSRR.raw

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
wrdata /foss/designs/SG13G2_ATBS-ADC-main/python/plot_simulations/data/amplifier_core_simplified_tb_PSRR.txt v(PSRR_dB)

*quit
.endc
"}
C {devices/launcher.sym} 1700 -1180 0 0 {name=h2
descr="Simulate" 
tclcommand="xschem save; xschem netlist; xschem simulate"
}
C {title-3.sym} 0 0 0 0 {name=l2 author="Simon Dorrer" rev=1.0 lock=true}
C {devices/launcher.sym} 1700 -1060 0 0 {name=h1
descr="Load waves" 
tclcommand="xschem raw_read $netlist_dir/amplifier_core_simplified_tb_PSRR.raw ac"
}
C {devices/launcher.sym} 1700 -1120 0 0 {name=h3
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
C {devices/gnd.sym} 1320 -860 0 0 {name=l1 lab=GND}
C {devices/capa.sym} 1320 -930 0 0 {name=C1
m=1
value=\{Cload\}
footprint=1206
device="ceramic capacitor"}
C {vdd.sym} 1020 -1160 0 0 {name=l8 lab=VDD}
C {devices/gnd.sym} 1020 -860 0 0 {name=l9 lab=GND}
C {lab_pin.sym} 1460 -1000 0 1 {name=p3 sig_type=std_logic lab=voutp}
C {lab_pin.sym} 1460 -1040 0 1 {name=p4 sig_type=std_logic lab=voutn}
C {devices/capa.sym} 1420 -930 0 0 {name=C2
m=1
value=\{Cload\}
footprint=1206
device="ceramic capacitor"}
C {devices/gnd.sym} 1420 -860 0 0 {name=l30 lab=GND}
C {devices/gnd.sym} 960 -560 0 0 {name=l6 lab=GND}
C {devices/vsource.sym} 820 -950 0 0 {name=Vcm value=0.75
}
C {devices/gnd.sym} 820 -860 0 0 {name=l40 lab=GND}
C {devices/vsource.sym} 960 -630 0 0 {name=V1 value="1.5"}
C {devices/lab_pin.sym} 1420 -700 0 1 {name=l12 sig_type=std_logic lab=vout}
C {devices/vcvs.sym} 1420 -630 0 0 {name=E1 value=1}
C {devices/gnd.sym} 1420 -560 0 0 {name=l14 lab=GND}
C {devices/lab_pin.sym} 1350 -610 2 1 {name=l15 sig_type=std_logic lab=voutn
}
C {devices/lab_pin.sym} 1350 -650 0 0 {name=l23 sig_type=std_logic lab=voutp
}
C {bio_amplifier/amplifier_core/amplifier_core_simplified.sym} 1020 -1020 0 0 {name=x1}
C {devices/lab_pin.sym} 960 -700 2 0 {name=l4 sig_type=std_logic lab=amp_core_en}
C {devices/lab_pin.sym} 1040 -1140 2 0 {name=l24 sig_type=std_logic lab=amp_core_en}
C {devices/gnd.sym} 820 -560 0 0 {name=l16 lab=GND}
C {devices/vdd.sym} 820 -740 0 0 {name=l17 lab=VDD}
C {devices/vsource.sym} 820 -610 0 0 {name=VDD value=1.5}
C {devices/vsource.sym} 820 -690 0 0 {name=VDD_NOISE value="dc 0 ac 1"}
