#!/bin/bash
wall="$1"
wal -i "$wall"
sed  -i "s/.*Wallpaper.*/wal -i \/home\/michael\/Pictures\/Wallpapers\/$wall/" $HOME/.dwm/autostart.sh
cd "$HOME/dwm"
sudo make clean install
exit
