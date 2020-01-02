#!/bin/bash

useradd -m -g users -G wheel,video,audio,games,lp,dbus,daemon,rfkill,power,disk,storage,optical -s /bin/bash instalando &&
passwd instalando
