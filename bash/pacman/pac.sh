#!/bin/bash

# Update system
sudo pacman -Syu --noconfirm

# base utilities
sudo pacman -S base base-devel git wget curl gpg --noconfirm

# Install yay
cd
git clone https://aur.archlinux.org/yay.git && cd yay && makepkg -si
cd

# Terminal related
sudo pacman -S eza vim neovim alacritty --noconfirm
sudo pacman -S neofetch bottom cmatrix asciiquarium lolcat --noconfirm
yay -S bunnyfetch pfetch nitch --noconfirm

# Apps
yay -S brave --noconfirm
yay -S visual-studio-code-bin --noconfirm
yay -S spotify --noconfirm

## STEAM ##
sudo pacman -S steam --noconfirm
# wine dependencies
sudo pacman -S --needed --noconfirm wine-staging giflib lib32-giflib libpng lib32-libpng libldap lib32-libldap gnutls lib32-gnutls \
mpg123 lib32-mpg123 openal lib32-openal v4l-utils lib32-v4l-utils libpulse lib32-libpulse libgpg-error \
lib32-libgpg-error alsa-plugins lib32-alsa-plugins alsa-lib lib32-alsa-lib libjpeg-turbo lib32-libjpeg-turbo \
sqlite lib32-sqlite libxcomposite lib32-libxcomposite libxinerama lib32-libgcrypt libgcrypt lib32-libxinerama \
ncurses lib32-ncurses ocl-icd lib32-ocl-icd libxslt lib32-libxslt libva lib32-libva gtk3 \
lib32-gtk3 gst-plugins-base-libs lib32-gst-plugins-base-libs vulkan-icd-loader lib32-vulkan-icd-loader
# amd drivers
sudo pacman -S --needed --noconfirm lib32-mesa vulkan-radeon lib32-vulkan-radeon vulkan-icd-loader lib32-vulkan-icd-loader
