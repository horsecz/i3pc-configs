#!/bin/sh

while [[ 1 == 1 ]]; do
	sleep 15
	CURR=$(cat /sys/class/power_supply/BAT0/charge_now)
	FULL=$(cat /sys/class/power_supply/BAT0/charge_full)
	PRC=$(((CURR*100)/FULL))
	
	if [[ $PRC -le 5 ]]; then
		notify-send 'Battery level is critical. System will be shut down in 5 minutes.' -u critical
		sleep 300
		shutdown now
	fi
done
