" Define linters
let g:ale_linters = {
\   'python': ['flake8'],
\   'javascript': ['jshint'],
\}

" Only run linters named in ale_linters settings.
let g:ale_linters_explicit = 1

" Fasten linting (default=200)
let g:ale_lint_delay=0

" Define fixers
" let g:ale_fixers = ['yapf']

" nmap <silent> <leader>a <Plug>(ale_next_wrap)
nmap <silent> <C-k> <Plug>(ale_previous_wrap)
nmap <silent> <C-j> <Plug>(ale_next_wrap)

" Disabling highlighting
let g:ale_set_highlights = 0

let b:ale_python_flake8_executable = '/home/lr/chayintr/.pyenv/shims/flake8'
let b:ale_python_flake8_use_global = 1
" let b:ale_python_pylint_executable = '/home/lr/chayintr/.pyenv/shims/pylint'
" let b:ale_python_pylint_use_global = 1

" Only run linting when saving the file
let g:ale_lint_on_text_changed = 'never'
let g:ale_lint_on_enter = 0
let g:ale_lint_on_insert_leave = 0
let g:ale_lint_on_save = 1

" Disable LSP
" let g:ale_disable_lsp = 1

" Ignore warning [E501:line too long, E302/E305:expected 2 blank lines, 
" E303/266:too many leading '#' in block comment]
let g:ale_python_flake8_options = "--ignore=E302,E303,E305,E266"

" Sign
let g:ale_sign_error = 'x'
let g:ale_sign_warning = '~'

" Sign column
nnoremap <leader>sc :call ToggleSignColumn()<CR>
" Toggle signcolumn. Works only on vim>=8.0 or NeoVim
function! ToggleSignColumn()
    if !exists("b:signcolumn_on") || b:signcolumn_on
        set signcolumn=no
        let b:signcolumn_on=0
    else
        set signcolumn=yes
        let b:signcolumn_on=1
    endif
endfunction

" Disable background virtualenv detection
let g:ale_virtualenv_dir_names = []

" Remove background for warnings and errors in the sign gutter
" highlight clear ALEErrorSign
" highlight clear ALEWarningSign
