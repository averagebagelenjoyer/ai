#!/bin/bash
set -euo pipefail
sudo pacman -Syu
curl https://raw.github.com/averagebagelenjoyer/archdownloads/main/yay.sh | bash -
curl https://raw.github.com/averagebagelenjoyer/archdownloads/main/xorg.sh | bash -
