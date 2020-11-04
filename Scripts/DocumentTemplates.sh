#!/bin/bash
. "$HOME/.cache/wal/colors.sh"
docType=$(echo -e "Bash Script\nLatex Document\nHTML" | dmenu -p "Document Type")


case "$docType"	in

	"Latex Document")

fileName=$(echo "" | dmenu -p "Name")
cd $HOME/Documents/School/TVC/
cat $HOME/Documents/School/Temp.tex > "$fileName.tex"
urxvt -e vim "$fileName.tex"
;;

	"Bash Script")

fileName=$(echo "" | dmenu -p "Name")
cd "$HOME/Documents/Scripts/"
cat $HOME/Documents/School/Bash.txt > "$fileName.sh"
touch "$fileName.sh" 
urxvt -e vim "$fileName.sh" && chmod +x "$fileName.sh" 
	;;

	"HTML")

fileName=$(echo "" | dmenu -p "Name")
cd "$HOME/Documents/HTML/"
cat "$HOME/Documents/HTML/Template.html" >> "$fileName.html"
urxvt -e vim "$fileName.html"
;;

esac
exit
