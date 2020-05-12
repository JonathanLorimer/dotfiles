" Misc
nmap     <leader>to ITODO(jonathan):<ESC>gccf:a<Space>
nnoremap <leader>m :source $MYVIMRC<CR>

" Arrow Keys
nnoremap <S-Up> :m-2<CR>
nnoremap <S-Down> :m+<CR>
inoremap <S-Up> <Esc>:m-2<CR>
inoremap <S-Down> <Esc>:m+<CR>

noremap <Up> <Nop>
noremap <Down> <Nop>
noremap <Left> <Nop>
noremap <Right> <Nop>
inoremap <Up> <Nop>
inoremap <Down> <Nop>
inoremap <Left> <Nop>
inoremap <Right> <Nop>

" Tabs
nnoremap <leader>h gT
nnoremap <leader>l gt
nnoremap <leader>tt :RangerNewTab<CR>

" FZF
nnoremap <leader>rg :Rg<CR>
nnoremap <leader>zt :Tags<CR>
nnoremap <leader>zf :Files<CR>
nnoremap <leader>zb :Buffers<CR>

