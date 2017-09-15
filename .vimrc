set nocompatible

set autowrite
set showcmd
set incsearch
set number
set numberwidth=5

" code folding
set foldmethod=indent
set foldlevel=99

" gui options
colorscheme seagull
set guioptions-=m
set guioptions-=T
set guioptions-=r
set guioptions-=L
set clipboard=unnamedplus
set relativenumber
set guifont=Fira\ Code\ 12

" convencience keybindings
ino jj <esc>
cno jj <c-c>

" IDE features
syntax on
filetype on
filetype plugin on
filetype indent on
set smartindent
set nowrap
set tabstop=4
set softtabstop=4
set expandtab

" Turn off sound
set noerrorbells visualbell t_vb=
autocmd GUIEnter * set visualbell t_vb=
