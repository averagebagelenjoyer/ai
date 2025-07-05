#!/bin/bash
set -euo pipefail
sudo pacman -Syu --noconfirm
sudo pacman -S --needed --noconfirm curl
curl https://raw.github.com/averagebagelenjoyer/archdownloads/main/yay.sh | bash -; rm yay.sh
curl https://raw.github.com/averagebagelenjoyer/archdownloads/main/xorg.sh | bash -; rm xorg.sh
