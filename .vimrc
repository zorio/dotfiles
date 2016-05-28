" vundle
set nocompatible
filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
" Color
Plugin 'tomasr/molokai'
call vundle#end()

" Improve % matching
filetype plugin indent on
let mapleader = ","
syntax on
set cursorline
set expandtab
set foldlevel=1
set hidden
set mousehide
set noerrorbells
set number
set ruler
set scrolloff=3
set shiftwidth=2
set shortmess=atI
set softtabstop=2
set tabstop=2
set title
set background=dark
set list listchars=tab:»·,trail:·
colorscheme molokai
highlight Cursor ctermfg=White ctermbg=Blue
" buffer switching/management, might as well use those keys for something useful
map <Right> :bnext<CR>
imap <Right> <ESC>:bnext<CR>
map <Left> :bprev<CR>
imap <Left> <ESC>:bprev<CR>

" Load env specific code
source ~/.vimrc.local
