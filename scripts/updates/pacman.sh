#!/bin/bash

sudo echo "==========> AKTUALIZACE SYSTÉMU <=========="
yay -Syu --noconfirm

echo "==========> AKTUALIZACE FLATPAKŮ <=========="
flatpak update -y

echo "==========> ODSTRAŇOVÁNÍ BALÍKŮ <=========="
flatpak remove --unused
yay -Rns $(pacman -Qdtq)
yay -Scc --noconfirm

echo "==========> AKTUALIZACE HOTOVY <=========="
