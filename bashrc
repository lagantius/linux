#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
alias grep='grep --color=auto'
alias sw='swayimage'
PS1='\[\033[1;32m\][\u@\h \w] > \[\033[0m\]'
