#!/bin/bash

if type "xrandr"; then
  for m in $(xrandr --query | grep " connected" | cut -d" " -f1); do
    MONITOR=$m polybar --reload icebar &
  done
else
  polybar --reload icebar &
fi
