#!/bin/bash
set -euo pipefail
sudo pacman -S --noconfirm base-devel xorg xf86-input-libinput 
echo "exec startxfce4" > ~/.xinitrc
sudo reboot
