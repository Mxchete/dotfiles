# dotfiles
repository to contain linux dotfiles

## Cloning
```
alias dotfiles='/usr/bin/git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME'
git clone --recursive --bare git@github.com:Mxchete/dotfiles.git $HOME/.dotfiles
dotfiles config --local status.showUntrackedFiles no
dotfiles checkout
```
