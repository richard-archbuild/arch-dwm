#!/bin/bash
wall="$1"
wal -i "$wall"
cd "$HOME/.dwm"
sudo make clean install & cd $HOME/.st
sudo make clean install & cd $HOME/.dmenu
sudo make clean install
exit
