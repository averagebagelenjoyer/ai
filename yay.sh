#!/bin/bash
set -euo pipefail
sudo pacman -S --noconfirm --needed git
git clone https://aur.archlinux.org/yay.git
(cd yay && makepkg -si --noconfirm)
rm -rf yay
