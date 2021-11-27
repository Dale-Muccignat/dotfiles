typeset -U PATH path
path=("$HOME/.local/bin" /other/things/in/path "$path[@]")
export PATH
source ~/.profile
