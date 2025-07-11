#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
alias grep='grep --color=auto'
alias sw='swayimg'
alias cs='rm ~/obrázky/screenshoty/*'
alias up='echo "==========> aktualizace systému";yay -Syu;echo "==========> aktualizace flatpaků"; flatpak update'
PS1='\[\033[1;32m\][\u@\h \w] > \[\033[0m\]'
