" Set paths
set runtimepath+=~/.vim/plugged/deoplete.nvim/ 
set runtimepath+=~/.vim/plugged/nvim-yarp/
set runtimepath+=~/.vim/plugged/vim-hug-neovim-rpc/

" Deoplete common settings
let g:deoplete#enable_at_startup = 1
call deoplete#custom#option('deoplete-options-yarp', v:true)
