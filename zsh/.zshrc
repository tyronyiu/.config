# Path to oh-my-zsh installation
export ZSH=$HOME/.config/.oh-my-zsh

ZSH_THEME="TY"

plugins=(
  git
  osx
  zsh-autosuggestions
  zsh-syntax-highlighting  
)

# Loading oh-my-zsh
source $ZSH/oh-my-zsh.sh

# Load aliases and shortcuts if existent.
[ -f "$HOME/.config/shortcutrc" ] && source "$HOME/.config/shortcutrc" 
[ -f "$HOME/.config/inputrc" ] && source "$HOME/.config/inputrc" 
[ -f "$HOME/.config/aliasrc" ] && source "$HOME/.config/aliasrc"

# Unused
# ---------------
# Browser-Sync setup
#export LOCAL_IP=`ipconfig getifaddr en0`
