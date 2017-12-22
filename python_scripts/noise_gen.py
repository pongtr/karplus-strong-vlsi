# generates irsim commands to load noise into buffer, given buffer size
# usage: python noise_gen.py buffer_size

import sys
from random import *

# error checking
if len(sys.argv) != 2:
    print("usage: python noise_gen.py buffer_size")
    sys.exit(1)

# get size
size = int(sys.argv[1])

# if size is too small
if size < 2:
    print("size must be two or more")
    sys.exit(1)

print("#####\n# PART 1: GENERATE NOISE")
print("h load")
print("c")
print("c")
buffer = []
for i in range(size):
    val = randint(0,1024)
    print("setvector INPUT %s") % "{0:010b}".format(val)

    if i == size - 2:
        print("h iter")
        print("l load")
    print("c")
