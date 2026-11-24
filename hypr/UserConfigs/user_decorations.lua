-- User Decorations with dynamic wallust integration & Retro Gruvbox styling
local home = os.getenv("HOME")
local active_color_1 = "rgba(d8a657ff)" -- Gruvbox gold
local active_color_2 = "rgba(e78a4eff)" -- Gruvbox orange
local inactive_border = "rgba(3c3836bb)"
local group_border = "rgb(503922)"

-- Read wallust colors if available
local f = io.open(home .. "/.config/hypr/wallust/wallust-hyprland.conf", "r")
if f then
    for line in f:lines() do
        local var, val = line:match("^%$([%w_]+)%s*=%s*(.+)")
        if var and val then
            local clean_val = val:gsub("#.*", ""):match("^%s*(.-)%s*$")
            if var == "color10" then group_border = clean_val end
        end
    end
    f:close()
end

hl.config({
    general = {
        border_size = 3,
        gaps_in = 6,
        gaps_out = 6,
        col = {
            active_border = {
                colors = { active_color_1, active_color_2 },
                angle = 45,
            },
            inactive_border = inactive_border,
        },
    },
    decoration = {
        rounding = 0,
        active_opacity = 1.0,
        inactive_opacity = 1.0,
        fullscreen_opacity = 1.0,
        dim_inactive = true,
        dim_strength = 0.08,
        dim_special = 0.45,
        shadow = {
            enabled = true,
            range = 18,
            render_power = 3,
            color = "rgba(100f0fee)",
            color_inactive = "rgba(100f0f88)",
        },
        blur = {
            enabled = true,
            size = 6,
            passes = 2,
            new_optimizations = true,
            noise = 0.015,
            contrast = 0.9,
            brightness = 0.85,
        },
    },
    group = {
        col = {
            border_active = group_border,
        },
    },
})
