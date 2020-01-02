#!/bin/bash

grub-install /boot/efi &&
grub-mkconfig -o /boot/grub/grub.cfg
