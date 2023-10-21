
# install useful apps with yay
yay -Syu neovim picom dmenu alacritty firefox xorg

# install dwm
git clone https://git.suckless.org/dwm
cd dwm
git apply ../dwm-masterpatch-6.4.diff
sudo make clean install
cd ..

# install dwmbar
cd dwmbar
sudo bash install.sh
cd ..

# clone dotfiles
cp -a dotfiles/. ~/t/

# clone config
mkdir ~/t/.config
cp -a config/. ~/t/.config/

# clone dotfiles
mkdir ~/t/.fonts
cp -a fonts/. ~/t/.fonts/
