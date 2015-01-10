"pathogen bundles
execute pathogen#infect()

"code folding
set foldmethod=indent
set foldlevel=99

"gui options
colorscheme monokain
set guioptions-=m
set guioptions-=T
set guioptions-=r
set guioptions-=L
set clipboard=unnamedplus
set relativenumber

"convencience keybindings
ino jj <esc>
cno jj <c-c>
nmap cp :CtrlP<CR>
nmap <F9> :execute ':! '.runscript.' &'<CR>

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
autocmd VimEnter * NERDTree
autocmd VimEnter * SyntasticCheck


" Commenting blocks of code.
autocmd FileType c,cpp,java,scala let b:comment_leader = '// '
autocmd FileType sh,ruby,python   let b:comment_leader = '# '
autocmd FileType conf,fstab       let b:comment_leader = '# '
autocmd FileType tex              let b:comment_leader = '% '
autocmd FileType mail             let b:comment_leader = '> '
autocmd FileType vim              let b:comment_leader = '" '
noremap <silent> ,cc :<C-B>silent <C-E>s/^/<C-R>=escape(b:comment_leader,'\/')<CR>/<CR>:nohlsearch<CR>
noremap <silent> ,cu :<C-B>silent <C-E>s/^\V<C-R>=escape(b:comment_leader,'\/')<CR>//e<CR>:nohlsearch<CR>


" Error checking
let g:syntastic_python_checkers = ["pyflakes"]
nmap ec :SyntasticCheck<CR> :Errors<CR>
nmap en :lnext<CR>
nmap ep :lprev<CR>
