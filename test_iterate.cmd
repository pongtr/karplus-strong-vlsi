# TEST 3: Load followed by iterate

source test_header.cmd

#####
# PART1: LOAD
#####
h load
c
setvector BYPASS 1111001
c
setvector INPUT 0100000000
c
setvector INPUT 0110000000
c
setvector INPUT 1000000000
c
setvector INPUT 0110000000
c
setvector INPUT 0100000000
c
setvector INPUT 0010000000
c
setvector INPUT 0000000000
h iter
l load
c

######
# PART2: ITERATE
######

setvector INPUT 0010000000
c
c
c
c
c
c
c
c
c
c
c
c
c
c
c
c
c
c
c
c
c
c
c
c
c
c



