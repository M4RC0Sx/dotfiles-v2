#!/bin/bash

# Terminate already running bar instances
killall -q polybar

# Wait until the processes have been shut down
while pgrep -u $UID -x polybar >/dev/null; do sleep 1; done

for m in $(polybar --list-monitors | cut -d":" -f1); do
    MONITOR=$m polybar --reload bar &
done

# Terminate nm-applet
killall -q nm-applet

# Wait until the processes have been shut down
while pgrep -u $UID -x nm-applet >/dev/null; do sleep 1; done
nm-applet &

#polybar --reload bar &
echo "Polybars launched..."
