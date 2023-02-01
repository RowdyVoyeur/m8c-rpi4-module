#!/bin/bash

# clean up audio routing
killall -s SIGINT jackd alsa_out alsa_in

# wait 5 seconds and shutdown the Raspberry Pi
#sleep 5
#sudo shutdown now
