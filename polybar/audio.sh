#!/bin/sh

status=$(amixer | cut -d$'\n' -f6 | cut -d'[' -f3 | cut -d']' -f1)

if [ "$status" = "off" ]; then
	printf "\rmuted   "
else
	printf "\r"
fi
