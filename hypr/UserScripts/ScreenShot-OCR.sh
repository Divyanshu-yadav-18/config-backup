#!/usr/bin/env bash
# /* ---- ScreenShot OCR (Extract text from screen to clipboard) ---- */

notif="$HOME/.config/swaync/images/ja.png"

# Check dependencies
for cmd in grim slurp tesseract wl-copy notify-send; do
    if ! command -v "$cmd" &>/dev/null; then
        notify-send -u critical -i "$notif" "OCR Error" "Missing dependency: $cmd"
        exit 1
    fi
done

# Select region
geometry=$(slurp 2>/dev/null)
if [ -z "$geometry" ]; then
    exit 0
fi

# Capture and run OCR
ocr_text=$(grim -g "$geometry" -t png - 2>/dev/null | tesseract stdin stdout -l eng 2>/dev/null)

# Clean and trim text
cleaned_text=$(echo "$ocr_text" | sed -e 's/^[[:space:]]*//' -e 's/[[:space:]]*$//')

if [ -n "$cleaned_text" ]; then
    echo -n "$cleaned_text" | wl-copy
    # Truncate preview for notification
    preview=$(echo "$cleaned_text" | head -n 3)
    notify-send -u normal -i "$notif" "OCR Copied to Clipboard" "$preview"
else
    notify-send -u low -i "$notif" "OCR Failed" "No text recognized in selected area"
fi
