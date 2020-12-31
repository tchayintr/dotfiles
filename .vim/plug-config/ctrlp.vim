" Change the default mapping and the default command to invoke CtrlP
let g:ctrlp_map = '<c-f>'
let g:ctrlp_cmd = 'CtrlP'

" Invoke without an explicit starting directory
" a: the directory of the current file, unless it is a subdirectory of the cwd
" c: the directory of the current file
" r: the nearest ancestor of the current file that contains one of these directories or files
" w: modifier to "r": start search from the cwd instead of the current file's directory
" 0 or '': disable this feature
let g:ctrlp_working_path_mode = 'ra'

" If a file is already open, open it again in a new pane instead of switching to the existing pane
let g:ctrlp_switch_buffer = 'et'

" Use a custom file listing command
let g:ctrlp_user_command = 'find %s -type f'        " MacOSX/Linux
let g:ctrlp_user_command = 'dir %s /-n /b /s /a-d'  " Windows

" Ignore files in .gitignore
let g:ctrlp_user_command = ['.git', 'cd %s && git ls-files -co --exclude-standard']
