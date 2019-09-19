filetype plugin indent on
syntax on
" relative linenumbers
set relativenumber
set number

" case insensitivity
set ignorecase

" syntax highlighting
syntax on
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

