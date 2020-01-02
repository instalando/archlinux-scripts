#!/bin/bash

sudo pacman -S wget curl git && mkdir build && cd build && wget https://aur.archlinux.org/cgit/aur.git/snapshot/yay-bin.tar.gz && tar -xvf yay-bin.tar.gz && cd yay-bin && makepkg -sri
