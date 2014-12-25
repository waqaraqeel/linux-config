"pathogen edits
filetype off
call pathogen#runtime_append_all_bundles()
call pathogen#helptags()

"code folding
set foldmethod=indent
set foldlevel=99

"gui options
colorscheme xoria256
set guioptions-=m
set guioptions-=T
set guioptions-=r
set guioptions-=L
set clipboard=unnamedplus

"convencience keybindings
ino jj <esc>
cno jj <c-c>
map <leader>td <Plug>TaskList
map gd :RopeGotoDefinition<CR>
map rn :RopeRename<CR>

"window movement
map Wj <C-W>j<C-W>_
map Wk <C-W>k<C-W>_
map Wl <C-W>l<C-W>_
map Wh <C-W>h<C-W>_
map WW <C-W>w<C-W>_

"IDE features
syntax on
filetype on
filetype plugin indent on
let g:pyflakes_use_quickfix = 0
let g:pep8_map='<leader>8'
au FileType python set omnifunc=pythoncomplete#Complete
let g:SuperTabDefaultCompletionType = "context"
set completeopt=menuone,longest,preview

"Maximize vim window
if has("gui_running")
  set lines=999 columns=999
else
  if exists("+lines")
    set lines=50
  endif
  if exists("+columns")
    set columns=100
  endif
endif


"Turn off sound
set noerrorbells visualbell t_vb=
autocmd GUIEnter * set visualbell t_vb=
