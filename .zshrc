# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="/usr/share/oh-my-zsh/"
# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
# ZSH_THEME="random"
ZSH_THEME="sorin"
#ZSH_THEME="example"
#ZSH_THEME="fletcherm"
#ZSH_THEME="wezm"
#ZSH_THEME="minimal"
#ZSH_THEME="awesomepanda"

# Set list of themes to pick from when loading at random
# Setting this variable when ZSH_THEME=random will cause zsh to load
# a theme from this variable instead of looking in ~/.oh-my-zsh/themes/
# If set to an empty array, this variable will have no effect.
# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )

# Uncomment the following line to use case-sensitive completion.
CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion.
# Case-sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to automatically update without prompting.
DISABLE_UPDATE_PROMPT="true"

# Uncomment the following line to change how often to auto-update (in days).
export UPDATE_ZSH_DAYS=30

# Uncomment the following line if pasting URLs and other text is messed up.
# DISABLE_MAGIC_FUNCTIONS=true

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
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
# Standard plugins can be found in ~/.oh-my-zsh/plugins/*
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
# plugins=(git fzf zsh-completions ssh-agent)
plugins=(git fzf ssh-agent)

source $ZSH/oh-my-zsh.sh

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
if [[ -n $SSH_CONNECTION ]]; then
  export EDITOR='emacsclient -c'
else
  export EDITOR='emacsclient -c'
fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
alias zshconfig="emacsclient -c ~/.zshrc"
alias ohmyzsh="nano ~/.oh-my-zsh"

# Rsync/ssh
alias hpc="ssh hpc"
alias h2l="rsync -aP --exclude='.*' hpc:~/ ~/ownCloud/OneDrive/HPC"
alias l2h="rsync -aP --exclude='.*' ~/ownCloud/OneDrive//HPC/ hpc:~"
alias p2h="rsync -aP ~/ownCloud/OneDrive/Packages/ hpc:~/Packages"
alias p2l="rsync -aP ~/ownCloud/OneDrive/Packages/ ~/ownCloud/OneDrive/HPC/Packages"

# git
alias gs="git status"
alias ga="git add ."
alias gc="git commit -m"
alias gp="git push"
alias gl="git log --oneline"

# Common locations
alias cdpackages="cd ~/OneDrive/PhD/Packages"
alias cdhpc="cd ~/OneDrive/HPC"

alias j="'julia' --sysimage ${HOME}/.julia/config/custom_sysimage.so"

alias pop="wine ${HOME}/.wine/dosdevices/c:/Program\ Files/Harzing\'s\ Publish\ or\ Perish\ 7/pop7win.exe &|" 
## Dotfiles
alias dotfiles='/usr/bin/git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME'
alias dotfilesadd='dotfiles add .gitignore .julia/config/startup.jl .config/picom .config/i3blocks .config/i3status .config/i3 .config/ranger .emacs.d .ssh/config .lyx .zshenv .zshrc bin .config/nitrogen'
## sshfs
alias mountdesktop='sshfs desktop:/home/mirage_neos ~/Desktop'
alias s='stonks -e -t "icon"'
alias update='sudo pacman -Syu'
alias dt='date +%Y%m%d.%H%M%S'
alias backup='rclone sync ~/ownCloud/ CloudStor:/Files/ --backup-dir=CloudStor:"/archive/$(dt)" --progress'
alias download='rclone sync CloudStor:/Files/ ~/ownCloud/ --backup-dir=CloudStor:"/archive/$(dt)" --progress'
alias downloadlaptop='rclone sync CloudStor:/Files/OneDrive/Writting ~/ownCloud/OneDrive/Writting --progress'
alias uploadlaptop='rclone sync ~/ownCloud/OneDrive/Writting CloudStor:/Files/OneDrive/Writting --backup-dir=CloudStor:"/archive/$(dt)" --progress'
############################
# * Ranger

# function ranger-cd {
#     tempfile="$(mktemp -t tmp.XXXXXX)"
#     ranger --choosedir="$tempfile" "${@:-$(pwd)}"
#     test -f "$tempfile" &&
#     if [ "$(cat -- "$tempfile")" != "$(echo -n `pwd`)" ]; then
#         cd -- "$(cat "$tempfile")"
#     fi
#     rm -f -- "$tempfile"
# }


# alias r="ranger-cd"
alias r=". ranger"

autoload -U compinit
compinit
if ! pgrep -u "$USER" ssh-agent > /dev/null; then
    ssh-agent -t 1h > "$XDG_RUNTIME_DIR/ssh-agent.env"
fi
if [[ ! "$SSH_AUTH_SOCK" ]]; then
    source "$XDG_RUNTIME_DIR/ssh-agent.env" >/dev/null
fi

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
# __conda_setup="$('/opt/miniconda3/bin/conda' 'shell.zsh' 'hook' 2> /dev/null)"
# if [ $? -eq 0 ]; then
#     eval "$__conda_setup"
# else
#     if [ -f "/opt/miniconda3/etc/profile.d/conda.sh" ]; then
#         . "/opt/miniconda3/etc/profile.d/conda.sh"
#     else
#         export PATH="/opt/miniconda3/bin:$PATH"
#     fi
# fi
# unset __conda_setup
# <<< conda initialize <<<


#eval $(thefuck --alias)
