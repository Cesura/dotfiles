#!/usr/bin/env python
import os

networks = os.popen("netctl list").read().split('\n')
set = 0
for network in networks:
	if network.startswith('*'):
		network = network[2:]
		os.system("sudo netctl restart " + network)		
		set = 1

if set == 0:
	os.system("sudo netctl start Home")
