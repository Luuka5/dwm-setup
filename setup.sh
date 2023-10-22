git apply device.diff || echo "No device.diff, continuing without it"

# clone dotfiles
cp -a dotfiles/. ~/

# clone config
mkdir ~/.config
cp -a config/. ~/.config/

# clone dotfiles
mkdir ~/.fonts
cp -a fonts/. ~/.fonts/

# copy firefox userchrome
cp userChrome.css ~/.mozilla/firefox/zax24kz0.default-release/chrome/userChrome.css
echo "Change setup.sh firefox path to match yours and run setup again if not working."

# set vscode theme
bash vscodetheme.sh

# recompile dwm
sudo cp config.h dwm/
cd dwm
sudo make install
cd ..

echo "Restart dwm for all changes to apply."
git apply device.diff -R || echo "No device.diff, continuing without it"