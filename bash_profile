#
# ~/.bash_profile
#

[[ -f ~/.bashrc ]] && . ~/.bashrc

# Start i3 if not already running
[ "$(tty)" = "/dev/tty1" ] && ! pgrep -x i3 >/dev/null && exec startx
#

# set path
if [ -d "$HOME/bin" ] ; then
	PATH="$PATH:$HOME/bin"
fi
if [ -d "$HOME/scripts" ] ; then
	PATH="$PATH:$HOME/scripts"
fi

# Set prompt here:
GREEN="\[\e[1;32m\]"
CYAN="\[\e[1;36m\]"
PURPLE="\[\e[1;35m\]"
RED="\[\e[1;31m\]"
RESET="\[\e[0m\]"
BLUE="\[\e[1;34m\]"

PS1="${CYAN}\u${RED}@${CYAN}\h${CYAN}:${RED}\W ${CYAN}\$ ${RESET}"
