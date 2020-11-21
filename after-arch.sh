#!/bin/bash
echo "username";read user
useradd -m -g wheel "$user"
passwd "$user"

sed -i 's/# %wheel ALL=(ALL) NOPASSWD: ALL/%wheel ALL=(ALL) NOPASSWD: ALL/' /etc/sudoers 
echo "Now Log In As The New User"
