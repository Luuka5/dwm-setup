theme=${1:-spacerice}

# clone dotfiles
cp -a dotfiles/. ~/

# clone config
mkdir ~/.config
cp -a config/. ~/.config/
cp -a config/. ~/.config/

# clone dotfiles
mkdir ~/.fonts
cp -a fonts/. ~/.fonts/

# copy firefox userchrome
cp userChrome.css ~/.mozilla/firefox/93ike1gy.default-release/chrome/userChrome.css

# set vscode theme
bash vscodetheme.sh

# recompile dwm
cp config.h dwm/
cd dwm
sudo make install
cd ..

echo "Restart dwm for all changes to apply."