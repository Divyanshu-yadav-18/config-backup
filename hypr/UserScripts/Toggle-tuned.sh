#!/usr/bin/env bash
# Toggle Hyprland animations on/off for performance or visual flair

ANIMATIONS_STATE=$(hyprctl getoption animations:enabled | awk 'NR==1{print $2}')
NOTIF_ICON="preferences-desktop-display"

if [ "$ANIMATIONS_STATE" = "1" ]; then
    hyprctl keyword animations:enabled 0
    notify-send -e -u low -i "$NOTIF_ICON" "Hyprland Performance" "Animations: OFF"
else
    hyprctl keyword animations:enabled 1
    notify-send -e -u normal -i "$NOTIF_ICON" "Hyprland Aesthetics" "Animations: ON"
fi
