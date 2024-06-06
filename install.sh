#!/bin/bash

cp -r .config $HOME/
cp -r .wallpapers $HOME/
cp .xprofile $HOME/
cp .Xresources $HOME/
cp .fehbg $HOME/

sudo pacman -Syu

sudo pacman -S alacritty rofi picom feh \
	zsh git wget curl \
	firefox \
	pavucontrol \
	xorg-xrandr \
	base-devel \
	zip unzip \
	gnome-themes-extra \
	lxappearance \
	noto-fonts-cjk noto-fonts-emoji nerd-fonts ttf-hack-nerd adobe-source-han-sans-otc-fonts \
	net-tools


DOWNLOAD_FOLDER=$HOME/Downloads

mkdir $DOWNLOAD_FOLDER && cd $DOWNLOAD_FOLDER

git clone https://aur.archlinux.org/yay-bin.git
cd yay && makepkg -si && cd ..

sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

yay -S visual-studio-code-bin

