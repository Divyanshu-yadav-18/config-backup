-- /* ---- 💫 https://github.com/JaKooLit 💫 ---- */
-- Hyprland Lua Configuration
-- Migrated for Hyprland v0.57+

local config_dir = os.getenv("HOME") .. "/.config/hypr"

-- Environment Variables
dofile(config_dir .. "/configs/envariables.lua")
dofile(config_dir .. "/UserConfigs/envariables.lua")

-- Monitors & Workspaces
dofile(config_dir .. "/monitors.lua")
dofile(config_dir .. "/UserConfigs/workspace_rules.lua")

-- Main Configuration & Settings
dofile(config_dir .. "/UserConfigs/user_settings.lua")

-- Look and Feel
dofile(config_dir .. "/UserConfigs/user_decorations.lua")
dofile(config_dir .. "/UserConfigs/user_animations.lua")

-- Laptop & Input Devices
dofile(config_dir .. "/UserConfigs/laptops.lua")

-- Window & Layer Rules
dofile(config_dir .. "/configs/window_rules.lua")
dofile(config_dir .. "/UserConfigs/window_rules.lua")

-- Keybindings & Submaps
dofile(config_dir .. "/configs/keybinds.lua")
dofile(config_dir .. "/UserConfigs/user_keybinds.lua")

-- Autostart Applications (Waybar, Swaync, Wallpaper, Polkit, etc.)
dofile(config_dir .. "/configs/startup_apps.lua")
dofile(config_dir .. "/UserConfigs/startup_apps.lua")
