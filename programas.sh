#!/bin/bash

pacman -Sy reflector &&
reflector -c Brazil > /etc/pacman.d/mirrorlist &&
pacman -S linux linux-headers sudo xorg xorg-server gdm gnome gnome-extra vlc engrampa p7zip unrar unzip chromium firefox telegram-desktop mcomix dbeaver gnome-tweaks virtualbox gvfs gvfs-mtp leafpad okular efibootmgr grub reflector uget libreoffice networkmanager network-manager-applet alsa alsa-utils pulseaudio-alsa qalculate-gtk transmission-gtk &&
systemctl enable NetworkManager &&
systemctl enable gdm

