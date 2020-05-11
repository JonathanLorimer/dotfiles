call plug#begin('~/.local/share/nvim/plugged')

" General
Plug 'plasticboy/vim-markdown'
Plug 'rhysd/conflict-marker.vim'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
Plug 'francoiscabrol/ranger.vim'
Plug 'rbgrouleff/bclose.vim' "Peer dependency of ranger
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-commentary'
Plug 'scrooloose/syntastic'
Plug 'arcticicestudio/nord-vim'

" Git
Plug 'tpope/vim-fugitive'

" LSP
Plug 'neoclide/coc.nvim', {'do': 'yarn install --frozen-lockfile'}
let g:coc_global_extensions = ['coc-tslint-plugin', 'coc-tsserver', 'coc-emmet', 'coc-css', 'coc-html', 'coc-json', 'coc-yank', 'coc-prettier']

" Nix
Plug 'LnL7/vim-nix'

" Haskell
Plug 'neovimhaskell/haskell-vim'

" TS
Plug 'leafgarland/typescript-vim'
Plug 'ianks/vim-tsx'

call plug#end()
