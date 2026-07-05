v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
N -80 -30 -80 70 {lab=Vin}
N -150 30 -80 30 {lab=Vin}
N -40 100 -40 130 {lab=GND}
N -40 -90 -40 -60 {lab=VDD}
N -40 0 -40 40 {lab=Vout}
N -40 -30 -10 -30 {lab=VDD}
N -10 -70 -10 -30 {lab=VDD}
N -40 -70 -10 -70 {lab=VDD}
N -40 70 -10 70 {lab=GND}
N -10 70 -10 110 {lab=GND}
N -40 110 -10 110 {lab=GND}
N -40 30 -20 30 {lab=Vout}
C {sky130_fd_pr/pfet_01v8.sym} -60 -30 0 0 {name=M1
W=0.5
L=0.15
nf=1
mult=1
ad="expr('int((@nf + 1)/2) * @W / @nf * 0.29')"
pd="expr('2*int((@nf + 1)/2) * (@W / @nf + 0.29)')"
as="expr('int((@nf + 2)/2) * @W / @nf * 0.29')"
ps="expr('2*int((@nf + 2)/2) * (@W / @nf + 0.29)')"
nrd="expr('0.29 / @W ')" nrs="expr('0.29 / @W ')"
sa=0 sb=0 sd=0
model=pfet_01v8
spiceprefix=X
}
C {sky130_fd_pr/nfet_01v8.sym} -60 70 0 0 {name=M2
W=0.5
L=0.15
nf=1 
mult=1
ad="expr('int((@nf + 1)/2) * @W / @nf * 0.29')"
pd="expr('2*int((@nf + 1)/2) * (@W / @nf + 0.29)')"
as="expr('int((@nf + 2)/2) * @W / @nf * 0.29')"
ps="expr('2*int((@nf + 2)/2) * (@W / @nf + 0.29)')"
nrd="expr('0.29 / @W ')" nrs="expr('0.29 / @W ')"
sa=0 sb=0 sd=0
model=nfet_01v8
spiceprefix=X
}
C {ipin.sym} -150 30 0 0 {name=p1 lab=Vin
}
C {opin.sym} -20 30 0 0 {name=p2 lab=Vout}
C {vdd.sym} -40 -90 0 0 {name=l1 lab=VDD}
C {gnd.sym} -40 130 0 0 {name=l2 lab=GND
}
