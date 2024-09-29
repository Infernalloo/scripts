#!/bin/bash

echo "Update and upgrade packages"
sudo dnf update -y  && sudo dnf upgrade -y

echo "Installing base packages"
sudo dnf install git curl wget -y

echo "Installing terminal related packages"
sudo dnf install neovim alacritty python  -y

echo "Installing visual studio code"
sudo rpm --import https://packages.microsoft.com/keys/microsoft.asc
echo -e "[code]\nname=Visual Studio Code\nbaseurl=https://packages.microsoft.com/yumrepos/vscode\nenabled=1\ngpgcheck=1\ngpgkey=https://packages.microsoft.com/keys/microsoft.asc" | sudo tee /etc/yum.repos.d/vscode.repo > /dev/null
dnf check-update
sudo dnf install code -y

echo "Installing Brave"
sudo dnf update -y
sudo rpm --import https://brave-browser-rpm-release.s3.brave.com/brave-core.asc
sudo dnf config-manager --add-repo https://brave-browser-rpm-release.s3.brave.com/brave-browser.repo
sudo dnf install brave-browser -y
