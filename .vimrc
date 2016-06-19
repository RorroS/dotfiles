"""""""""""""""""""""""""""""""""""""""""""""""""""""
"				Vundle				                "
"""""""""""""""""""""""""""""""""""""""""""""""""""""
set guioptions-=r

set nocompatible
filetype plugin indent off
syntax off

" set the runtime path for vundle
set rtp+=~/.vim/bundle/Vundle.vim

" start vundle environment
call vundle#begin()

" let Vundle manage Vundle (this is required)
Plugin 'gmarik/Vundle.vim'

" to install a plugin add it here and run :PluginInstall.
" to update the plugins run :PluginInstall! or :PluginUpdate
" to delete a plugin remove it here and run :PluginClean

" vimtex
Plugin 'xuhdev/vim-latex-live-preview'

" YCM
" Plugin 'Valloric/YouCompleteMe'
" Plugin 'rdnetto/YCM-Generator'

" show what files are available in :e
Plugin 'tpope/vim-sensible'

" autocompletesomthingsomethingverynice
Plugin 'Raimondi/delimitMate'

" git-gutter
Plugin 'airblade/vim-gitgutter'

" add plugins before this
call vundle#end()

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" now (after vundle finished) it is save to turn filetype plugins on
filetype plugin indent on
syntax on
" relative linenumbers
set relativenumber
set number

" case insensitivity
set ignorecase

" syntax highlighting
syntax on
colorscheme obsidian
set t_Co=256

" color of line numbers
" highlight LineNr ctermfg=grey
" highlight CursorLineNr ctermfg=darkgrey

" disable caret scroll
set mouse=a 

" disable swapfiles
set noswapfile

" keep 5 rows under carret 
set scrolloff=5

" autoclose tags
" example <body>.:
inoremap .: </<C-X><C-O><Esc>a

" auto indentation
set autoindent
set smartindent

" tabsize
set shiftwidth=4
set softtabstop=4
set tabstop=4
set expandtab

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"				Keybindings                                                     "
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" copy pasta from system clipboard
map <C-c> "+y
map <C-p> "+p
" ctrl + backspace - remove previous word
" imap <C-Bs><C-W>
" imap <C-h><C-W>

" jk to exit insert mode
"inoremap jk <ESC>

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"				LaTeX				                                            "
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:livepreview_previewer = 'okular'
autocmd BufNewFile,Bufread *.tex set tw=79
autocmd BufNewFile,Bufread *.tex set formatoptions+=t
autocmd BufNewFile,Bufread *.txt set tw=79
autocmd BufNewFile,Bufread *.txt set formatoptions+=t

