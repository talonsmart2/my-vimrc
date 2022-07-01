" _
" __   _(_)_ __ ___  _ __ ___
" \ \ / / | '_ ` _ \| '__/ __|
" \ V /| | | | | | | | | (__
"  \_/ |_|_| |_| |_|_|  \___|

" If you want to look cool, use the terminus font in this repo.

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
set wildmenu
set hid
set hlsearch
set magic
set lazyredraw
set title
set ttyfast
set lazyredraw

" remove error bells
set noerrorbells
set novisualbell
set tm=500

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

augroup rc_always_center
    autocmd!
    autocmd VimEnter,WinEnter,VimResized * call RCAlwaysCenterOrNot()
augroup END

function! RCAlwaysCenterOrNot()
    if g:rc_always_center
        " Use <Enter> to keep center in insert mode, need proper scrolloff
        let &scrolloff = float2nr(floor(winheight(0) / 2) + 1)
        inoremap <CR> <CR><C-o>zz
    else
        let &scrolloff = 0
        silent! iunmap <CR>
    endif
endfunction

map <silent> j gj
map <silent> k gk

