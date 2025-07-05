#!/bin/bash
set -euo pipefail
sudo pacman -Syu --noconfirm
sudo pacman -S --noconfirm hydra john nmap
sudo pacman -S --needed --noconfirm curl
if ! command -v yay &>/dev/null; then curl https://raw.githubusercontent.com/averagebagelenjoyer/archdownloads/main/yay.sh | bash -; fi
yay -S --noconfirm metasploit
