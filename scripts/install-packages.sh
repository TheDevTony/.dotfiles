#!/bin/bash

sudo pacman -Syu
sudo pacman -S --needed - < ../packages/packages.txt
sudo pip install i3ipc
sh install-python-packages.sh
sh install-yay.sh
yay -S --needed - < ../packages/aur-packages.txt
