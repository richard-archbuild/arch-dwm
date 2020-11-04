#!/bin/bash
choice=$(echo "" | dmenu -p "Book Name?" | tr [:upper:] [:lower:] | sed "s/\ /+/g")
ext=$(echo -e "pdf\ntxt\nepub" | dmenu -p "File Type?")
search="$(curl -s http://libgen.li/foreignfiction/index.php?s=$choice&res=25&f_lang=&f_ext=$ext&f_columns=0)"

bookChoice="no"
head=4


while [[ "$bookChoice" != "yes" && "$bookChoice" != "exit" ]]
do
book="$(echo "$search" | grep "td width" | sed "s/\t//g" | grep -v "td width=150" | grep -v "<b>"| head -"$head" | tail -4)"
bookChoice="$(echo "$book" |sed 's|<[^>]*>||g'| dmenu -p "yes/exit/press enter" -l 10 )"

if [[ "$bookChoice" == "yes" ]]
then
	link1="$(echo "$book" | grep "https" | cut -d\' -f 2)" 
	curl "$link1" | grep -i "get"

fi
done
