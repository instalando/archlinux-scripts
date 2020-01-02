#!/bin/bash

pacman -Sy reflector &&
reflector -c Brazil > /etc/pacman.d/mirrorlist &&
pacstrap -i /mnt base base-devel &&
cp /root/scripts /mnt/scripts -r
rm -rfv /mnt/etc/fstab && genfstab -U /mnt >> /mnt/etc/fstab &&
arch-chroot /mnt
