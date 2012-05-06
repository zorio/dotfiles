" vundle
set nocompatible
filetype off
  
set rtp+=~/.vim/vundle/
call vundle#rc()
 
" github/vim-scripts
Bundle "grep.vim"
Bundle "The-NERD-tree"
Bundle "QuickBuf"
Bundle "taglist.vim"
Bundle 'unite.vim'
" Completion
Bundle 'Shougo/neocomplcache'
Bundle 'matchit.zip'
"Bundle 'Pydiction'

" Syntax
Bundle 'JavaScript-syntax'
Bundle 'yuroyoro/vim-python'
Bundle 'scrooloose/syntastic'

source ~/.vimrc.unite
source ~/.vimrc.neocomplcache

" Improve % matching
runtime macros/matchit.vim
filetype plugin indent on
:au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g`\"" | endif
let Tlist_Ctags_Cmd = '/usr/local/bin/ctags'
nnoremap <silent> <F6> :NERDTreeToggle<CR>
nnoremap <silent> gg g<C-]>
let g:NERDTreeIgnore = ['\~$', '\.pyc$']
let mapleader = ","
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
syntax on
highlight Cursor ctermfg=White ctermbg=Blue
" buffer switching/management, might as well use those keys for something useful
map <Right> :bnext<CR>
imap <Right> <ESC>:bnext<CR>
map <Left> :bprev<CR>
imap <Left> <ESC>:bprev<CR>
