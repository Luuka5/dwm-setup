theme=${1:-spacerice}

# clone dotfiles
cp -a dotfiles/. ~/t/

# clone config
mkdir ~/t/.config
cp -a config/. ~/t/.config/
cp -a config/. ~/t/.config/

# clone dotfiles
mkdir ~/t/.fonts
cp -a fonts/. ~/t/.fonts/

# recompile dwm
cd dwm
sudo make install
cd ..

startx