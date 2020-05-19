SIZE=$(swapon --show=SIZE --bytes | cut -d$'\n' -f2 | cut -d$' ' -f2)
USED=$(swapon --show=USED --bytes | cut -d$'\n' -f2 | cut -d$' ' -f2)

if [ "$SIZE" == "" ]; then
	printf "%c%%" '-'
else
	printf "%d%%\n" "$(((USED*100/SIZE)))"
fi
