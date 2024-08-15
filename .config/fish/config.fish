if status is-interactive
    # Commands to run in interactive sessions can go here
end

#sudo alsactl nrestore

set -g fish_greeting
# source ~/.bashrc

if [ "x$TMUX" = x ]
    #neofetch
    fortune -a -s
end

# set vi-style keybinds
fish_vi_key_bindings

set PATH "$HOME/.emacs.d/bin:$PATH"
#set DISPLAY :1.0
#set WAYLAND_DISPLAY $DISPLAY
#set VK_ICD_FILENAMES /usr/share/vulkan/icd.d/radeon_icd.x86_64.json
#set WAYLAND_DISPLAY wayland-0
#set QT_QPA_PLATFORM xcb
# set QT_QPA_PLATFORMTHEME gtk3
set QT_STYLE_OVERRIDE kvantum
set QT_WAYLAND_DECORATION adwaita
#set GTK_THEME Dracula-slim
# set QT_QPA_PLATFORMTHEME qt5ct

# aliases
alias vi="/usr/bin/vim"
alias vim="nvim"
# alias code="codium"
# alias gvim="~/.local/share/applications/neovide.AppImage"
alias rfsh="source ~/.config/fish/config.fish"
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

function fish_prompt
    printf '[%s%s%s@%s%s %s%s%s]><> ' (set_color green ) $USER (set_color blue) (set_color cyan) $hostname (set_color magenta) (basename (prompt_pwd)) (set_color normal)
end

#fish_add_path /home/mxchete/.spicetify
