# Monitor setup
xrandr --output DP-0 --right-of HDMI-0
xrandr --output HDMI-0 --rotate left --auto
xrandr --output DP-0 --pos 1080x340 --rate 144

# DWM status bar
dwmbar &

# Start picom compositor
picom &

# set bg
feh ~/setup/wallpapers/redPlanetMonitor2.png --bg-fill ~/setup/wallpapers/redPlanet.png --bg-fill

# Set wacom tablet to main monitor
xsetwacom --set "Wacom Intuos BT S Pen stylus" MapToOutput HEAD-1
xsetwacom --set "Wacom Intuos BT S Pad pad" button 1 "key PgDn"
xsetwacom --set "Wacom Intuos BT S Pad pad" button 3 "key PgUp"
~/setup/scripts/wacomSetup.sh

# Start DWM
redshift -O3500; xset r rate 300 50; exec dwm
