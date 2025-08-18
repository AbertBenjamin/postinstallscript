#!/bin/bash

set -e

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

echo "====starting zsh"
chsh =s /bin/zsh

exec tmux new-session -s main -c ~ zsh
clear

