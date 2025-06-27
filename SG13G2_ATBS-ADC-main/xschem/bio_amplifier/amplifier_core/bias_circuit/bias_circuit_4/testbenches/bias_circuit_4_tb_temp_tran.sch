v {xschem version=3.4.7 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
B 2 1660 -1300 2460 -900 {flags=graph
y1=-0.084
y2=0.17
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=0
x2=0.0005
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
color="4 7"
node="Vbias
Vbiasc"}
B 2 1660 -860 2460 -460 {flags=graph
y1=-2.1467265e-09
y2=2.0759674e-08
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=0
x2=0.0005
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

color="4 7"
node="i(v.x1.viout)
i(Vx)"}
T {Testbench for transient temperature sweep - Bias Circuit v4} 500 -1730 0 0 1 1 {}
N 1100 -1040 1100 -1000 {lab=VDD}
N 1100 -800 1100 -700 {lab=GND}
N 860 -480 860 -440 {
lab=GND}
N 1220 -480 1220 -440 {
lab=GND}
N 860 -580 860 -540 {
lab=phi_1}
N 1220 -580 1220 -540 {
lab=phi_2}
N 940 -920 960 -920 {lab=phi_1}
N 940 -880 960 -880 {lab=phi_2}
N 1280 -880 1280 -840 {lab=Vbias}
N 1240 -880 1280 -880 {lab=Vbias}
N 1380 -800 1380 -700 {lab=GND}
N 1440 -900 1520 -900 {lab=GND}
N 1520 -900 1520 -700 {lab=GND}
N 1380 -1280 1380 -1240 {lab=#net1}
N 1380 -1380 1380 -1340 {lab=VDD}
N 1380 -1040 1380 -1000 {lab=#net2}
N 1320 -900 1320 -880 {lab=Vbias}
N 1280 -880 1320 -880 {lab=Vbias}
N 1280 -1140 1320 -1140 {lab=Vbiasc}
N 1280 -1140 1280 -920 {lab=Vbiasc}
N 1240 -920 1280 -920 {lab=Vbiasc}
N 1280 -1180 1280 -1140 {lab=Vbiasc}
N 1440 -1140 1520 -1140 {lab=GND}
N 1520 -1140 1520 -900 {lab=GND}
N 980 -1260 980 -1200 {lab=GND}
N 980 -1380 980 -1320 {lab=VDD}
N 1100 -1040 1180 -1040 {lab=VDD}
N 1100 -1080 1100 -1040 {lab=VDD}
N 1180 -1040 1180 -1000 {lab=VDD}
C {devices/code_shown.sym} 40 -1730 0 0 {name=MODEL only_toplevel=true
format="tcleval( @value )"
value="
.lib cornerMOSlv.lib mos_tt
.lib cornerRES.lib res_typ
"}
C {devices/launcher.sym} 1720 -1400 0 0 {name=h2
descr="Simulate" 
tclcommand="xschem save; xschem netlist; xschem simulate"
}
C {devices/launcher.sym} 1720 -1340 0 0 {name=h1
descr="Load waves" 
tclcommand="xschem raw_read $netlist_dir/bias_circuit_4_tb_temp_tran.raw tran"
}
C {code_shown.sym} 40 -1630 0 0 {name=NGSPICE
only_toplevel=true
value="
.param fclk=8000000
.param fphi=62500
.csparam fclk=fclk
.options klu method=gear reltol=1e-3 abstol=1e-15 gmin=1e-15
.control

* save all
save v(Vbias) v(Vbiasc) i(Vx) i(v.x1.viout) i(v.x1.viref)

setplot const

set wr_vecnames
set wr_singlescale

* User constants
let tstep = 1/fclk
let tstop = 500u

* Define temperature and Vref vectors
* Commercial Temperature Range
compose temp_vec start=0 stop=70 step=2
let vbias_vec=vector(length(temp_vec))
let vbiasc_vec=vector(length(temp_vec))
let iref_vec=vector(length(temp_vec))
let iout_vec=vector(length(temp_vec))
let ix_vec=vector(length(temp_vec))

* Loop index
let idx = 0

* For-Loop
foreach temp_val $&temp_vec
  * Adapt temperature
  option temp=$temp_val

  * Transient Analysis
  tran $&const.tstep $&const.tstop
  write bias_circuit_4_tb_temp_tran.raw
  set appendwrite
  
  * Measurement
  meas tran vbias FIND v(Vbias) AT=$&const.tstop
  meas tran vbiasc FIND v(Vbiasc) AT=$&const.tstop
  meas tran iref FIND i(v.x1.viref) AT=$&const.tstop
  meas tran iout FIND i(v.x1.viout) AT=$&const.tstop
  meas tran ix FIND i(Vx) AT=$&const.tstop

  * Append to vector
  let const.vbias_vec[const.idx] = vbias
  let const.vbiasc_vec[const.idx] = vbiasc
  let const.iref_vec[const.idx] = iref
  let const.iout_vec[const.idx] = iout
  let const.ix_vec[const.idx] = ix

  * Update index
  let const.idx = const.idx + 1
  echo ======================================================
end

print const.temp_vec
print const.vbias_vec
print const.vbiasc_vec
print const.iref_vec
print const.iout_vec
print const.ix_vec

* Setscale for plot against temperature
setscale const.vbias_vec const.temp_vec
setscale const.vbiasc_vec const.temp_vec
setscale const.iref_vec const.temp_vec
setscale const.iout_vec const.temp_vec
setscale const.ix_vec const.temp_vec

* Plot Vbias vs. temperature
plot const.vbias_vec title 'Vbias vs T' ylabel 'V'

* Plot Vbiasc vs. temperature
plot const.vbiasc_vec title 'Vbiasc vs T' ylabel 'V'

* Plot Iref vs. temperature
plot const.iref_vec title 'Iref vs T' ylabel 'A'

* Plot Iout vs. temperature
plot const.iout_vec title 'Iout vs T' ylabel 'A'

* Plot Ix vs. temperature
plot const.ix_vec title 'Ix vs T' ylabel 'A'

* Write Data
wrdata /foss/designs/SG13G2_ATBS-ADC-main/python/plot_simulations/data/bias_circuit_4_tb_temp_tran.txt v(const.vbias_vec) v(const.vbiasc_vec) v(const.iref_vec) v(const.iout_vec) v(const.ix_vec)

*quit
.endc"}
C {title-3.sym} 0 0 0 0 {name=l1 author="Simon Dorrer" rev=1.0 lock=false}
C {devices/gnd.sym} 1100 -700 0 0 {name=l12 lab=GND}
C {devices/vdd.sym} 1100 -1080 0 0 {name=l13 lab=VDD}
C {bio_amplifier/amplifier_core/bias_circuit/bias_circuit_4/bias_circuit_4.sym} 1100 -900 0 0 {name=x1}
C {devices/vsource.sym} 860 -510 0 0 {name=V1 value="pulse(0 1.5 0 10p 10p \{0.5/fphi - 1/fclk\} \{1/fphi\})"}
C {devices/gnd.sym} 860 -440 0 0 {name=l7 lab=GND}
C {devices/lab_wire.sym} 860 -580 0 1 {name=l9 sig_type=std_logic lab=phi_1}
C {devices/gnd.sym} 1220 -440 0 0 {name=l14 lab=GND}
C {devices/lab_wire.sym} 1220 -580 0 1 {name=l15 sig_type=std_logic lab=phi_2}
C {devices/vsource.sym} 1220 -510 0 0 {name=V3 value="pulse(0 1.5 \{0.50/fphi\} 10p 10p \{0.5/fphi - 1/fclk\} \{1/fphi\})"}
C {devices/lab_wire.sym} 940 -920 0 0 {name=l4 sig_type=std_logic lab=phi_1}
C {devices/lab_wire.sym} 940 -880 0 0 {name=l5 sig_type=std_logic lab=phi_2}
C {devices/lab_wire.sym} 1280 -840 2 1 {name=p3 sig_type=std_logic lab=Vbias}
C {devices/gnd.sym} 1380 -700 0 0 {name=l3 lab=GND}
C {devices/gnd.sym} 1520 -700 0 0 {name=l10 lab=GND}
C {devices/vsource.sym} 1380 -1310 0 0 {name=Vx value=0.5}
C {devices/vdd.sym} 1380 -1380 0 0 {name=l11 lab=VDD}
C {stacked_transistors/sg13g2_lv_nmos_stacked/sg13g2_lv_nmos_stacked_x2.sym} 1380 -900 0 0 {name=xMx W_N=5.0u L_N=20.0u NG_N=5 M_N=1}
C {stacked_transistors/sg13g2_lv_nmos_stacked/sg13g2_lv_nmos_stacked_x2.sym} 1380 -1140 0 0 {name=xMxc W_N=5.0u L_N=20.0u NG_N=5 M_N=1}
C {devices/lab_wire.sym} 1280 -1180 0 0 {name=p4 sig_type=std_logic lab=Vbiasc}
C {devices/gnd.sym} 980 -1200 0 0 {name=l2 lab=GND}
C {devices/vdd.sym} 980 -1380 0 0 {name=l8 lab=VDD}
C {devices/vsource.sym} 980 -1290 0 0 {name=VDD value="pwl(0 0 100n 1.5)"}
