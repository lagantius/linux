#!/bin/bash

sudo -v
echo ""
echo "==========> AKTUALIZACE SYSTÉMU <=========="
sudo zypper -n refresh
sudo zypper -n dup

echo ""
echo "==========> AKTUALIZACE FLATPAKŮ <=========="
flatpak update -y

echo ""
echo "==========> ODSTRAŇOVÁNÍ BALÍKŮ <=========="
flatpak remove --unused

orphans=$(zypper packages --orphaned | awk '/^i/ {print $5}' || true)
if [[ -n "$orphans" ]]; then
	sudo zypper -n rm $orphans
fi

sudo zypper -n clean --all

echo ""
echo "==========> AKTUALIZACE HOTOVY <=========="
