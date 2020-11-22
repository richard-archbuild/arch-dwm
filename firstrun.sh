#!/bin/bash
# Use This After User Setup


sudo pacman -Sy man python-pywal ranger qutebrowser vim texlive-most iw iwd git xf86-video-intel xorg-server xorg-xinit dmenu noto-fonts cmus acpi libxinerama libx11 alsa-utils xorg-xsetroot git zathura zathura-pdf-mupdf keepass

cd
mkdir Documents
mkdir Pictures
mkdir Pictures/Wallpapers/

git clone https://github.com/richard-archbuild/arch-dwm.git

cd arch-dwm
mv Scripts/ $HOME/Documents/Scripts
cd $HOME/Documents/Scripts
chmod +x *
cd

mv dwm $HOME/.dwm
cd .dwm
chmod +x autostart.sh
cd

mv st $HOME/.st
mv .vimrc $HOME/.vimrc
mv .bashrc $HOME/.bashrc
mv .xinitrc $HOME/.xinitrc
mv Rotes_Boot.jpg $HOME/Pictures/Wallpapers/Rotes_Boot.jpg
mv .startup.sh $HOME/.startup.sh
cd

WallpaperChange.sh $HOME/Pictures/Wallpapers/Rotes_Boot.jpg


cd .st
sudo make clean install
cd
cd .dwm
sudo make clean install
echo "Type startx and press enter"



exit
