# dotfiles

My configuration for ArchMirage on i3.

## Install

```
alias dotfiles='/usr/bin/git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME'
echo ".cfg" >> .gitignore
git clone --bare https://github.com/Dale-Muccignat/dotfiles $HOME/.dotfiles
dotfiles checkout
```