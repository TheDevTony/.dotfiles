#!/bin/bash

xrandr --output DP1-3 --scale 2x2 --auto --right-of eDP1
xrandr --output DP1-1 --scale 1.5x1.5 --auto --left-of eDP1

# Seems to only need to be executed once
# boltctl enroll c2010000-0050-5c0e-03c3-df144603d221

sh ~/.screenlayout/dock.sh
