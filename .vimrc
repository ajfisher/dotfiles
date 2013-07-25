"--- .vimrc
"--- Requires: 
"----   Pathogen, 
"       vim-fugitive, 
"       vim-colors-solarized, 
"       vim-arduino
"---    Powerline (http://lokaltog.github.com/powerline)
"----       Used Ubuntu Mono font for Powerline.
"
set nocompatible

set t_Co=256

call pathogen#infect()
call pathogen#helptags()

syntax on
colorscheme solarized
set background=dark

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

"--------Cold folding --------------------
set foldmethod=indent
set foldlevel=99

"---- Add custom syntax handling
au BufRead,BufNewFile *.pde set filetype=arduino
au BufRead,BufNewFile *.ino set filetype=arduino

"---- Other config ----------------
let mapleader = ","

let os = substitute(system('uname'), "\n", "", "")

"---- Set status line
if os == "Linux"
    python from powerline.ext.vim import source_plugin; source_plugin()
endif
