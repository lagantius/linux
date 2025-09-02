#!/bin/bash

MINIMAL=$1

########## MINIMAL ##########
sudo pacman -S sway swaybg swaylock swayimg waybar noto-fonts noto-fonts-cjk ttf-dejavu noto-fonts-emoji vim alacritty cliphist flatpak yazi rofi-wayland brightnessctl fastfetch autotiling base-devel picom go grim slurp xorg-xwayland flatpak mpv --noconfirm

git clone https://aur.archlinux.org/yay.git
cd yay
makepkg -si --noconfirm
cd
mv yay .yay
yay -S librewolf-bin --noconfirm

########## EXTRA ##########
if [ "$MINIMAL" = "true" ]; then
	echo "Pokračuji v minimální instalaci"
elif [ "$MINIMAL" = "false" ]; then
	sudo pacman -S steam lutris prismlauncher chromium btop --noconfirm
