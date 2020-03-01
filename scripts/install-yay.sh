#!/bin/bash

sudo pacman -S gcc fakeroot make
git clone https://aur.archlinux.org/yay.git
cd yay/
makepkg -si
cd ..
rm -rf yay
