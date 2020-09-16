call plug#begin('~/.local/share/nvim/plugged')

" Git
Plug 'tpope/vim-fugitive'
Plug 'mhinz/vim-signify'
Plug 'tpope/vim-rhubarb'
Plug 'junegunn/gv.vim'

" General
Plug 'plasticboy/vim-markdown'
Plug 'rhysd/conflict-marker.vim'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
Plug 'airblade/vim-rooter'
Plug 'francoiscabrol/ranger.vim'
Plug 'rbgrouleff/bclose.vim' "Peer dependency of ranger
Plug 'vim-airline/vim-airline'
Plug 'JonathanLorimer/vim-airline-themes'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-commentary'
Plug 'scrooloose/syntastic'
Plug 'liuchengxu/vim-which-key'
Plug 'majutsushi/tagbar'

" Themes
Plug 'arcticicestudio/nord-vim'
Plug 'kcsongor/vim-monochrome'

" LSP
Plug 'neovim/nvim-lsp'
" Plug 'nvim-lua/diagnostic-nvim'
" Plug 'neoclide/coc.nvim', {'do': 'yarn install --frozen-lockfile'}
" let g:coc_global_extensions = ['coc-tslint-plugin', 'coc-tsserver', 'coc-emmet', 'coc-css', 'coc-html', 'coc-json', 'coc-yank', 'coc-prettier']

" Nix
Plug 'LnL7/vim-nix'

" Haskell
Plug 'neovimhaskell/haskell-vim'
Plug 'alx741/yesod.vim'
let g:yesod_handlers_directories = ['src']

" Elm
Plug 'elmcast/elm-vim'

" TS
Plug 'leafgarland/typescript-vim'
Plug 'ianks/vim-tsx'

" colorizer
Plug 'norcalli/nvim-colorizer.lua'

" SQL
Plug 'tpope/vim-dadbod'
Plug 'kristijanhusak/vim-dadbod-ui'


call plug#end()
