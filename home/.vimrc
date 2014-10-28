set nocompatible              " be iMproved, required
filetype off                  " required

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" Plugins
Plugin 'gmarik/vundle'
Plugin 'scrooloose/nerdcommenter'
Plugin 'kien/ctrlp.vim'
Plugin 'xolox/vim-misc'
Plugin 'OnSyntaxChange'
Plugin 'AutoTag'
Plugin 'tpope/vim-speeddating'
Plugin 'tpope/vim-eunuch'
Plugin 'tpope/vim-fugitive'
Plugin 'bling/vim-airline'
Plugin 'terryma/vim-expand-region'
Plugin 'bling/vim-bufferline'
Plugin 'justinmk/vim-sneak'

" Python plugins
Plugin 'alfredodeza/pytest.vim'
Plugin 'klen/python-mode' 
Plugin 'xolox/vim-pyref'

" Go plugins.
Plugin 'fatih/vim-go'

call vundle#end()      

filetype plugin indent on
syntax on

set title
let mapleader = "\<Space>"

" Enable line numbers
set number

" Enable 256 colors
set t_Co=256

" Show statusbar always
set laststatus=2

set background=dark
colorscheme harlequin

"""""""""""""""""""
" CtrlP
"""""""""""""""""""""
" Open CtrlP withe leader-p
let g:ctrlp_map = '<leader>p'

" Open CtrpTag with leader-t
nnoremap <leader>t :CtrlPTag<cr>

" Open CtrlPBuffer with leader-b
nnoremap <leader>b :CtrlPBuffer<cr>

" Exclude files and folders from indexing.
let g:ctrlp_custom_ignore = {
    \'dir': '\v(build|\.git|cache|log|vendor|lib|project)$',
    \'file': '\v(\.pyc|tags)$'
    \ }

""""""""""""""""""
" Bufferline
""""""""""""""""""
" Don't show buffers in command bar
let g:bufferline_echo = 0

""""""""""""""""""
" Neocomplete
""""""""""""""""""
let g:neocomplete#enable_at_startup = 1

" Scroll to autocomplete box with Ctrl-j and Ctrl-k.
inoremap <expr><C-j> ((pumvisible())?("\<C-n>"):("j"))
inoremap <expr><C-k> ((pumvisible())?("\<C-p>"):("k"))

" Complete with Tab.
inoremap <expr><TAB>  pumvisible() ? "\<C-n>" : "\<TAB>"

let g:neocomplete#auto_completion_start_length = 5
let g:neocomplete#manual_completion_start_length = 5
let g:neocomplete#min_keyword_length = 6

" Disable autocompletion when writing comments.
call OnSyntaxChange#Install('Comment', '^Comment$', 0, 'i')
autocmd User SyntaxCommentEnterI silent! NeoCompleteLock
autocmd User SyntaxCommentLeaveI silent! NeoCompleteUnlock

" Disables preview of documentation when using autocomplete.
set completeopt=menu 

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

" Toggle single fold.
nnoremap zi za
" Toggle all folds on cursor on cursor location
nnoremap zI zA

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

" Visual mode
vnoremap <C-j> :m '>+1<CR>gv=gv
vnoremap <C-k> :m '<-2<CR>gv=gv

" If possible, let at least a line gap between cursor and ceiling/bottom of
" the buffer.
set scrolloff=5

"""""""""""""""""""
" Buffer switching
"""""""""""""""""""
" Hide buffers, this don't allow buffers to be saved before changing.
set hidden

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


" Disable irritating beeps
set noeb vb t_vb=

map W :wa^M
map! ^W ^[:wa^Ma

" Leave insert mode with kj.
inoremap kj <ESC>

" Save file with enter.
nnoremap <cr> :w<cr>

" Toggle paste and nopaste
set pastetoggle=<F2>
set showmode

" Disable syntax highlighting for Yaml. Something is wrong with new regex 
" engine in Vim 7.4. I tried several things, nothing worked.
au BufRead *.yml set syntax=off
