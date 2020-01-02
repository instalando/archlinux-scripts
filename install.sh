#!/bin/bash

pacman -Sy reflector &&
reflector -c Brazil > /etc/pacman.d/mirrorlist &&
pacstrap -i /mnt base base-devel &&
cp scripts /mnt/scripts &&
genfstab -U /mnt >> /mnt/etc/fstab &&
arch-chroot /mnt
