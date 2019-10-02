" ============================================================================ "
" ===                               PLUGINS                                === "
" ============================================================================ "
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
Plug 'jiangmiao/auto-pairs'
Plug 'davidhalter/jedi-vim'
Plug 'chiel92/vim-autoformat'

"Plug 'python/black' "Disable atm

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


"This autocomplete right now are disable because im testing the new */
"plugin like Inteliisense

" Autocomplete
"Plug 'ncm2/ncm2'
"Plug 'roxma/nvim-yarp'
"Plug 'ncm2/ncm2-bufword'
"Plug 'ncm2/ncm2-path'
"Plug 'ncm2/ncm2-jedi'




" Formater
Plug 'Chiel92/vim-autoformat'


Plug 'drewtempelmeyer/palenight.vim'
Plug 'ryanoasis/vim-devicons'
Plug 'machakann/vim-highlightedyank'
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
Plug 'andymass/vim-matchup'
Plug 'mattn/emmet-vim'


"" Magical Inteliisense. in test of replace ncm2
Plug 'neoclide/coc.nvim', {'branch': 'release'} 

"Plug 'ncm2/ncm2'

Plug 'roxma/nvim-yarp'

"" enable ncm2 for all buffers
"autocmd BufEnter * call ncm2#enable_for_buffer()
"" IMPORTANT: :help Ncm2PopupOpen for more information
"set completeopt=noinsert,menuone,noselect
"" NOTE: you need to install completion sources to get completions. Check
"" our wiki page for a list of sources: https://github.com/ncm2/ncm2/wiki
"Plug 'ncm2/ncm2-bufword'
"Plug 'ncm2/ncm2-path'
"Plug 'ncm2/ncm2-cssomni'

Plug 'Shougo/denite.nvim' " Magical search files in

" === UI === "
" File explorer
Plug 'scrooloose/nerdtree'

" Colorscheme
Plug 'mhartington/oceanic-next'

" Customized vim status line
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

" Icons
Plug 'ryanoasis/vim-devicons'
Plug 'tiagofumo/vim-nerdtree-syntax-highlight'
call plug#end()

