IMGPTH="/tmp/i3lock.png"
SCROT="scrot /tmp/i3lock.png"

sleep 0.1
$SCROT
convert $IMGPTH -blur 0x5 $IMGPTH
i3lock -i $IMGPTH
rm $IMGPTH
