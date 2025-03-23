# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:$HOME/.local/bin:/usr/local/bin:$PATH

# Path to your Oh My Zsh installation.
export ZSH="$HOME/.oh-my-zsh"
export ZSH_CUSTOM="$HOME/.config/zsh"

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time Oh My Zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
ZSH_THEME="robbyrussell"

# Set list of themes to pick from when loading at random
# Setting this variable when ZSH_THEME=random will cause zsh to load
# a theme from this variable instead of looking in $ZSH/themes/
# If set to an empty array, this variable will have no effect.
# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion.
# Case-sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment one of the following lines to change the auto-update behavior
# zstyle ':omz:update' mode disabled  # disable automatic updates
# zstyle ':omz:update' mode auto      # update automatically without asking
# zstyle ':omz:update' mode reminder  # just remind me to update when it's time

# Uncomment the following line to change how often to auto-update (in days).
# zstyle ':omz:update' frequency 13

# Uncomment the following line if pasting URLs and other text is messed up.
# DISABLE_MAGIC_FUNCTIONS="true"

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# You can also set it to another string to have that shown instead of the default red dots.
# e.g. COMPLETION_WAITING_DOTS="%F{yellow}waiting...%f"
# Caution: this setting can cause issues with multiline prompts in zsh < 5.7.1 (see #5765)
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# You can set one of the optional three formats:
# "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# or set a custom format using the strftime function format specifications,
# see 'man strftime' for details.
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load?
# Standard plugins can be found in $ZSH/plugins/
# Custom plugins may be added to $ZSH_CUSTOM/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git)
plugins+=(zsh-vi-mode)
plugins+=(zsh-syntax-highlighting)
plugins+=(zsh-autosuggestions)

ZVM_CURSOR_STYLE_ENABLED=true

VI_MODE="%F{green}-- INSERT --%f"
# The plugin will auto execute this zvm_after_select_vi_mode function
function zvm_after_select_vi_mode() {
  case $ZVM_MODE in
    $ZVM_MODE_NORMAL)
      VI_MODE="%F{red}-- NORMAL --%f"
    ;;
    $ZVM_MODE_INSERT)
      VI_MODE="%F{green}-- INSERT --%f"
    ;;
    $ZVM_MODE_VISUAL)
      VI_MODE="%F{magenta}-- VISUAL --%f"
    ;;
    $ZVM_MODE_VISUAL_LINE)
      VI_MODE="%F{magenta}-- VISUAL LINE --%f"
    ;;
    $ZVM_MODE_REPLACE)
      VI_MODE="%F{cyan}-- REPLACE --%f"
    ;;
  esac
}

source $ZSH/oh-my-zsh.sh

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
if [[ -n $SSH_CONNECTION ]]; then
  export EDITOR='vim'
else
  export EDITOR='nvim'
fi


autoload -Uz vcs_info
precmd() { vcs_info }
zstyle ':vcs_info:git:*' formats '%b '
setopt PROMPT_SUBST
PROMPT='%B%F{green}→%f %F{blue}%n%f%F{black}@%f%F{cyan}%m%f %F{magenta}%1~%f%b %F{yellow}${vcs_info_msg_0_}%f%# '
RPROMPT='%B$VI_MODE%b %F{black}%*%f'
# export PS1=$(PS1) $(zvm_after_select_vi_mode())

# Compilation flags
# export ARCHFLAGS="-arch $(uname -m)"

# Set personal aliases, overriding those provided by Oh My Zsh libs,
# plugins, and themes. Aliases can be placed here, though Oh My Zsh
# users are encouraged to define aliases within a top-level file in
# the $ZSH_CUSTOM folder, with .zsh extension. Examples:
# - $ZSH_CUSTOM/aliases.zsh
# - $ZSH_CUSTOM/macos.zsh
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

alias vi="/usr/bin/vim"
alias vim="nvim"
# alias code="codium"
# alias gvim="~/.local/share/applications/neovide.AppImage"
alias rfsh="source ~/.zshrc"
#alias clean="clear; neofetch; fortune -a -s"
alias clean="clear; fortune -a -s"
alias ls="ls --color=auto"
alias l="ls -al"
alias update="yay -Syu; flatpak update"
#alias btud="sudo grub-mkconfig -o /boot/grub/grub.cfg"
alias :q="exit"
#alias emacs="~/.config/emacs/bin/doom run"
#alias doom="~/.config/emacs/bin/doom"
alias pacman="sudo pacman"
alias fetch="fastfetch"

# Sources
source /opt/tools/Xilinx/Vivado/2024.2/settings64.sh 

# bash libraries
source ~/.bash/analysis.bash
source ~/.bash/cdstack.bash
source ~/.bash/vardump.bash

eval $(thefuck --alias)
