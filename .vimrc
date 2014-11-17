filetype off
call pathogen#runtime_append_all_bundles()
call pathogen#helptags()
set foldmethod=indent
set foldlevel=99
colorscheme xoria256
set guioptions-=m
set guioptions-=T
set guioptions-=r
set guioptions-=L
set clipboard=unnamedplus
ino jj <esc>
cno jj <c-c>
map <leader>td <Plug>TaskList
syntax on
filetype on
filetype plugin indent on
let g:pyflakes_use_quickfix = 0
let g:pep8_map='<leader>8'
au FileType python set omnifunc=pythoncomplete#Complete
let g:SuperTabDefaultCompletionType = "context"
set completeopt=menuone,longest,preview
map <leader>n :NERDTreeToggle<CR>
map gd :RopeGotoDefinition<CR>
map rn :RopeRename<CR>
