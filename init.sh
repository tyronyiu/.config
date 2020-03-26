#!/bin/bash
# Checking for or installing {{{
# Homebrew 
! [ -x "$(command -v brew)" ] && /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh)"
# Zsh 
! [ -x "/bin/zsh" ] && brew install zsh && chsh -s /bin/zsh
#}}}
# Installing brew formulae {{{
formulae=( git nvim tmux yabai skhd wget )
for i in "${formulae[@]}"; do
    ! [ -x "/usr/local/bin/$i" ] && brew install $i
done
#}}}
# Installing Nvim Plug {{{
curl -fLo ~/.local/share/nvim/site/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
#}}}
# Cloning .config folder from github {{{
! [ -f "~/.config" ] && git clone https://github.com/tyronyiu/.config ~/
! [ -f "~/.config/oh-my-zsh" ] && git clone https://github.com/ohmyzsh/ohmyzsh.git ~/.config/oh-my-zsh
# Moving zsh theme into oh-my-zsh installation {{{
[ -f "~/.config/TY.zsh-theme" ] && ln -s ~/.config/TY.zsh-theme ~/.config/oh-my-zsh/themes/TY.zsh-theme
#}}}
#}}}
# Symlinking config files needed in $HOME {{{
[ -f "~/.config/zsh/zshrc" ] && ln -s ~/.config/zsh/zshrc ~/.zshrc
[ -f "~/.config/yabai/yabairc" ] && ln -s ~/.config/yabai/yabairc ~/.yabairc
[ -f "~/.config/skhd/skhdrc" ] && ln -s ~/.config/skhd/skhdrc ~/.skhdrc
[ -f "~/.config/profile" ] && ln -s ~/.config/profile ~/.profile
[ -f "~/.config/tmux/tmux.conf" ] && ln -s ~/.config/tmux/tmux.conf ~/.tmux.conf
#}}}
# Sourcing configuration {{{
source ~/.zshrc
#}}}
