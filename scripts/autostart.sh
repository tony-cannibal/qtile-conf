#!/usr/bin/bash

killall -9 numlockx udiskie lxpolkit

xset s off -dpms

setxkbmap -option caps:swapescape

numlockx &

udiskie &

lxpolkit &

feh --bg-fill ~/Pictures/Wallpapers/Solarized/sentre.jpg &
