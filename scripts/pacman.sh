#!/bin/bash

MINIMAL=$1

########## MINIMAL ##########
sudo pacman -S sway swaybg swaylock swayimg waybar noto-fonts noto-fonts-cjk ttf-dejavu noto-fonts-emoji vim alacritty cliphist flatpak mc rofi-wayland brightnessctl fastfetch autotiling base-devel picom go grim slurp xorg-xwayland mpv qt5ct qt6ct qt6 nwg-look --noconfirm

git clone https://aur.archlinux.org/yay-bin.git
cd yay-bin
makepkg -si --noconfirm
cd
mv yay-bin .yay-bin
yay -S librewolf-bin --noconfirm

########## EXTRA ##########
if [ "$MINIMAL" = "true" ]; then
	echo "Pokračuji v minimální instalaci"
elif [ "$MINIMAL" = "false" ]; then
	sudo pacman -S steam lutris prismlauncher chromium btop --noconfirm
fi
