let g:python3_host_prog='C:\Users\Ivan\AppData\Local\Programs\Python\Python37-32\python'
""let g:python3_host_prog='c:\users\ivan\appdata\local\programs\python\python37-32'
""let g:python_host_prog='c:\users\ivan\appdata\local\programs\python\python37-32'

call plug#begin('~/appdata/local/nvim/plugged') " below are some vim plugin for demonstration purpose

" COLOURSCHEMES
" solarized theme
"plug 'altercation/vim-colors-solarized'
Plug 'arakashic/nvim-colors-solarized'
Plug 'icymind/neosolarized'
" colorscheme
Plug 'trevordmiller/nova-vim'
Plug 'mhartington/oceanic-next'
" gruvbox theme
Plug 'morhetz/gruvbox'
" iceberg theme
Plug 'cocopon/iceberg.vim'
" snow theme
Plug 'nightsense/snow'
" molokai theme
Plug 'fatih/molokai'
" onedark theme
Plug 'joshdick/onedark.vim'
" vim icons
Plug 'ryanoasis/vim-devicons'

" PLUGINS
" nerdtree 
Plug 'scrooloose/nerdtree'
",{'on': 'nerdtreetoggle'}

" nerdcommenter
Plug 'scrooloose/nerdcommenter'

" CSS colour Show
Plug 'skammer/vim-css-color'

" improved motion in vim
"plug 'easymotion/vim-easymotion'

" deoplete code completion tool
Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }

" asynchronous code linting
Plug 'w0rp/ale'

" use tab for code completion 
Plug 'ervandew/supertab'
"" For C-langs ???:
"Plug 'valloric/youcompleteme'


"" multiple cursors
"Plug 'terryma/vim-multiple-cursors'

" other completion
"plug 'ncm2/ncm2'
"plug 'roxma/nvim-yarp'
"plug 'ncm2/ncm2-bufword'
"plug 'ncm2/ncm2-path'
"plug 'ncm2/ncm2-jedi'

" polyglot syntax hilighting
Plug 'sheerun/vim-polyglot'

" status bars
Plug 'vim-airline/vim-airline-themes'
Plug 'vim-airline/vim-airline'
" statusbar(other Airline)
"plug 'itchyny/lightline.vim'

Plug 'townk/vim-autoclose'
Plug 'vim-scripts/HTML-AutoCloseTag'

" ctrlp file, buffer, tag search, have to see settings
"plug 'ctrlpvim/ctrlp.vim'

" jump between splits with ctrl
"plug 'christoomey/vim-tmux-navigator'

" autoformat plugin
"plug 'chiel92/vim-autoformat'

call plug#end()


"SYNTAX
:colorscheme oceanicnext "oceanicnext/snow/onedark/gruvbox/iceberg/nova/molokai/(neo)solarized
set background=dark
set termguicolors
"let base16colorspace=256
"let g:solarized_tercolors=256
"" Clipboard integration
""set clipboard=unnamed
"" Enable syntax highlighting
syntax enable
syntax on

" {{{ Folding settings
set foldmethod=syntax " Use syntax fold
set foldlevel=99      " Folds are open by default
set foldlevelstart=99 " Folds are open by default (new way)
"let ruby_fold=0
"let go_fold=0
"let lua_fold=1
let javascript_fold=1
" }}}

"" Display line numbers
set number
set relativenumber

"" Encoding UTF-8
set encoding=UTF-8
scriptencoding utf-8
lang en
"" A tab is 4 spaces
set tabstop=2
"" Always uses spaces instead of tabs
set expandtab
"" Insert 4 spaces when tab is pressed
set softtabstop=2
"" An indent is 4 spaces
set shiftwidth=2
"" Round indent to nearest shiftwidth multiple
set shiftround

" Whitespace settings
"set backspace=indent,eol,start      " backspace through everything in insert mode
"set list                    " Show invisible characters using listchars
"set listchars=""            " Reset the listchars
"set listchars=tab:›\        " show tabs as lsaquos
"set listchars+=trail:·      " show trailing spaces as dots
"set listchars+=nbsp:·       " show trailing non-breaking-spaces as dots
"set listchars+=extends:❯    " The character in the last column when the line continues right
"set listchars+=precedes:❮   " The character in the first column when the line continues left

"set nowrap                          " don't wrap lines
set scrolloff=3   " Show 3 extra lines when scrolling up/down
set cursorline    " Highlight the line where the cursor is
" Add some space around the cursor when moving it near the borders of the screen
set sidescrolloff=1
" Enable mouse in console mode
set mouse=a

"" Deoplete code completion tool; Enable deoplete at startup
let g:deoplete#enable_at_startup = 1

"CSS colour Show
let g:cssColorVimDoNotMessMyUpdatetime = 1

