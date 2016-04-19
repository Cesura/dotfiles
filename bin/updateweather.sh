#!/bin/bash
~/bin/weather.py > /home/brad/.weather
output=$(cat ~/.weather)
hour=$(date "+%H")

# Fair
if [ "$(echo $output | grep Fair | wc -l)" -eq "1" ] || [ "$(echo $output | grep Sun | wc -l)" -eq "1" ]; then
	if [ "$hour" -gt "20" ] || [ "$hour" -lt "6" ]; then
		echo "  $output"
	else
		echo "  $output"
	fi		

# Storm
elif [ "$(echo $output | grep Showers | wc -l)" -eq "1" ] || [ "$(echo $output | grep Rain | wc -l)" -eq "1" ] || [ "$(echo $output | grep storm | wc -l)" -eq "1" ]; then
	echo "  $output"

# Cloud by default
else
	echo "  $output"
fi
