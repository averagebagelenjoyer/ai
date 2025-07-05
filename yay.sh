#!/bin/bash
set -euo pipefail
sudo pacman -Syu
sudo pacman -S --noconfirm --needed git base-devel
git clone https://aur.archlinux.org/yay.git
(cd yay && makepkg -si --noconfirm)
rm -rf yay
