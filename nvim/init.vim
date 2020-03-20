" General Settings {{{
colorscheme dim
filetype plugin on
" }}}
" Copying vim settings for nvim use {{{
set runtimepath^=~/.config/.vim runtimepath+=~/.config/.vim/after
    let &packpath = &runtimepath
    source ~/.config/vim/.vimrc
"}}}
" Mapping {{{
let mapleader = ","
"remapping vim pane movement
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>
"turn off search highlights
nnoremap <Leader>h :nohlsearch <CR>
"Toggle Fold
nnoremap <Leader>m za
"Autocorrect
"nnoremap <Leader>c z=1 <CR> <CR>
nnoremap <Leader>p :reg <CR>
command! WipeReg for i in range(34,122) | silent! call setreg(nr2char(i), []) | endfor
inoremap <Space><Space> <Esc>/<++><Enter>"_c4l
"}}}
" Checking for Plug installation {{{
if ! filereadable(expand('~/.config/nvim/autoload/plug.vim'))
	echo "Downloading junegunn/vim-plug to manage plugins..."
	silent !mkdir -p ~/.config/nvim/autoload/
	silent !curl "https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim" > ~/.config/nvim/autoload/plug.vim
	autocmd VimEnter * PlugInstall
endif
"}}}
" Plugins {{{
call plug#begin('~/.config/nvim/plugged')
    "Plug 'https://github.com/junegunn/goyo.vim'
    "Plug 'https://github.com/ryanoasis/vim-devicons'
    Plug 'https://github.com/tpope/vim-surround'
    Plug 'christoomey/vim-tmux-navigator'
    Plug 'junegunn/vim-easy-align'
    "Plug '/usr/local/opt/fzf'
    "Plug 'junegunn/fzf.vim'
    "Plug 'dylanaraps/wal.vim'
    "Plug 'mhinz/vim-startify'
    Plug 'sedm0784/vim-you-autocorrect'
    Plug 'https://github.com/gorodinskiy/vim-coloresque.git'
    "   Plug 'https://github.com/liuchengxu/space-vim-dark'
    "   Plug 'xuhdev/vim-latex-live-preview', { 'for': 'tex' }
    "   Plug 'https://github.com/kien/ctrlp.vim'
    "   Plug 'https://github.com/ervandew/supertab'
    "   Plug 'vimwiki/vimwiki'
    "   Plug 'https://github.com/jonhiggs/MacDict.vim'
    "   Plug 'shmargum/vim-sass-colors'
    "   Plug 'ayu-theme/ayu-vim'
    "   Plug 'Yggdroot/indentLine'
    "   Plug 'whatyouhide/vim-gotham'
    "   Plug 'mcchrish/nnn.vim'
    Plug 'https://github.com/jiangmiao/auto-pairs'
    Plug 'preservim/nerdtree'
    Plug 'preservim/nerdcommenter'
    if has('nvim')
      Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
    else
      Plug 'Shougo/deoplete.nvim'
      Plug 'roxma/nvim-yarp'
      Plug 'roxma/vim-hug-neovim-rpc'
    endif 
    Plug 'neoclide/coc.nvim', {'branch': 'release'}
call plug#end()
"}}}
" COC for deoplete setup {{{
let g:neocomplete#enable_at_startup = 1
" if hidden is not set, TextEdit might fail.
set hidden
" Some servers have issues with backup files, see #649
set nobackup
set nowritebackup
" Better display for messages
set cmdheight=2
" You will have bad experience for diagnostic messages when it's default 4000.
set updatetime=300
" Use tab for trigger completion with characters ahead and navigate.
" Use command ':verbose imap <tab>' to make sure tab is not mapped by other plugin.
inoremap <silent><expr> <TAB>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<TAB>" :
      \ coc#refresh()
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"

function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction
" Use <cr> to confirm completion, `<C-g>u` means break undo chain at current position.
" Coc only does snippet and additional edit on confirm.
inoremap <expr> <cr> pumvisible() ? "\<C-y>" : "\<C-g>u\<CR>"
" Or use `complete_info` if your vim support it, like:
" inoremap <expr> <cr> complete_info()["selected"] != "-1" ? "\<C-y>" : "\<C-g>u\<CR>"
" Use <TAB> for select selections ranges, needs server support, like: coc-tsserver, coc-python
nmap <silent> <TAB> <Plug>(coc-range-select)
xmap <silent> <TAB> <Plug>(coc-range-select)
" Use `:Format` to format current buffer
command! -nargs=0 Format :call CocAction('format')
" Use `:Fold` to fold current buffer
command! -nargs=? Fold :call     CocAction('fold', <f-args>)
" Remap for format selected region
xmap <leader>f  <Plug>(coc-format-selected)
nmap <leader>f  <Plug>(coc-format-selected)
"}}}
" NERDTree {{{
" NERDTree Settings {{{
map <C-n> :NERDTreeToggle<CR>
let g:NERDTreeQuitOnOpen = 1
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
" NERDCommenter Settings {{{
" Add spaces after comment delimiters by default
let g:NERDSpaceDelims = 1
" Use compact syntax for prettified multi-line comments
let g:NERDCompactSexyComs = 1
" Align line-wise comment delimiters flush left instead of following code indentation
let g:NERDDefaultAlign = 'left'
" Set a language to use its alternate delimiters by default
let g:NERDAltDelims_java = 1
" Add your own custom formats or override the defaults
let g:NERDCustomDelimiters = { 'c': { 'left': '/**','right': '*/' } }
" Allow commenting and inverting empty lines (useful when commenting a region)
let g:NERDCommentEmptyLines = 1
" Enable trimming of trailing whitespace when uncommenting
let g:NERDTrimTrailingWhitespace = 1
" Enable NERDCommenterToggle to check all selected lines is commented or not 
let g:NERDToggleCheckAllLines = 1
"}}}
"}}}
function! Kies()
  let selection = system('bash -c "(git ls-files -co --exclude-standard || ls) 2>/dev/null | lsblank | keuze -p \"open\""')
  if empty(selection) | echo "Canceled" | return | end

  exec ":e " . selection
endfunction

nnoremap <C-P> :call Kies()<CR>
