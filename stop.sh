#!/bin/bash

# Terminate the M8C program
killall -s SIGINT m8c

# Clean up audio routing
killall -s SIGINT alsa_out alsa_in
