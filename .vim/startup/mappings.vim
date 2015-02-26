" Change the leader to ,
let mapleader=","

" Unmap to arrow keys
no <down> ddp
no <right> <Nop>
no <left> <Nop>
no <up> ddkP
ino <down> <Nop>
ino <left> <Nop>
ino <right> <Nop>
ino <up> <Nop>
vno <down> <Nop>
vno <left> <Nop>
vno <right> <Nop>
vno <up> <Nop>

" Tab navigation
nmap <Leader>n :tabnew<CR>
nmap <Leader>[ :tabprevious<CR>
nmap <Leader>] :tabnext<CR>

" Open NERDTree quickly
nmap <Leader>f :NERDTreeToggle<CR>
