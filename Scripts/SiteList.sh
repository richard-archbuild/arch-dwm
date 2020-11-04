#!/bin/bash
cd "$HOME/Documents/Scripts"
siteList="$(cat sites)"
site="$(cut -d, -f1 <<< $siteList | dmenu)"
firefox "$(grep "$site" <<< "$siteList" |  cut -d, -f2)"
