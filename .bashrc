#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
alias yaourt='yaourt --noconfirm'
#PS1='[\u@\h \W]\$ '
export PATH=$PATH:/home/brad/bin

function _update_ps1() {
	PS1="$(~/bin/powerline-shell.py $? 2> /dev/null)"
}

if [ "$TERM" != "linux" ]; then
	PROMPT_COMMAND="_update_ps1; $PROMPT_COMMAND"
fi
