let g:python3_host_prog='C:/Users/Ivan/AppData/Local/Programs/Python/Python310'

"""""""""""""""""""""""" first of all look at man with 'K' command(shift k)

call plug#begin('~/appdata/local/nvim/plugged') " below are some vim plugin for demonstration purpose

" COLOURSCHEMES
Plug 'mhartington/oceanic-next'
" gruvbox theme
Plug 'morhetz/gruvbox'
" base16 theme
Plug 'chriskempson/base16-vim'
" iceberg theme
Plug 'cocopon/iceberg.vim'
" molokai theme
Plug 'fatih/molokai'

" great choose of themes
Plug 'flazz/vim-colorschemes'
" good theme switcher by f8 button
Plug 'xolox/vim-misc'
Plug 'xolox/vim-colorscheme-switcher'

"Plug 'ryanoasis/vim-devicons'

" Plug 'sheerun/vim-polyglot'

" PLUGINS

" autoformat binded on alt+f. 
Plug 'sbdchd/neoformat'

" nerdtree
Plug 'scrooloose/nerdtree'
" nerdcommenter
Plug 'scrooloose/nerdcommenter'


"" Airline
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

"" CtrlP
Plug 'ctrlpvim/ctrlp.vim'

"" Surround
Plug 'tpope/vim-surround'

"" PyMode
"Plug 'klen/python-mode'

"" Slime
Plug 'jpalardy/vim-slime'

"" LaTeX
"Plug 'lervag/vimtex'

"" Markdown
Plug 'shime/vim-livedown'
" better viewer, but need nodeJS and setup:
" If you don't have nodejs and yarn
" use pre build, add 'vim-plug' to the filetype list so vim-plug can update this plugin
" see: https://github.com/iamcco/markdown-preview.nvim/issues/50
"Plug 'iamcco/markdown-preview.nvim', { 'do': { -> mkdp#util#install() }, 'for': ['markdown', 'vim-plug']}
" If you have nodejs and yarn
"Plug 'iamcco/markdown-preview.nvim', { 'do': 'cd app & yarn install'  }

"" Multiple Cursors
"Plug 'terryma/vim-multiple-cursors'

"" Vim Move
"Plug 'matze/vim-move'

"" Vim-GitGutter
"Plug 'airblade/vim-gitgutter'

"" Deoplete completion
"if has('nvim')
  "Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
"else
"  Plug 'Shougo/deoplete.nvim'
"  Plug 'roxma/nvim-yarp'
"  Plug 'roxma/vim-hug-neovim-rpc'
"endif
Plug 'Shougo/neoinclude.vim'
Plug 'deoplete-plugins/deoplete-jedi'
"Plug 'carlitux/deoplete-ternjs', { 'do': 'npm install -g tern' }
Plug 'ternjs/tern_for_vim'
"Plug 'deoplete-plugins/deoplete-go', { 'do': 'make'}
"Plug 'sebastianmarkow/deoplete-rust'
"Plug 'slashmili/alchemist.vim' " elixir completition
Plug 'Shougo/neosnippet'
Plug 'Shougo/neosnippet-snippets'
"Plug 'sebastianmarkow/deoplete-rust' "check at internet
Plug 'Shougo/neco-vim' "vimscript completition
"Plug 'fszymanski/deoplete-emoji'
Plug 'vim-scripts/XML-Completion'

"" coc nvim completion
"" Use release branch (Recommend)
"Plug 'neoclide/coc.nvim', {'branch': 'release'}
"
"" Or build from source code by use yarn: https://yarnpkg.com
"Plug 'neoclide/coc.nvim', {'do': 'yarn install --frozen-lockfile'}

"" ALE completion and linking
Plug 'dense-analysis/ale'

"" C and C++ completion
"Plug 'xavierd/clang_complete'
Plug 'Shougo/deoplete-clangx'

" CSS Colours hilighting
"Plug 'ap/vim-css-color'

"Plug 'rhysd/open-pdf.vim' "undefined error

