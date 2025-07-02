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
sudo pacman -S --noconfirm base-devel git firefox geany gvfs gvfs-mtp gvfs-gphoto2 polkit thunar-volman fceux xfce4 xfce4-goodies xorg-server xorg-xinit xorg-apps xorg-twm xterm

# Install yay
echo "Installing yay..."
if ! command -v yay &>/dev/null; then
    git clone https://aur.archlinux.org/yay.git
    (cd yay && makepkg -si)
    rm -rf yay
else
    echo "Skipping..."
fi

# Install AUR packages
echo "Installing AUR packages..."
yay -S --noconfirm asm6f

# Update system
echo "Updating ALL packages..."
yay -Syu

# Setup Xorg
echo "Setting up Xorg..."
echo "exec startxfce4" > ~/.xinitrc

# Reboot
echo "Rebooting..."
sudo reboot
