#!/bin/bash

pacman -Sy reflector &&
reflector -c Brazil > /etc/pacman.d/mirrorlist &&
pacstrap -i /mnt base base-devel &&
cp scripts /mnt/scripts
arch-chroot /mnt
