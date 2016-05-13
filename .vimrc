set nocompatible

" START VUNDLE
filetype off
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'gmarik/Vundle.vim'
Plugin 'bling/vim-airline'
Plugin 'flazz/vim-colorschemes'
Plugin 'sjl/badwolf'
Plugin 'scrooloose/nerdtree'
Plugin 'kien/ctrlp.vim'
Plugin 'dbakker/vim-projectroot'
Plugin 'tpope/vim-commentary'
Plugin 'tpope/vim-fugitive'
Plugin 'airblade/vim-gitgutter'
Plugin 'jiangmiao/auto-pairs'
Plugin 'godlygeek/tabular'
Plugin 'ervandew/supertab'
Plugin 'tpope/vim-endwise'

call vundle#end()
" END VUNDLE

set exrc

syntax on
filetype plugin indent on

autocmd! bufwritepost .vimrc source %

set t_Co=256
set t_ut=
colorscheme badwolf

set number
set numberwidth=3
set relativenumber

set laststatus=2
set encoding=utf-8

set autochdir

set nowrap
set scrolloff=2

set tabstop=2
set shiftwidth=2
set expandtab
set softtabstop=2

set hlsearch
set incsearch
set ignorecase
set smartcase

set nobackup
set nowb
set noswapfile

set viminfo=

" gf seaches aditional folders
let &path.="src/include,/usr/include/AL,include/,src"

" ***********************************************
"              KEYBOARD MAPPINGS 
" *********************************************** 

" Change the leader to , 
let mapleader=","

" no need to shift
nnoremap ; :

" save and run ruby
nmap <leader>r :w<cr>:!ruby %<cr>

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
map <C-l> :bnext<CR>
"" Move to the previous buffer
map <C-h> :bprevious<CR>
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
"let g:airline_left_sep=''
"let g:airline_right_sep=''

" Enable the list of buffers
let g:airline#extensions#tabline#enabled = 1
" Show just the filename
let g:airline#extensions#tabline#fnamemod = ':t'"
" Use powerline fonts
let g:airline_powerline_fonts = 1

" **** Ctrl-P ****
"
" Ignore directories
set wildignore+=*/tmp/*,*.so,*.swp,*.zip,*/venv/*,*.pyc,*.db,*.o
let g:ctrlp_working_path_mode = 'ra'
let g:ctrlp_root_markers = ['.venv']


" ********** projectroot ***********
function! <SID>AutoProjectRootCD()
  try
    if &ft != 'help'
      ProjectRootCD
    endif
  catch
    " Silently ignore invalid buffers
  endtry
endfunction

autocmd BufEnter * call <SID>AutoProjectRootCD()

