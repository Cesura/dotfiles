#!/bin/bash
ssid=$(iwconfig wlp3s0 | head -n1 | cut -d: -f2 | tr -d '"')
off=$(echo $ssid | grep "off/any" | wc -l)

if [ "$off" -eq "1" ]; then
	echo "Not Connected"
else
	echo $ssid
fi
