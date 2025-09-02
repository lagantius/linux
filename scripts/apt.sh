#!/bin/bash

MINIMAL=$1

########## MINIMAL ##########
sudo apt install sway swaybg swaylock swayimg waybar noto-fonts noto-fonts-cjk ttf-dejavu noto-fonts-emoji vim alacritty cliphist flatpak yazi rofi-wayland brightnessctl fastfetch autotiling base-devel picom go grim slurp xorg-xwayland flatpak mpv librewolf -y

########## EXTRA ##########
if [ "$MINIMAL" = "true" ]; then
	echo "Pokračuji v minimální instalaci"
elif [ "$MINIMAL" = "false" ]; then
	sudo apt install steam lutris prismlauncher chromium btop -y
