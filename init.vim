" Talon's vimrc
" If ypu want to look cool, use the terminus font in this repo.

let leaderkey=" "
set number relativenumber
syntax on
set mouse=v
set history=500
set tabstop=4
set softtabstop=4 " won't affect tab whitespace in files.
set ignorecase
set smartcase
set hlsearch
set ai
set si

" vim-plug
call plug#begin("~/.vimplugins")
Plug 'preservim/NERDTree'
Plug 'vimwiki/vimwiki'
Plug 'ap/vim-css-color'
Plug 'https://github.com/itchyny/lightline.vim'
Plug 'https://github.com/ellisonleao/gruvbox.nvim'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
" colorschemes. This vimrc uses gruvbox by default.
Plug 'https://github.com/ellisonleao/gruvbox.nvim'
Plug 'https://github.com/Shatur/neovim-ayu'
Plug 'https://github.com/folke/tokyonight.nvim'
call plug#end()

colorscheme gruvbox

" If this is your first setup
PlugInstall
CocInstall coc-html coc-css coc-python coc-xml coc-json coc-go coc-htmldjango
