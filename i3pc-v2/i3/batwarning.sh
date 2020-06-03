#!/bin/sh

while [[ 1 == 1 ]]; do
	sleep 15
	CURR=$(cat /sys/class/power_supply/BAT0/charge_now)
	FULL=$(cat /sys/class/power_supply/BAT0/charge_full)
	PRC=$(((CURR*100)/FULL))
	
	if [[ $PRC -le 3 ]]; then
		notify-send 'Battery level is critical. System will be shut down in 1 minute.' -u critical
		sleep 60
		shutdown now
	fi
done
