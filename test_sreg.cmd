# TEST 01: SHIFT REGISTER
# tests functionality as a shift register

source test_header.cmd

h RESET
c
l RESET iter
h load
setvector INPUT 0000000000
setvector BYPASS 1111101

c
c
c
c
setvector INPUT 1111111111
c
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
setvector INPUT 1111111111
c
setvector INPUT 0000000000
c




