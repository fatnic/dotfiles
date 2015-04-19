set nocompatible

" START VUNDLE
filetype off
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'gmarik/Vundle.vim'

Plugin 'bling/vim-airline'
Plugin 'flazz/vim-colorschemes'

Plugin 'scrooloose/nerdtree'
Plugin 'kien/ctrlp.vim'

Plugin 'ervandew/supertab'
Plugin 'mattn/emmet-vim'
Plugin 'tpope/vim-commentary'
Plugin 'jiangmiao/auto-pairs'

Plugin 'tpope/vim-fugitive'
Plugin 'airblade/vim-gitgutter'

Plugin 'godlygeek/tabular'
Plugin 'scrooloose/syntastic' "pip install flake8
Plugin 'davidhalter/jedi-vim' "pip install jedi
Plugin 'django.vim'
Plugin 'lambdalisue/vim-pyenv'

call vundle#end()
" END VUNDLE

syntax on
filetype plugin indent on

autocmd! bufwritepost .vimrc source %

set t_Co=256
set t_ut=
colorscheme jellybeans

set number
set numberwidth=3

set laststatus=2
set encoding=utf-8

set autochdir

set nowrap

set tabstop=4
set shiftwidth=4
set expandtab
set softtabstop=4

set hlsearch
set incsearch
set ignorecase
set smartcase

set nobackup
set nowb
set noswapfile

" ***********************************************
"              KEYBOARD MAPPINGS 
" *********************************************** 

" Change the leader to , 
let mapleader=","

"" Disable seach highlights on enter 
nnoremap <Cr> :nohlsearch<Cr>

" Toggle NERDTree
nmap <C-f> :NERDTreeToggle<Cr>

" Useful mappings for managing tabs
map <leader>tn :tabnew<cr>
map <leader>to :tabonly<cr>
map <leader>tc :tabclose<cr>
map <leader>tm :tabmove 
map <leader>t<leader> :tabnext<cr> 

" ***********************************************
"               PLUGIN STUFF
" ***********************************************
" Don't show seperators
let g:airline_left_sep=''
let g:airline_right_sep=''
