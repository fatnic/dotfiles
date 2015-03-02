" Change the leader to ,
let mapleader=","

" Move lines up and down
no <C-down> ddp
no <C-up> ddkP

" Tab navigation
nmap <Leader>n :tabnew<CR>
nmap <Leader>[ :tabprevious<CR>
nmap <Leader>] :tabnext<CR>

" Run scripts quicly
nmap <Leader>r :!python %<CR>
