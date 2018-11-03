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
set imdisable

set noundofile
set backup
set noswapfile
set wildmenu " コマンドモードの補完
set history=5000 " 保存するコマンド履歴の数

set shiftwidth=0 softtabstop=0 tabstop=4 expandtab
let g:vim_indent_cont=8
set textwidth=0
"----------------------------------------------------------
" ステータスラインの設定
"----------------------------------------------------------
set laststatus=2 " ステータスラインを常に表示
set showmode " 現在のモードを表示
set showcmd " 打ったコマンドをステータスラインの下に表示
set ruler " ステータスラインの右側にカーソルの現在位置を表示する

augroup imrc
    autocmd!
    autocmd FileType vim setlocal keywordprg=:help
augroup END

" カーソルキー無効
nnoremap <Leader>ev :e ~/dotfiles/.vimrc<CR>
nnoremap <Leader>cv :e ~/dotfiles/cheatsheets/vim.text<CR>
inoremap <silent> jj <ESC>
nnoremap <silent><C-e> :NERDTreeToggle<CR>
nnoremap qr :QuickRun<CR>

" カーソルをモードによって変更
if has('vim_starting')
    " 挿入モード時に非点滅の縦棒タイプのカーソル
    let &t_SI .= "\e[6 q"
    " ノーマルモード時に非点滅のブロックタイプのカーソル
    let &t_EI .= "\e[2 q"
    " 置換モード時に非点滅の下線タイプのカーソル
    let &t_SR .= "\e[4 q"
endif
