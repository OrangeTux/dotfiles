"""""""""""""""""""""
" Python-mode
"""""""""""""""""""""
" Disable syntax highlighing of pymode
let g:pymode_syntax = 0
let g:pymode_syntax_all = 0

" Enable pylint, and run in with F5
nnoremap <F5> :PymodeLint<cr>

" Disable pymode debug options, the interfere with remap of CtrlPBuffer
let g:pymode_breakpoint = 0

" Don't load show documentation plugin, we have PyRef
let g:pymode_doc = 0

" Disable Rope autocompletion
let g:pymode_rope_completion = 0

" Disable error window
let g:pymode_lint_cwindow = 0

""""""""""""""""""
" Documentation
""""""""""""""""""
" Location of documentation
let g:pyref_python = '/usr/share/python2.7/html/'

" Map H to :Pyref .
nnoremap H :PyRef 

let g:pyref_mapping = 'K'

""""""""""""""""""
" Misc
""""""""""""""""""
" Run tests of current file by pressing leader-f
nmap <silent><Leader>f :w<CR>:Pytest file<CR>

" Insert breakpoint
inoremap pdb import pytest; pytest.set_trace()

