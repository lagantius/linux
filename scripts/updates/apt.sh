#!/bin/bash

sudo echo "==========> AKTUALIZACE SYSTÉMU <=========="
sudo apt update -y
sudo apt full-upgrade -y

echo "==========> AKTUALIZACE FLATPAKŮ <=========="
flatpak update -y

echo "==========> ODSTRAŇOVÁNÍ BALÍKŮ <=========="
flatpak remove --unused
sudo apt autoremove -y
sudo apt clean -y

echo "==========> AKTUALIZACE HOTOVY <=========="
