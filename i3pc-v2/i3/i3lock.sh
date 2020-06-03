IMGPTH="/tmp/i3lock.png"
SCROT="scrot /tmp/i3lock.png"

notify-send "Locking ..." -t 2000
$SCROT
convert $IMGPTH -blur 0x69 $IMGPTH
echo locked >/home/sys/i3lock

if [[ $(i3lock -i $IMGPTH -f -e -t) ]]; then
echo lock
fi

rm $IMGPTH
echo unlocked >/home/sys/i3lock
