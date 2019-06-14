call plug#begin('~/.local/share/nvim/plugged')

Plug 'davidhalter/jedi-vim'
Plug 'crusoexia/vim-monokai'
Plug 'zchee/deoplete-jedi'
Plug 'vim-airline/vim-airline'
Plug 'scrooloose/nerdtree'
Plug 'jiangmiao/auto-pairs'
Plug 'davidhalter/jedi-vim'
Plug 'chiel92/vim-autoformat'
Plug 'Yggdroot/indentLine'
Plug 'python/black'
Plug 'nvie/vim-flake8'
Plug 'vim-scripts/indentpython.vim'
Plug 'w0rp/ale'
Plug 'othree/html5.vim'
Plug 'kaicataldo/material.vim'
Plug 'phanviet/vim-monokai-pro'
Plug 'tomasr/molokai'
Plug 'rakr/vim-one'
""""""""""""""""""""""""""""""""""""""""
Plug 'posva/vim-vue'
Plug 'othree/html5.vim'
Plug 'mattn/emmet-vim'
" Plug 'ap/vim-css-color'
Plug 'digitaltoad/vim-pug'
Plug 'wavded/vim-stylus'
Plug 'elzr/vim-json'

" JS
Plug 'moll/vim-node'
Plug 'heavenshell/vim-jsdoc'
Plug 'pangloss/vim-javascript'

" Autocomplete
Plug 'ncm2/ncm2'
Plug 'roxma/nvim-yarp'
Plug 'ncm2/ncm2-bufword'
Plug 'ncm2/ncm2-path'
Plug 'ncm2/ncm2-jedi'
" Formater
Plug 'Chiel92/vim-autoformat'
Plug 'drewtempelmeyer/palenight.vim'
Plug 'ryanoasis/vim-devicons'
Plug 'dracula/vim', { 'as': 'dracula' }
call plug#end()

" Turn off backup
set nobackup
set noswapfile
set nowritebackup

syntax on
"set termguicolors
set nu

filetype plugin indent on
" show existing tab with 4 spaces width
set tabstop=4
" when indenting with '>', use 4 spaces width
set shiftwidth=4
" On pressing tab, insert 4 spaces
set expandtab
:set mouse=a
let g:neomake_python_enabled_makers = ['flake8']

" disable autocompletion, cause we use deoplete for completion
let g:jedi#completions_enabled = 0

" open the go-to function in split, not another buffer
let g:jedi#use_splits_not_buffers = "right"

noremap <F3> :Autoformat<CR>
let g:autoformat_autoindent = 0
let g:autoformat_retab = 0
let g:autoformat_remove_trailing_spaces = 0
set textwidth=79
set colorcolumn=80

set background=dark
let g:one_allow_italics = 1 " I love italic for comments
colorscheme one
let g:airline_theme='one'

"color dracula
"colorscheme molokai

"" set true colors 
if (has("nvim"))
  For Neovim 0.1.3 and 0.1.4 < https://github.com/neovim/neovim/pull/2198 >
  let $NVIM_TUI_ENABLE_TRUE_COLOR=1
endif

"" For Neovim > 0.1.5 and Vim > patch 7.4.1799 < https://github.com/vim/vim/commit/61be73bb0f965a895bfb064ea3e55476ac175162 >
"Based on Vim patch 7.4.1770 (`guicolors` option) < https://github.com/vim/vim/commit/8a633e3427b47286869aa4b96f2bfc1fe65b25cd >
if (has("termguicolors"))
  set termguicolors
endif

let g:WebDevIconsUnicodeDecorateFolderNodes = 1
let g:WebDevIconsUnicodeGlyphDoubleWidth = 1


vmap <C-c> "+y
