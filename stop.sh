#!/bin/bash

# Get the PID of the M8C program
M8C_PID=$(pidof m8c)

# Terminate the M8C program
kill $M8C_PID

# Clean up audio routing
killall -s SIGINT jack_connect alsa_out alsa_in
