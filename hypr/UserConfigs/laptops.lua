-- Laptop Devices & Keybinds
local home = os.getenv("HOME")
local scriptsDir = home .. "/.config/hypr/scripts"
local mainMod = "SUPER"

hl.device({
    name = "asue1209:00-04f3:319f-touchpad",
    enabled = true,
})

-- Laptop function keys
hl.bind("XF86KbdBrightnessDown", hl.dsp.exec_cmd(scriptsDir .. "/BrightnessKbd.sh --dec"), { repeating = true })
hl.bind("XF86KbdBrightnessUp", hl.dsp.exec_cmd(scriptsDir .. "/BrightnessKbd.sh --inc"), { repeating = true })
hl.bind("XF86Launch1", hl.dsp.exec_cmd("rog-control-center"))
hl.bind("XF86Launch3", hl.dsp.exec_cmd("asusctl led-mode -n"))
hl.bind("XF86Launch4", hl.dsp.exec_cmd("asusctl profile -n"))
hl.bind("XF86MonBrightnessDown", hl.dsp.exec_cmd(scriptsDir .. "/Brightness.sh --dec"), { repeating = true })
hl.bind("XF86MonBrightnessUp", hl.dsp.exec_cmd(scriptsDir .. "/Brightness.sh --inc"), { repeating = true })
hl.bind("XF86TouchpadToggle", hl.dsp.exec_cmd(scriptsDir .. "/TouchPad.sh"))

-- Screenshots on F6
hl.bind(mainMod .. " + F6", hl.dsp.exec_cmd(scriptsDir .. "/ScreenShot.sh --now"))
hl.bind(mainMod .. " + SHIFT + F6", hl.dsp.exec_cmd(scriptsDir .. "/ScreenShot.sh --area"))
hl.bind(mainMod .. " + CTRL + F6", hl.dsp.exec_cmd(scriptsDir .. "/ScreenShot.sh --in5"))
hl.bind(mainMod .. " + ALT + F6", hl.dsp.exec_cmd(scriptsDir .. "/ScreenShot.sh --in10"))
hl.bind("ALT + F6", hl.dsp.exec_cmd(scriptsDir .. "/ScreenShot.sh --active"))

-- Auto-lock session on lid close
hl.bind("switch:on:Lid Switch", hl.dsp.exec_cmd("hyprlock"), { locked = true })
