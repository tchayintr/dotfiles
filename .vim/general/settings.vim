" set background=dark                     " Set default background
filetype plugin indent on               " Enable filetype plugins 
set autoindent                          " Good auto indent
set autoread                            " Set to auto read when a file is changed from the outside
set backspace=eol,start,indent          " Configure backspace so it acts as it should act
set clipboard=unnamedplus               " Copy paste between vim and everything else '+ clipboard' (Linux only)
set cmdheight=1                         " Space for displaying messages"
set conceallevel=0                      " So that I can see `` in markdown files
set encoding=utf-8                      " The encoding displayed
set expandtab                           " Converts tabs to spaces
set ffs=unix,dos,mac                    " Use Unix as the standard file type
set foldcolumn=0                        " Adjust an extra margin on the left
set foldmethod=indent                   " Fold by indent
set foldnestmax=2                       " Only class and method will be folded 
set formatoptions-=cro                  " Stop newline continuaation of comments
set guioptions-=L                       " Disable scrollbars
set guioptions-=R                       " Disable scrollbars
set guioptions-=l                       " Disable scrollbars
set guioptions-=r                       " Disable scrollbars
set hidden                              " Required to keep multiple buffers open multiple buffers
set history=500                         " Sets how many lines of history VIM has to remember
set hlsearch                            " Highlight search results
set ignorecase                          " Ignore case when searching
set incsearch                           " Enable incremental search
set iskeyword+=-                        " Treat dash separated words as a word text object
set laststatus=2                        " Always display the status line
set magic                               " For regular expressions turn magic on
set nobackup                            " Turn backup off, since most stuff is in SVN, git etc.
set nocompatible                        " Enables system-wide compatibility"
set noerrorbells                        " Turn off error sound
set nofoldenable                        " Disable auto folding
set noswapfile                          " Turn swapfile off 
set novisualbell                        " Turn off visual sound
set nowritebackup                       " Turn backup off, since most stuff is in SVN, git etc.
set number                              " Line numbers
set pastetoggle=<F2>                    " Set paste toggle to F2
set pumheight=10                        " Makes popup menu smaller
set ruler                               " Show the cursor position all the time
set shiftwidth=4                        " Change the number of space characters inserted for indentation
set showmatch                           " Show matching brackets when text indicator is over them
set showmode                            " Show current mode
set signcolumn=yes                      " Always show the signcolumn, otherwise it would shift the text each time
set smartcase                           " When searching try to be smart about cases
set smartindent                         " Smart indent
set smarttab                            " Makes tabbing smarter will realize you have 2 vs 4
set so=7                                " Set 7 lines to the cursor - when moving vertically using j/k
set splitbelow                          " Horizontal splits will automatically be below
set splitright                          " Vertical splits will automatically be to the right
set t_Co=256                            " Support 256 colors
set tabstop=4                           " Insert 4 spaces for a tab
set timeoutlen=400                      " By default timeoutlen is 1000 ms
set ttimeoutlen=0                       " wait up to x ms after Esc for special key"
set updatetime=100                      " Faster completion
set whichwrap+=<,>,h,l                  " Configure backspace so it acts as it should act
set wildmenu                            " Turn on the Wild menu
set wrap                                " Wrap lines
syntax enable                           " Enables syntax highlighting
