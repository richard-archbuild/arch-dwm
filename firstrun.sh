#!/bin/bash
# Use This After User Setup
# Run :PlugInstall on first vim usage


sudo pacman -Sq sshfs sc man python-pywal ranger firefox qutebrowser xclip vim iw iwd git texlive-most xf86-video-intel xorg-server xorg-xinit noto-fonts cmus acpi fzf libxinerama libx11 alsa-utils xorg-xsetroot git zathura zathura-pdf-mupdf keepass feh picom mpv alsa-utils pulseaudio ueberzug

curl -fLo ~/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
sudo curl -L https://yt-dl.org/downloads/latest/youtube-dl -o /usr/local/bin/youtube-dl
sudo chmod a+rx /usr/local/bin/youtube-dl


cd $HOME
mkdir Documents Pictures Pictures/Wallpapers/ .config .config/ranger .cache .config/picom/

git clone https://github.com/richard-archbuild/arch-dwm.git

cd arch-dwm
mv -v Scripts/ $HOME/Documents/Scripts
mv -v wal $HOME/.cache/wal
chmod +x $HOME/Documents/Scripts/*

cd $HOME
mv -v arch-dwm/dwm $HOME/.dwm
mv -v arch-dwm/dmenu $HOME/.dmenu
cd $HOME/.dwm
chmod +x autostart.sh
cd $HOME/arch-dwm

mv -v st $HOME/.st
mv -v picom.conf $HOME/.config/picom/picom.conf
mv -v rc.conf $HOME/.config/ranger/rc.conf
mv -v .vimrc $HOME/.vimrc
mv -v .bashrc $HOME/.bashrc
mv -v .xinitrc $HOME/.xinitrc
mv -v Rotes_Boot.jpg $HOME/Pictures/Wallpapers/Rotes_Boot.jpg
mv -v .startup.sh $HOME/.startup.sh
mv -v .fehbg $HOME/.fehbg
chmod +x $HOME/.fehbg
chmod +x $HOME/.startup.sh
cd $HOME
sed -i 's/-h 24//g;s/urxvt/st/g' $HOME/Documents/Scripts/*
source .bashrc



cd .st
sed -i 's!HOME!'"$HOME"'!g' config.h $HOME/.fehbg
sudo make clean install
cd ..


cd .dwm
sed -i 's!HOME!'"$HOME"'!g' config.h autostart.sh
sudo make clean install

cd $HOME/.dmenu
sed -i 's!HOME!'"$HOME"'!g' config.h 
sudo make clean install

clear

echo ""
echo "Now Reboot"
