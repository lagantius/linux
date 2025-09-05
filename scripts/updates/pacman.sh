#!/bin/bash

sudo -v
echo ""
echo "==========> AKTUALIZACE SYSTÉMU <=========="
yay -Syu --noconfirm

echo ""
echo "==========> AKTUALIZACE FLATPAKŮ <=========="
flatpak update -y

echo ""
echo "==========> ODSTRAŇOVÁNÍ BALÍKŮ <=========="
flatpak remove --unused -y

orphans=$(yay -Qdtq || true)
if [[ -n "$orphans" ]]; then
	yay -Rns --noconfirm $orphans
fi

yay -Sc --noconfirm

echo ""
echo "==========> AKTUALIZACE HOTOVY <=========="
