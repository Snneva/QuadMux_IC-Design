v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
N 480 1280 500 1280 {lab=S}
N 480 1160 500 1160 {lab=S_bar}
N 540 1220 540 1250 {lab=OUT}
N 540 1220 590 1220 {lab=OUT}
N 390 1120 540 1120 {lab=IN}
N 540 1120 540 1130 {lab=IN}
N 390 1310 540 1310 {lab=IN}
N 390 1120 390 1310 {lab=IN}
N 540 1160 610 1160 {lab=VDD}
N 610 1130 610 1160 {lab=VDD}
N 540 1280 610 1280 {lab=GND}
N 610 1280 610 1330 {lab=GND}
N 540 1190 540 1220 {lab=OUT}
N 370 1120 390 1120 {lab=IN}
C {sky130_fd_pr/pfet_01v8.sym} 520 1160 0 0 {name=M1
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
C {sky130_fd_pr/nfet_01v8.sym} 520 1280 0 0 {name=M2
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
C {iopin.sym} 590 1220 0 0 {name=p1 lab=OUT}
C {iopin.sym} 370 1120 2 0 {name=p2 lab=IN
}
C {ipin.sym} 480 1280 0 0 {name=p3 lab=S}
C {ipin.sym} 480 1160 0 0 {name=p4 lab=S_bar
}
C {vdd.sym} 610 1130 0 0 {name=l1 lab=VDD}
C {gnd.sym} 610 1330 0 0 {name=l2 lab=GND
}
