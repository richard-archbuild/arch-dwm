#!/bin/bash
echo "username";read user
useradd -m -g wheel "$user"
passwd "$user"

sudo pacman -S wget
curl "https://raw.githubusercontent.com/richard-archbuild/arch-dwm/main/firstrun.sh" > /home/$user/firstrun.sh 

sed -i 's/# %wheel ALL=(ALL) NOPASSWD: ALL/%wheel ALL=(ALL) NOPASSWD: ALL/' /etc/sudoers 
echo "Now Log In As The New User"
