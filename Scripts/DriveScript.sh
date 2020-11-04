#!/bin/bash
drive=$(lsblk -l | grep "part \'" | awk '{print $1}' | dmenu -l 5 -h 24) 
passwd=$(echo "" | dmenu -p "Root Password" -h 24)
echo "$passwd" | sudo -S mkdir /mnt/"$drive" 
echo "$passwd" | sudo -S mount /dev/"$drive" /mnt/"$drive"/ && 
	{
	echo "" | dmenu -p "Mounted: $drive" || echo "" | dmenu -p "Could Not Mount: $drive" 
	}
exit
