# EENG 425 Final Project
# Pong Trairatvorakul & Wissem Gamra
# Test script for control

##################
# SETUP
##################

# set up GND! and Vdd!
h Vdd!
l GND!

# set up clocks
vector CLOCK p1 p1- p2 p2-
clock CLOCK 0101 1001 0101 0110

# set up states
vector STATE InSt0* InSt1*

# set initial inputs
l load iter
vector IN load iter

# send thing to be displayed
ana CLOCK STATE ready sreg_en sreg_latch add_latch

# send RESET
h RESET
c
l RESET
c

##########################

c
h load
c
l load
c
c
h iter
c
l iter
c
c

