" Insert break point when typing 'pdb'.
inoremap pdb import pdb; pdb.set_trace()

" Run linter
nnoremap <leader>l :PymodeLint<cr>
