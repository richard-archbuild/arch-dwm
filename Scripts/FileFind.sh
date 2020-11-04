#!/bin/bash

input="$(echo "" | dmenu -p "File:" -h 24)"
[ -z "$input" ] && exit
file="$(locate -i "$input" | dmenu -l 5 -h 24)"
fileEnd="$(echo "$file" | sed 's/.*\.//g')"
echo "$fileEnd"
case "$fileEnd" in 

	"pdf"|"epub")
		zathura --fork "$file"
		;;
	
	"py"|"config"|"config.h"|"h"|"sh"|"html"|"csv"|"tex"|"txt"|"conf")
		cd $(sed "s/$input.*//i" <<< "$file")
		urxvt -e vim "$file"
		;;

	"")
		exit
		;;
	*)
	prog=$(echo "" | dmenu -p "What Do I Do?")
	$prog "$file"
		;;

esac
exit
