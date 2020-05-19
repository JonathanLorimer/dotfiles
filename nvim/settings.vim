let mapleader = "\<Space>"

set hidden
set nowrap
set pumheight=10
set ruler
set cursorline

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

" Plugins

" Don't let plugins map leader bindings
let g:no_plugin_maps = 1

" Signify
let g:signify_sign_add               = '+'
let g:signify_sign_delete            = '_'
let g:signify_sign_delete_first_line = '‾'
let g:signify_sign_change            = '~'

let g:signify_sign_show_count = 0
let g:signify_sign_show_text = 1


" FZF
let g:fzg_buffers_jump = 1
let g:fzf_tags_command = 'ctags -R'
