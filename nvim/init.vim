source $HOME/.config/nvim/plugins.vim
source $HOME/.config/nvim/theme.vim
source $HOME/.config/nvim/settings.vim
source $HOME/.config/nvim/mappings.vim

"------------------------------------------------------------------------------
                              " Plugin Management
"------------------------------------------------------------------------------

"
"------------------------------------------------------------------------------
                              "Coc
"------------------------------------------------------------------------------
"" Tab completion
inoremap <silent><expr> <TAB>
      \ pumvisible() ? "\<C-n>" :
      \ "\<TAB>"
inoremap <expr> <cr> pumvisible() ? "\<C-y>" : "\<C-g>u\<CR>"

"" Documentation
nnoremap <silent> K :call <SID>show_documentation()<CR>

function! s:show_documentation()
  if (index(['vim','help'], &filetype) >= 0)
    execute 'h '.expand('<cword>')
  else
    call CocAction('doHover')
  endif
endfunction

"" Remap keys for gotos
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)

"" Highlight symbol under cursor hold
autocmd CursorHold * silent call CocActionAsync('highlight')

" Format Buffer
command! -nargs=0 Format :call CocAction('format')

" Organize Imports
command! -nargs=0 OR   :call     CocAction('runCommand', 'editor.action.organizeImport')

""Misc
set updatetime=300
set cmdheight=2
set shortmess+=c
set signcolumn=yes

"------------------------------------------------------------------------------
                              " Haskell
"------------------------------------------------------------------------------

let g:haskell_indent_do = 3
let g:haskell_indent_if = 3
let g:haskell_indent_in = 1
let g:haskell_indent_let = 4
let g:haskell_indent_case = 2
let g:haskell_indent_where = 6

au filetype haskell nnoremap <silent> <leader>p :let a='{-# LANGUAGE  #-}'\|put! = a <cr> l11 <Insert>

autocmd FileType haskell setlocal commentstring=--\ %s

"------------------------------------------------------------------------------
                              " Javascript/Typescript
"------------------------------------------------------------------------------
au BufNewFile,BufRead *.ts setlocal filetype=typescript
au BufNewFile,BufRead *.tsx setlocal filetype=typescript.tsx

"------------------------------------------------------------------------------
                              " General
"------------------------------------------------------------------------------



