set nocompatible

execute pathogen#infect()
execute pathogen#helptags()

syntax on
filetype plugin indent on

autocmd! bufwritepost .vimrc source %

set t_Co=256
set t_ut=
colorscheme molokai

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


" ***********************************************
"              KEYBOARD MAPPINGS 
" *********************************************** 

" Change the leader to , 
let mapleader=","

" Move around split windows with Ctrl-movement keys
map <C-j> <c-w>j
map <c-k> <c-w>k
map <c-h> <c-w>h
map <c-l> <c-w>l

" Tab navigation
nmap <Leader>n :tabnew<CR>
nnoremap <Leader>[ :tabprevious<CR>
nnoremap <Leader>] :tabnext<CR>

" Run scripts quicly
nmap <Leader>r <Esc>:w<cr>:!python %<CR>

" Toggle file navigation
map <c-f> <ESC>:NERDTreeToggle<CR>

" Disable seach highlights on enter 
nnoremap <cr> :nohlsearch<cr>

" Create new line mid sentance
inoremap <C-o> <Esc>o


" ***********************************************
"              PLUGIN OPTIONS
" ***********************************************

" Autopairs
let g:AutoPairsShortcutFastWrap = '<C-w>'
"NERDTree
let NERDTreeShowHidden = 1
