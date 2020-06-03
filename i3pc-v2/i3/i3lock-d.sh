#!/bin/sh

VAL=$(cat /home/sys/i3lock)

if [[ "$VAL" != "unlocked" ]]; then
	~/.config/i3/i3lock_reboot.sh # when startup, it uses faster lock without blur
	#notify-send -u critical "Device was forcibly shut down in locked mode! Required password for login now"
fi
