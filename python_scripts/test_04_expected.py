
# sample input and its size
buffer = [256,384,512,384,256,128,0,128]
size = len(buffer)

# number of iterations we want to go through
iterations = 10

# generate expected output
for j in range(iterations):
    for i in range(size):
        newval = (buffer[i] + buffer[(i + 1) % size]) >> 1
        print newval
        buffer[i] = newval
