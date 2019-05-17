#!/bin/bash

XRESOURCES=/home/rbruggem/.Xresources

xset r rate 250 100
setxkbmap us
xset b off

while true; do
    /usr/local/bin/conky | while read -r; do /usr/bin/xsetroot -name "$REPLY"; done
    sleep 1s
done &

while true
do
    # Check battery level
    BATT=$( /usr/bin/acpi -b | sed 's/.*[charging|unknown], \([0-9]*\)%.*/\1/gi' )
    echo $BATT
    STATUS=$( /usr/bin/acpi -b | sed 's/.*: \([a-zA-Z]*\),.*/\1/gi' )
    echo $STATUS
    if ([ $BATT -le 5 ] && [ $STATUS == 'Discharging' ]); then
        # Beep
        /usr/bin/beep && sleep 0.2
        /usr/bin/beep && sleep 0.2
        /usr/bin/beep && sleep 0.2
    fi

    # Update every 10s
    sleep 10s
done &


if [ -f "$XRESOURCES" ]; then
    xrdb -load $XRESOURCES
fi

xscreensaver &


exec /usr/local/bin/dwm
