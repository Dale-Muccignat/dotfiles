# dotfiles

My configuration for ArchMirage on i3.

## Install

```
alias dotfiles='/usr/bin/git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME'
echo ".cfg" >> .gitignore
git clone --bare git@github.com:Dale-Muccignat/dotfiles $HOME/.dotfiles
dotfiles checkout
```

## Dependents

```
sudo pacman -S zsh sshfs picom nitrogen fzf xorg-xset rofi ranger gnome gvim
yay -S nerd-fonts-complete oh-my-zsh-git auto-cpufreq google-chrome
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
