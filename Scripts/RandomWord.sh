#!/bin/bash
num=$(wc -l < $HOME/Documents/School/TVC/German/Words.csv)
random=$(shuf -i 1-$num -n 1)
word="$(sed -n -e 's/,.*//'  -e "$random"p $HOME/Documents/School/TVC/German/Words.csv)"
translate="$(echo $word | dmenu -h 24 -p "Random Word")"
[ "$translate" == "no" ] && grep "$word" $HOME/Documents/School/TVC/German/Words.csv | cut -d, -f2 | dmenu
exit
