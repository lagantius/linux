#!/bin/bash

git clone https://github.com/AdnanHodzic/auto-cpufreq.git
sudo ~/auto-cpufreq/auto-cpufreq-installer

sudo auto-cpufreq --install
echo "==========> AUTO-CPUFREQ NAINSTALOVÁN <=========="
rm -rf auto-cpufreq
