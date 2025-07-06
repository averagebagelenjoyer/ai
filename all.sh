#!/bin/bash
set -euo pipefail
sudo pacman -Syu --noconfirm
sudo pacman -S --needed --noconfirm curl
curl https://raw.githubusercontent.com/averagebagelenjoyer/archdownloads/main/yay.sh | bash -
curl https://raw.githubusercontent.com/averagebagelenjoyer/archdownloads/main/xorg.sh | bash -
curl https://raw.githubusercontent.com/averagebagelenjoyer/archdownloads/main/cyber.sh | bash -
