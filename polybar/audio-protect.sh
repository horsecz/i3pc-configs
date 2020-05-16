#!/bin/sh
prot=$(amixer -D pulse | cut -d$'\n' -f6 | cut -d'[' -f2 | cut -d']' -f1)

#if [ "$prot" = "130%" ] || [ "$prot" = "140%" ] || [ "$prot" = "150%" ] || [ "$prot" = "160%" ] || [ "$prot" = "170%" ] || [ "$prot" = "180%" ] || [ "$prot" = "190%" ] || [ "$prot" = "200%" ] || [ "$prot" = "210%" ] || [ "$prot" = "220%" ] || [ "$prot" = "230%" ] || [ "$prot" = "240%" ] || [ "$prot" = "250%" ]; then
#	pactl set-sink-volume 0 130%
#	pactl set-sink-volume 1 130% 2>/dev/null
#	pactl set-sink-volume 2 130% 2>/dev/null
#	prot=$(amixer -D pulse | cut -d$'\n' -f6 | cut -d'[' -f2 | cut -d']' -f1)	
#else
#	prot=$(amixer -D pulse | cut -d$'\n' -f6 | cut -d'[' -f2 | cut -d']' -f1)
#	pactl set-sink-volume 1 $prot 2>/dev/null
#	pactl set-sink-volume 2 $prot 2>/dev/null
#	pactl set-sink-volume 0 $prot
#fi

printf "%s" "$prot"
