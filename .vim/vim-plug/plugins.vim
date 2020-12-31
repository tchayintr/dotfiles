call plug#begin('~/.vim/plugged')

    " general
    Plug 'AndrewRadev/splitjoin.vim'
    Plug 'davidhalter/jedi-vim'
    Plug 'dense-analysis/ale'
    Plug 'ervandew/supertab'
    Plug 'godlygeek/tabular'
    Plug 'mindriot101/vim-yapf'
    Plug 'honza/vim-snippets' | Plug 'SirVer/ultisnips'
    Plug 'itchyny/lightline.vim' | Plug 'maximbaz/lightline-ale'
    Plug 'jiangmiao/auto-pairs'
    Plug 'justinmk/vim-sneak'
    Plug 'liuchengxu/vim-which-key'
    Plug 'maxbrunsfeld/vim-yankstack'
    Plug 'mhinz/vim-startify'
    Plug 'plasticboy/vim-markdown'
    Plug 'psliwka/vim-smoothie'
    Plug 'scrooloose/nerdtree'
    Plug 'sheerun/vim-polyglot'
    Plug 'tell-k/vim-autopep8'
    Plug 'tpope/vim-commentary'
    Plug 'tpope/vim-fugitive'
    Plug 'tpope/vim-obsession'
    Plug 'tpope/vim-surround'
    Plug 'vimjas/vim-python-pep8-indent'

    " schemes
    Plug 'cocopon/iceberg.vim'

    " tmp
    " Plug 'christoomey/vim-tmux-navigator'
    " Plug 'ctrlpvim/ctrlp.vim'

    " deoplete
    if has('nvim')
        Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins'  }
        Plug 'deoplete-plugins/deoplete-jedi'
    else
        Plug 'Shougo/deoplete.nvim'
        Plug 'deoplete-plugins/deoplete-jedi'
        Plug 'roxma/nvim-yarp'
        Plug 'roxma/vim-hug-neovim-rpc'
    endif

    " fzf 
    Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
    Plug 'junegunn/fzf.vim'

call plug#end()
