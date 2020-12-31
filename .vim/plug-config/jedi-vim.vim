" Completion mapping
let g:jedi#completions_command = "<C-Space>"

" Solve pymode's folding issue (jedi-vim is slow)
" Disable docstring window
autocmd FileType python setlocal completeopt-=preview

" " Disable rope mode
let g:pymode_rope = 0
let g:pymode_folding = 0

" Disable signatures calling
let g:jedi#show_call_signatures = "0"
let g:jedi#show_call_signatures_delay = 0

" Disable completions (*deoplete) 
" Note: this will disable jedi#completions_command mapping
" let g:jedi#completions_enabled = 0

" Disable popup on dot
let g:jedi#popup_on_dot = 0

" Remap completion key for Mac and iPad
imap <A-Space> <C-Space>
