#!/bin/bash -e

# Refering https://blog.lilydjwg.me/2015/5/17/input-chinese-to-minecraft-in-linux.93167.html

content=$(zenity --title="中文输入" --width=500 --timeout=0 --entry 2>/dev/null)

# Using xorg or xwayland
sleep 0.1
xdotool key --delay 150 Escape t
sleep 0.2
xdotool type --delay 150 "$content"
xdotool key Return
