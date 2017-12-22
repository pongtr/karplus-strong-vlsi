from __future__ import print_function
# generates irsim commands to load noise into buffer, given buffer size
# usage: python noise_gen.py buffer_size

import sys
from random import *


# so we can print to stderr
def eprint(*args, **kwargs):
    print(*args, file=sys.stderr, **kwargs)

# error checking
if len(sys.argv) != 3:
    print("usage: python noise_gen.py buffer_size iterations")
    sys.exit(1)

# get size
size = int(sys.argv[1])

# if size is too small
if size < 2 or size > 128:
    print("size must be two or more and 128 or less")
    sys.exit(1)

# get iterations
iterations = int(sys.argv[2])

def genHeader(size):
    print("# AUTOMATICALLY GENERATED TEST\n")
    print("source test_header.cmd")
    bypass = 129 - size
    print("setvector BYPASS %s" % "{0:07b}".format(bypass))
    print("c\n")
    
def genNoise(size):
    print("#####\n# PART 1: GENERATE NOISE")
    print("h load")
    print("c")
    print("c")

    # generate buffer
    buffer = []
    
    for i in range(size):
        val = randint(0,1024)
        buffer.append(val)
        print("setvector INPUT %s" % "{0:010b}".format(val))

        # get ready to change mode before end
        if i == size - 2:
            print("h iter")
            print("l load")
        print("c")

    return buffer

def genIter(iterations,size):
    print("#####\n# PART 2: ITERATE")
    for i in range(iterations * size):
        print("c")

# generate expected output
def genExpected(initial,size,iterations):
    expected = []    
    for j in range(iterations):
        for i in range(size):
            newval = (initial[i] + initial[(i + 1) % size]) >> 1
            expected.append(newval)
            initial[i] = newval
    return expected

# print expectd to stderr
def printExpected(expected):
    for v in expected:
        eprint(v)

genHeader(size)
initial = genNoise(size)
genIter(iterations,size)
expected = genExpected(initial,size,iterations)
printExpected(expected)
