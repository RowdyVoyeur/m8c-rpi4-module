#!/bin/bash

# Terminate M8C and clean up audio routing
killall -s SIGINT m8c alsa_out alsa_in
