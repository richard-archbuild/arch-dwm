--Place this file in your .xmonad/lib directory and import module Colors into .xmonad/xmonad.hs config
--The easy way is to create a soft link from this file to the file in .xmonad/lib using ln -s
--Then recompile and restart xmonad.

module Colors
    ( wallpaper
    , background, foreground, cursor
    , color0, color1, color2, color3, color4, color5, color6, color7
    , color8, color9, color10, color11, color12, color13, color14, color15
    ) where

-- Shell variables
-- Generated by 'wal'
wallpaper="/home/michael/Pictures/Wallpapers/Rotes_Boot.jpg"

-- Special
background="#0b0b1b"
foreground="#d1c7d5"
cursor="#d1c7d5"

-- Colors
color0="#0b0b1b"
color1="#544A5F"
color2="#C63547"
color3="#F75763"
color4="#34539B"
color5="#E97984"
color6="#5E97CB"
color7="#d1c7d5"
color8="#928b95"
color9="#544A5F"
color10="#C63547"
color11="#F75763"
color12="#34539B"
color13="#E97984"
color14="#5E97CB"
color15="#d1c7d5"
