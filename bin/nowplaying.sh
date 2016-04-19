#!/bin/bash
status=$(mpc | sed -n '2p' | grep paused | wc -l)
song=$(mpc | sed -n '1p')
if [ "$status" -eq "0" ]; then
	echo "   $song"
else
	echo "   $song"
fi