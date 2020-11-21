#!/bin/bash
# Use This After User Setup


sudo pacman -S pywal ranger qutebrowser vim texlive-most iw iwd git xf86-intel xorg-server xorg-init dmenu noto-fonts alsamixer cmus

cd
mkdir Documents
mkdir Pictures
mkdir Pictures/Wallpapers/

git clone https://github.com/richard-archbuild/arch-dwm.git

cd arch-dwm
mv Scripts/ $HOME/Documents/Scripts
mv dwm $HOME/.dwm
mv st $HOME/.st
mv .vimrc $HOME/.vimrc
mv .bashrc $HOME/.bashrc
mv .xinitrc $HOME/.xinitrc
mv Rotes_Boot.jpg $HOME/Pictures/Wallpapers/Rotes_Boot.jpg
mv .startup.sh $HOME/.startup.sh
cd

cd .st
sudo make clean install
cd
cd .dwm
sudo make clean install
echo "Type startx and press enter"



exit
