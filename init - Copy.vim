let g:python3_host_prog='c:\users\ivan\appdata\local\programs\python\python37-32'
let g:python_host_prog='c:\users\ivan\appdata\local\programs\python\python37-32'

call plug#begin('~/appdata/local/nvim/plugged') " below are some vim plugin for demonstration purpose

" colorschemes
" solarized theme
"plug 'altercation/vim-colors-solarized'
"plug 'icymind/neosolarized'
" colorscheme
plug 'trevordmiller/nova-vim'
plug 'mhartington/oceanic-next'
" gruvbox theme
plug 'morhetz/gruvbox'
" iceberg theme
plug 'cocopon/iceberg.vim'
" snow theme
plug 'nightsense/snow'
" molokai theme
plug 'fatih/molokai'
" onedark theme
plug 'joshdick/onedark.vim'
" statusbar(other airkine)
"plug 'itchyny/lightline.vim'
" vim icons
"plug 'ryanoasis/vim-devicons'
" asynchronous code linting
plug 'w0rp/ale'

" plugins
plug 'scrooloose/nerdtree',{'on': 'nerdtreetoggle'}

" improved motion in vim
"plug 'easymotion/vim-easymotion'

" deoplete: code completion tool
"plug 'shougo/deoplete.nvim', { 'do': ':updateremoteplugins' }

" use tab for code completion 
plug 'ervandew/supertab'
plug 'valloric/youcompleteme'

" other completion
"plug 'ncm2/ncm2'
"plug 'roxma/nvim-yarp'
"plug 'ncm2/ncm2-bufword'
"plug 'ncm2/ncm2-path'
"plug 'ncm2/ncm2-jedi'

" polyglot syntax hilighting
plug 'sheerun/vim-polyglot'

" status bars
plug 'vim-airline/vim-airline-themes'
plug 'vim-airline/vim-airline'

plug 'townk/vim-autoclose'
plug 'vim-scripts/html-autoclosetag'

" ctrlp file, buffer, tag search, have to see settings
"plug 'ctrlpvim/ctrlp.vim'

" jump between splits with ctrl
"plug 'christoomey/vim-tmux-navigator'

" nerdcommenter
plug 'scrooloose/nerdcommenter'

" autoformat plugin
"plug 'chiel92/vim-autoformat'

call plug#end()


"syntax




:colorscheme oceanicnext 
"set background=dark
"let base16colorspace=256
"let g:solarized_tercolors=256
"" Clipboard integration
""set clipboard=unnamed
"" Enable syntax highlighting
"syntax enable
"syntax on
"" Display line numbers
"set termguicolors

"set number
"" Encoding UTF-8
"set encoding=UTF-8
"lang en
"" A tab is 4 spaces
"set tabstop=2
"" Always uses spaces instead of tabs
"set expandtab
"" Insert 4 spaces when tab is pressed
"set softtabstop=2
"" An indent is 4 spaces
"set shiftwidth=2
"" Round indent to nearest shiftwidth multiple
"set shiftround
"" Toggle comment in visual mode
vmap <silent>/ <Plug>NERDCommenterToggle
"" Deoplete: code completion tool; Enable deoplete at startup
"let g:deoplete#enable_at_startup = 1
"" Select from completion list with SHIFT-j/k
"inoremap <expr> <C-j> ("\<C-n>")
"inoremap <expr> <C-k> ("\<C-p>")

"" SEARCH
"set incsearch
"set hlsearch
"set ignorecase
"set smartcase
""EOF




"" Airline
"" Enable Airline
""let g:airline#extensions#branch#enabled = 1
"" Show list of buffers in tabline
""let g:airline#extensions#tabline#enabled = 1
"" Show just the filename in tabline
""let g:airline#extensions#tabline#fnamemod = ':t'
"" Use fonts
"let g:airline_powerline_fonts = 1
"" Enable ale integration with airline.
"let g:airline#extensions#ale#enabled = 1
"let airline#extensions#ale#error_symbol = 'E:'
"let airline#extensions#ale#warning_symbol = 'W:'
"if !exists('g:airline_symbols')
     "let g:airline_symbols = {}
"endif

"" Airline symbols
""let g:airline_left_sep = ''
""let g:airline_right_sep = ''
""let g:airline_left_alt_sep = ''
""let g:airline_right_alt_sep = ''
""let g:airline_symbols.linenr = '␊␤'
""let g:airline_symbols.branch = '⎇'
""let g:airline_symbols.paste = 'ρ'
""let g:airline_symbols.paste = 'Þ'
""let g:airline_symbols.paste = '∥'
""let g:airline_symbols.whitespace = 'Ξ'
"" Airline theme
""let g:airline_solarized_bg='dark'
"let g:airline_theme='base16_oceanicnext'
""let g:airline_theme='onedark'

"" NERDTree
"" Toggle NERDTree on the right side by C-n
"noremap  <c-n> :NERDTreeToggle<cr>
"" Place NERDTree to left
"let g:NERDTreeWinPos = "left"
""let g:NERDTreeQuitOnOpen = "1"
"let g:NERDTreeDirArrowExpandable = '+'
"let g:NERDTreeDirArrowCollapsible = '-'
"" === NERDTree === "
"" Show hidden files/directories
"let g:NERDTreeShowHidden = 1

"" Remove bookmarks and help text from NERDTree
""let g:NERDTreeMinimalUI = 1

"" Custom icons for expandable/expanded directories
""let g:NERDTreeDirArrowExpandable = '⬏'
""let g:NERDTreeDirArrowCollapsible = '⬎'

"" Hide certain files and directories from NERDTree
""let g:NERDTreeIgnore = ['^\.DS_Store$', '^tags$', '\.git$[[dir]]', '\.idea$[[dir]]', '\.sass-cache$']



"set hlsearch
"set incsearch
":noh


"" Make background transparent for many things
"hi! Normal ctermbg=NONE guibg=NONE
"hi! NonText ctermbg=NONE guibg=NONE
"hi! LineNr ctermfg=NONE guibg=NONE
"hi! SignColumn ctermfg=NONE guibg=NONE
"hi! StatusLine guifg=#16252b guibg=#6699CC
"hi! StatusLineNC guifg=#16252b guibg=#16252b

"" MAPPINGS


"" Remap leader key to ,
""let g:mapleader=','
"map <Space> :noh<CR>
"" Save file with C-s
""map <c-s> :w <CR>
""nnoremap <leader><space> :nohlsearch<CR>
"" Disable search hilighting 
""nmap <esc><esc> :noh<CR>
"nmap <C-h> <C-w>h
"nmap <C-j> <C-w>j
"nmap <C-k> <C-w>k
"nmap <C-l> <C-w>l
"" Copy to system clipboard
"vnoremap <C-c> "+y
"" Paste from system clipboard with Ctrl + v
"inoremap <C-v> <Esc>"+p
""nnoremap <Leader>p "0p
"" Toggle between last 2 buffers
""nnoremap <leader><tab> <c-^>
vmap <leader>/ <plug>NERDCommenterComment
 
