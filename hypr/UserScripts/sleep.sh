
#!/bin/bash
hypridle -w \
  timeout 10 'hyprlock -f' \
  timeout 600 'systemctl suspend' \
  before-sleep 'hyprlock -f' &

