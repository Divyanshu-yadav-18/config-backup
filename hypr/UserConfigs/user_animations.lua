-- User Animations (Retro-Smooth Workstation Profile)
hl.config({
    animations = {
        enabled = true,
        bezier = {
            "retroSnap, 0.16, 1, 0.3, 1",
            "retroDecel, 0.05, 0.9, 0.1, 1.05",
            "retroGlide, 0.25, 1, 0.5, 1",
            "liner, 1, 1, 1, 1",
        },
        animation = {
            "windows, 1, 4, retroSnap, slide",
            "windowsIn, 1, 3.5, retroSnap, popin 80%",
            "windowsOut, 1, 3, retroSnap, popin 80%",
            "windowsMove, 1, 4, retroSnap, slide",
            "border, 1, 1, liner",
            "borderangle, 1, 30, liner, loop",
            "fade, 1, 4, default",
            "workspaces, 1, 4, retroGlide, slide",
            "specialWorkspace, 1, 4, retroSnap, slidevert",
        },
    },
})
