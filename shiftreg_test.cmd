# setup
l GND!
h Vdd!

vector INPUT in0 in1 in2 in3 in4 in5 in6 in7 in8 in9
vector OUTPUT out0 out1 out2 out3 out4 out5 out6 out7 out8 out9
vector CLOCK phi0 phi1
clock CLOCK 00 01 00 10

ana CLOCK en bp INPUT OUTPUT

##################################
# test 1: no bypass
h en
l bp
setvector INPUT 1111111111
c
setvector INPUT 0000000000
c
setvector INPUT 1111111111
c
setvector INPUT 0000000000
c
setvector INPUT 1111111111
c
setvector INPUT 0000000000
c





