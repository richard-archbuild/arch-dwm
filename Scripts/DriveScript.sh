#!/bin/bash
drive=$(lsblk -l | grep "part \'" | awk '{print $1}' | dmenu -l 5 -h 24) 
sudo mkdir /mnt/"$drive" 
sudo mount /dev/"$drive" /mnt/"$drive"/ && 
	{
	echo "" | dmenu -p "Mounted: $drive" || echo "" | dmenu -p "Could Not Mount: $drive" 
	}
exit
