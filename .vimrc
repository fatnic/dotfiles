set nocompatible

execute pathogen#infect()

syntax on
filetype plugin indent on

source ~/.vim/startup/mappings.vim

set t_Co=256
colorscheme molokai

set number

set laststatus=2
set encoding=utf-8

set autochdir

set nowrap

set tabstop=4
set shiftwidth=4
set expandtab

let g:AutoPairsShortcutFastWrap = '<C-w>'
