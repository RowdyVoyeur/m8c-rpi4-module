#!/bin/bash

# restart JACK and amiauto before making connections (lines 4 to 8 may be necessary if JACK crashes upon connecting another USB device)
#sleep 5
#sudo systemctl restart jack
#sleep 2
#sudo systemctl restart amidiauto
#sleep 3

# open audio interface between M8 out and System in
alsa_in -j "M8out" -d hw:CARD=M8,DEV=0 &
sleep 1

# open audio interface between System out and M8 in
alsa_out -j "M8in" -d hw:CARD=M8,DEV=0 &
sleep 1

# open audio interface between MC101 out and System in (comment if only using M8. change card name MC101out and hw:CARD=MC101,DEV=0 if using a different device - use "aplay -l" to find details)
alsa_in -j "MC101out" -d hw:CARD=MC101,DEV=0 &
sleep 1

# open audio interface between System out and MC101 in (comment if only using M8)
alsa_out -j "MC101in" -d hw:CARD=MC101,DEV=0 &
sleep 1

# connect audio of M8 out to System in (this connects M8 out to system playback, so you can hear M8)
jack_connect M8out:capture_1 system:playback_1
jack_connect M8out:capture_2 system:playback_2
sleep 1

# connect audio of System microphone to M8 in (this connects USB Card mic to M8, so you can record audio. there are 2 system:capture_1 because my USB card has a mono ADC. should be changed to capture_1 and capture_2 if stereo ADC)
jack_connect system:capture_1 M8in:playback_1
jack_connect system:capture_1 M8in:playback_2
sleep 1

# connect audio of MC101 out to System in (comment if only using M8. change card name MC101out if using a different device - must be the same of line 19)
jack_connect MC101out:capture_1 system:playback_1
jack_connect MC101out:capture_2 system:playback_2
sleep 1

# connect System microphone to MC101 in (this connects USB Card mic to MC101. comment if only using M8)
jack_connect system:capture_1 MC101in:playback_1
jack_connect system:capture_1 MC101in:playback_2
sleep 1

# start M8 client
. /home/pi/m8c-rpi4/m8c
