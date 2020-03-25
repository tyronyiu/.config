## The stellar dot-file setup

**Installed programs:**
> *italic* = optional
- [Nvim](https://neovim.io/)
- [Zsh](https://www.zsh.org/)
- [Oh-my-zsh](https://ohmyz.sh/)
- [*Qutebrowser*](https://qutebrowser.org/)
- [[Tmux]](https://github.com/tmux/tmux)
- [Yabai](https://github.com/koekeishiya/yabai)
- [Skhd](https://github.com/koekeishiya/skhd)

**Dependencies:**
> also installed programs & plugins
- [Homebrew](https://brew.sh/); [my short intro on it]( https://bit.ly/3anANsk)
- [Wget](https://www.gnu.org/software/wget/)
- [Plug](https://github.com/junegunn/vim-plug); Nvim / Vim plugin-manager
    - [Vim surround](https://github.com/tpope/vim-surround); lets you edit /
      remove characters surrounding the cursor. 
    - [Vim Tmux navigator](https://github.com/christoomey/vim-tmux-navigator)
    - [Vim easy-align](https://github.com/junegunn/vim-easy-align)
    - [Vim coloresque](https://github.com/gorodinskiy/vim-coloresque.git)
    - [Vim autopairs](https://github.com/jiangmiao/auto-pairs)
    - [Nerdtree](https://github.com/preservim/nerdtree)
    - [Nerdcommenter](https://github.com/preservim/nerdcommenter)

> For syntax highlighting / *linting*, I use `deoplete` with `coc`:
> [here](https://github.com/Shougo/deoplete.nvim). 

## Installation / Setup script

The `setup / init` script installs all dependencies and sets everything up
within the `.config` folder in your `$HOME` directory, therefore keeping things
clean and tidy.  
In the `.config` folder there are no `.x` *dotfiles*, but the *init*
script runs a few `ln -s` commands to *symlink* files from your `.config` folder
to your `$HOME` directory, if needed. 

> Most programs move towards setting up their *configs* and supporting files
> inside the `.config` folder, but some didn't make the move yet.

**To do:**
- Add list of files that include keyboard shortcuts.
- Add list of commands starting / stopping services like *yabai* & *skhd*.
- Include interface to edit all these files including vital configs. (just a
  little menu to open a selection of files).
- Add section of recommended / optional programs.
