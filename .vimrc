set encoding=utf-8
scriptencoding utf-8
set fileencodings=utf-8,cp932,sjis,utf-16le
set fileformats=unix,dos

execute pathogen#infect()
execute pathogen#helptags()

syntax enable
filetype plugin indent on

colorscheme slate   
set laststatus=2
set ruler
set showmode
set number
set hidden
set wildmenu
set iminsert=0
set hlsearch
set autoindent

set noundofile
set backup
set noswapfile

set shiftwidth=0 softtabstop=0 tabstop=4 expandtab
let g:vim_indent_cont=8
set textwidth=0

augroup imrc
    autocmd!
    autocmd FileType vim setlocal keywordprg=:help
augroup END

" カーソルキー無効
map <Up> <Nop>
map <Down> <Nop>
map <Left> <Nop>
map <Right> <Nop>
inoremap <Up> <Nop>
inoremap <Down> <Nop>
inoremap <Left> <Nop>
inoremap <Right> <Nop>
