#!/bin/bash

# Ethernet & WiFi
E=$(ip addr show dev eth0 2>/dev/null | wc -l)
W=$(ip addr show dev wlan0 | wc -l)

if [[ "$E" -gt 2 && "$W" -lt 3 ]]; then
	echo -e " $(ip addr show dev eth0 2>/dev/null| grep "inet " | awk '{print $2}')%{u-}"
elif [[ "$W" -gt 2 && "$E" -lt 2 ]]; then
	echo -e " $(ip addr show dev wlan0 2>/dev/null| grep "inet " | awk '{print $2}')%{u-}"
elif [[ "$W" -gt 2 && "$E" -gt 2 ]]; then
	echo -e " $(ip addr show dev eth0 2>/dev/null| grep "inet " | awk '{print $2}')%{u-}   $(ip addr show dev wlan0 2>/dev/null| grep "inet " | awk '{print $2}')%{u-}"
else
	echo -e ""
fi
