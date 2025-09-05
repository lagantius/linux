#!/bin/bash

sudo -v
echo ""
echo "==========> AKTUALIZACE SYSTÉMU <=========="
sudo apt update -y
sudo apt full-upgrade -y

echo ""
echo "==========> AKTUALIZACE FLATPAKŮ <=========="
flatpak update -y

echo ""
echo "==========> ODSTRAŇOVÁNÍ BALÍKŮ <=========="
flatpak remove --unused
sudo apt autoremove -y
sudo apt autoclean -y

echo ""
echo "==========> AKTUALIZACE HOTOVY <=========="
