source $HOME/.config/nvim/plugins.vim
source $HOME/.config/nvim/settings.vim
source $HOME/.config/nvim/theme.vim
source $HOME/.config/nvim/mappings.vim
luafile $HOME/.config/nvim/lua/plug-colorizer.lua

" lua <<EOF
" 	local lsp = require 'nvim_lsp'
"   local nvim_command = vim.api.nvim_command

"   local on_attach = function(client, bufnr)
"     nvim_command('autocmd CursorHold <buffer> lua vim.lsp.util.show_line_diagnostics()')
"   end

" 	lsp.ghcide.setup{ on_attach = on_attach }
" 	lsp.tsserver.setup{ on_attach = on_attach }
" EOF

set completeopt=menuone,longest,noselect

"------------------------------------------------------------------------------
                              " Plugin Management
"------------------------------------------------------------------------------

"
"------------------------------------------------------------------------------
                              "Coc
"------------------------------------------------------------------------------
"" Tab completion
" inoremap <silent><expr> <TAB>
"       \ pumvisible() ? "\<C-n>" :
"       \ "\<TAB>"
" inoremap <expr> <cr> pumvisible() ? "\<C-y>" : "\<C-g>u\<CR>"

" "" Documentation
" nnoremap <silent> K :call <SID>show_documentation()<CR>

" function! s:show_documentation()
"   if (index(['vim','help'], &filetype) >= 0)
"     execute 'h '.expand('<cword>')
"   else
"     call CocAction('doHover')
"   endif
" endfunction

" "" Remap keys for gotos
" nmap <silent> gd <Plug>(coc-definition)
" nmap <silent> gy <Plug>(coc-type-definition)
" nmap <silent> gi <Plug>(coc-implementation)
" nmap <silent> gr <Plug>(coc-references)

" "" Highlight symbol under cursor hold
" autocmd CursorHold * silent call CocActionAsync('highlight')

" " Format Buffer
" command! -nargs=0 Format :call CocAction('format')

" " Organize Imports
" command! -nargs=0 OR   :call     CocAction('runCommand', 'editor.action.organizeImport')

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


autocmd FileType haskell setlocal commentstring=--\ %s

"------------------------------------------------------------------------------
                              " Elm
"------------------------------------------------------------------------------
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1

let g:elm_syntastic_show_warnings = 1


let g:elm_jump_to_error = 0
let g:elm_make_output_file = "elm.js"
let g:elm_make_show_warnings = 0
let g:elm_syntastic_show_warnings = 0
let g:elm_browser_command = ""
let g:elm_detailed_complete = 0
let g:elm_format_autosave = 1
let g:elm_format_fail_silently = 0
let g:elm_setup_keybindings = 0

let g:tagbar_type_elm = {
      \ 'kinds' : [
      \ 'f:function:0:0',
      \ 'm:modules:0:0',
      \ 'i:imports:1:0',
      \ 't:types:1:0',
      \ 'a:type aliases:0:0',
      \ 'c:type constructors:0:0',
      \ 'p:ports:0:0',
      \ 's:functions:0:0',
      \ ]
      \}
"------------------------------------------------------------------------------
                              " Javascript/Typescript
"------------------------------------------------------------------------------
au BufNewFile,BufRead *.ts setlocal filetype=typescript
au BufNewFile,BufRead *.tsx setlocal filetype=typescript.tsx

"------------------------------------------------------------------------------
                              " General
"------------------------------------------------------------------------------



