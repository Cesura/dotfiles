#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
#PS1='[\u@\h \W]\$ '
export PANEL_FIFO="/tmp/panel-fifo"
alias pacman='yaourt --noconfirm'
alias wifi='sudo wifi-menu -o'
export PS1="\[$(tput bold)\]\[$(tput setaf 1)\]\w \[$(tput setaf 2)\]\\$ \[$(tput sgr0)\]"
