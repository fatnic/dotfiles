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
colorscheme Monokai-chris

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

" Run current file in python
nmap <leader>r :!python %<cr>

"" Disable seach highlights on enter 
nnoremap <Cr> :nohlsearch<Cr>

" Toggle NERDTree
nmap <C-f> :NERDTreeToggle<Cr>

" This allows buffers to be hidden if you've modified a buffer.
" This is almost a must if you wish to use buffers in this way.
set hidden
" To open a new empty buffer
" This replaces :tabnew which I used to bind to this mapping
nmap <leader>T :enew<cr>
" Move to the next buffer
nmap <leader>l :bnext<CR>
"" Move to the previous buffer
nmap <leader>h :bprevious<CR>
" Close the current buffer and move to the previous one
" This replicates the idea of closing a tab
nmap <leader>bq :bp <BAR> bd #<CR>
" Show all open buffers and their status
nmap <leader>bl :ls<CR>

" ***********************************************
"               PLUGIN STUFF
" ***********************************************
"
" **** AIRLINE ****
"
" Don't show seperators
let g:airline_left_sep=''
let g:airline_right_sep=''
" Enable the list of buffers
let g:airline#extensions#tabline#enabled = 1
" Show just the filename
let g:airline#extensions#tabline#fnamemod = ':t'"

" **** SUPERTAB ****
"
" Supertab from top to bottom
let g:SuperTabDefaultCompletionType = '<c-n>'

" **** Ctrl-P ****
"
" Ignore directories
 set wildignore+=*/tmp/*,*.so,*.swp,*.zip,*/venv/*,*.pyc 
