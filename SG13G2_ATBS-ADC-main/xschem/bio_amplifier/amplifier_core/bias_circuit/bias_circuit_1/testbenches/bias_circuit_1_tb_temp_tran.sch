v {xschem version=3.4.6 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
B 2 1660 -1380 2460 -980 {flags=graph
y1=0.48
y2=0.6
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=0
x2=5e-05
divx=5
subdivx=1
xlabmag=1.0
ylabmag=1.0


dataset=-1
unitx=1
logx=0
logy=0
hilight_wave=-1
linewidth_mult=4
color=4
node=Vbias}
B 2 1660 -940 2460 -540 {flags=graph
y1=3.5e-07
y2=5.5e-07
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=0
x2=5e-05
divx=5
subdivx=1
xlabmag=1.0
ylabmag=1.0


dataset=-1
unitx=1
logx=0
logy=0
hilight_wave=-1
linewidth_mult=4

color=4
node=i(Vx)}
T {Testbench for looped-transient temperature sweep - Bias Circuit v1} 380 -1710 0 0 1 1 {}
N 1120 -880 1120 -780 {lab=GND}
N 900 -980 980 -980 {lab=bias_en}
N 900 -980 900 -900 {lab=bias_en}
N 900 -840 900 -780 {lab=GND}
N 700 -840 700 -780 {lab=GND}
N 700 -960 700 -900 {lab=VDD}
N 860 -980 900 -980 {lab=bias_en}
N 1300 -980 1300 -940 {lab=Vbias}
N 1260 -980 1300 -980 {lab=Vbias}
N 1400 -880 1400 -780 {lab=GND}
N 1460 -980 1540 -980 {lab=GND}
N 1540 -980 1540 -780 {lab=GND}
N 1400 -1120 1400 -1080 {lab=#net1}
N 1400 -1220 1400 -1180 {lab=VDD}
N 1300 -980 1340 -980 {lab=Vbias}
N 1120 -1220 1120 -1080 {lab=VDD}
C {devices/code_shown.sym} 40 -330 0 0 {name=MODEL only_toplevel=true
format="tcleval( @value )"
value="
.lib cornerMOSlv.lib mos_tt
.lib cornerRES.lib res_typ
"}
C {devices/launcher.sym} 1720 -1480 0 0 {name=h2
descr="Simulate" 
tclcommand="xschem save; xschem netlist; xschem simulate"
}
C {devices/launcher.sym} 1720 -1420 0 0 {name=h1
descr="Load waves" 
tclcommand="xschem raw_read $netlist_dir/bias_circuit_1_tb_temp_tran.raw tran"
}
C {title-3.sym} 0 0 0 0 {name=l1 author="Simon Dorrer" rev=1.0 lock=true}
C {code_shown.sym} 40 -1530 0 0 {name=NGSPICE
only_toplevel=true
value="
.options klu reltol=1e-3 abstol=1e-15 gmin=1e-15
.control

save all

setplot const

set wr_vecnames
set wr_singlescale

* User constants
let tstep = 1u
let tstop = 200u

* Define temperature and Vref vectors
* Commercial Temperature Range
compose temp_vec start=0 stop=70 step=5
let vbias_vec=vector(length(temp_vec))
let ix_vec=vector(length(temp_vec))

* Loop index
let idx = 0

* For-Loop
foreach temp_val $&temp_vec
  * Adapt temperature
  option temp=$temp_val

  * Transient Analysis
  tran $&const.tstep $&const.tstop
  write bias_circuit_1_tb_temp_tran.raw
  set appendwrite
  
  * Measurement
  meas tran vbias FIND v(Vbias) AT=$&const.tstop
  meas tran ix FIND i(Vx) AT=$&const.tstop

  * Append to vector
  let const.vbias_vec[const.idx] = vbias
  let const.ix_vec[const.idx] = ix
  
  * Update index
  let const.idx = const.idx + 1
  echo ======================================================
end

print const.vbias_vec
print const.ix_vec

* Setscale for plot against temperature
setscale const.vbias_vec const.temp_vec
setscale const.ix_vec const.temp_vec

* Plot Vbias vs. temperature
plot const.vbias_vec title 'Vbias vs T' ylabel 'V'

* Plot Iout vs. temperature
plot const.ix_vec title 'Ix vs T' ylabel 'A'

*quit
.endc"}
C {devices/vsource.sym} 900 -870 0 0 {name=Ven value=1.5}
C {devices/gnd.sym} 900 -780 0 0 {name=l6 lab=GND}
C {devices/gnd.sym} 700 -780 0 0 {name=l2 lab=GND}
C {devices/vdd.sym} 700 -960 0 0 {name=l8 lab=VDD}
C {devices/lab_wire.sym} 860 -980 0 0 {name=p2 sig_type=std_logic lab=bias_en}
C {devices/gnd.sym} 1120 -780 0 0 {name=l12 lab=GND}
C {devices/vdd.sym} 1120 -1220 0 0 {name=l13 lab=VDD}
C {devices/vsource.sym} 700 -870 0 0 {name=VDD value=1.5}
C {bio_amplifier/amplifier_core/bias_circuit/bias_circuit_1/bias_circuit_1.sym} 1120 -980 0 0 {name=x1}
C {devices/lab_wire.sym} 1300 -940 2 1 {name=p1 sig_type=std_logic lab=Vbias}
C {stacked_transistors/sg13g2_lv_nmos_stacked/sg13g2_lv_nmos_stacked_x4.sym} 1400 -980 0 0 {name=xMx W_N=5.0u L_N=40.0u NG_N=5 M_N=1}
C {devices/gnd.sym} 1400 -780 0 0 {name=l3 lab=GND}
C {devices/gnd.sym} 1540 -780 0 0 {name=l4 lab=GND}
C {devices/vsource.sym} 1400 -1150 0 0 {name=Vx value=0.5}
C {devices/vdd.sym} 1400 -1220 0 0 {name=l5 lab=VDD}
