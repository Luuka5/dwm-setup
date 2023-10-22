
# install useful apps with yay
yay -Syu neovim picom dmenu alacritty firefox xorg feh

# install dwm
yay -S base-devel libx11 libxft libxinerama freetype2 fontconfig
git checkout 6.4
git clone https://git.suckless.org/dwm
cd dwm
git apply ../dwm-masterpatch-6.4.diff
sudo make install
cd ..

# install dwmbar
cd dwmbar
sudo bash install.sh
cd ..

bash setup.sh
