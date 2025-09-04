#!/bin/bash

sudo echo ""
echo "==========> AKTUALIZACE SYSTÉMU <=========="
sudo zypper -n refresh
sudo zypper -n dup
echo ""

echo ""
echo "==========> AKTUALIZACE FLATPAKŮ <=========="
flatpak update -y
echo ""

echo ""
echo "==========> ODSTRAŇOVÁNÍ BALÍKŮ <=========="
flatpak remove --unused
sudo zypper -n clean --all
sudo zypper -n rm $(zypper packages --orphaned | awk '/^i/ {print $5}')
echo ""

echo ""
echo "==========> AKTUALIZACE HOTOVY <=========="
echo ""
