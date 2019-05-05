"My VIM config
"Paste to save config to ~/.devvimrc
"https://medium.com/@olegsmetanin/vim-recipes-ac65f75f26bf

cat <<EOF > ~/.devvimrc
call plug#begin('~/.devvim/plugged')
" Tag reindexer
Plug 'ludovicchabant/vim-gutentags'
" Solarized theme
Plug 'altercation/vim-colors-solarized'
" Status bars
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
" DevIcons
Plug 'ryanoasis/vim-devicons'
" NerdTree file explorer
Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
" CtrlP file, buffer, tag search
Plug 'ctrlpvim/ctrlp.vim'
" Fuzzy file search
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
" Git plugins
Plug 'tpope/vim-fugitive'
Plug 'airblade/vim-gitgutter'
Plug 'junegunn/gv.vim'
" Polyglot syntax hilighting
Plug 'sheerun/vim-polyglot'
" Asynchronous Code Linting
Plug 'w0rp/ale'
" Deoplete: code completion tool
Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
" Use TAB for code completion 
Plug 'ervandew/supertab'
" Dirvish: directory navigation
Plug 'justinmk/vim-dirvish'
" Indent line
Plug 'yggdroot/indentline'
" EasyMotion: effective movements
Plug 'easymotion/vim-easymotion'
" Jump between splits with Ctrl
Plug 'christoomey/vim-tmux-navigator'
" NerdCommenter
Plug 'scrooloose/nerdcommenter'
" Incremental expand selection
Plug 'terryma/vim-expand-region'
" Golang
Plug 'fatih/vim-go', { 'do': ':GoInstallBinaries' }
" Completion tool for golang
Plug 'nsf/gocode', { 'tag': 'v.20150303', 'rtp': 'vim' }
" Golang completion tool for deoplete
Plug 'zchee/deoplete-go', { 'do': 'make'}
" Typescript
Plug 'quramy/tsuquyomi'
Plug 'Shougo/vimproc.vim', {'do' : 'make'}
call plug#end()
" Clipboard integration
set clipboard=unnamed
" Enable syntax highlighting
syntax on
" Display line numbers
set number
" Encoding UTF-8
set encoding=utf-8
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
" OSX stupid backspace fix
set backspace=indent,eol,start
" Search
set incsearch
set hlsearch
set ignorecase
set smartcase
nnoremap <leader><space> :nohlsearch<CR>
" Disable search hilighting 
nmap <esc><esc> :noh<CR>
" Solarized theme
set background=dark
colorscheme solarized
" Airline
" Enable Airline
let g:airline#extensions#branch#enabled = 1
" Show list of buffers in tabline
let g:airline#extensions#tabline#enabled = 1
" Show just the filename in tabline
let g:airline#extensions#tabline#fnamemod = ':t'
" Use fonts
let g:airline_powerline_fonts = 1
if !exists('g:airline_symbols')
     let g:airline_symbols = {}
endif
" Airline symbols
let g:airline_left_sep = "\uE0C0"
let g:airline_right_sep = "\uE0C2"
let g:airline_symbols.linenr = '␤'
let g:airline_symbols.branch = '⎇'
let g:airline_symbols.paste = 'ρ'
let g:airline_symbols.paste = 'Þ'
let g:airline_symbols.paste = '∥'
let g:airline_symbols.whitespace = 'Ξ'
" Airline theme
let g:airline_solarized_bg='dark'
" NERDTree
" Toggle NERDTree on the right side by C-n
noremap  <c-n> :NERDTreeToggle<cr>
" Place NERDTree to right
let g:NERDTreeWinPos = "right"
let g:NERDTreeQuitOnOpen = "1"
" CtrlP
" CtrlP file, buffer, tag search
let g:ctrlp_extensions = ['mixed', 'changes', 'quickfix']
let g:ctrlp_cmd = 'call CallCtrlP()'
" Search tags with Ctrl-i
noremap <c-i> :CtrlPTag<CR>
func! CallCtrlP()
    if exists('s:called_ctrlp')
        CtrlPLastMode
    else
        let s:called_ctrlp = 1
        CtrlPMixed
    endif
endfunc
" Enable integration with airline.
let g:airline#extensions#ale#enabled = 1
" Deoplete: code completion tool
" Enable deoplete at startup
let g:deoplete#enable_at_startup = 1
" Select from completion list with SHIFT-j/k
inoremap <expr> <S-j> ("\<C-n>")
inoremap <expr> <S-k> ("\<C-p>")
" Save file with C-s
nnoremap <silent><C-s> :w<CR>
" Set current directory to current file with ,cd
nnoremap ,cd :cd %:p:h<CR>:pwd<CR>
" Switch beetween buffers: show buffer number in Airline
let g:airline#extensions#tabline#buffer_nr_show = 1
" Switch beetween buffers: switch with number
nnoremap <leader>1 :1b<CR>
nnoremap <leader>2 :2b<CR>
nnoremap <leader>3 :3b<CR>
nnoremap <leader>4 :4b<CR>
nnoremap <leader>5 :5b<CR>
nnoremap <leader>6 :6b<CR>
nnoremap <leader>7 :7b<CR>
nnoremap <leader>8 :8b<CR>
nnoremap <leader>9 :9b<CR>
" Press <Space> for bidirectional easy movements
map <Space> <Plug>(easymotion-bd-w)
" Toggle comment in visual mode
vmap <silent>/ <Plug>NERDCommenterToggle
" Go to definition in new split
nnoremap <silent>fd <C-w>v<C-w>w :call feedkeys("gd")<CR>
EOF