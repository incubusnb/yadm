let data_dir = has('nvim') ? stdpath('data') . '/site' : '~/.vim'
if empty(glob(data_dir . '/autoload/plug.vim'))
  silent execute '!curl -fLo '.data_dir.'/autoload/plug.vim --create-dirs  https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

call plug#begin()

Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}

call plug#end()

syntax on
set encoding=utf-8
set noerrorbells
set number
set relativenumber
set ruler
set laststatus=2
set wildmenu
set wildmode=longest:list,full
set autoindent
set ignorecase
set smartcase
set expandtab
set shiftwidth=4
set tabstop=4
set softtabstop=4
set smarttab
set scrolloff=5
set wrap
" set showbreak
set cursorline
set signcolumn
set textwidth=79
set sidescroll=5
colorscheme torte
