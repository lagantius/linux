#!/bin/bash

sudo echo ""
echo "==========> AKTUALIZACE SYSTÉMU <=========="
sudo apt update -y
sudo apt full-upgrade -y
echo ""

echo ""
echo "==========> AKTUALIZACE FLATPAKŮ <=========="
flatpak update -y
echo""

echo ""
echo "==========> ODSTRAŇOVÁNÍ BALÍKŮ <=========="
flatpak remove --unused
sudo apt autoremove -y
sudo apt clean -y
echo ""

echo ""
echo "==========> AKTUALIZACE HOTOVY <=========="
echo ""
