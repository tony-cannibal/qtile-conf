#!/usr/bin/bash

killall -9 numlockx udiskie lxpolkit picom

xset s off -dpms

setxkbmap -option caps:swapescape

numlockx &

udiskie &

lxpolkit &

feh --bg-fill ~/Pictures/Wallpapers/Solarized/sentre.jpg &

picom --config ~/.config/qtile/picom/picom.conf &
