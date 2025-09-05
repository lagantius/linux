#!/bin/bash

MINIMAL=$1

########## MINIMAL ##########
sudo zypper -n in sway swaybg swaylock swayimg waybar google-noto-fonts google-noto-sans-cjk-fonts dejavu-fonts google-noto-coloremoji-fonts vim alacritty cliphist flatpak mc rofi-wayland brightnessctl fastfetch autotiling-rs picom grim slurp xwayland mpv opi
opi librewolf -n

########## EXTRA ##########
if [ "$MINIMAL" = "true" ]; then
	echo "Pokračuji v minimální instalaci"
elif [ "$MINIMAL" = "false" ]; then
	sudo zypper -n in steam lutris chromium btop
fi
