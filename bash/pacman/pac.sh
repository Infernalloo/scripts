#!/bin/bash

# Update system
echo "Updating system"
sudo pacman -Syu --noconfirm

# base utilities
echo "Installing base packages"
sudo pacman -S base base-devel git wget curl gpg --noconfirm

# Install yay
echo "Installing yay"
cd
git clone https://aur.archlinux.org/yay.git && cd yay && makepkg -si
cd

# Terminal related
echo "Installing terminal related packages"
sudo pacman -S eza vim neovim alacritty --noconfirm
sudo pacman -S neofetch bottom cmatrix asciiquarium lolcat --noconfirm
yay -S bunnyfetch pfetch nitch --noconfirm

# Apps
echo "Installing applications"
yay -S brave --noconfirm
yay -S visual-studio-code-bin --noconfirm
yay -S spotify --noconfirm