#!/bin/bash

# Update system
echo "Updating system"
sleep 5
sudo pacman -Syu --noconfirm

# base utilities
echo "Installing base packages"
sleep 5
sudo pacman -S base base-devel git wget curl gpg --noconfirm

# Install yay
echo "Installing yay"
sleep 5
cd
git clone https://aur.archlinux.org/yay.git && cd yay && makepkg -si
cd

# Terminal related
echo "Installing terminal related packages"
sleep 5
sudo pacman -S eza vim neovim alacritty --noconfirm
sudo pacman -S neofetch bottom cmatrix asciiquarium lolcat --noconfirm
yay -S bunnyfetch pfetch nitch --noconfirm

# Apps
echo "Installing applications"
sleep 5
yay -S brave --noconfirm
yay -S visual-studio-code-bin --noconfirm
yay -S spotify --noconfirm

echo "Installing oh-my-bash"
sleep 5
bash -c "$(curl -fsSL https://raw.githubusercontent.com/ohmybash/oh-my-bash/master/tools/install.sh)"
cd

echo "Installing NvChad"
sleep 5
git clone https://github.com/NvChad/starter ~/.config/nvim && nvim
cd