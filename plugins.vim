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
"Plug 'davidhalter/jedi-vim'
Plug 'crusoexia/vim-monokai'
"Plug 'zchee/deoplete-jedi'

Plug 'jiangmiao/auto-pairs'
Plug 'chiel92/vim-autoformat'

Plug 'numirias/semshi', {'do': ':UpdateRemotePlugins'}
Plug 'psf/black', { 'branch': 'stable' }
"Plug 'python/black' "Disable atm
"Plug 'ambv/black'
Plug 'nvie/vim-flake8'
Plug 'vim-scripts/indentpython.vim'
Plug 'w0rp/ale'
Plug 'othree/html5.vim'
Plug 'kaicataldo/material.vim'
Plug 'phanviet/vim-monokai-pro'
Plug 'fisadev/vim-isort'
""""""""""""""""""""""""""""""""""""""""
Plug 'posva/vim-vue'
Plug 'othree/html5.vim'
Plug 'mattn/emmet-vim'
Plug 'ap/vim-css-color'
Plug 'digitaltoad/vim-pug'
Plug 'wavded/vim-stylus'
Plug 'elzr/vim-json'

" JS
Plug 'moll/vim-node'
Plug 'heavenshell/vim-jsdoc'
Plug 'pangloss/vim-javascript'



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
Plug 'neoclide/coc.nvim', {'do': { -> coc#util#install()}}
" Improved motion in Vim
Plug 'easymotion/vim-easymotion'
" Tmux/Neovim movement integration
Plug 'christoomey/vim-tmux-navigator'

" Snippet support
Plug 'Shougo/neosnippet'
Plug 'Shougo/neosnippet-snippets'

" Print function signatures in echo area
Plug 'Shougo/echodoc.vim'

" Improved syntax highlighting and indentation
Plug 'othree/yajs.vim'

Plug 'roxma/nvim-yarp'


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



"MISC PLUGGINS 
Plug 'iamcco/markdown-preview.nvim', { 'do': { -> mkdp#util#install() } }


"THEME
Plug 'liuchengxu/space-vim-dark'
Plug 'flrnprz/plastic.vim'
Plug 'joshdick/onedark.vim'
Plug 'haishanh/night-owl.vim'
Plug 'ayu-theme/ayu-vim'
Plug 'dracula/vim', { 'as': 'dracula' }
Plug 'morhetz/gruvbox'
Plug 'cocopon/iceberg.vim'
Plug 'sonph/onehalf', {'rtp': 'vim/'}
Plug 'rakr/vim-one'
Plug 'doums/darcula'
Plug 'arcticicestudio/nord-vim'
Plug 'sjl/badwolf'
Plug 'luochen1990/rainbow'
Plug 'junegunn/rainbow_parentheses.vim'
Plug 'srcery-colors/srcery-vim'
Plug 'nightsense/carbonized'
Plug 'erichdongubler/vim-sublime-monokai'

call plug#end()


