set nocompatible

execute pathogen#infect()
execute pathogen#helptags()

syntax on
filetype plugin indent on

autocmd! bufwritepost .vimrc source %

source ~/.vim/startup/mappings.vim
source ~/.vim/startup/pluginoptions.vim

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
