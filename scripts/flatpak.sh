#!/bin/bash

MINIMAL="$1"

########## MINIMAL ##########
flatpak remote-add --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo
flatpak override --user --env=GTK_THEME=Adwaita-dark
flatpak override --user --env=QT_QPA_PLATFORMTHEME=qt5ct
flatpak override --user --env=QT_STYLE_OVERRIDE=Adwaita-Dark

flatpak install flathub com.github.calo001.luna com.github.PintaProject.Pinta org.gnome.Calculator -y

########## EXTRA ##########
if [ "$MINIMAL" = "true" ]; then
	echo "Pokračuji v minimální instalaci"
elif [ "$MINIMAL" = "false" ]; then
	flatpak install flathub dev.vencord.Vesktop io.mgba.mGBA net.kuribo64.melonDS org.azahar_emu.Azahar com.bitwarden.desktop -y
	flatpak override --user --filesystem=~/obrázky dev.vencord.Vesktop
fi
