#!/bin/sh

status=$(amixer | cut -d$'\n' -f5 | cut -d'[' -f4 | cut -d']' -f1)

if [ "$status" = "off" ]; then
	printf "\rmuted   "
else
	printf "\r"
fi
