"++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++"
"                                                                              "
"                       __   _ _ _ __ ___  _ __ ___                            "
"                       \ \ / / | '_ ` _ \| '__/ __|                           "
"                        \ V /| | | | | | | | | (__                            "
"                         \_/ |_|_| |_| |_|_|  \___|                           "
"                                                                              "
"                                                                              "
"++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++"                              
"                            MENENDEZ GABRIEL                                  "                        
"                      CONFIGURATION FILE FOR NVIM                             "
"++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++"




call plug#begin('~/.local/share/nvim/plugged')

"-------------------=== Code/Project navigation ===-------------
Plug 'scrooloose/nerdtree'
Plug 'Yggdroot/indentLine'
Plug 'kien/ctrlp.vim'
Plug 'majutsushi/tagbar'
Plug 'scrooloose/nerdcommenter'
Plug 'stsewd/isort.nvim', { 'do': ':UpdateRemotePlugins' }
"----------------------------------------------------------------
Plug 'davidhalter/jedi-vim'
Plug 'crusoexia/vim-monokai'
Plug 'zchee/deoplete-jedi'
Plug 'vim-airline/vim-airline'
Plug 'jiangmiao/auto-pairs'
Plug 'davidhalter/jedi-vim'
Plug 'chiel92/vim-autoformat'
"Plug 'python/black'
Plug 'ambv/black'
Plug 'nvie/vim-flake8'
Plug 'vim-scripts/indentpython.vim'
Plug 'w0rp/ale'
Plug 'othree/html5.vim'
Plug 'kaicataldo/material.vim'
Plug 'phanviet/vim-monokai-pro'
Plug 'tomasr/molokai'
Plug 'fisadev/vim-isort'
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
Plug 'morhetz/gruvbox'
Plug 'phanviet/vim-monokai-pro'
Plug 'Rigellute/shades-of-purple.vim'
Plug 'sonph/onehalf', {'rtp': 'vim/'}
Plug 'machakann/vim-highlightedyank'
Plug 'chriskempson/base16-vim'
Plug 'ayu-theme/ayu-vim'
Plug 'junegunn/seoul256.vim'
Plug 'gosukiwi/vim-atom-dark'
Plug 'joshdick/onedark.vim'
Plug 'NLKNguyen/papercolor-theme'
Plug 'dracula/vim', { 'as': 'dracula' }
Plug 'trusktr/seti.vim'
Plug 'lifepillar/vim-solarized8'
"highlight
Plug 'sheerun/vim-polyglot'
" syntax check
Plug 'w0rp/ale'

" JS SUPPORT
Plug 'mxw/vim-jsx'
Plug 'pangloss/vim-javascript'

""TEST PLUGIN"
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'

call plug#end()

" Turn off backup
set nobackup
set noswapfile
set nowritebackup

syntax on
set termguicolors
set nu
set ruler


filetype plugin indent on
set tabstop=4
set shiftwidth=4
set expandtab
set autoindent
set cursorline
set showmatch
set enc=utf-8
:set mouse=a


if has("nvim")
    let g:python3_host_prog = $HOME . "/.pyenv/shims/python3.7"
endif

















let g:neomake_python_enabled_makers = ['flake8']

" disable autocompletion, cause we use deoplete for completion
"let g:jedi#completions_enabled = 0

" open the go-to function in split, not another buffer
let g:jedi#use_splits_not_buffers = "right"

noremap <F3> :Autoformat<CR>
let g:autoformat_autoindent = 0
let g:autoformat_retab = 0
let g:autoformat_remove_trailing_spaces = 0
set textwidth=88
set colorcolumn=88
let g:one_allow_italics = 1 " I love italic for comments
"colorscheme onehalfdark
"let g:airline_theme='onehalfdark'
"let $NVIM_TUI_ENABLE_TRUE_COLOR=1
let g:material_theme_style = 'darker'
"wq:colorscheme monokai
"colorscheme onedark
"set t_Co=256
"set background=dark
"set termguicolors
"let ayucolor="mirage"
"colorscheme ayu
"colorscheme gruvbox
"" aset true colors 
"if (has("nvim"))
"For Neovim 0.1.3 and 0.1.4 < https://github.com/neovim/neovim/pull/2198 >
"endif

