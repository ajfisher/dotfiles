"--- .vimrc
"--- Requires:
"----   Vundle (https://github.com/gmarik/vundle)
"---    Powerline (http://lokaltog.github.com/powerline)
"----       Used Ubuntu Mono font for Powerline. (added to repo)
"----       Used Patched monaco font for Mac
"----          https://gist.github.com/baopham/1838072
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
set bs=indent,eol,start "-- Backspace over everything in insert mode

"--------Cold folding --------------------
set foldmethod=indent
set foldlevel=99


"---- Other config ----------------
let mapleader = ","

let os = substitute(system('uname'), "\n", "", "")

"----   Set up all the vundle stuff
filetype off " required!

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle
Plugin 'gmarik/Vundle.vim'

" Install relevant bundles.
Plugin 'tpope/vim-fugitive'
Plugin 'Lokaltog/powerline'
Plugin 'altercation/vim-colors-solarized'
Plugin 'ntpeters/vim-better-whitespace'

call vundle#end()

filetype plugin indent on     " required!

"----   Other config

"---- Add custom syntax handling
au BufRead,BufNewFile *.pde set filetype=arduino
au BufRead,BufNewFile *.ino set filetype=arduino

"---- Powerline -------------------------------------------------------
set rtp+=~/.vim/bundle/powerline/powerline/bindings/vim
let g:Powerline_symbols = 'fancy'
let g:Powerline_colorscheme = 'solarized256'

"----   Solarized
colorscheme solarized
set background=dark

highlight CursorLineNr ctermfg=red cterm=bold

set noshowmode "-- remove the bottom insert thingy






