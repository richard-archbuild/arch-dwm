#!/bin/bash
. "$HOME/.cache/wal/colors.sh"
drive=$(lsblk -l | grep "/." | awk '{print $7}' | dmenu -h 24 -l 5 )
passwd=$(echo "" | dmenu -h 24 -p "Root Password for unmounting $drive" ) 

echo "$passwd" | sudo -S umount "$drive" && 
	{
	echo "" | dmenu -p "Unmounted: $drive" || echo "" | dmenu -p "Could Not Unmount: $drive"
	}

echo "$passwd" | sudo -S rm -r "$drive"
exit
