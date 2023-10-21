
# Bin for cargo and some custom scripts
PATH="$PATH:/home/touko/.cargo/bin:/home/touko/.custom_app_bin"

export QT_QPA_PLATFORMTHEME=qt5ct

if [[ -z $DISPLAY ]] && [[ $(tty) = /dev/tty1 ]]; then
  startx
fi
