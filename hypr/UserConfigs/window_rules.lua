-- User Window Rules
hl.window_rule({ match = { class = "^(obsidian|Obsidian|md\\.obsidian\\.Obsidian)$" }, workspace = "1" })
hl.window_rule({ match = { class = "^(zen-alpha|zen|zen-browser|[Ff]irefox|firefox-developer-edition)$" }, workspace = "2" })
hl.window_rule({ match = { class = "^([Cc]laude.*)$" }, workspace = "3" })
hl.window_rule({ match = { class = "^(kitty|Kitty)$" }, workspace = "4" })
hl.window_rule({ match = { class = "^(foot|footclient)$" }, workspace = "5" })
hl.window_rule({ match = { class = "^(thunar|dolphin|pcmanfm.*|[Pp]cmanfm-qt)$" }, workspace = "6" })
hl.window_rule({ match = { class = "^(okular|blender)$" }, workspace = "7" })
hl.window_rule({ match = { class = "^(discord|Discord|[Vv]esktop|[Ww]eb[Cc]ord|.*whatsapp.*|.*instagram.*)$" }, workspace = "8" })
hl.window_rule({ match = { class = "^([Ss]tremio|com\\.stremio\\.Stremio)$" }, workspace = "9" })
hl.window_rule({ match = { class = "^(antigravity)$" }, workspace = "10" })
hl.window_rule({ match = { class = "^(satty|com\\.gabm\\.satty)$" }, fullscreen = 1 })
hl.window_rule({ match = { class = "^(gimp.*|Gimp.*)$", title = "negative:(GNU Image Manipulation Program)" }, float = true })
hl.window_rule({ match = { class = "^(gimp.*|Gimp.*)$", title = "(GNU Image Manipulation Program)" }, tile = true })
hl.window_rule({ match = { class = "^(org\\.inkscape\\.Inkscape|inkscape)$", title = "negative:(Inkscape)" }, float = true })
hl.window_rule({ match = { class = "^(org\\.inkscape\\.Inkscape|inkscape)$", title = "(Inkscape)" }, tile = true })
hl.window_rule({ match = { class = "^(qbittorrent|org\\.qbittorrent\\.qBittorrent)$", title = "negative:(qBittorrent)" }, float = true })
hl.window_rule({ match = { class = "^(qbittorrent|org\\.qbittorrent\\.qBittorrent)$", title = "(qBittorrent v)" }, tile = true })
hl.window_rule({ match = { class = "^(com\\.obsproject\\.Studio)$", title = "negative:(OBS)" }, float = true })
hl.window_rule({ match = { class = "^(com\\.obsproject\\.Studio)$", title = "(OBS)" }, tile = true })
hl.window_rule({ match = { class = "^(org\\.telegram\\.desktop)$", title = "(Choose)" }, float = true })
hl.window_rule({ match = { class = "^(org\\.telegram\\.desktop)$", title = "(Choose)" }, size = "70% 75%" })
hl.window_rule({ match = { class = "^(org\\.telegram\\.desktop)$", title = "(Choose)" }, center = true })
hl.window_rule({ match = { class = "^(.*soffice.*)$", title = "(Open)" }, float = true })
hl.window_rule({ match = { class = "^(.*soffice.*)$", title = "(Open)" }, size = "70% 75%" })
hl.window_rule({ match = { class = "^(.*soffice.*)$", title = "(Open)" }, center = true })

-- Picture-in-Picture smart rules
hl.window_rule({
    match = {
        title = "^(Picture-in-Picture|[Pp]icture [Ii]n [Pp]icture)$",
    },
    float = true,
    pin = true,
    size = "640 360",
    move = "100%-650 100%-370",
})
