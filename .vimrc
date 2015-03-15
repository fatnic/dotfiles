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
map <C-j> <C-w>j
map <C-k> <C-w>k
map <C-h> <C-w>h
map <C-l> <C-w>l

" Tab navigation
nmap <Leader>n :tabnew<Cr>
nnoremap <C-[> :tabprevious<Cr>
nnoremap <C-]> :tabnext<Cr>

" Run scripts quicly
nmap <Leader>r <Esc>:w<Cr>:!python %<Cr>

" Toggle file navigation
map <C-f> <ESC>:NERDTreeToggle<Cr>

" Disable seach highlights on enter 
nnoremap <Cr> :nohlsearch<Cr>

" Create new line mid sentance
inoremap <C-o> <Esc>o


" ***********************************************
"              PLUGIN OPTIONS
" ***********************************************

" Autopairs
let g:AutoPairsShortcutFastWrap = '<C-;>'
"NERDTree
let NERDTreeShowHidden = 1
" Flake8
autocmd FileType python map <buffer> <F3> :call Flake8()<CR>
autocmd BufWritePost *.py call Flake8()
let g:flake8_show_in_gutter=1
let g:flake8_show_in_file=1
