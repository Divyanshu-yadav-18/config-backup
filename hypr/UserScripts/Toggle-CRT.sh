#!/usr/bin/env bash
# Toggle Retro CRT & Warm Phosphor Shader for Hyprland

SHADER_PATH="$HOME/.config/hypr/shaders/retro_crt.frag"
CURRENT_SHADER=$(hyprctl getoption decoration:screen_shader 2>/dev/null | awk 'NR==1 {print $2}')
NOTIF_ICON="$HOME/.config/swaync/images/ja.png"

if [ "$CURRENT_SHADER" = "[[EMPTY]]" ] || [ -z "$CURRENT_SHADER" ] || [ "$CURRENT_SHADER" = "none" ] || [ "$CURRENT_SHADER" = '""' ]; then
    hyprctl keyword decoration:screen_shader "$SHADER_PATH"
    notify-send -e -u normal -i "$NOTIF_ICON" "Retro CRT Mode" "Phosphor & Scanlines: ENABLED"
else
    hyprctl keyword decoration:screen_shader ""
    notify-send -e -u low -i "$NOTIF_ICON" "Retro CRT Mode" "Phosphor & Scanlines: DISABLED"
fi
