set nocompatible

execute pathogen#infect()
execute pathogen#helptags()

syntax on
filetype plugin indent on

source ~/.vim/startup/mappings.vim

set t_Co=256
colorscheme Monokai

set number

set laststatus=2
set encoding=utf-8

set autochdir

set nowrap

set tabstop=4
set shiftwidth=4
set expandtab

let g:AutoPairsShortcutFastWrap = '<C-w>'

let NERDTreeShowHidden=1
