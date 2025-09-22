#!/bin/bash

PKG=$1
sudo -v

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
mv ~/linux/configs/alacritty ~/.config
mv ~/linux/configs/fastfetch ~/.config
mv ~/linux/configs/sway ~/.config
mv ~/linux/configs/rofi ~/.config
mv ~/linux/configs/gtk ~/.config/gtk-3.0
mv ~/linux/configs/waybar ~/.config
mv ~/linux/configs/mc ~/.config
mv ~/linux/configs/user-dirs.dirs ~/.config

########## WALLPAPER ##########
if [ "$PKG" = "pacman" ]; then
	mv ~/linux/wallpapers/arch.png ~/obrázky/tapety/default.png
	mv ~/linux/scripts/updates/pacman.sh ~/.config/scripts/update
	chmod +x ~/.config/scripts/update
elif [ "$PKG" = "zypper" ]; then
	mv ~/linux/wallpapers/opensuse.png ~/obrázky/tapety/default.png
	mv ~/linux/scripts/updates/zypper.sh ~/.config/scripts/update
	chmod +x ~/.config/scripts/update

 	sudo mv /usr/sbin/reboot /usr/bin/reboot
	sudo mv /usr/sbin/shutdown /usr/bin/shutdown
elif [ "$PKG" = "apt" ]; then
	mv ~/linux/wallpapers/debian.png ~/obrázky/tapety/default.png
	mv ~/linux/scripts/updates/apt.sh ~/.config/scripts/update
	chmod +x ~/.config/scripts/update

	sudo mv /usr/sbin/reboot /usr/bin/reboot
	sudo mv /usr/sbin/shutdown /usr/bin/shutdown
fi
