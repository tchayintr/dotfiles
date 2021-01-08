" Mapping
" let g:floaterm_keymap_new = '<Leader>fc'
" let g:floaterm_keymap_prev = '<Leader>fp'
" let g:floaterm_keymap_next = '<Leader>fn'
" let g:floaterm_keymap_show = '<Leader>fs'
" let g:floaterm_keymap_hide = '<Leader>fh'
" let g:floaterm_keymap_toggle = '<Leader>ft'
" let g:floaterm_keymap_kill = '<Leader>fd'

nnoremap <silent> <Leader>fc :FloatermNew --autoclose=2<CR>
tnoremap <silent> <Leader>fc <C-\><C-n>:FloatermNew --autoclose=2<CR>
nnoremap <silent> <Leader>fcc :FloatermNew <CR>
tnoremap <silent> <Leader>fcc <C-\><C-n>:FloatermNew<CR>
nnoremap <silent> <Leader>fp :FloatermPrev<CR>
tnoremap <silent> <Leader>fp <C-\><C-n>:FloatermPrev<CR>
nnoremap <silent> <Leader>fn :FloatermNext<CR>
tnoremap <silent> <Leader>fn <C-\><C-n>:FloatermNext<CR>
nnoremap <silent> <Leader>ft :FloatermToggle --autoclose=2<CR>
tnoremap <silent> <Leader>ft <C-\><C-n>:FloatermToggle --autoclose=2<CR>
nnoremap <silent> <Leader>fs :FloatermShow --autoclose=2<CR>
tnoremap <silent> <Leader>fs <C-\><C-n>:FloatermShow --autoclose=2<CR>
nnoremap <silent> <Leader>fh :FloatermHide<CR>
tnoremap <silent> <Leader>fh <C-\><C-n>:FloatermHide<CR>
nnoremap <silent> <Leader>fd :FloatermKill!<CR>
tnoremap <silent> <Leader>fd <C-\><C-n>:FloatermKill!<CR>

nnoremap <silent> <Leader>ff :FloatermNew --autoclose=2 qnote<CR>
tnoremap <silent> <Leader>ff <C-\><C-n>:FloatermNew --autoclose=2 qnote<CR>
