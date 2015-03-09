" Change the leader to ,
let mapleader=","

" Move lines up and down
no <C-down> ddp
no <C-up> ddkP

" Move around split windows with Ctrl-movement keys
map <c-j> <c-w>j
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
