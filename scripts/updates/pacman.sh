#!/bin/bash

sudo echo ""
echo "==========> AKTUALIZACE SYSTÉMU <=========="
yay -Syu --noconfirm
echo ""

echo ""
echo "==========> AKTUALIZACE FLATPAKŮ <=========="
flatpak update -y
echo ""

echo ""
echo "==========> ODSTRAŇOVÁNÍ BALÍKŮ <=========="
flatpak remove --unused
yay -Rns $(pacman -Qdtq)
yay -Scc --noconfirm
echo ""

echo ""
echo "==========> AKTUALIZACE HOTOVY <=========="
echo ""
