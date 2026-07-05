v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
C {quad_mux21.sym} 440 1130 0 0 {name=x1}
C {vsource.sym} 260 1370 0 0 {name=V1 value=1.8 savecurrent=false}
C {vdd.sym} 260 1340 0 0 {name=l1 lab=VDD}
C {gnd.sym} 260 1400 0 0 {name=l2 lab=GND}
C {vsource.sym} 360 1370 0 0 {name=V2 value="pulse(0 1.8 0 1n 1n 2u 4u)" savecurrent=false}
C {vsource.sym} 360 1480 0 0 {name=V3 value="pulse(0 1.8 0 1n 1n 3u 6u)" savecurrent=false}
C {vsource.sym} 360 1600 0 0 {name=V4 value="pulse(0 1.8 0 1n 1n 20u 40u)" savecurrent=false}
C {gnd.sym} 360 1400 0 0 {name=l3 lab=GND}
C {gnd.sym} 360 1510 0 0 {name=l4 lab=GND}
C {gnd.sym} 360 1630 0 0 {name=l5 lab=GND}
C {lab_wire.sym} 360 1340 0 0 {name=p1 sig_type=std_logic lab=A_SIG}
C {lab_wire.sym} 360 1450 0 0 {name=p2 sig_type=std_logic lab=B_SIG}
C {lab_wire.sym} 360 1570 0 0 {name=p3 sig_type=std_logic lab=SEL}
C {lab_wire.sym} 290 1050 0 0 {name=p4 sig_type=std_logic lab=A_SIG}
C {lab_wire.sym} 290 1090 0 0 {name=p5 sig_type=std_logic lab=A_SIG}
C {lab_wire.sym} 290 1130 0 0 {name=p6 sig_type=std_logic lab=A_SIG}
C {lab_wire.sym} 290 1190 0 0 {name=p7 sig_type=std_logic lab=A_SIG}
C {lab_wire.sym} 290 1070 0 0 {name=p8 sig_type=std_logic lab=B_SIG}
C {lab_wire.sym} 290 1110 0 0 {name=p9 sig_type=std_logic lab=B_SIG}
C {lab_wire.sym} 290 1170 0 0 {name=p10 sig_type=std_logic lab=B_SIG}
C {lab_wire.sym} 290 1210 0 0 {name=p11 sig_type=std_logic lab=B_SIG}
C {lab_wire.sym} 290 1150 0 0 {name=p12 sig_type=std_logic lab=SEL}
C {lab_wire.sym} 590 1050 2 0 {name=p13 sig_type=std_logic lab=Y0}
C {lab_wire.sym} 590 1070 2 0 {name=p14 sig_type=std_logic lab=Y1}
C {lab_wire.sym} 590 1090 2 0 {name=p15 sig_type=std_logic lab=Y2}
C {lab_wire.sym} 590 1110 2 0 {name=p16 sig_type=std_logic lab=Y3}
C {code_shown.sym} 630 1200 0 0 {name=COMMANDS
value="
.lib /foss/pdks/sky130A/libs.tech/ngspice/sky130.lib.spice tt
.tran 10n 40u
.save all

.control
run
plot v(SEL)+8 v(A_SIG)+6 v(B_SIG)+4 v(Y0)+2 v(Y3)
.endc
"}
