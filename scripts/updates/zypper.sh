#!/bin/bash

sudo echo "==========> AKTUALIZACE SYSTÉMU <=========="
sudo zypper -n refresh
sudo zypper -n dup

echo "==========> AKTUALIZACE FLATPAKŮ <=========="
flatpak update -y

echo "==========> ODSTRAŇOVÁNÍ BALÍKŮ <=========="
flatpak remove --unused
sudo zypper -n clean --all
sudo zypper -n rm $(zypper packages --orphaned | awk '/^i/ {print $5}')

echo "==========> AKTUALIZACE HOTOVY <=========="
