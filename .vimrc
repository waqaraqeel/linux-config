set nocompatible

set autowrite
set showcmd
set incsearch
set number
set numberwidth=5

" pathogen bundles
execute pathogen#infect()

" code folding
set foldmethod=indent
set foldlevel=99

" gui options
colorscheme solarized
set background=light
set guioptions-=m
set guioptions-=T
set guioptions-=r
set guioptions-=L
set clipboard=unnamedplus
set relativenumber
set guifont=Source\ Code\ Pro\ 12

" convencience keybindings
ino jj <esc>
cno jj <c-c>
nmap cg :CtrlP<CR>
nmap cp :CtrlPBufTag<CR>
nmap <F6> :execute ':! '.runscript.' &'<CR>

" splits and movement
nnoremap <leader><leader> <c-^>
" just to override vim-latex setting <c-j>. I need my split movement!
nnoremap<C-space> <Plug>IMAP_JumpForward
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>
set splitbelow
set splitright

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

" Maximize vim window
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


" Turn off sound
set noerrorbells visualbell t_vb=
autocmd GUIEnter * set visualbell t_vb=
autocmd VimEnter * NERDTree
autocmd VimEnter * SyntasticCheck
au BufWrite * :Autoformat


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
let g:syntastic_python_checkers = ["python", "pylint"]
let g:syntastic_javascript_checkers = ["jshint"]
let g:syntastic_html_checkers = ["tidy"]
nmap ec :SyntasticCheck<CR> :Errors<CR>
nmap en :lnext<CR>
nmap ep :lprev<CR>
