#!/bin/bash

set -e

PACKAGES=(
	git
	zsh
	nvim
	tmux
	sway
	stow
	github-cli
	fzf
	ghostty
  firefox
  ttf-jetbrains-nerd-font

	zip
	unzip
	ripgrep
	zoxide
	yq
	fd
	bat
	curl
	wget
  less

	python
	python-pip
	lua
	nodejs
	npm
	go
	rust
	gcc
	clang

  #sway packages
  xterm
  foot
  alacritty
  network-manager-applet
  dmenu
	xclip
	wl-clipboard
  mako
  grim
  slurp
  wofi
  waybar


	)

sudo pacman -S --noconfirm --needed "${PACKAGES[@]}"


	


















