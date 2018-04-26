#! /bin/bash

echo "Starting in 10 seconds"
sleep 10
echo "Starting now"

VIDEOFILE=/home/pi/tussenwater/tw_test.mp4

amixer -c 1
amixer sset 'Headphone' 50

#omxplayer -k
omxplayer -o alsa -I --loop --layout 2.0 ${VIDEOFILE}
