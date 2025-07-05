#!/bin/bash
set -euo pipefail

# Cache sudo password
echo "Caching sudo password..."
sudo -v

# Update system
echo "Updating packages..."
sudo pacman -Syu

# Install packages
echo "Installing packages..."
sudo pacman -S --noconfirm base-devel xorg xf86-input-libinput 

# Install yay
echo "Installing yay..."
if ! command -v yay &>/dev/null; then
    git clone https://aur.archlinux.org/yay.git
    (cd yay && makepkg -si)
    rm -rf yay
else
    echo "Skipping..."
fi

# Update system
echo "Updating ALL packages..."
yay -Syu

# Install AUR packages
echo "Installing AUR packages..."

# Setup Xorg
echo "Setting up Xorg..."
echo "exec startxfce4" > ~/.xinitrc

# Reboot
echo "Rebooting..."
sudo reboot