"" SEARCH
:noh
set incsearch
set hlsearch
set ignorecase
set smartcase
set inccommand= " incremental everything
set ignorecase  " searches are case insensitive...
set smartcase   " ... unless they contain at least one capital letter
"set gdefault    " by default, replace globally (you can ommit /g at the end of a search-and-replace
"EOF


"" Airline
"" Enable Airline
"let g:airline#extensions#branch#enabled = 1
"" Show list of buffers in tabline
"let g:airline#extensions#tabline#enabled = 1
"" Show just the filename in tabline
"let g:airline#extensions#tabline#fnamemod = ':t'
"" Use fonts
let g:airline_powerline_fonts = 1
"" Enable ale integration with airline.
let g:airline#extensions#ale#enabled = 1
let airline#extensions#ale#error_symbol = 'E:'
let airline#extensions#ale#warning_symbol = 'W:'
if !exists('g:airline_symbols')
     let g:airline_symbols = {}
endif

"" Airline symbols
let g:airline_left_sep = ''
let g:airline_right_sep = ''
let g:airline_left_alt_sep = ''
let g:airline_right_alt_sep = ''
let g:airline_symbols.linenr = '␊␤'
let g:airline_symbols.branch = '⎇'
let g:airline_symbols.paste = 'ρ'
let g:airline_symbols.paste = 'Þ'
let g:airline_symbols.paste = '∥'
let g:airline_symbols.whitespace = 'Ξ'

"" Airline theme
let g:airline_solarized_bg='dark'
let g:airline_theme='base16_oceanicnext'  "solarized/base16_oceanicnext/onedark/monochrome/molokai/base16_tomorrow/... see in nvim\plugged\vim-airline-themes\autoload\airline\themes


"" NERDTree
"" Toggle NERDTree on the right side by C-n
noremap  <c-n> :NERDTreeToggle<cr>
"" Place NERDTree to left
let g:NERDTreeWinPos = "left"
""let g:NERDTreeQuitOnOpen = "1"
let g:NERDTreeDirArrowExpandable = '+'
let g:NERDTreeDirArrowCollapsible = '-'
"" === NERDTree === "
"" Show hidden files/directories
let g:NERDTreeShowHidden = 1

"" Remove bookmarks and help text from NERDTree
"let g:NERDTreeMinimalUI = 1

"" Custom icons for expandable/expanded directories
"let g:NERDTreeDirArrowExpandable = '⬏'
"let g:NERDTreeDirArrowCollapsible = '⬎'

"" Hide certain files and directories from NERDTree
""let g:NERDTreeIgnore = ['^\.DS_Store$', '^tags$', '\.git$[[dir]]', '\.idea$[[dir]]', '\.sass-cache$']





"" Make background transparent for many things
"hi! Normal ctermbg=NONE guibg=NONE
"hi! NonText ctermbg=NONE guibg=NONE
"hi! LineNr ctermfg=NONE guibg=NONE
"hi! SignColumn ctermfg=NONE guibg=NONE
"hi! StatusLine guifg=#16252b guibg=#6699CC
"hi! StatusLineNC guifg=#16252b guibg=#16252b

"" MAPPINGS

"" Remap leader key to ,
"let g:mapleader=','

"" Toggle comment in visual mode
vmap <silent>/ <Plug>NERDCommenterToggle
vmap <leader>/ <plug>NERDCommenterComment


"" Select from completion list with SHIFT-j/k
inoremap <expr> <C-j> ("\<C-n>")
inoremap <expr> <C-k> ("\<C-p>")

"" Copy to system clipboard
vnoremap <C-c> "+y
"" Paste from system clipboard with Ctrl + v
inoremap <C-v> <Esc>"+p

"" Save file with C-s
"map <c-s> :w <CR>

nmap <C-h> <C-w>h
nmap <C-j> <C-w>j
nmap <C-k> <C-w>k
nmap <C-l> <C-w>l

nnoremap <C-J> <C-W>j
nnoremap <C-K> <C-W>k
nnoremap <C-L> <C-W>l
nnoremap <C-H> <C-W>h

""Map ESC to jk
"imap jk <ESC>
"imap Jk <ESC>
"imap JK <ESC>

"" Wrapped lines goes down/up to next row, rather than next line in file.
"nnoremap j gj
"nnoremap J gj
"nnoremap k gk
"nnoremap K gk

"" Capslock H and L are just stupid LOL
"nnoremap H h
"nnoremap L l

" Do not exit visual mode when shifting
vnoremap < <gv
vnoremap > >gv

"" comma q quits and saves, comma w saves without warnings
"nmap <leader>q :q!<CR>
"nmap <leader>w :w!<CR>

"" Disable search hilighting 
"nnoremap <leader><space> :nohlsearch<CR>
map <Space> :noh<CR>
"nmap <esc><esc> :noh<CR>

"" Deleting without overriding the default clipboard
"nnoremap <leader>d "_d
"vnoremap <leader>d "_d

"" remap space bar to search
":nnoremap <Space> /\v

""Makes search using regexes require less \s
":nnoremap <leader>s :%s/\v

" deactivate 'Entering Ex mode' prompt
:nnoremap Q <Nop>

""nnoremap <Leader>p "0p
"" Toggle between last 2 buffers
"nnoremap <leader><tab> <c-^>

