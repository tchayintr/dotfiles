" Random Useful Functions

" :W sudo saves the file
" (useful for handling the permission-denied error)"
command! W execute 'w !sudo tee % > /dev/null' <bar> edit!

" Turn spellcheck on for markdown files
augroup auto_spellcheck
    autocmd BufNewFile,BufRead *.md setlocal spell
augroup END

" Return to last edit position when opening files (You want this!) 
au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif

" Delete trailing white space on save, useful for some filetypes ;)
function! CleanExtraSpaces()
    let save_cursor = getpos(".")
    let old_query = getreg('/')
    silent! %s/\s\+$//e
    call setpos('.', save_cursor)
    call setreg('/', old_query)
endfunction
if has("autocmd")
    autocmd BufWritePre *.txt,*.js,*.py,*.wiki,*.sh,*.coffee :call CleanExtraSpaces()
endif

"Autocommand for auto read when a file is changed from the outside
au FocusGained,BufEnter * checktime


" Turn persistent undo on (can undo even when closing a buffer/VIM)
try
    set undodir=~/.vim/undo
    set undofile
catch
endtry

" Permanently stop newline continution of comments
autocmd BufNewFile,BufRead * setlocal formatoptions-=cro
