#!/bin/bash
# Default programs
export EDITOR=nvim
export VISUAL=nvim

export PATH=$HOME/bin:$PATH
export PATH=$PATH:/opt/local/bin
export PATH="/usr/local/opt/ruby/bin:$PATH"
export PATH="$HOME/.gem/ruby/2.7.0/bin:$PATH"
#export PATH=$(brew --prefix)/bin:$(brew --prefix)/sbin:$PATH
#export PATH="/usr/local/sbin:$PATH"
export PATH=$PATH:/Users/tyyiu/.local/bin
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

export PATH="$HOME/.cargo/bin:$PATH"
