# Monitor setup
xrandr --output HDMI-0 --pos 0x0 --rotate left --auto
xrandr --output DP-0 --mode 1920x1080 --pos 1080x340 --rate 144

# DWM status bar
dwmbar &

# Start picom compositor
picom &

# set bg
#feh ~/setupV2/wallpapers/secondmonitor.jpg --bg-fill ~/setupV2/wallpapers/primarymonitor.jpg --bg-fill 
exec ~/setup/scripts/wallpaperanimations.sh

# Set wacom tablet to main monitor
xsetwacom --set "Wacom Intuos BT S Pen stylus" MapToOutput HEAD-1
xsetwacom --set "Wacom Intuos BT S Pad pad" button 1 "key PgDn"
xsetwacom --set "Wacom Intuos BT S Pad pad" button 3 "key PgUp"
~/setup/scripts/wacomSetup.sh

# Start DWM
#redshift -O3500; xset r rate 300 50; exec dwm

# Instantly restart dwm if closed
while type dwm >/dev/null ; do dwm && continue || break ;done
