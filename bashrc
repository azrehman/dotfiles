#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return



alias ls='ls --color=auto'

if [[ -t 0 && $- = *i* ]]
then
	stty -ixon # disable ctrl-s and ctrl-q
fi
shopt -s autocd # changes dir just by typing in dir name

shopt -s checkwinsize

set bell-style none
set -o noclobber


export EDITOR="vim"
export TERMINAL="rxvt-unicode"
export TERM="xterm-256color"
export BROWSER="firefox"

export HISTSIZE=8000
export HISTFILESIZE=8000

# ls colors
 export LS_COLORS="$(vivid generate snazzy_custom)"

# clean configs
export MYVIMRC="~/.vim/vimrc"  #or any other location you want
export VIMINIT="source $MYVIMRC"
export XDG_CONFIG_HOME="$HOME/.config"
export XDG_DATA_HOME="$HOME/.local/share"
export XDG_CACHE_HOME="$HOME/.cache"
export GTK2_RC_FILES="${XDG_CONFIG_HOME:-$HOME/.config}/gtk-2.0/gtkrc-2.0"
export CARGO_HOME="${XDG_DATA_HOME:-$HOME/.local/share}/cargo"

alias rm="rm -I"
alias mv="mv -iv"
alias cp="cp -iv"
alias ffmpeg="ffmpeg -hide_banner"

alias ls="ls -hN --color=auto --group-directories-first"
alias la="ls -la -hN --color=auto --group-directories-first"
alias ll="ls -l -hN --color=auto --group-directories-first"
alias l1="ls -1 -hN --color=auto --group-directories-first"
alias grep="grep -i --color=auto"
alias diff="diff --color=auto"
alias ccat="highlight --out-format=ansi"

alias v="$EDITOR"
alias vim="nvim"
alias p="sudo pacman"
alias g="git"
alias ka="killall"


# set path
if [ -d "$HOME/bin" ] ; then
	PATH="$PATH:$HOME/bin"
fi
if [ -d "$HOME/.scripts" ] ; then
	PATH="$PATH:$HOME/.scripts"
fi
# Set prompt here:
GREEN="\[\e[1;32m\]"
CYAN="\[\e[1;36m\]"
PURPLE="\[\e[1;35m\]"
RED="\[\e[1;31m\]"
RESET="\[\e[0m\]"
BLUE="\[\e[1;34m\]"
# 256
HOTPINK="\[\e[01;38;5;205m\]"
PINK="\[\e[01;38;5;211m\]"
SEAGREEN="\[\e[01;38;5;49m\]"
SKYBLUE="\[\e[01;38;5;51m\]"
LIGHTBLUE="\[\e[01;38;5;45m\]"
LAV="\[\e[01;38;5;183m\]"


# PS1="${GREEN}\u${RED}@${GREEN}\h${GREEN}:${RED}\W ${GREEN}\$ ${RESET}"
PS1="${PINK}\u${LIGHTBLUE}@${PINK}\h${PINK}:${LIGHTBLUE}\W ${PINK}\$ ${RESET}"


