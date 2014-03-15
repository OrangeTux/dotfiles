set nocompatible
set number
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()
syntax on
filetype plugin indent on
 
" Bundles
Bundle 'gmarik/vundle'
Bundle 'scrooloose/nerdcommenter'
Bundle 'kien/ctrlp.vim'
Bundle 'xolox/vim-misc'
Bundle 'xolox/vim-easytags'
Bundle 'klen/python-mode'
Bundle 'alfredodeza/pytest.vim'
Bundle 'danro/rename.vim'
Bundle 'xolox/vim-pyref'
Bundle 'justinmk/vim-sneak'

"""""""""""""""""""""
" python-mode
"""""""""""""""""""""
" Disable syntax highlighing of pymode
let g:pymode_syntax = 0
let g:pymode_syntax_all = 0

" Enable pylint, and run in with F5
let g:pymode_lint = 1
let g:pymode_lint_on_write = 0
nnoremap <F5> :PymodeLint<cr>

" Don't load show documentation plugin, we have PyRef
let g:pymode_doc = 0

" Disable error window
let g:pymode_lint_cwindow = 0

" Disable Rope autocompletion
let g:pymode_rope_completion = 0

"""""""""""""""""""""
" CtrlP
"""""""""""""""""""""
" Open CtrlP withe leader-p
let g:ctrlp_map = '<leader>p'

" Exclude files and folders from indexing.
let g:ctrlp_custom_ignore = {
    \'dir': '\v(build|\.git|cache|log|vendor)$',
    \'file': '\v(\.pyc|tags)$'
    \ }

""""""""""""""""""
" Documentation
""""""""""""""""""
" Location of documentation
let g:pyref_python = '/usr/share/python2.7/html/'

" Map H to :Pyref .
nnoremap H :PyRef 

let g:pyref_mapping = 'K'

""""""""""""""""""
" Files and file management
""""""""""""""""""
" Ignore compiled files
set wildignore=*.pyc

set nobackup
set nowb
set noswapfile

"""""""""""""""""""""
" Searching
"""""""""""""""""""""
" Ignore case while searching
set ignorecase

" Highlight search results
set hlsearch

" Intelegent searching
set incsearch

" For regex expresiions
set magic

" Show matching brackets or parenthesis when hovering
set showmatch

nmap f <Plug>Sneak_s
nmap F <Plug>Sneak_S
""""""""""""""""""""
" Tabs, indenting and folding
""""""""""""""""""""
" Use spaces instead of tabs
set expandtab

set smarttab
set shiftwidth=4
set tabstop=4

" Folding
set foldnestmax=2
set foldmethod=indent

" Select tab with <leader>#
map <leader>1 1gt
map <leader>2 2gt
map <leader>3 3gt
map <leader>4 4gt
map <leader>5 5gt
map <leader>6 6gt
map <leader>7 7gt
map <leader>8 8gt
map <leader>9 9gt

"""""""""""""""""""
" Buffer movement
"""""""""""""""""""
" Disable arrow keys
inoremap <Up> <NOP>
inoremap <Down> <NOP>
inoremap <Left> <NOP>
inoremap <Right> <NOP>
noremap <Up> <NOP>
noremap <Down> <NOP>
noremap <Left> <NOP>
noremap <Right> <NOP>

" C-w (doing things with buffers) bound to s
" So sl to select left screen, sv to vertical split etc.
map s <C-w>

" Moving (block of) lines around, learned from
" http://reefpoints.dockyard.com/2013/09/26/vim-moving-lines-aint-hard.html\
" Normal mode
nnoremap <C-j> :m .+1<CR>==
nnoremap <C-k> :m .-2<CR>==

" Insert mode
inoremap <C-j> <ESC>:m .+1<CR>==gi
inoremap <C-k> <ESC>:m .-2<CR>==gi
"
" " Visual mode
vnoremap <C-j> :m '>+1<CR>gv=gv
vnoremap <C-k> :m '<-2<CR>gv=gv

"""""""""""""""""""
" Buffer switching
"""""""""""""""""""
 
" Move to the previous buffer with "gp"
nnoremap gp :bp<CR>

" Move to the next buffer with "gn"
nnoremap gn :bn<CR>

" List all possible buffers with "gl"
nnoremap gl :ls<CR>

" List all possible buffers with "gb" and accept a new buffer argument [1]
nnoremap gb :ls<CR>:b

"""""""""""""""""""
" Misc
"""""""""""""""""""
" Show command when typing. "
set showcmd

" Syntax highlighting for twig files.
au BufRead,BufNewFile *.twig set filetype=htmljinja

set colorcolumn=80

" Statusbar
set ruler
set rulerformat=%55(%{strftime('%F\ %H:%M\ %p')}\ %5l,%-6(%c%V%)\ %P%)

" Run tests of current file by pressing leader-f
nmap <silent><Leader>f :w<CR>:Pytest file<CR>

" Switch case with g
nnoremap <leader>g ~

" Disable irritating beeps
set noeb vb t_vb=

map W :wa^M
map! ^W ^[:wa^Ma
