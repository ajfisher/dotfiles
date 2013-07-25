"--- .vimrc
"--- Requires:
"----   Vundle (https://github.com/gmarik/vundle)
"---    Powerline (http://lokaltog.github.com/powerline)
"----       Used Ubuntu Mono font for Powerline. (added to repo)
"
set nocompatible

set t_Co=256

syntax on

filetype plugin indent on

set tabstop=4
set shiftwidth=4
set expandtab
set autoindent
set number
set numberwidth=4
set showcmd
set showmatch
set ignorecase
set hlsearch
set laststatus=2
set showtabline=2
set cursorline
set smarttab
set colorcolumn=80 " puts line at 80 char
set pastetoggle=<F2>

"--------Cold folding --------------------
set foldmethod=indent
set foldlevel=99


"---- Other config ----------------
let mapleader = ","

let os = substitute(system('uname'), "\n", "", "")

"----   Set up all the vundle stuff
filetype off " required!

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

" let Vundle manage Vundle
Bundle 'gmarik/vundle'

" Install relevant bundles.
Bundle 'tpope/vim-fugitive'
Bundle 'Lokaltog/powerline'
Bundle 'altercation/vim-colors-solarized'

filetype plugin indent on     " required!

"----   Other config

"----   Solarized
colorscheme solarized
set background=dark

"---- Add custom syntax handling
au BufRead,BufNewFile *.pde set filetype=arduino
au BufRead,BufNewFile *.ino set filetype=arduino


"---- Powerline -------------------------------------------------------
set rtp+=~/.vim/bundle/powerline/powerline/bindings/vim
let g:Powerline_symbols = 'fancy'

set noshowmode "-- remove the bottom insert thingy

"---- Set status line // this may no longer be relevant - needs testing
if os == "Linux"
    python from powerline.ext.vim import source_plugin; source_plugin()
endif





