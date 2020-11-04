#!/bin/bash
Word=$(cat $HOME/Documents/School/TVC/German/Words.csv | dmenu -i -l 30)
[ -z "$Word" ] && exit || echo "$Word" >> $HOME/Documents/School/TVC/German/Words.csv
cd $HOME/Documents/School/TVC/German/
sort Words.csv >> Word.csv
rm Words.csv; mv Word.csv Words.csv
