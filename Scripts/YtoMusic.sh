#!/bin/bash

[[ -z "$1" ]] && echo "The first argument must be a link" && exit
cd "$HOME/Music"
youtube-dl -f 140 -o '%(title)s.%(ext)s' "$1"
