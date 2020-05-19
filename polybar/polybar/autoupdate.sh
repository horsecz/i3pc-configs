#!/bin/sh

# autoupdate checker by horse
# required script in /home/sys/update.sh !!!

while [[ 1 -eq 1 ]]; do
if [[ -e /home/sys/update-status ]]; then
	STATUS=$(cat /home/sys/update-status)
	
	if [[ "$STATUS" = "sleep" ]]; then
		printf "waiting"
	elif [[ "$STATUS" = "update" ]]; then
		printf "updating"
	fi
fi
done
