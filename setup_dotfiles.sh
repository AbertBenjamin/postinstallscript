#!/bin/bash

set -e

if [ -d ~/dotfiles ]; then
	rm -rf ~/dotfiles
fi

git clone https://github.com/AbertBenjamin/dotfiles ~/dotfiles

cd ~/dotfiles 
stow */
cd 

echo "execute permissions for zsh functions"
chmod +x ~/.config/zsh/zsh-functions

tmux source-file .config/tmux/tmux.conf

