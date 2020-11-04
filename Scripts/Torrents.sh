#!/bin/bash
choice="$(echo "" | dmenu -p "What do you want to search for?" | sed 's/ /+/g' )"
[ -z "$choice" ] && exit
happy=""
let x=1
let y=1

while [[ "$happy" != "yes" && "$happy" != "exit" ]]
do	
[ $x -eq 1 ] && link="$(curl -s "https://1337x.to/search/$choice/$y/" | grep '<a href="\/torrent')"
	
link2=$(sed -n -e 's/.*<a href=//g' -e "$x"p <<< "$link" | cut -d\" -f2 | sed 's/\///')
happy=$(cut -d\/ -f3 <<< "$link2"| dmenu -p "Happy With This? yes/no/exit")
	
[ $x -eq 20 ] &&  
{ 
let x=0
((y++)) 
}

((x++))
done

magnet=$(curl "https://1337x.to/$link2" | grep "magnet" | sed -n -e 's/.*href="magnet/magnet/;s/".*//' -e 1p) 
echo -e "$magnet" >> "$HOME/Downloads/Files.txt" && xclip <<< "$magnet" 
