
# clone dotfiles
#cp -a dotfiles/. ~/

# clone config
mkdir ~/.config
cp -a config/. ~/.config/

# clone fonts 
mkdir ~/.fonts
cp -a fonts/. ~/.fonts/

# copy firefox userchrome
#cp userChrome.css ~/.mozilla/firefox/zax24kz0.default-release/chrome/userChrome.css
#echo "Change setup.sh firefox path to match yours and run setup again if not working."

# set vscode theme
#bash vscodetheme.sh

# Ask for sudo
echo "! Enter sudo password to install dwm"

# recompile dwm
sudo cp config.h dwm/
cd dwm
sudo make install
cd ..

echo
echo "! Make sure you have "Nord Deep" vscode theme installed."
echo "! Remember to switch on the 'blue' theme by gon in firefox."
echo "! Restart dwm for all changes to apply."
#git apply device.diff -R || echo "No device.diff, continuing without it"
