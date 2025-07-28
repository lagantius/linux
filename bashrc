#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
alias grep='grep --color=auto'
alias sw='swayimg'
alias cs='rm ~/obrázky/screenshoty/*'
alias up='echo "==========> aktualizace systému";yay -Syu --noconfirm;echo "==========> aktualizace flatpaků"; flatpak update -y; flatpak remove --unused;'
alias fd='sudo mount /dev/sdc1 /mnt/usb1'
alias fdr='sudo umount /mnt/usb1'
alias slp='systemctl suspend && swaylock -k --indicator-idle-visible -i ~/obrázky/tapety/arch-pacman.png'
alias gpgkill='gpgconf --kill gpg-agent'
PS1='\[\033[1;32m\][\u@\h \w] > \[\033[0m\]'
