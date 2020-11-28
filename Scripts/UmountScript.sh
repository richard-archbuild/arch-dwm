#!/bin/bash
drive=$( lsblk -lno mountpoint | grep -v "^$\|\/$\|\/boot$"  | dmenu -h 24 -l 5 )

sudo umount "$drive" && 
	{
	echo "" | dmenu -p "Unmounted: $drive" || echo "" | dmenu -p "Could Not Unmount: $drive"
	}

sudo rm -r "$drive"
exit
