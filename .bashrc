#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

# PROMPT
# RED="$(tput setaf 1)"
GREEN="$(tput setaf 2)"
# YELLOW="$(tput setaf 3)"
BLUE="$(tput setaf 4)"
PURPLE="$(tput setaf 5)"
LBLUE="$(tput setaf 6)"
RESET="$(tput sgr0)"
PS1='[${GREEN}\u${BLUE}@${LBLUE}\h ${PURPLE}\W${RESET}]\$ '

# aliases
alias ls='ls --color=auto'
alias grep='grep --color=auto'
alias vi="/usr/bin/vim"
alias vim="nvim"
alias rfsh="source ~/.bashrc"
alias clean="clear; fortune -a -s"
alias ls="ls --color=auto"
alias l="ls -al"
alias update="yay -Syu; flatpak update"
alias :q="exit"
alias pacman="sudo pacman"
