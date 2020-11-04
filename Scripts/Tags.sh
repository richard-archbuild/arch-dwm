#!/bin/bash
echo "Album";read album
echo "Artist";read artist
let x=1
y=$(ls | wc -l)
file="$(ls)"

while [ $x -le $y ]
do

file2="$(sed -n "$x"p <<< "$file")"
ffmpeg -y -nostdin -i "$file2" -acodec copy -metadata album="$album" -metadata album_artist="$album" -metadata artist="$artist" "new - $file2"
((x++))

done
exit
