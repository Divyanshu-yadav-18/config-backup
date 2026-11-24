-- Startup Applications (System Defaults)
local home = os.getenv("HOME")
local scriptsDir = home .. "/.config/hypr/scripts"

hl.on("hyprland.start", function()
    -- Run initial-boot if not completed
    hl.exec_cmd(home .. "/.config/hypr/initial-boot.sh")

    -- Wallpaper daemon
    hl.exec_cmd("swww-daemon --format xrgb")

    -- Session environment
    hl.exec_cmd("dbus-update-activation-environment --systemd WAYLAND_DISPLAY XDG_CURRENT_DESKTOP")
    hl.exec_cmd("systemctl --user import-environment WAYLAND_DISPLAY XDG_CURRENT_DESKTOP")

    -- Keyboard layout initialization
    hl.exec_cmd(scriptsDir .. "/KeybindsLayoutInit.sh")

    -- Polkit authentication agent
    hl.exec_cmd(scriptsDir .. "/Polkit.sh")

    -- Status bar, notification daemon, and tray
    hl.exec_cmd("nm-applet --indicator")
    hl.exec_cmd("swaync")
    hl.exec_cmd("waybar")
    hl.exec_cmd("qs -c overview")

    -- Clipboard history
    hl.exec_cmd("wl-paste --type text --watch cliphist store")
    hl.exec_cmd("wl-paste --type image --watch cliphist store")

    -- Screen idle locker & night light
    hl.exec_cmd("hypridle")
    hl.exec_cmd(scriptsDir .. "/Hyprsunset.sh init")
    hl.exec_cmd("blueman-applet")
end)
