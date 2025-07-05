#!/bin/bash
set -euo pipefail
sudo pacman -S --noconfirm base-devel xorg
echo "exec startxfce4" > ~/.xinitrc
sudo reboot
