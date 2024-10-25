#!/bin/bash

# Get the battery status and percentage
BATTERY_STATUS=$(cat /sys/class/power_supply/BAT1/status)
BATTERY_PERCENT=$(cat /sys/class/power_supply/BAT1/capacity)

# Check if the battery is not charging and below 97%
if [ "$BATTERY_STATUS" != "Charging" ] && [ "$BATTERY_STATUS" != "Full" ] && [ "$BATTERY_PERCENT" -lt 96 ]; then
    # Display battery percentage with Nerd Font icon
    echo "󰁹 $BATTERY_PERCENT%"
fi
