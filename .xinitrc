#!/bin/bash

XRESOURCES=/home/rbruggem/.Xresources

xset r rate 250 100
setxkbmap us

while true; do
    /usr/local/bin/conky | while read -r; do /usr/bin/xsetroot -name "$REPLY"; done
    sleep 1s
done &

if [ -f "$XRESOURCES" ]; then
    xrdb -load $XRESOURCES
fi

xscreensaver &


exec /usr/local/bin/dwm
