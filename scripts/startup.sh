#!/bin/bash

setxkbmap gb
setxkbmap -option caps:swapescape
xset r rate 400 30
xrandr --dpi 144
export LC_ALL=C
export _JAVA_AWT_WM_NONREPARENTING=1
wmname LG3G
picom -b
