" relative linenumbers
set relativenumber
set number

" syntax highlighting
syntax on
colorscheme obsidian
set t_Co=256

" disable caret scroll
set mouse=a 

" keep 5 rows under carret 
set scrolloff=5

" set row charsize for LaTeX files
"au Bufread,BufNewFile *.tex set tw=79 
"au Bufread,BufNewFile *.tex set formatoptions+=1

" auto indentation
set autoindent
set smartindent

" tabsize
set shiftwidth=4
set softtabstop=4
set tabstop=4
set expandtab

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"				Keybindings			                "
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" copy pasta from system clipboard
map <C-c> "+y
map <C-p> "+p
" ctrl + backspace - remove previous word
" imap <C-Bs><C-W>
" imap <C-h><C-W>

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"				LaTeX				                "
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:livepreview_previewer = 'okular'

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"				Vundle				                "
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
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
Plugin 'Valloric/YouCompleteMe'

" autocompletesomthingsomethingverynice
Plugin 'Raimondi/delimitMate'

" add plugins before this
call vundle#end()

" now (after vundle finished) it is save to turn filetype plugins on
filetype plugin indent on
syntax on
