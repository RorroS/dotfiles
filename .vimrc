"""""""""" Start plug
call plug#begin('~/.vim/plugged')

" Autocompletion
Plug 'ycm-core/YouCompleteMe'

" Auto closing of parenthesis, brackets etc.
Plug 'Raimondi/delimitMate'

" Status bar/tabline
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

" Mappings on surroud things
" Surround word under cursor: ysiw(
" Replace surrounding: cs([
Plug 'tpope/vim-surround'

"File explorer
Plug 'scrooloose/nerdtree'

" Visiblel indentation
Plug 'nathanaelkane/vim-indent-guides'

call plug#end()
"""""""""" End plug

" Line numbers
set relativenumber
set number

" Case insensitivity
set ignorecase
set wildignorecase

" Colorscheme
syntax enable
set background=dark
"let g:solarized_termcolors=256
"colorscheme nuvola
colorscheme solarized

" Status bar config
let g:airline_theme='wombat'

if !exists('g:airline_symbols')
    let g:airline_symbols = {}
endif

let g:airline_left_sep = ''
let g:airline_left_alt_sep = ''
let g:airline_right_sep = ''
let g:airline_right_alt_sep = ''
let g:airline_symbols.branch = ''
let g:airline_symbols.readonly = ''
let g:airline_symbols.linenr = ''
let g:airline_symbols.maxlinenr = ''

let g:airline_section_z = '%l/%LL:%cC'

let g:airline_section_error = ''
let g:airline_section_warning = ''

" IndentGuides config
let g:indent_guides_enable_on_vim_startup = 1
let g:indent_guides_guide_size = 1
let g:indent_guides_start_level = 2

" Disable caret scroll
set mouse=a

" Disable swapfiles
set noswapfile

" Keep 5 rows under carret
set scrolloff=5

" Make trailing whitespaces visible
highlight ExtraWhitespace ctermbg=grey guibg=grey
match ExtraWhitespace /\s\+$/
autocmd BufWinEnter * match ExtraWhitespace /\s\+$/
autocmd InsertEnter * match ExtraWhitespace /\s\+\%#\@<!$/
autocmd InsertLeave * match ExtraWhitespace /\s\+$/
autocmd BufWinLeave * call clearmatches()

" Remove trailing white spaces
function RemoveTrailingWhiteSpaces()
    %s/\s*$//
    ''
endfunction

" Auto indentation
set autoindent
set smartindent

" Tabsize
set shiftwidth=4
set softtabstop=4
set tabstop=4
set expandtab

" Disable scrollbar in gvim
set guioptions=Ace

" Show line at column
set colorcolumn=80

" Title bar config
autocmd BufEnter * let &titlestring = "GVIM [ " . "%t". " ]"

" NERDTree config
" Close vim if only NERDTree window left open
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
let NERDTreeShowHidden=1

"""""""""" Keybindings
" Change leader key to space
let mapleader = "\<space>"

" Copy pasta from system clipboard
map <C-c> "+y
map <C-p> "+p
map <Leader>f :NERDTreeToggle<CR>
map <Leader>t :call RemoveTrailingWhiteSpaces()<CR>
