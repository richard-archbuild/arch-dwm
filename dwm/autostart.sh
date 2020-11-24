#!/bin/bash
. HOME/.fehbg
picom -b
while true 
do
	battery="$(acpi | sed -n -e 's/Battery 0: //;s/%.*/%/;s/,//g' -e '1p')"
       	volume="$(amixer -M | grep -i 'mono: playback' | grep -Eo '\[...?.\]')"	
	time="$(date --date now +%r | cut -d: -f1,2)"
	output="volume:$volume|$time|$battery"
	xsetroot -name "$output"
sleep 1m
done
