v {xschem version=3.4.6 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
B 2 1660 -760 2460 -360 {flags=graph
y1=0.12
y2=0.28
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=0.00050007139
x2=0.0007
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
B 2 1660 -1200 2460 -800 {flags=graph
y1=1.4
y2=1.6
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=0.00050007139
x2=0.0007
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
node=VDD}
T {Testbench for transient PSRR analysis - Bias Circuit v4} 590 -1750 0 0 1 1 {}
N 1280 -560 1280 -460 {lab=GND}
N 1420 -640 1500 -640 {lab=Vbias}
N 920 -940 920 -900 {
lab=GND}
N 1280 -940 1280 -900 {
lab=GND}
N 920 -1040 920 -1000 {
lab=phi_1}
N 1280 -1040 1280 -1000 {
lab=phi_2}
N 1360 -780 1360 -760 {lab=VDD}
N 1120 -680 1140 -680 {lab=phi_1}
N 1120 -640 1140 -640 {lab=phi_2}
N 920 -640 920 -620 {lab=VDD}
N 920 -480 920 -460 {lab=GND}
N 920 -560 920 -540 {lab=#net1}
N 1420 -680 1500 -680 {lab=Vbiasc}
N 1280 -780 1280 -760 {lab=VDD}
N 1280 -780 1360 -780 {lab=VDD}
N 1280 -800 1280 -780 {lab=VDD}
C {devices/code_shown.sym} 2100 -1310 0 0 {name=MODEL only_toplevel=true
format="tcleval( @value )"
value="
.lib cornerMOSlv.lib mos_tt
.lib cornerRES.lib res_typ
"}
C {devices/launcher.sym} 1720 -1320 0 0 {name=h2
descr="Simulate" 
tclcommand="xschem save; xschem netlist; xschem simulate"
}
C {devices/launcher.sym} 1720 -1260 0 0 {name=h1
descr="Load waves" 
tclcommand="xschem raw_read $netlist_dir/bias_circuit_4_tb_PSRR_tran.raw tran"
}
C {code_shown.sym} 60 -1710 0 0 {name=NGSPICE
only_toplevel=true
value="
.param fclk=8000000
.param fphi=62500
.csparam fclk=fclk
.options klu method=gear reltol=1e-2 abstol=1e-15 gmin=1e-15
.control

* save all
save v(VDD) v(Vbias) v(Vbiasc)

setplot const

set wr_vecnames
set wr_singlescale

* User constants
* Wait until Vbias has settled.
let tstart = 500u
let fstart = 10k
let fstop = 10k
let amount_of_periods = 2
let points_per_period = 10
let points_per_dec = 1
let vamp = 0.01

* Generate a logarithmic frequency vector
compose freq_vec dec=$&const.points_per_dec start=$&const.fstart stop=$&const.fstop

* Generate PSRR vector
let PSRR_vec = freq_vec

* Loop index
let idx = 0

* For-Loop
foreach freq_val $&freq_vec
  * 10 data points per period
  * let tstep = 1/($&const.points_per_period*$freq_val)
  let tstep = 1/fclk

  * 2 periods long
  let tstop = ($&const.amount_of_periods * 1/$freq_val) + $&const.tstart

  * Alter input sine frequency   
  alter @VDD_NOISE[SIN] = [ 0 $&const.vamp $freq_val 0 0 0 ]
  
  * Transient Analysis
  tran $&tstep $&tstop $&tstart
  write bias_circuit_4_tb_PSRR_tran.raw
  set appendwrite
  
  * Measurement
  * Measure maximum voltage of input
  meas tran vdd_peak_peak PP v(VDD) from=$&tstart to=$&tstop
  let vdd_peak = vdd_peak_peak / 2

  * Measure maximum voltage of output
  meas tran vbias_peak_peak PP v(Vbias) from=$&tstart to=$&tstop
  let vbias_peak = vbias_peak_peak / 2

  * Calculate PSRR
  let PSRR = vdd_peak / vbias_peak
  let PSRR_dB = vdb(PSRR) 

  * Append to vector  
  let const.PSRR_vec[const.idx] = PSRR_dB

  * Update index
  let const.idx = const.idx + 1
  echo ======================================================
end

print const.PSRR_vec

* Setscale for plot against frequency
setscale const.PSRR_vec const.freq_vec

* Plot PSRR vs. frequency
plot xlog const.PSRR_vec title 'PSRR' ylabel 'dB'

* Write Data
wrdata /foss/designs/SG13G2_ATBS-ADC-main/python/plot_simulations/data/bias_circuit_4_tb_PSRR_tran.txt v(const.freq_vec) v(const.PSRR_vec)

*quit
.endc"}
C {devices/gnd.sym} 920 -460 0 0 {name=l2 lab=GND}
C {devices/vdd.sym} 920 -640 0 0 {name=l8 lab=VDD}
C {title-3.sym} 0 0 0 0 {name=l1 author="Simon Dorrer" rev=1.0 lock=true}
C {devices/gnd.sym} 1280 -460 0 0 {name=l12 lab=GND}
C {devices/vdd.sym} 1280 -800 0 0 {name=l13 lab=VDD}
C {devices/lab_wire.sym} 1500 -640 2 0 {name=p3 sig_type=std_logic lab=Vbias}
C {bio_amplifier/amplifier_core/bias_circuit/bias_circuit_4/bias_circuit_4.sym} 1280 -660 0 0 {name=x1}
C {devices/vsource.sym} 920 -970 0 0 {name=V1 value="pulse(0 1.5 0 10p 10p \{0.5/fphi - 1/fclk\} \{1/fphi\})"}
C {devices/gnd.sym} 920 -900 0 0 {name=l7 lab=GND}
C {devices/lab_wire.sym} 920 -1040 0 1 {name=l9 sig_type=std_logic lab=phi_1}
C {devices/gnd.sym} 1280 -900 0 0 {name=l14 lab=GND}
C {devices/lab_wire.sym} 1280 -1040 0 1 {name=l15 sig_type=std_logic lab=phi_2}
C {devices/vsource.sym} 1280 -970 0 0 {name=V2 value="pulse(0 1.5 \{0.50/fphi\} 10p 10p \{0.5/fphi - 1/fclk\} \{1/fphi\})"}
C {devices/lab_wire.sym} 1120 -680 0 0 {name=l4 sig_type=std_logic lab=phi_1}
C {devices/lab_wire.sym} 1120 -640 0 0 {name=l5 sig_type=std_logic lab=phi_2}
C {devices/vsource.sym} 920 -590 0 0 {name=VDD_NOISE value="sin(0 10m 1)"
}
C {devices/lab_wire.sym} 1500 -680 2 0 {name=p4 sig_type=std_logic lab=Vbiasc}
C {devices/vsource.sym} 920 -510 0 0 {name=VDD value="pwl(0 0 100n 1.5)"}
