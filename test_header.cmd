# TEST HEADER

# setup
stepsize 60
l t1
h t4

vector INPUT in9 in8 in7 in6 in5 in4 in3 in2 in1 in0
vector OUTPUT out9 out8 out7 out6 out5 out4 out3 out2 out1 out0
vector BYPASS bp6 bp5 bp4 bp3 bp2 bp1 bp0
vector STATE s1 s0
vector CONTROL sreg_en sreg_latch add_latch in_latch loop_latch
vector CLOCK phi0 phi1
clock CLOCK 00 10 00 01

w penultimate_bit9 last_bit9 sum_bit9 cout
w OUTPUT

vector 64_clock 64_c0 64_c0- 64_c1 64_c1-
vector 1_clock 1_c0 1_c0- 1_c1 1_c1-
vector 2_clock 2_c0 2_c0- 2_c1 2_c1-
vector last_clock last_c0 last_c0- last_c1 last_c1-
vector LAST last_bit0 last_bit1 last_bit2 last_bit3 last_bit4 last_bit5 last_bit6 last_bit7 last_bit8 last_bit9


ana STATE CLOCK CONTROL INPUT BYPASS OUTPUT

setvector INPUT 0000000000
setvector BYPASS 1111111
h RESET
c
l RESET load iter
c