let mapleader = "\<Space>"

set hidden
set nowrap
set pumheight=10
set ruler
set cursorline

" ====================================================
" Navigation
" ===================================================



" Ranger
let g:ranger_replace_netrw = 1 "open ranger when vim open a directory

" Highlight 81st column
highlight ColorColumn ctermbg=red
call matchadd('ColorColumn', '\%81v', 100)

" Tab Stuff
set expandtab
set tabstop=2
set softtabstop=2
set shiftwidth=2
set smarttab
set smartindent
set autoindent

set number
set rnu
autocmd BufWritePre * %s/\s\+$//e
set nocompatible
set backspace=indent,eol,start
filetype plugin indent on

" FZF
let g:fzg_buffers_jump = 1
let g:fzf_tags_command = 'ctags -R'
