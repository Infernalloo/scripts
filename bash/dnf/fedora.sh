#!/bin/bash

echo "Update and upgrade packages"
sleep 5
sudo dnf update -y  && sudo dnf upgrade -y

echo "Installing base packages"
sleep 5
sudo dnf install git curl wget -y

echo "Installing terminal related packages"
sleep 5
sudo dnf install neovim alacritty python  -y

echo "Installing visual studio code"
sleep 5
sudo rpm --import https://packages.microsoft.com/keys/microsoft.asc
echo -e "[code]\nname=Visual Studio Code\nbaseurl=https://packages.microsoft.com/yumrepos/vscode\nenabled=1\ngpgcheck=1\ngpgkey=https://packages.microsoft.com/keys/microsoft.asc" | sudo tee /etc/yum.repos.d/vscode.repo > /dev/null
dnf check-update
sudo dnf install code -y

echo "Installing Brave"
sleep 5
sudo dnf update -y
sudo rpm --import https://brave-browser-rpm-release.s3.brave.com/brave-core.asc
sudo dnf config-manager --add-repo https://brave-browser-rpm-release.s3.brave.com/brave-browser.repo
sudo dnf install brave-browser -y

echo "Installing oh-my-bash"
sleep 5
bash -c "$(curl -fsSL https://raw.githubusercontent.com/ohmybash/oh-my-bash/master/tools/install.sh)"
cd

echo "Installing NvChad"
sleep 5
git clone https://github.com/NvChad/starter ~/.config/nvim && nvim
cd