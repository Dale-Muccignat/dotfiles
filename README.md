# dotfiles

My configuration for ArchMirage on i3.

## Install

```
alias dotfiles='/usr/bin/git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME'
echo ".cfg" >> .gitignore
git clone --bare https://github.com/Dale-Muccignat/dotfiles $HOME/.dotfiles
dotfiles checkout
```

## Dependents

```
sudo pacman -S zsh sshfs firefox picom nitrogen emacs fzf
yay ttf-nerd-fonts-symbols oh-my-zsh-git
```

## Post config

Change shell to zsh
```
chsh --shell /bin/zsh
```
Change wallpaper
```
nitrogen /path/to/wallpaper
```
