#!/bin/bash

PKG=$1

########## BASH ##########
rm ~/.bashrc
rm ~/.bash_profile
mv ~/linux/bash/bashrc ~/.bashrc
mv ~/linux/bash/bash_profile ~/.bash_profile
source ~/.bashrc

########## HOME ##########
sudo mkdir /mnt/usb1
mkdir ~/stažené
mkdir ~/obrázky
mkdir ~/obrázky/tapety
mkdir ~/.config/scripts
rm -rf ~/Dokumenty ~/Obrázky ~/Šablony ~/Videa ~/Hudba ~/Plocha ~/Stažené ~/Veřejné
rm ~/.config/user-dirs.dirs ~/.config/user-dirs.locale

########## CONFIG ##########
mv ~/linux/configs/alacritty ~/.config/alacritty
mv ~/linux/configs/fastfetch ~/.config/fastfetch
mv ~/linux/configs/sway ~/.config/sway
mv ~/linux/configs/rofi ~/.config/rofi/config.rasi
mv ~/linux/configs/gtk ~/.config/gtk-3.0
mv ~/linux/configs/waybar ~/.config/waybar
mv ~/linux/configs/mc ~/.config/mc
mv ~/linux/configs/folders ~/.config/user-dirs.dirs

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
