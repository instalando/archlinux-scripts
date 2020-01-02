#!/bin/bash

echo "pt_BR.UTF-8 UTF-8" >> /etc/locale.gen &&
echo "LANG=pt_BR.UTF-8" >> /etc/locale.conf &&
echo "KEYMAP=br-abnt2" >> /etc/vconsole.conf &&
locale-gen &&
pacman -Sy reflector &&
reflector -c Brazil > /etc/pacman.d/mirrorlist &&
pacman -S linux linux-headers sudo xorg xorg-server gdm gnome gnome-extra vlc engrampa p7zip unrar unzip chromium firefox telegram-desktop mcomix dbeaver gnome-tweaks virtualbox pamac bauh gvfs gvfs-mtp leafpad okular efibootmgr grub reflector uget libreoffice networkmanager network-manager-applet &&
systemctl enable NetworkManager &&
systemctl enable gdm

