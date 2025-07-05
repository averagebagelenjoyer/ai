#!/bin/bash
set -euo pipefail
sudo pacman -Syu
sudo pacman -S --needed --noconfirm base-devel xorg xfce4 xfce4-goodies
echo "exec startxfce4" > ~/.xinitrc
sudo reboot
