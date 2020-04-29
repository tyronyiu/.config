#!/bin/bash
# Default programs
export EDITOR="nvim"
export EDITOR=nvim
export VISUAL=nvim

export PATH=$HOME/bin:$PATH
export PATH=$PATH:/opt/local/bin
#export PATH=$(brew --prefix)/bin:$(brew --prefix)/sbin:$PATH
#export PATH="/usr/local/sbin:$PATH"
export LC_ALL=en_US.UTF-8
export LANG=en_US.UTF-8
PIP_REQUIRE_VIRTUALENV=false
export CDPATH=$HOME
unset LSCOLORS
export CLICOLOR=1
export CLICOLOR_FORCE=1

# Include hidden files in autocomplete:
_comp_options+=(globdots)
source ~/.config/zsh/zshrc
