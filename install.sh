#!/bin/bash
set -e

# Update system
sudo pacman -Syu

# Install packages
sudo pacman -S --noconfirm base-devel git firefox geany gvfs gvfs-mtp gvfs-gphoto2 polkit thunar-volman fceux xfce4 xfce4-goodies xorg-server xorg-xinit xorg-apps xorg-twm xterm

# Install yay
git clone https://aur.archlinux.org/yay.git
cd yay
makepkg -si
cd ..
rm -rf asm6f

# Install AUR packages
yay asm6f

# Setup Xorg
echo "exec startxfce4" >> ~/.xinitrc

# Reboot
sudo reboot
