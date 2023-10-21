theme="Community Material Theme Darker High Contrast"

sudo sed -i -e 's/"workbench.colorTheme": ".*"/"workbench.colorTheme": "$theme"/g' "$HOME/.config/Code/User/settings.json"