#!/usr/bin/env bash
# /* ---- 💫 https://github.com/JaKooLit 💫 ---- */  ##
# For applying Animations from different users

# Check if rofi is already running
if pidof rofi > /dev/null; then
  pkill rofi
fi

# Variables
iDIR="$HOME/.config/swaync/images"
SCRIPTSDIR="$HOME/.config/hypr/scripts"
animations_dir="$HOME/.config/hypr/animations"
UserConfigs="$HOME/.config/hypr/UserConfigs"
rofi_theme="$HOME/.config/rofi/config-Animations.rasi"
msg='❗NOTE:❗ This will copy animations into UserAnimations.conf'
# list of animation files, sorted alphabetically with numbers first
animations_list=$(find -L "$animations_dir" -maxdepth 1 -type f | sed 's/.*\///' | sed 's/\.conf$//' | sort -V)

# Rofi Menu
chosen_file=$(echo "$animations_list" | rofi -i -dmenu -config $rofi_theme -mesg "$msg")

# Check if a file was selected
if [[ -n "$chosen_file" ]]; then
    full_path="$animations_dir/$chosen_file.conf"    
    cp "$full_path" "$UserConfigs/UserAnimations.conf"    
    python3 -c "
with open('$UserConfigs/UserAnimations.conf') as f:
    text = f.read()
beziers, anims, enabled = [], [], 'true'
for line in text.splitlines():
    line = line.strip()
    if not line or line.startswith('#') or '=' not in line:
        continue
    k, v = [x.strip() for x in line.split('=', 1)]
    if k == 'enabled': enabled = 'true' if v.lower() in ['true', '1', 'yes'] else 'false'
    elif k == 'bezier': beziers.append(v)
    elif k == 'animation': anims.append(v)
out = ['-- User Animations (Generated from UserAnimations.conf)', 'hl.config({', '    animations = {', f'        enabled = {enabled},']
if beziers:
    out.append('        bezier = {')
    for b in beziers: out.append(f'            \"{b}\",')
    out.append('        },')
if anims:
    out.append('        animation = {')
    for a in anims: out.append(f'            \"{a}\",')
    out.append('        },')
out.extend(['    },', '})'])
with open('$UserConfigs/user_animations.lua', 'w') as f:
    f.write('\n'.join(out) + '\n')
" 2>/dev/null || true
    touch "$HOME/.config/hypr/hyprland.lua"
    hyprctl reload 2>/dev/null || true
    notify-send -u low -i "$iDIR/ja.png" "$chosen_file" "Hyprland Animation Loaded"
fi

sleep 1
"$SCRIPTSDIR/RefreshNoWaybar.sh"
