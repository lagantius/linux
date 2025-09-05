#!/bin/bash

MINIMAL=$1

########## MINIMAL ##########
sudo apt install sway swaybg swaylock swayimg waybar fonts-noto fonts-noto-cjk fonts-dejavu-core noto-fonts-color-emoji vim alacritty cliphist flatpak mc rofi-wayland brightnessctl fastfetch autotiling picom grim slurp xwayland mpv extrepo -y
sudo extrepo enable librewolf
sudo apt update
sudo apt install librewolf

########## EXTRA ##########
if [ "$MINIMAL" = "true" ]; then
	echo "Pokračuji v minimální instalaci"
elif [ "$MINIMAL" = "false" ]; then
	sudo apt install chromium btop -y
fi
