#!/bin/bash
echo "username";read user
useradd -m -g wheel "$user"
passwd "$user"

sed -i 's/# %wheel.ALL=(ALL:ALL).NOPASSWD:.ALL/%wheel ALL=(ALL:ALL) NOPASSWD: ALL/' /etc/sudoers 

sudo pacman -S wget
curl "https://raw.githubusercontent.com/richard-archbuild/arch-dwm/main/firstrun.sh" > /home/$user/firstrun.sh 


echo "Now Log In As The New User"
