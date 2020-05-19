nnoremap <silent> <leader> :silent WhichKey '<Space>'<CR>
vnoremap <silent> <leader> :silent <c-u> :silent WhichKeyVisual '<Space>'<CR>

" Create map to add keys to
let g:which_key_map =  {}
" Define a separator
let g:which_key_sep = '=>'
let g:which_key_use_floating_win = 0

" Which Key Colours
highlight default link WhichKey          Operator
highlight default link WhichKeySeperator DiffAdded
highlight default link WhichKeyGroup     Identifier
highlight default link WhichKeyDesc      Function

autocmd! FileType which_key
autocmd  FileType which_key set laststatus=0 noshowmode noruler
  \| autocmd BufLeave <buffer> set laststatus=2 noshowmode ruler

let g:which_key_map['c'] = [ 'gcc'                                 , 'comment'	    ]
let g:which_key_map['f'] = [ ':Rg'                                 , 'ripgrep'	    ]
let g:which_key_map['h'] = [ 'gT'                                  , 'tab right'    ]
let g:which_key_map['l'] = [ 'gt'                                  , 'tab left'     ]
let g:which_key_map['t'] = [ 'ITODO(jonathan):<ESC>gccf:a<Space>'  , 'todo'         ]


let g:which_key_map.r = {
			\ 'name': '+ranger',
      \ 't' : [':RangerNewTab' 	, 'new tab'],
      \ 'f' : [':Ranger'    		, 'find'	 ],
      \ }

let g:which_key_map.z = {
			\ 'name': '+fzf',
      \ 't' : [':Tags' 		, 'tags'		],
      \ 'f' : [':Files' 	, 'files'		],
      \ 'b' : [':Buffers' , 'buffers'	],
      \ }

let g:which_key_map.g = {
			\ 'name': '+git',
      \ 'j' : ['<plug>(signify-next-hunk)' 		, 'hunk down'	],
      \ 'k' : ['<plug>(signify-prev-hunk)' 		, 'hunk up'		],
      \ 'h' : [':SignifyToggleHighlight<CR>' 	, 'highlight'	],
      \ }

" Misc
" nmap     <leader>to ITODO(jonathan):<ESC>gccf:a<Space>
nnoremap <leader>i :source $MYVIMRC<CR>
let g:which_key_map.i = 'init nvim'


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
" nnoremap <leader>h gT
" nnoremap <leader>l gt
" nnoremap <leader>tt :RangerNewTab<CR>

" FZF
" nnoremap <leader>rg :Rg<CR>
" nnoremap <leader>zt :Tags<CR>
" nnoremap <leader>zf :Files<CR>
" nnoremap <leader>zb :Buffers<CR>

" Tagbar
" nnoremap <leader>tg :TagbarToggle<CR>

" SIgnify
" nmap <leader>gj <plug>(signify-next-hunk)
" nmap <leader>gk <plug>(signify-prev-hunk)
" nmap <leader>gh :SignifyToggleHighlight<CR>

call which_key#register('<Space>', "g:which_key_map")
