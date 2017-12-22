from __future__ import print_function
# convert output.tcl to list of base 10 numbers that can then be synthesized

import sys

# so we can print to stderr
def eprint(*args, **kwargs):
    print(*args, file=sys.stderr, **kwargs)
    
if len(sys.argv) < 2:
    eprint("must provide file name to parse")
    sys.exit(1)
filepath = sys.argv[1]

samples = []
with open(filepath) as fp:
    line = fp.readline()
    while line:
        if line.startswith("OUTPUT="):
            samples.append(int(line[7:17],2))
        line = fp.readline()

for s in samples:
    print(s)
