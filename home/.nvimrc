call plug#begin('~/.vim/plugged')

" Vim plugin for the_silver_searcher, 'ag', a replacement for the Perl module / CLI script 'ack'.
Plug 'rking/ag.vim'

" Full path fuzzy file, buffer, mru, tag, ... finder for Vim. 
Plug 'kien/ctrlp.vim'

" Vim plugin for intensely orgasmic commenting.
Plug 'scrooloose/nerdcommenter'

" Vim python-mode. PyLint, Rope, Pydoc, breakpoints from box.
Plug 'klen/python-mode'

" Readline style insertion.
Plug 'tpope/vim-rsi'

" A code-completion engine for Vim.
Plug 'valloric/YouCompleteMe'

call plug#end()

"#
"# Appearance
"#
set nocompatible

" Enable line numbers
set number 

" Enable syntax highlighting
syntax on

" Set line at 80 columns
set colorcolumn=80

"#
"# Movement
"#

" Disable arrow keys
inoremap <Up> <NOP>
inoremap <Down> <NOP>
inoremap <Left> <NOP>
inoremap <Right> <NOP>
noremap <Up> <NOP>
noremap <Down> <NOP>
noremap <Left> <NOP>
noremap <Right> <NOP>

" Moving (block of) lines around with Ctrl-j and Ctrl-k. Learned from 
" http://reefpoints.dockyard.com/2013/09/26/vim-moving-lines-aint-hard.html
nnoremap <C-j> :m .+1<CR>==
nnoremap <C-k> :m .-2<CR>==

" Visual mode
vnoremap <C-j> :m '>+1<CR>gv=gv
vnoremap <C-k> :m '<-2<CR>gv=gv

" Map Leader key to Ctrl-w. This allows buffer switching with Leader-h|j|k|l.
map <leader> <C-w>

" Disable Pymode's functionality around breakpoints. By default this option is
" enabled and maps some functionality I don't use to Leader-b. I want to use
" Leader-b for myself.
let g:pymode_breakpoint = 0

" Open previous buffer with Leader-b.
nnoremap <leader>b :e#<cr>

"#
"# Behaviour
"#

" Disable swap files.
set nobackup
set nowb
set noswapfile

" Leave insert mode by pressing jj.
imap jj <ESC>

" Save file in normal mode by pressing Enter
nnoremap <CR> :w<CR>

" Wrap line when it exceed textwidth.
set wrap

"#
"# Ctrl-P
"#

" Open CtrlP withe leader-p
let g:ctrlp_map = '<leader>p'

" Usa ag (The Silver Searcher) for listening files if available.
if executable('ag')
    " Use ag over grep
    set grepprg=ag\ --nogroup\ --nocolor

    " Use ag in CtrlP for listing files. Lightning fast and respects .gitignore
    let g:ctrlp_user_command = 'ag %s --files-with-matches -g "" --ignore "\.git\|\.hg\|\.svn"'

    " ag is fast enough that CtrlP doesn't need to cache
    let g:ctrlp_use_caching = 0
else
    " Exclude files and folders from indexing.
    let g:ctrlp_custom_ignore = {
        \'dir': '\v(build|\.git|cache|log|vendor|lib|node_modules)$',
        \'file': '\v(\.pyc|tags)$'
        \ }
endif


"#
"# Misc
"#

" Map Leader to space bar
let mapleader = "\<Space>"
  
" Disable Backspace
noremap <BS> <Nop>
inoremap <BS> <Nop>

" Disable Delete
noremap <Del> <Nop>
inoremap <Del> <Nop>
