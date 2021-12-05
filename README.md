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
sudo pacman -S zsh sshfs firefox picom nitrogen emacs fzf xorg-xset rofi ranger gnome texlive-most
yay -S ttf-nerd-fonts-symbols oh-my-zsh-git auto-cpufreq
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
power optimize
```
sudo systemctl enable --now auto-cpufreq.service
```
Add gitignore
```
git config --global core.excludesfile ~/.gitignore
```
