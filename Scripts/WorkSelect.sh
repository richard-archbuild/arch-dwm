#!/bin/bash
. "$HOME/.cache/wal/colors.sh"
cd $HOME/Documents/School/TVC/
folder=$(ls | dmenu -h 24)
cd "$folder"
work=$(find | grep -Ev '(pdf|aux|log|bak)' | sed 's/\.\///' | dmenu -h 24)
[ -z "$work" ] && exit || urxvt -e vim "$work"
exit
