" General {{{
"hybrid line numbers
 set number relativenumber
 set nocompatible
 filetype plugin on
 syntax enable 
 filetype plugin indent on
 set spelllang=en
 set spell
 set encoding=UTF-8
" Tabs over spaces {{{
" -----------------------
    set expandtab
    set tabstop=4
    set softtabstop=4
    set shiftwidth=4
    set autoindent
    set textwidth=80
"}}}
" Performance improvements {{{
set synmaxcol=200 "Don't bother highlighting anything over 200 chars
let did_install_default_menus = 1 "No point loading gvim menu stuff
let loaded_matchparen = 1 "highlighting matching pairs so slow
"}}}
"remapping +register copy/pasting
set clipboard=unnamed
" Searching {{{
    set ignorecase          " ignore case when searching
    set incsearch           " search as characters are entered
"}}}
" Easy Align-Plugin {{{
"Start interactive EasyAlign in visual mode (e.g. vipga)
    xmap ga <Plug>(EasyAlign)
"Start interactive EasyAlign for a motion/text object (e.g. gaip)
    nmap ga <Plug>(EasyAlign)
"}}}

    autocmd BufReadPost,FileReadPost,BufNewFile,BufLeave * call system("tmux rename-window " . expand("%:t"))
    autocmd VimLeave * call system("tmux rename-window $(basename \"$PWD\")")

" Folding {{{
    set foldlevel=0
    set foldmethod=marker
    set modelines=1
    " Markdown Folding {{{
        function! MarkdownLevel()
            if getline(v:lnum) =~ '^# .*$'
                return ">1"
            endif
            if getline(v:lnum) =~ '^## .*$'
                return ">2"
            endif
            if getline(v:lnum) =~ '^### .*$'
                return ">3"
            endif
            if getline(v:lnum) =~ '^#### .*$'
                return ">4"
            endif
            if getline(v:lnum) =~ '^##### .*$'
                return ">5"
            endif
            if getline(v:lnum) =~ '^###### .*$'
                return ">6"
            endif
            return "=" 
        endfunction
        au BufEnter *.md,*.txt setlocal foldexpr=MarkdownLevel()  
        au BufEnter *.md,*.txt setlocal foldmethod=expr
    "}}}
"}}}


" runtime! ftplugin/man.vim
"au BufRead,BufNewFile *.md setlocal textwidth=80
"encoding declaration for vim-devicons
"more natural splitopening for vim split panes
 set splitbelow
 set splitright
"Aggregating swap files
"set backup
"set backupdir=$HOME/.config/vim/.backup
"set dir=$HOME/.config/vim/.backup
"}}}
" Line indention {{{
let g:indentLine_char = '┆'
let g:indentLine_first_char = '┆'
let g:indentLine_showFirstIndentLevel = 1
let g:indentLine_setColors = 0
"}}}
" Auto Commands {{{
    "autocmd FileType html inoremap ;d <div><Enter><Enter></div><Enter><++><Esc>2k0i
    "autocmd FileType html inoremap ;b <b></b><Space><++><Esc>FbT>i
    "autocmd FileType html inoremap ;i <em></em><Space><++><Esc>FeT>i
    "autocmd FileType html inoremap ;c class=""<Space><++><Esc>F"i
    autocmd BufReadPost,FileReadPost,BufNewFile,BufLeave * call system("tmux rename-window " . expand("%:t"))
    autocmd VimLeave * call system("tmux rename-window $(basename \"$PWD\")")
    autocmd FileType css,sass,scss setlocal omnifunc=csscomplete#CompleteCSS
"}}}
" Theming {{{
    set background=dark
    "Statusline {{{
        hi User2 ctermbg=NONE guifg=white guibg=NONE 
        set cmdheight=1
        set laststatus=0
        set statusline=
        set statusline+=%1*\ \ Buffer:\ 
        set statusline+=%2*[%n%H%M%R%W]                         " flags and buf no
        set statusline+=%1*\ \ \ file:\ 
        set statusline+=%2*%f%*
        set statusline+=%2*\ %= 
        set statusline+=%2*%10((%1*line:%2*%l,\ %1*col:%2*%c)%)\ " line and column
    "}}}
    "}}}
