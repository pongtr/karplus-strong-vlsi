# TEST 02: TEST ADD CIRCUIT

source test_header.cmd

h RESET
c
l RESET
h load iter
setvector INPUT 0000000000
setvector BYPASS 1111111

setvector INPUT 0000000000
c
setvector INPUT 1111111111
c
setvector INPUT 0000000000
c
setvector INPUT 0000000010
c
setvector INPUT 0000000100
c
setvector INPUT 0101000100
c
setvector INPUT 1111111111
c
setvector INPUT 0000000000
c