Plug 'udalov/kotlin-vim'
call plug#end()

"SYNTAX
"colorscheme iceberg "oceanicnext / onedark / gruvbox / iceberg / base16-atlas / base16-black-metal... / base16-atlas / base16-dartooth / base16-embers / base16-grayscale / base16-classic-dark /  base16-irblack / happy_hacking
colorscheme iceberg
"set background=dark
"set termguicolors
" something like 'guicolor' or 'termsheme'    
"let base16colorspace=256

"" Enable syntax highlighting
syntax enable
syntax on

"" setup russian lang remote
set langmap=ФИСВУАПРШОЛДЬТЩЗЙКЫЕГМЦЧНЯ;ABCDEFGHIJKLMNOPQRSTUVWXYZ,фисвуапршолдьтщзйкыегмцчня;abcdefghijklmnopqrstuvwxyz

""Если вы используете обычную qwerty, то поменяте mac на win
"set keymap=russian-jcukenwin
""Язык ввода при старте Вима - Английский
"set iminsert=0
""Аналогично настраивается режим поиска
"set imsearch=0


"set guifont=courier_new:h12
set guifont=Fira\ Code\ Light:h12 "light version
"set guifont=consolas:h14

"" Display line numbers
set number 
"set norelativenumber
set relativenumber

"" Encoding UTF-8
set encoding=UTF-8
scriptencoding UTF-8
lang en
"" A tab is 4 spaces
set tabstop=4

"" Always uses spaces instead of tabs
set expandtab

"" Insert 4 spaces when tab is pressed
set softtabstop=4

"" An indent is 4 spaces
set shiftwidth=4

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

"set nowrap " don't wrap lines
set wrap linebreak nolist "soft wraping
"set textwidth=80

set scrolloff=3   " Show 3 extra lines when scrolling up/down

set cursorline nocursorcolumn "Highlight the line where the cursor is
set sidescrolloff=2 " Add some space around the cursor when moving it near the borders of the screen

set mouse=a " Enable mouse in console mode

