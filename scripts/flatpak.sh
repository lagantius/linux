#!/bin/bash

MINIMAL="$1"
sudo -v
########## MINIMAL ##########
flatpak remote-add --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo
flatpak override --user --env=GTK_THEME=Adwaita-dark
flatpak override --user --env=QT_QPA_PLATFORMTHEME=qt5ct
flatpak override --user --env=QT_STYLE_OVERRIDE=Adwaita-Dark

sudo flatpak install flathub com.github.calo001.luna com.infinipaint.infinipaint org.gnome.Calculator -y

########## EXTRA ##########
if [ "$MINIMAL" = "true" ]; then
	echo "Pokračuji v minimální instalaci"
elif [ "$MINIMAL" = "false" ]; then
	#sudo flatpak install flathub dev.vencord.Vesktop io.mgba.mGBA net.kuribo64.melonDS org.azahar_emu.Azahar com.bitwarden.desktop com.obsproject.Studio org.gimp.GIMP -y
	#flatpak override --user --filesystem=~/obrázky dev.vencord.Vesktop
	echo "druha moznost"
fi