"" For Neovim > 0.1.5 and Vim > patch 7.4.1799 < https://github.com/vim/vim/commit/61be73bb0f965a895bfb064ea3e55476ac175162 >
"Based on Vim patch 7.4.1770 (`guicolors` option) < https://github.com/vim/vim/commit/8a633e3427b47286869aa4b96f2bfc1fe65b25cd >
"if (has("termguicolors"))
"set termguicolors
"endif

let g:WebDevIconsUnicodeDecorateFolderNodes = 1
let g:WebDevIconsUnicodeGlyphDoubleWidth = 1


vmap <C-c> "+y
"highlight Cursorline cterm=bold gui=none
"highlight Cursorline gui=underline term=bold cterm=underline
"set termguico


"
"
" jedi
let g:jedi#goto_command = "gc"
let g:jedi#goto_assignments_command = "<leader>g"
let g:jedi#goto_definitions_command = "gf"
let g:jedi#documentation_command = "K"
let g:jedi#usages_command = "<leader>n"
let g:jedi#completions_command = "<C-Space>"
let g:jedi#rename_command = "<leader>r"
let g:jedi#use_splits_not_buffers = "right"

let g:PaperColor_Theme_Options = {
  \   'language': {
  \     'python': {
  \       'highlight_builtins': 1,
  \       'highlight_builtin_objs': 1,
  \       'highlight_builtin_types': 1,
  \       'highlight_builtin_funcs': 1,
  \       'highlight_all': 1,
  \     },
  \     'cpp': {
  \       'highlight_standard_library': 1
  \     },
  \     'c': {
  \       'highlight_builtins' : 1
  \     }
  \   }
  \ }
set background=dark
"colorscheme Dracula
"colorscheme palenight
colorscheme PaperColor
"=====================================================
"" NERDTree settings
"=====================================================
let NERDTreeIgnore=['\.pyc$', '\.pyo$', '__pycache__$']     " Ignore files in NERDTree
let NERDTreeWinSize=40
autocmd VimEnter * if !argc() | NERDTree | endif  " Load NERDTree only if vim is run without arguments
nmap " :NERDTreeToggle<CR>

let g:pymode_virtualenv=1

"syntax match pythonFunction /\v([^[:cntrl:][:space:][:punct:][:digit:]]|_)([^[:cntrl:][:punct:][:space:]]|_)*\ze(\s?\()/
let g:python_highlight_all = 1
filetype plugin on

au BufReadPost,BufNewFile *.py syntax match pythonFunction /\v([^[:cntrl:][:space:][:punct:][:digit:]]|_)([^[:cntrl:][:punct:][:space:]]|_)*\ze(\s?\()/

"" Run always when a python file is write
autocmd BufWritePost *.py call flake8#Flake8()



:set cursorline
:hi clear CursorLine
:hi CursorLine gui=bold
highlight Cursorline cterm=bold gui=bold term=bold guibg=Grey30


"=====================================================================================
if (has("nvim"))
  "For Neovim 0.1.3 and 0.1.4 < https://github.com/neovim/neovim/pull/2198 >
  let $NVIM_TUI_ENABLE_TRUE_COLOR=1
endif

"For Neovim > 0.1.5 and Vim > patch 7.4.1799 < https://github.com/vim/vim/commit/61be73bb0f965a895bfb064ea3e55476ac175162 >
"Based on Vim patch 7.4.1770 (`guicolors` option) < https://github.com/vim/vim/commit/8a633e3427b47286869aa4b96f2bfc1fe65b25cd >
" < https://github.com/neovim/neovim/wiki/Following-HEAD#20160511 >
if (has("termguicolors"))
  set termguicolors
endif


