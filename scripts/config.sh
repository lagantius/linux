#!/bin/bash

########## BASH ##########
rm ~/.bashrc
rm ~/.bash_profile
mv ~/linux/bash/bashrc ~/.bashrc
mv ~/linux/bash/bash_profile ~/.bash_profile
source ~/.bashrc

########## HOME ##########
mkdir ~/stažené
mkdir ~/obrázky
mkdir ~/obrázky/screenshoty
mkdir ~/obrázky/tapety
rm -rf ~/Dokumenty ~/Obrázky ~/Šablony ~/Videa ~/Hudba ~/Plocha ~/Stažené ~/Veřejné
rm ~/.config/user-dirs.dirs ~/.config/user-dirs.locale
mv ~/linux/configs/folders ~/.config/user-dirs.dirs
sudo mkdir /mnt/usb1
mkdir ~/.config/scripts

########## CONFIG ##########
mkdir ~/.config/alacritty
mv ~/linux/configs/alacritty ~/.config/alacritty/alacritty.toml

mkdir ~/.config/fastfetch
mv ~/linux/configs/fastfetch ~/.config/fastfetch/config.jsonc

mkdir ~/.config/sway
mv ~/linux/configs/sway ~/.config/sway/config

mkdir ~/.config/rofi
mv ~/linux/configs/rofi ~/.config/rofi/config.rasi

mkdir ~/.config/gtk-3.0
mv ~/linux/configs/gtk ~/.config/gtk-3.0/settings.ini

mkdir ~/.config/waybar
mv ~/linux/configs/waybar ~/.config/waybar/config.jsonc
mv ~/linux/configs/waybar-style ~/.config/waybar/style.css

########## WALLPAPER ##########
if [ "$PKG" = "pacman" ]; then
	mv ~/linux/wallpapers/arch.png ~/obrázky/tapety/default.png
	mv ~/linux/scripts/updates/pacman.sh ~/.config/scripts/update
	chmod +x ~/.config/scripts/update
elif [ "$PKG" = "zypper" ]; then
	mv ~/linux/wallpapers/opensuse.png ~/obrázky/tapety/default.png
	mv ~/linux/scripts/updates/zypper.sh ~/.config/scripts/update
	chmod +x ~/.config/scripts/update
elif [ "$PKG" = "apt" ]; then
	mv ~/linux/wallpapers/debian.png ~/obrázky/tapety/default.png
	mv ~/linux/scripts/updates/apt.sh ~/.config/scripts/update
	chmod +x ~/.config/scripts/update
fi
