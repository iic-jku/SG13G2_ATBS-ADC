v {xschem version=3.4.6 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
B 2 1600 -1000 2400 -600 {flags=graph
y1=31
y2=62
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=-1
x2=10
divx=5
subdivx=8
xlabmag=1.0
ylabmag=1.0


dataset=-1
unitx=1
logx=1
logy=0
hilight_wave=-1
linewidth_mult=4

color=4
node="\\"PSRR; VDD Vbias / db20()\\""}
T {Testbench for PSRR analysis - Bias Circuit v3} 640 -1690 0 0 1 1 {}
N 1260 -960 1260 -920 {lab=VDD}
N 1260 -720 1260 -620 {lab=GND}
N 1040 -820 1120 -820 {lab=bias_en}
N 1040 -820 1040 -740 {lab=bias_en}
N 1040 -680 1040 -620 {lab=GND}
N 1400 -800 1480 -800 {lab=Vbias}
N 760 -800 760 -780 {lab=VDD}
N 760 -720 760 -700 {lab=#net1}
N 760 -640 760 -620 {lab=GND}
N 1000 -820 1040 -820 {lab=bias_en}
N 1400 -840 1480 -840 {lab=Vbiasc}
C {devices/vsource.sym} 1040 -710 0 0 {name=Ven value=1.5}
C {devices/gnd.sym} 1040 -620 0 0 {name=l6 lab=GND}
C {devices/code_shown.sym} 100 -1270 0 0 {name=MODEL only_toplevel=true
format="tcleval( @value )"
value="
.lib cornerMOSlv.lib mos_tt
.lib cornerRES.lib res_typ
"}
C {devices/launcher.sym} 1660 -1170 0 0 {name=h2
descr="Simulate" 
tclcommand="xschem save; xschem netlist; xschem simulate"
}
C {devices/launcher.sym} 1660 -1050 0 0 {name=h1
descr="Load waves" 
tclcommand="xschem raw_read $netlist_dir/bias_circuit_3_tb_PSRR.raw ac"
}
C {devices/launcher.sym} 1660 -1110 0 0 {name=h3
descr="Annotate OP" 
tclcommand="set show_hidden_texts 1; xschem annotate_op"
}
C {code_shown.sym} 100 -1050 0 0 {name=NGSPICE
only_toplevel=true
value="
.param temp=27
.options savecurrents reltol=1e-3 abstol=1e-15 gmin=1e-15
.control
save all

* Operating Point Analysis
op
remzerovec
write bias_circuit_3_tb_PSRR.raw
set appendwrite

* AC Analysis
ac dec 101 100m 10G
remzerovec
write bias_circuit_3_tb_PSRR.raw

* Plotting
let PSRR = v(VDD)/v(Vbias)		
let PSRR_dB = vdb(PSRR)

plot PSRR_dB ylabel 'PSRR'

* Measurements
meas ac PSRRdc_dB find PSRR_dB when frequency = 1
print PSRRdc_dB

* Write Data
set wr_vecnames
set wr_singlescale
wrdata /foss/designs/SG13G2_ATBS-ADC-main/python/plot_simulations/data/bias_circuit_3_tb_PSRR.txt v(PSRR_dB)

*quit
.endc"}
C {devices/gnd.sym} 760 -620 0 0 {name=l2 lab=GND}
C {devices/vdd.sym} 760 -800 0 0 {name=l8 lab=VDD}
C {devices/lab_wire.sym} 1000 -820 0 0 {name=p2 sig_type=std_logic lab=bias_en}
C {title-3.sym} 0 0 0 0 {name=l1 author="Simon Dorrer" rev=1.0 lock=true}
C {devices/gnd.sym} 1260 -620 0 0 {name=l12 lab=GND}
C {devices/vdd.sym} 1260 -960 0 0 {name=l13 lab=VDD}
C {devices/vsource.sym} 760 -670 0 0 {name=VDD value=1.5}
C {devices/lab_wire.sym} 1480 -800 2 0 {name=p3 sig_type=std_logic lab=Vbias}
C {devices/vsource.sym} 760 -750 0 0 {name=VDD_NOISE value="0 AC 1"}
C {bio_amplifier/amplifier_core/bias_circuit/bias_circuit_3/bias_circuit_3.sym} 1260 -820 0 0 {name=x1}
C {devices/lab_wire.sym} 1480 -840 2 0 {name=p1 sig_type=std_logic lab=Vbiasc}
