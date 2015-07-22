call plug#begin('~/.vim/plugged')

" Full path fuzzy file, buffer, mru, tag, ... finder for Vim. 
Plug 'kien/ctrlp.vim'

" A code-completion engine for Vim
Plug 'valloric/YouCompleteMe'

" Vim python-mode. PyLint, Rope, Pydoc, breakpoints from box.
Plug 'klen/python-mode'

call plug#end()

"#
"# Appearance
"#

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
"set wrap

"#
"# Ctrl-P
"#

" Open CtrlP withe leader-p
let g:ctrlp_map = '<leader>p'

"" Usa ag (The Silver Searcher) for listening files if available.
if executable('ag')
    " Use ag over grep
    set grepprg=ag\ --nogroup\ --nocolor

    " Use ag in CtrlP for listing files. Lightning fast and respects .gitignore
    let g:ctrlp_user_command = 'ag %s --files-with-matches -g "" --ignore "\.git$\|\.hg$\|\.svn$"'

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
