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
scriptencoding utf-8
source ~/.config/nvim/plugins.vim " all plugins
"++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

" Remap leader key to ,
let g:mapleader=','



"+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
"Common configurations. for python programming first
"+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
"Turn off backup
" Disable line numbers
set nonumber
set nobackup
set noswapfile
set nowritebackup

syntax on
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
let g:jedi#use_splits_not_buffers = "right" "when we go to definition.

"noremap <F3> :Autoformat<CR> key IMPORTANT: deprecated ATM

"let g:autoformat_autoindent = 0
let g:autoformat_retab = 0
let g:autoformat_remove_trailing_spaces = 0
set textwidth=88
set colorcolumn=88
let g:one_allow_italics = 1 " I love italic for comments



let g:WebDevIconsUnicodeDecorateFolderNodes = 1
let g:WebDevIconsUnicodeGlyphDoubleWidth = 1


vmap <C-c> "+y 


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
let g:pymode_virtualenv=1
let g:python_highlight_all = 1


source ~/.config/nvim/NERDTree_settings.vim "LOAD nerd tree settings

"AWESOME ULTRA MAGIC REGULAR REGEX for highlight methods
au BufReadPost,BufNewFile *.py syntax match pythonFunction /\v([^[:cntrl:][:space:][:punct:][:digit:]]|_)([^[:cntrl:][:punct:][:space:]]|_)*\ze(\s?\()/

"" Run always when a python file is write
autocmd BufWritePost *.py call flake8#Flake8()


source ~/.config/nvim/denite.vim " all plugins


" === Coc.nvim === "
" use <tab> for trigger completion and navigate to next complete item
function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~ '\s'
endfunction

inoremap <silent><expr> <TAB>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<TAB>" :
      \ coc#refresh()

"Close preview window when completion is done.
autocmd! CompleteDone * if pumvisible() == 0 | pclose | endif






" coc.nvim color changes
hi! link CocErrorSign WarningMsg
hi! link CocWarningSign Number
hi! link CocInfoSign Type

" === coc.nvim === "
nmap <silent> <leader>dd <Plug>(coc-definition)
nmap <silent> <leader>dr <Plug>(coc-references)
nmap <silent> <leader>dj <Plug>(coc-implementation)

" FINAL COC CONFIS





"EMMET CONFIG 
let g:user_emmet_leader_key=','
let g:deoplete#enable_at_startup = 1



" UI SETTINGS
set termguicolors
" Italics for my favorite color scheme
let g:palenight_terminal_italics=1
let g:material_theme_style = 'dark'
set background=dark
colorscheme palenight


:set cursorline
:hi clear CursorLine
:hi CursorLine gui=bold
highlight Cursorline cterm=bold gui=bold term=none guibg=Grey30

"++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
"                                      MISC
"++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
set statusline^=%{coc#status()}
autocmd FileType python let b:coc_root_patterns = ['.git', '.env']
    " Enable line numbers
set number

" Reload icons after init source
if exists('g:loaded_webdevicons')
  call webdevicons#refresh()
endif
"++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

"Enable prettier
command! -nargs=0 Prettier :CocCommand prettier.formatFile
noremap <leader>f :Prettier<CR> "set keys to executte command


"black congiration map and execute when allways save file
noremap <leader>p :Black<CR> "set keys to executte command
autocmd BufWritePre *.py execute ':Black'
autocmd BufWritePre *.py execute ':Isort'


" enable the magic of tabs line in neovim
let g:airline#extensions#tabline#enabled = 1
"testing transparent background
"hi! Normal ctermbg=NONE guibg=NONE
"let g:indentLine_setColors = 0  
let g:rainbow#max_level = 16
let g:rainbow#pairs = [['(', ')'], ['[', ']'], ['{', '}']]

augroup rainbow_lisp
  autocmd!
  autocmd FileType javascript,jsx,python,lisp,clojure,scheme RainbowParentheses
augroup END

" List of colors that you do not want. ANSI code or #RRGGBB
"let g:rainbow#blacklist = [233, 234, 73, 30, 96, 214, 167, 107, 172, 50, 215, '#c792ea', '#ff5370',  202,]
