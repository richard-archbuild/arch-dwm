#!/bin/bash
lines=$(cat "$1" | wc -l)
let x=1
books=$(cat "$1")
while [ $x -le $lines ]

do

name=$(sed -n "$x"p <<< "$books" | sed 's/\s/_/g')
data=$(curl -s https://www.googleapis.com/books/v1/volumes?q="$name" |sed -n '/^{/,/}/p' | sed 's/^\s*//g;s/\s/_/g;s/"//g;s/,//g'| grep "^title\|identifier")
echo "$data" | sed 's/identifier/ISBN/;s/title/Title/;s/_/ /g' >> $HOME/Documents/Books/Booklist
((x++))


done
exit
