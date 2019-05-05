let g:python3_host_prog='C:/Users/foo/Envs/neovim3/Scripts/python.exe'
let g:python_host_prog='C:/Users/foo/Envs/neovim/Scripts/python.exe'



call plug#begin('~/AppData/Local/nvim/plugged')
" below are some vim plugin for demonstration purpose
"colorschems
Plug 'iCyMind/NeoSolarized'
Plug 'morhetz/gruvbox'
Plug 'cocopon/iceberg.vim'
Plug 'nightsense/snow'
Plug 'fatih/molokai'
Plug 'ncm2/ncm2'
Plug 'roxma/nvim-yarp'
Plug 'ncm2/ncm2-bufword'
Plug 'ncm2/ncm2-path'
Plug 'ncm2/ncm2-jedi'
Plug 'joshdick/onedark.vim'
"Plug 'itchyny/lightline.vim'
Plug 'ryanoasis/vim-devicons'
" Asynchronous Code Linting
Plug 'w0rp/ale'
"plugins
Plug 'scrooloose/nerdtree',{'on': 'NERDTreeToggle'}
Plug 'valloric/youcompleteme'
Plug 'vim-airline/vim-airline-themes'
Plug 'vim-airline/vim-airline'
Plug 'townk/vim-autoclose'
Plug 'vim-scripts/HTML-AutoCloseTag'
"Plug 'ctrlpvim/ctrlp.vim'
" Jump between splits with Ctrl
"Plug 'christoomey/vim-tmux-navigator'
" NerdCommenter
"Plug 'scrooloose/nerdcommenter'
call plug#end()


"Syntax
colorscheme onedark
set background=dark
" Clipboard integration
"set clipboard=unnamed
" Enable syntax highlighting
syntax enable
syntax on
" Display line numbers
set number
" Encoding UTF-8
set encoding=utf-8
lang en
" A tab is 4 spaces
set tabstop=4
" Always uses spaces instead of tabs
set expandtab
" Insert 4 spaces when tab is pressed
set softtabstop=4
" An indent is 4 spaces
set shiftwidth=4
" Round indent to nearest shiftwidth multiple
set shiftround
" Toggle comment in visual mode
"vmap <silent>/ <Plug>NERDCommenterToggle

" Search
set incsearch
set hlsearch
set ignorecase
set smartcase
"nnoremap <leader><space> :nohlsearch<CR>

" Disable search hilighting 
"nmap <esc><esc> :noh<CR>
"EOF







let g:NERDTreeDirArrowExpandable = '+'
let g:NERDTreeDirArrowCollapsible = '-'

let base16colorspace=256
let g:solarized_tercolors=256
let g:airline_theme='onedark'


" Airline
" Enable Airline
let g:airline#extensions#branch#enabled = 1
" Show list of buffers in tabline
let g:airline#extensions#tabline#enabled = 1
" Show just the filename in tabline
let g:airline#extensions#tabline#fnamemod = ':t'
" Use fonts
let g:airline_powerline_fonts = 1
let g:airline_left_sep  = ''
let g:airline_right_sep = ''
" Enable ale integration with airline.
let g:airline#extensions#ale#enabled = 1
let airline#extensions#ale#error_symbol = 'E:'
let airline#extensions#ale#warning_symbol = 'W:'
if !exists('g:airline_symbols')
     let g:airline_symbols = {}
endif
" Airline symbols
let g:airline_left_sep = "\uE0C0"
let g:airline_right_sep = "\uE0C2"
let g:airline_symbols.linenr = '␤'
"let g:airline_symbols.branch = '⎇'
let g:airline_symbols.paste = 'ρ'
let g:airline_symbols.paste = 'Þ'
let g:airline_symbols.paste = '∥'
let g:airline_symbols.whitespace = 'Ξ'
" Airline theme
"let g:airline_solarized_bg='dark'

" NERDTree
" Toggle NERDTree on the right side by C-n
noremap  <c-n> :NERDTreeToggle<cr>
" Place NERDTree to right
let g:NERDTreeWinPos = "right"
let g:NERDTreeQuitOnOpen = "1"


set hlsearch
set incsearch
:noh



"mappings
" Save file with C-s
"nnoremap <silent><C-s> :w<CR>

":let mapleader = ","
"map <Space> :noh<CR>
