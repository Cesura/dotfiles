#!/bin/bash
full=$(cat /sys/class/power_supply/BAT0/charge_full)
now=$(cat /sys/class/power_supply/BAT0/charge_now)
percent=$(awk "BEGIN {printf \"%.0f\",(${now}/${full})*100}")

if [ "$percent" -gt "89" ]; then
	echo "  $percent%"
elif [ "$percent" -gt "74" ]; then
	echo "  $percent%"
elif [ "$percent" -gt "49" ]; then
	echo "  $percent%"
elif [ "$percent" -gt "9" ]; then
	echo "  $percent%"
else
	echo "  $percent%" 
fi