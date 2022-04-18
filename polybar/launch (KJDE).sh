#!/bin/bash

# Terminate already running bar instances
killall -q polybar
# If all your bars have ipc enabled, you can also use 
# polybar-msg cmd quit

# Launch Polybar, using default config location ~/.config/polybar/config.ini
#polybar left 2>&1 | tee -a /tmp/polybar-left.log & disown
polybar right 2>&1 | tee -a /tmp/polybar-right.log & disown
polybar center 2>&1 | tee -a /tmp/polybar-right.log & disown
echo "Polybar launched..."