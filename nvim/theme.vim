if (has("termguicolors"))
	set termguicolors
  hi LineNr ctermbg=NONE guibg=NONE
endif

syntax enable
set t_Co=256
set noshowmode

"Color Theme
colorscheme nord

"Airline Theme
let g:airline_theme='nord'
let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#enabled = 1
let g:airline#parts#ffenc#skip_expected_string='utf-8[unix]'
let g:airline_section_z = '%3p%% %3l/%L:%3v'
