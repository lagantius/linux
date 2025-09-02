#!/bin/bash

MINIMAL=$1

########## MINIMAL ##########
sudo zypper in sway swaybg swaylock swayimg waybar google-noto-fonts google-noto-fonts-cjk dejavu-fonts google-noto-fonts-emoji vim alacritty cliphist flatpak yazi rofi-wayland brightnessctl fastfetch autotiling-rs picom grim slurp xwayland mpv librewolf -y

########## EXTRA ##########
if [ "$MINIMAL" = "true" ]; then
	echo "Pokračuji v minimální instalaci"
elif [ "$MINIMAL" = "false" ]; then
	sudo zypper in steam lutris prismlauncher chromium btop -y
