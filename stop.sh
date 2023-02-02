#!/bin/bash

# Clean up audio routing
killall -s SIGINT alsa_out alsa_in
