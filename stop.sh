#!/bin/bash

# clean up audio routing, wait 5 seconds and shutdown the Raspberry Pi
killall -s SIGINT jackd alsa_out alsa_in
sleep 5
sudo shutdown now
