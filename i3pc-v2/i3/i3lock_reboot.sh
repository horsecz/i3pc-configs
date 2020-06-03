IMGPTH="/home/sys/i3lock-err.png"

notify-send "Fast locking ..." -t 500
echo locked >/home/sys/i3lock

if [[ $(i3lock -i $IMGPTH -f -e) ]]; then
echo lock
fi

echo unlocked >/home/sys/i3lock
