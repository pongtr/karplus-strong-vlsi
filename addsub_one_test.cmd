# setup
h Vdd!
l GND!

ana a b cin s cout

# {a b cin} = 000
l a b cin
s
# {a b cin} = 001
l a b 
h cin
s
# {a b cin} = 010
l a cin
h b
s
# {a b cin} = 011
l a
h b cin
s
# {a b cin} = 100
l b cin
h a
s
# {a b cin} = 101
l b
h a cin
s
# {a b cin} = 110
l cin
h a b
s
# {a b cin} = 111
h a b cin
s

