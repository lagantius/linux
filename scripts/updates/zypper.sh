#!/bin/bash

sudo echo "==========> AKTUALIZACE SYSTÉMU <=========="
sudo zypper refresh -y
sudo zypper dup -y

echo "==========> AKTUALIZACE FLATPAKŮ <=========="
flatpak update -y

echo "==========> ODSTRAŇOVÁNÍ BALÍKŮ <=========="
flatpak remove --unused
sudo zypper clean --all -y
sudo zypper rm $(zypper packages --orphaned | awk '/^i/ {print $5}') -y

echo "==========> AKTUALIZACE HOTOVY <=========="
