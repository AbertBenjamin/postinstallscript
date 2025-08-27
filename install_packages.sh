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
  yazi
  zoxide
  eza
	ghostty
	firefox
	ttf-jetbrains-mono-nerd
  direnv
  kubectl
  fastfetch

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
  swaybg

  # login manager
  sddm
  qt6-5compat
  qt6-declarative 
  qt6-svg

	dmenu
	xclip
	wl-clipboard
	mako
	grim
	slurp
	wofi
	waybar
  mako
  
  btop
  # bluetuith
  brightnessctl
  grim
  slurp

	)

# sdkman install
sudo curl -s "https://get.sdkman.io?ci=true&rcupdate=false" | bash

sudo pacman -S --noconfirm --needed "${PACKAGES[@]}"


