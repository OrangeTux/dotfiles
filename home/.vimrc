"set nocompatible              " be iMproved, required
filetype off                  " required

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" Plugins
Plugin 'gmarik/vundle'
Plugin 'scrooloose/nerdcommenter'
Plugin 'scrooloose/syntastic'
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
Plugin 'airblade/vim-gitgutter'
"Plugin 'ajh17/VimCompletesMe'
Plugin 'localvimrc'
Plugin 'rking/ag.vim'

" LaTex
Plugin 'TeX-PDF'

" Python 
Plugin 'alfredodeza/pytest.vim'
Plugin 'klen/python-mode' 
Plugin 'xolox/vim-pyref'

" Go 
Plugin 'fatih/vim-go'
Plugin 'nsf/gocode', {'rtp': 'vim/'}

" Markdown
Plugin 'plasticboy/vim-markdown'
Plugin 'godlygeek/tabular'

" Docker
Plugin 'docker/docker' , {'rtp': '/contrib/syntax/vim/'}

" Javascript
Plugin 'mxw/vim-jsx'
Plugin 'pangloss/vim-javascript'

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

set smartindent
set tabstop=4
set shiftwidth=4
set expandtab

"""""""""""""""""""
" CtrlP
"""""""""""""""""""""
" Open CtrlP withe leader-p
let g:ctrlp_map = '<leader>p'

" Open CtrpTag with leader-t
nnoremap <leader>t :CtrlPTag<cr>

" Open CtrlPBuffer with leader-b
nnoremap <leader>b :CtrlPBuffer<cr>

if executable('ag')
    " Use ag over grep
    set grepprg=ag\ --nogroup\ --nocolor

    " Use ag in CtrlP for listing files. Lightning fast and respects .gitignore
    let g:ctrlp_user_command = 'ag %s --files-with-matches -g "" --ignore "\.git$\|\.hg$\|\.svn$"'

    " ag is fast enough that CtrlP doesn't need to cache
    let g:ctrlp_use_caching = 0
else
    " Fall back to using git ls-files if Ag is not available
    " Exclude files and folders from indexing.
    let g:ctrlp_custom_ignore = {
        \'dir': '\v(build|\.git|cache|log|vendor|lib|project|node_modules)$',
        \'file': '\v(\.pyc|tags)$'
        \ }
endif

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

" Intelligent searching
set incsearch

" For regex expressions
set magic

" Show matching brackets or parenthesis when hovering
set showmatch

nmap <Leader>f <Plug>Sneak_s
nmap <Leader>F <Plug>Sneak_S

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

" Hide buffers, this don't allow buffers to be saved before changing.
set hidden

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

" Leave insert mode with jk.
imap jk <ESC>

" Save file with enter.
nnoremap <cr> :w<cr>

" Toggle paste and nopaste
set pastetoggle=<F2>
set showmode

" Disable syntax highlighting for Yaml. Something is wrong with new regex 
" engine in Vim 7.4. I tried several things, nothing worked.
"au BufRead *.yml set syntax=off

" Disable linting of python files by Syntactic, we have Python-Mode for that.
let g:syntastic_mode_map = { "passive_filetypes": ["python"] }

autocmd BufNewFile,BufReadPost *.md set filetype=markdown

" Enable spellcheck 
nn <F7> :setlocal spell! spell?<CR>

" bind K to grep word under cursor
nnoremap K :grep! "\b<C-R><C-W>\b"<CR>:cw<CR>

" Allow JSX in normal JS files
let g:jsx_ext_required = 0 
