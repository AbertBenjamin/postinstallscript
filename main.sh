#!/bin/bash

set -e

BASE_URL="https://raw.githubusercontent.com/AbertBenjamin/postinstallscript/master"

mkdir -p ~/postinstallscript
cd ~/postinstallscript

for script in install_packsges setup_dotfiles.sh; do
  echo "Fetching $script..."
  wget -qO "$script" "$BASE_URL/$script"
  chmod +x "$script"
done

sudo pacman -Syu --noconfirm

chmod +x ~/postinstallscript/install_packages.sh
chmod +x ~/postinstallscript/setup_dotfiles.sh

# bash ~/postinstallscript/install_packages.sh

if [ "$1" != "--continue" ]; then

	bash ~/postinstallscript/install_packages.sh

	exec bash "$0" --continue
fi

# create temp .zshrc
touch ~/.zshrc

bash  ~/postinstallscript/setup_dotfiles.sh

echo "setting up temp .zshrc"
echo "source ~/.config/zsh/.zshrc" > ~/.zshrc

echo "setting zsh default shell"
sudo chsh -s $(which zsh) $USERNAME

source "$HOME/.sdkman/bin/sdkman-init.sh"


sdk install java
sdk install kotlin
sdk install maven

sudo systemctl enable sddm.service

git clone https://aur.archlinux.org/yay.git ~
cd yay
makepkg -si

clear

echo "please reboot"

