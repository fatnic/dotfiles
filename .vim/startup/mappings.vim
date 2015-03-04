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
nmap <Leader>[ :tabprevious<CR>
nmap <Leader>] :tabnext<CR>

" Run scripts quicly
nmap <Leader>r :!python %<CR>

" Toggle file navigation
map <c-f> <ESC>:NERDTreeToggle<CR>
