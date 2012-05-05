filetype plugin indent on
:au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g`\"" | endif
let Tlist_Ctags_Cmd = '/usr/local/bin/ctags'
nnoremap <silent> <F6> :NERDTreeToggle<CR>
nnoremap <silent> gg g<C-]>
let g:NERDTreeIgnore = ['\~$', '\.pyc$']
let mapleader = ","
set hidden
set scrolloff=3
set ruler
set shortmess=atI
set noerrorbells
set mousehide
set title
set foldlevel=1
set expandtab
set shiftwidth=2
set softtabstop=2
set tabstop=2
set cursorline
highlight Cursor ctermfg=White ctermbg=Blue
" buffer switching/management, might as well use those keys for something useful
map <Right> :bnext<CR>
imap <Right> <ESC>:bnext<CR>
map <Left> :bprev<CR>
imap <Left> <ESC>:bprev<CR>
" Improve % matching
runtime macros/matchit.vim
syntax on

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
Bundle 'Pydiction'

" Syntax
Bundle 'JavaScript-syntax'
Bundle 'yuroyoro/vim-python'
Bundle 'scrooloose/syntastic'
