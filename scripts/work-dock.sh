#!/bin/bash

xrandr --output DP-1-1 --scale 2x2 --right-of eDP-1
xrandr --output DP-1-3 --scale 1.5x1.5 --left-of eDP-1

# Seems to only need to be executed once
# boltctl enroll c2010000-0050-5c0e-03c3-df144603d221

sh ~/.screenlayout/dock.sh