""Если вы используете обычный терминальный Вим, а не NeoVim, то...
""... для изменения курсора в разных режимах используйте это:
"set ttimeoutlen=10 "Понижаем задержку ввода escape последовательностей
"let &t_SI.="\e[5 q" "SI = режим вставки
"let &t_SR.="\e[3 q" "SR = режим замены
"let &t_EI.="\e[1 q" "EI = нормальный режим
""Где 1 - это мигающий прямоугольник
""2 - обычный прямоугольник
""3 - мигающее подчёркивание
""4 - просто подчёркивание
""5 - мигающая вертикальная черта
""6 - просто вертикальная черта

"" SEARCH
" (use :let @/="" to clear search history ???)
set incsearch 

set nohlsearch

set ignorecase

set smartcase

"set inccommand= " incremental everything

"set gdefault



"" NERDTree

"" Toggle NERDTree on the right side by C-n
noremap  <c-n> :NERDTreeToggle<cr>

"let g:NERDTreeWinPos = 'left'

""let g:NERDTreeQuitOnOpen = '1'
"let g:NERDTreeDirArrowExpandable = '+'
"let g:NERDTreeDirArrowCollapsible = '-'

"" === NERDTree === "
"" Show hidden files/directories
let g:NERDTreeShowHidden = 1

"let g:NERDTreeMinimalUI = 1

" ################# NERDTREE #########################

"" Make background transparent for many things
"hi! Normal ctermbg=NONE guibg=NONE
"hi! NonText ctermbg=NONE guibg=NONE
"hi! LineNr ctermfg=NONE guibg=NONE
"hi! SignColumn ctermfg=NONE guibg=NONE
"hi! StatusLine guifg=#16252b guibg=#6699CC
"hi! StatusLineNC guifg=#16252b guibg=#16252b


" ################ AIRLINE (:h airline) ########################## 
let g:airline_powerline_fonts = 1 "turn on supporting of Powerline fonts
"let g:airline#extensions#keymap#enabled = 0 "dont show current mapping
"let g:airline_section_z = "\ue0a1:%l/%L Col:%c" "costom field Z (position of coursore)
"let g:Powerline_symbols='unicode' "unicode supporting
let g:airline#extensions#xkblayout#enabled = 0 


"tabline<{
let g:airline#extensions#tabline#enabled = 1
"let g:airline_statusline_ontop=1

"let g:airline#extensions#tabline#left_sep = ' '
"let g:airline#extensions#tabline#left_alt_sep = '|'

"let g:airline#extensions#tabline#formatter = 'default' "defoult\jsformatter\unique_tail\unique_tail_improved...
"}>tabline

"* enable modified detection 
"let g:airline_detect_modified=1
""* themes are automatically selected based on the matching colorscheme. this "can be overridden by defining a value. 
let g:airline_theme= 'atomic'    " 'hybrid', 'atomic', 'fruit_punch', 'alduin', 'base16'

if !exists('g:airline_symbols')
    let g:airline_symbols = {}
endif
  if !exists('g:airline_symbols')
    let g:airline_symbols = {}
  endif

  " unicode symbols
  "let g:airline_left_sep = '»'
  "let g:airline_left_sep = '▶'
  "let g:airline_right_sep = '«'
  "let g:airline_right_sep = '◀'
  "let g:airline_symbols.colnr = ' ㏇:'
  "let g:airline_symbols.colnr = ' ℅:'
  "let g:airline_symbols.crypt = '🔒'
  "let g:airline_symbols.linenr = '☰'
  "let g:airline_symbols.linenr = ' ␊:'
  "let g:airline_symbols.linenr = ' ␤:'
  "let g:airline_symbols.linenr = '¶'
  "let g:airline_symbols.maxlinenr = ''
  "let g:airline_symbols.maxlinenr = '㏑'
  "let g:airline_symbols.branch = '⎇'
  "let g:airline_symbols.paste = 'ρ'
  "let g:airline_symbols.paste = 'Þ'
  "let g:airline_symbols.paste = '∥'
  "let g:airline_symbols.spell = 'Ꞩ'
  "let g:airline_symbols.notexists = 'Ɇ'
  "let g:airline_symbols.whitespace = 'Ξ'

  " powerline symbols
  let g:airline_left_sep = ''
  let g:airline_left_alt_sep = ''
  let g:airline_right_sep = ''
  let g:airline_right_alt_sep = ''
  let g:airline_symbols.branch = ''
  "let g:airline_symbols.colnr = ' :'
  let g:airline_symbols.readonly = ''
  "let g:airline_symbols.linenr = ' :'
  "let g:airline_symbols.maxlinenr = '☰ '
  "let g:airline_symbols.dirty='⚡'

  " old vim-powerline symbols
  "let g:airline_left_sep = '⮀'
  "let g:airline_left_alt_sep = '⮁'
  "let g:airline_right_sep = '⮂'
  "let g:airline_right_alt_sep = '⮃'
  "let g:airline_symbols.branch = '⭠'
  "let g:airline_symbols.readonly = '⭤'
  "let g:airline_symbols.linenr = '⭡'
  "
  let g:airline_symbols.linenr = ' ln:'
  let g:airline_symbols.colnr = ' col:'

""* enable paste detection 
"let g:airline_detect_paste=1
""* enable crypt detection 
"let g:airline_detect_crypt=1

""* enable spell detection 
"let g:airline_detect_spell=1

""* display spelling language when spell detection is enabled (if enough space is available) 
"let g:airline_detect_spelllang=1
""* enable iminsert detection 
let g:airline_detect_iminsert=0
""* determine whether inactive windows should have the left section collapsed to only the filename of that buffer.  
"let g:airline_inactive_collapse=1
""* Use alternative seperators for the statusline of inactive windows >
"let g:airline_inactive_alt_sep=1

"let g:airline_mode_map = {
    "\ '__'     : '-',
    "\ 'c'      : 'C',
    "\ 'i'      : 'I',
    "\ 'ic'     : 'I',
    "\ 'ix'     : 'I',
    "\ 'n'      : 'N',
    "\ 'multi'  : 'M',
    "\ 'ni'     : 'N',
    "\ 'no'     : 'N',
    "\ 'R'      : 'R',
    "\ 'Rv'     : 'R',
    "\ 's'      : 'S',
    "\ 'S'      : 'S',
    "\ ''     : 'S',
    "\ 't'      : 'T',
    "\ 'v'      : 'V',
    "\ 'V'      : 'V',
    "\ ''     : 'V',
    "\ }


"ale intrgration{
let g:airline#extensions#ale#enabled = 1
"}ale intrgration

" ########################## CTRL-P (:h ctrlp)###################
"Can be toggled on/off by pressing <c-d> inside the prompt.
let g:ctrlp_map = '<c-p>'
  let g:ctrlp_cmd = 'CtrlP'

" ######################### VIM-SLIME ###########################
" <Ctrl-c-c>
"Для tmux
"let g:slime_target = "tmux"
""Для обычного Вима
"let g:slime_target = "vimterminal"
""Для Вима избранных
let g:slime_target = "neovim"

" ###################### DEOPLETE comletion #####################
"let g:deoplete#enable_at_startup = 1

""""
"if !exists('g:context_filetype#same_filetypes')
    "let g:context_filetype#filetypes = {}
"endif
"let g:context_filetype#filetypes.svelte = [
"\    {'filetype' : 'css', 'start' : '<style>', 'end' : '</style>'},
"\ ]
"call deoplete#custom#var('omni', 'functions', {
"\ 'css': ['csscomplete#CompleteCSS']
"\})
""""

""""
"call deoplete#custom#var('omni', 'input_patterns', {
"\ 'javascript': '[^. *\t]\.\w*',
"\ })
"call deoplete#custom#var('omni', 'functions', {
"\ 'javascript': ['javascriptcomplete#CompleteJS']
"\})
"""
"""set popup menu colors
"highlight Pmenu ctermbg=8 guibg=#606060
"highlight PmenuSel ctermbg=1 guifg=#dddd00 guibg=#1f82cd
"highlight PmenuSbar ctermbg=0 guibg=#d6d6d6
"""


" ####################### NEOSNIPPET ############################
let g:neosnippet#enable_completed_snippet = 1
" Plugin key-mappings.
" Note: It must be 'imap' and 'smap'.  It uses <Plug> mappings.
imap <C-k>     <Plug>(neosnippet_expand_or_jump)
smap <C-k>     <Plug>(neosnippet_expand_or_jump)
xmap <C-k>     <Plug>(neosnippet_expand_target)

" SuperTab like snippets behavior.
" Note: It must be 'imap' and 'smap'.  It uses <Plug> mappings.
"imap <expr><TAB>
" \ pumvisible() ? "\<C-n>" :
" \ neosnippet#expandable_or_jumpable() ?
" \    "\<Plug>(neosnippet_expand_or_jump)" : "\<TAB>"
smap <expr><TAB> neosnippet#expandable_or_jumpable() ?
\ "\<Plug>(neosnippet_expand_or_jump)" : "\<TAB>"

" For conceal markers.
"if has('conceal')
  "set conceallevel=2 concealcursor=niv
"endif
" Tell Neosnippet about the other snippets
"let g:neosnippet#snippets_directory='~/.vim/bundle/vim-snippets/snippets'

" ######################## JEDI #################################
"g:deoplete#sources#jedi#statement_length=50 " Sets the maximum length of completion description text. If this is exceeded, a simple description is used instead. Default: 50

"g:deoplete#sources#jedi#enable_typeinfo=1 "Enables type information of completions. If you disable it, you will get the faster results. Default: 1
"g:deoplete#sources#jedi#show_docstring=0 "Shows docstring in preview window. Default: 0


" ########################## CLANG_COMPLETE ############################
" path to directory where library can be found
"let g:clang_library_path='~/gcc/lib/'
"" or path directly to the library file
"let g:clang_library_path='/usr/lib64/libclang.so.3.8'

""""""""""""""""""""""""""""""""""""""""""""""""""""""""


""for deoplete
" Change clang binary path
"call deoplete#custom#var('clangx', 'clang_binary', 'C:\Users\Ivan\gcc\bin') "/usr/local/bin/clang

"" Change clang options
"call deoplete#custom#var('clangx', 'default_c_options', '')
"call deoplete#custom#var('clangx', 'default_cpp_options', '')
"""

" ############################### LaTeX ###############################
"  Теперь, если вы войдёте в файл с расширением .tex и введёте <localleader>ll (или :VimtexCompile), то у вас скомпилируется проект, предупреждения и ошибки отправятся в Quickfix и Location списки, а также откроется системный просмотрщик pdf.
let g:tex_flavor = 'latex' "Уточняем какой Тех
"Отключаем автоматическое открытие окна Quickfix
let g:vimtex_quickfix_mode = 0
"let g:vimtex_view_method = 'zathura'

" darkmode of zathura
"set recolor true
"set recolor-darkcolor "#dcdccc"
"set recolor-lightcolor "#1f1f1f"

" ############################### Markdown-viewer #############################
"simple viewer:
nnoremap <leader>ld :LivedownToggle<CR> 
"better viewer: 
"let g:mkdp_auto_start = 0 " set to 1, nvim will open the preview window after entering the markdown buffer
"let g:mkdp_auto_close = 1 " set to 1, the nvim will auto close current preview window when change from markdown buffer to another buffer

"" set to 1, the vim will refresh markdown when save the buffer or leave from insert mode, default 0 is auto refresh markdown as you edit or move the cursor
"let g:mkdp_refresh_slow = 0

"" set to 1, the MarkdownPreview command can be use for all files, by default it can be use in markdown file
"let g:mkdp_command_for_global = 0

"" set to 1, preview server available to others in your network by default, the server listens on localhost (127.0.0.1)
"let g:mkdp_open_to_the_world = 0

"" use custom IP to open preview page useful when you work in remote vim and preview on local browser more detail see: https://github.com/iamcco/markdown-preview.nvim/pull/9
"let g:mkdp_open_ip = ''

"" specify browser to open preview page
"let g:mkdp_browser = ''

"" set to 1, echo preview page url in command line when open preview page
"let g:mkdp_echo_preview_url = 0

"" a custom vim function name to open preview page this function will receive url as param
"let g:mkdp_browserfunc = ''

"" options for markdown render
"" mkit: markdown-it options for render
"" katex: katex options for math
"" uml: markdown-it-plantuml options
"" maid: mermaid options
"" disable_sync_scroll: if disable sync scroll, default 0
"" sync_scroll_type: 'middle', 'top' or 'relative', default value is 'middle'
""   middle: mean the cursor position alway show at the middle of the preview page
""   top: mean the vim top viewport alway show at the top of the preview page
""   relative: mean the cursor position alway show at the relative positon of the preview page
"" hide_yaml_meta: if hide yaml metadata, default is 1
"" sequence_diagrams: js-sequence-diagrams options
"" content_editable: if enable content editable for preview page, default: v:false
"let g:mkdp_preview_options = {
    "\ 'mkit': {},
    "\ 'katex': {},
    "\ 'uml': {},
    "\ 'maid': {},
    "\ 'disable_sync_scroll': 0,
    "\ 'sync_scroll_type': 'middle',
    "\ 'hide_yaml_meta': 1,
    "\ 'sequence_diagrams': {},
    "\ 'flowchart_diagrams': {},
    "\ 'content_editable': v:false
    "\ }

"" use a custom markdown style must be absolute path
"" like '/Users/username/markdown.css' or expand('~/markdown.css')
"let g:mkdp_markdown_css = ''

"" use a custom highlight style must absolute path
"" like '/Users/username/highlight.css' or expand('~/highlight.css')
"let g:mkdp_highlight_css = ''

"" use a custom port to start server or random for empty
"let g:mkdp_port = ''

"" preview page title
"" ${name} will be replace with the file name
"let g:mkdp_page_title = '「${name}」'

"""" MAPPINGS 
""""normal/insert
"""<Plug>MarkdownPreview
"""<Plug>MarkdownPreviewStop
"""<Plug>MarkdownPreviewToggle
"""" example
"""nmap <C-s> <Plug>MarkdownPreview
"""nmap <M-s> <Plug>MarkdownPreviewStop
"""nmap <C-p> <Plug>MarkdownPreviewToggle
""" Commands
"""" Start the preview
""":MarkdownPreview
"""" Stop the preview"
""":MarkdownPreviewStop


"#######################################################
"################### <--MAPPINGS--> ####################
command W :w
"" Toggle comment in visual mode
let mapleader = "\\"
vmap <silent> /  <Plug>NERDCommenterToggle
"vmap <leader>/ <plug>NERDCommenterComment
vmap <S-/> <plug>NERDCommenterComment

command R :NERDTreeRefreshRoot
"inoremap <C-Space> <c-x><c-o>

"" Select from completion list with SHIFT-j/k
"inoremap <expr> <C-j> ("\<C-n>")
"inoremap <expr> <C-k> ("\<C-p>")

"" Copy to system clipboard with ctrl + shift + c
vnoremap <M-c> "+y
"" Paste from system clipboard with Ctrl +shift + v
inoremap <M-v> <Esc>"+p

"" Save file with C-s
"map <C-s> :w <CR>

nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

nnoremap <C-J> <C-W>j
nnoremap <C-K> <C-W>k
nnoremap <C-L> <C-W>l
nnoremap <C-H> <C-W>h

nnoremap H <C-w>h
"nnoremap J <C-w>j
"nnoremap K <C-w>k
"nnoremap L <C-w>l

" go by displaylines
"nnoremap j gj
"nnoremap k gk


" Do not exit visual mode when shifting
vnoremap < <gv
vnoremap > >gv

"" comma q quits and saves, comma w saves without warnings
"nmap <leader>q :q!<CR>
"nmap <leader>w :w!<CR>

"" Disable search hilighting
map <silent> <Space> :noh<CR>
"nmap <esc><esc> :noh<CR>

"" remap space bar to search
":nnoremap <Space> /\v

" deactivate 'Entering Ex mode' prompt
nnoremap Q <Nop>
nnoremap q <Nop>
noremap <C-Z> u

"" setup buffer jumping
nnoremap  [b :bprevious<CR>
nnoremap  ]b :bnext<CR>
nnoremap <silent> [B :bfirst<CR>
nnoremap <silent> ]B :bplast<CR>

"" setup using tabs ( chenging tabs on gt gT by defoult)
nnoremap <silent> <M-t> :tabnew<CR>

"" Neoformat
nnoremap  <M-f> :Neoformat<CR>
inoremap <M-f> <Esc>:Neoformat<CR>i

"""""""""""""""""""""""""""""""""""""

command Clr :g/<П/d | :w

"" Toggle between last 2 buffers
nnoremap <leader><tab> <c-^>
"
"function wc ()
    "writefile(getline(1,'$'), bufname('%')) " expand('%:r') . '_run_' . '.exe')
    "":! g++ % -o expand('%:r')+'.exe'
    "autocmd('g++ ' . bufname('%') . ' ' . expand('%:r') . '_run_' . '.exe')

    "endfunction
"""

"""############## Compile setup ####################
command Make :w | :! g++ % -o %:r_Run.exe 
"-std=c++14

" ^^^ add after '%' -> ':t'
"if expand('%:e') == 'cpp'
    "nmap <leader>c :WriteAndCompile<CR>
"else 
    "nmap <leader>c \c
"endif
autocmd FileType cpp nnoremap <buffer> <leader>c :CompileAfterWriting<CR>
