#!/bin/bash

# Volume control with pulseaudio.
# This script intends to only change the bt headset's volume when it is connected.
# Script will change the default sink's volume when there is no bt headset connected
#
#
# Author:   Arda Sevinç <ardasevinc.technical@gmail.com>
# Date:     23/11/2019 01:59

sinks=( $(pactl list sinks short | cut -f 2) )

if [[ $(echo $sinks[1] | grep "bluez" -c) == 1 ]]; then
    pactl set-default-sink $sinks[1]
    echo $sinks[1];
elif [[ $(echo $sinks[2] | grep "bluez" -c) == 1 ]]; then
    pactl set-default-sink $sinks[2]
    echo $sinks[2];
else
    pactl set-default-sink $sinks[1]
    echo $sinks[1];
fi
key="$i"
case "${key}" in
    -m | --mute)
        pactl set-sink-mute @DEFAULT_SINK@ toggle
        ;;
    -v | --set-sink-volume)
        pactl set-sink-volume @DEFAULT_SINK@ "$i"
        ;;
    -m | --set-source-mute)
        pactl set-source-mute $sinks[1] toggle 
        ;;
    *)
        echo "AAAAAAAAAAAA"
        ;;
esac
exit 0
