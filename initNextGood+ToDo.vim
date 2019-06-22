let g:python3_host_prog='C:\Users\Ivan\AppData\Local\Programs\Python\Python37-32\python'
""let g:python3_host_prog='c:\users\ivan\appdata\local\programs\python\python37-32'
""let g:python_host_prog='c:\users\ivan\appdata\local\programs\python\python37-32'

call plug#begin('~/appdata/local/nvim/plugged') " below are some vim plugin for demonstration purpose

" COLOURSCHEMES
" solarized theme
"plug 'altercation/vim-colors-solarized'
"Plug 'arakashic/nvim-colors-solarized'
"Plug 'iCyMind/NeoSolarized'
"" colorscheme
"Plug 'trevordmiller/nova-vim'
Plug 'mhartington/oceanic-next'
" gruvbox theme
Plug 'morhetz/gruvbox'
" base16 theme
Plug 'chriskempson/base16-vim'
" tomorrow theme
"Plug 'chriskempson/tomorrow-theme'
" iceberg theme
Plug 'cocopon/iceberg.vim'
" snow theme
"Plug 'nightsense/snow'
" molokai theme
"Plug 'fatih/molokai'
" onedark theme
"Plug 'joshdick/onedark.vim'
""vim icons
"Plug 'ryanoasis/vim-devicons'

" PLUGINS
"asynchronic plug work
Plug 'neomake/neomake'

" asynchronous code linting
Plug 'w0rp/ale'

" autoformat binded on F5. need to config...
Plug 'sbdchd/neoformat'
"post install (yarn install | npm install) then load plugin only for editing supported files
Plug 'prettier/vim-prettier', {
  \ 'do': 'npm install',
  \ 'for': ['javascript', 'typescript', 'css', 'less', 'scss', 'json', 'graphql', 'markdown', 'vue', 'yaml', 'html', 'vim'] }
"or simply enable for all formats by:
"" post install (yarn install | npm install)
"Plug 'prettier/vim-prettier', { 'do': 'yarn install' }

" nerdtree 
Plug 'scrooloose/nerdtree'
",{'on': 'nerdtreetoggle'}
" nerdcommenter
Plug 'scrooloose/nerdcommenter'

" deoplete code completion tool
Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
Plug 'deoplete-plugins/deoplete-jedi'
Plug 'Shougo/neosnippet.vim'
Plug 'Shougo/neosnippet-snippets'
"Plug 'tbodt/deoplete-tabnine', { 'do': 'powershell.exe .\install.ps1' }
"Plug 'Shougo/context_filetype' " something wrong
" ctrlp file, buffer, tag search, have to see settings
"Plug 'ctrlpvim/ctrlp.vim'


" status bars
Plug 'vim-airline/vim-airline-themes'
Plug 'vim-airline/vim-airline'
"" tagbar 
"Plug 'majutsushi/tagbar' " need to config(download folder)

""" Autocompletion
Plug 'Shougo/deoplete-clang2' "need to config
Plug 'carlitux/deoplete-ternjs', { 'do': 'npm install -g tern' }
Plug 'ternjs/tern_for_vim'
Plug 'wokalski/autocomplete-flow'
"Plug 'sebastianmarkow/deoplete-rust'
"Plug 'shougo/neoinclude.vim'
"Plug 'shougo/neco-vim'
"Plug 'landaire/deoplete-d'
Plug 'othree/csscomplete.vim'
Plug 'othree/html5.vim'
""Plug 'othree/xml.vim' "with it ctrl-x-ctrl-o doesn't work and I don't know ?
"Plug 'c9s/perlomni.vim'
""Plug 'cquery-project/cquery'

"" PYTHON watch https://habr.com/ru/post/173473/   https://code.djangoproject.com/wiki/UsingVimWithDjango#Pony.vim  https://sk1u.com/blog/2018/04/16/pyenv-neovim  
"Plug 'python-mode/python-mode', { 'for': 'python', 'branch': 'develop' } "need to fix
"Plug 'rkulla/pydiction' " need to config
"Plug 'tweekmonster/django-plus.vim' 

 ""HTML
"Plug 'tpope/vim-ragtag'
""Plug 'AndrewRadev/splitjoin.vim'
"Plug 'skwp/vim-html-escape'
" LiveReload browser
"Plug 'jaxbot/browserlink.vim' "strangly works

"" Javascript
Plug 'https://github.com/othree/javascript-libraries-syntax.vim', { 'for': [ 'javascript', 'js', 'jsx' ]}
Plug 'thinca/vim-textobj-function-javascript',    { 'for': [ 'javascript', 'js', 'jsx' ]}
Plug '1995eaton/vim-better-javascript-completion', { 'for': [ 'javascript', 'js', 'jsx' ]}
Plug 'chemzqm/vim-jsx-improve', { 'for': [ 'javascript', 'js', 'jsx' ]}
Plug 'gavocanov/vim-js-indent', { 'for': [ 'javascript', 'js', 'jsx' ]}
"Plug 'leafgarland/typescript-vim'

" SCSS and CSS syntax highlighting
"if v:version < 704
  "Plug 'JulesWang/css.vim'
"endif
"Plug 'cakebaker/scss-syntax.vim'

" polyglot syntax hilighting
Plug 'sheerun/vim-polyglot'

Plug 'townk/vim-autoclose'
Plug 'vim-scripts/HTML-AutoCloseTag'
Plug 'tpope/vim-surround'
" autoformat plugin
"Plug 'chiel92/vim-autoformat'

" CSS colour Show
"Plug 'skammer/vim-css-color'
"" multiple cursors
"Plug 'terryma/vim-multiple-cursors'
" jump between splits with ctrl
"Plug 'christoomey/vim-tmux-navigator'

" use tab for code completion 
"Plug 'ervandew/supertab' " just use ctrl-n / ctrl-p to use completion

call plug#end()


"SYNTAX
colorscheme iceberg "oceanicnext  /  snow / onedark / gruvbox / iceberg / nova / molokai / (neo)solarized base16-atlas / base16-black-metal... / base16-atlas / base16-dartooth / base16-embers / base16-grayscale / base16-classic-dark /  base16-irblack / 

set background=dark
set termguicolors
let base16colorspace=256

"if filereadable(expand("~/AppData/Local/nvim/plugged/base16-shell"))
  "let base16colorspace=256
  "source ~/AppData/Local/nvim/plugged/base16-shell
"endif

"let g:solarized_tercolors=256
"" Clipboard integration
""set clipboard=unnamed
"" Enable syntax highlighting
syntax enable
syntax on
":set guifont=courier_new:h12
" {{{ Folding settings
set foldmethod=syntax " Use syntax fold
"set foldlevel=99      " Folds are open by default
set foldlevelstart=99 " Folds are open by default (new way)
"let ruby_fold=0
"let go_fold=0
"let lua_fold=1
"let javascript_fold=1
" }}}

"" Display line numbers
set number
"set relativenumber

"" Encoding UTF-8
set encoding=UTF-8
scriptencoding UTF-8
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
set cursorline " Highlight the line where the cursor is

" Add some space around the cursor when moving it near the borders of the screen
set sidescrolloff=1
" Enable mouse in console mode
set mouse=a



""""""""""""  *from 'NeoVim Studio' project, see late in internet
" DEOPLETE "{{{
""""""""""""
let g:deoplete#enable_at_startup = 1

""" Deoplete per-autocompleter settings
"""" Clang
""source $NEOVIM_STUDIO_DIR/includes/clang.vim
"" let g:deoplete#sources#clang#libclang_path = '/lib/libclang.so' " '/usr/lib/i386-linux-gnu/libclang-4.0.so.1'
"" let g:deoplete#sources#clang#clang_header = '/lib/clang/4.0.0/include' " '/usr/lib/llvm-4.0/lib/clang/4.0.0/include'

"" TernJS
let g:tern_request_timeout = 1
" let g:tern_show_signature_in_pum = '0'
let g:deoplete#sources#ternjs#depths = 1
let g:deoplete#sources#ternjs#types = 1
let g:deoplete#sources#ternjs#docs = 1
let g:tern#command = ["tern"]
let g:tern#arguments = ["--persistent"]

"""" Rust
""source $NEOVIM_STUDIO_DIR/includes/rust.vim
"" let g:deoplete#sources#rust#racer_binary=system('echo '${HOME}/.cargo/bin/racer'')
"" let g:deoplete#sources#rust#rust_source_path=system('echo '${NEOVIM_STUDIO_DIR}/rust/src'')

"""" Java
"" autocmd FileType java setlocal omnifunc=javacomplete#Complete

"""" D Lang
""" These have been appended to $PATH
"" let g:deoplete#sources#d#dcd_client_binary = ''
"" let g:deoplete#sources#d#dcd_server_binary = ''
"let g:deoplete#sources#d#dcd_server_autostart = 1

"""" Omnifunctions
let g:deoplete#omni#functions = {}

"let g:EclimCompletionMethod = 'omnifunc'
"let g:deoplete#omni#functions.java = 'eclim#java#complete#CodeComplete'

let g:deoplete#omni#functions.javascript = [
    \ 'tern#Complete',
    \ 'autocomplete_flow#Complete',
    \ 'javascriptcomplete#CompleteJS'
\]
"let g:deoplete#omni#functions.css = 'csscomplete#CompleteCSS'
"let g:deoplete#omni#functions.html = [
    "\ 'htmlcomplete#CompleteTags',
    "\ 'xmlcomplete#CompleteTags'
"\]
"let g:deoplete#omni#functions.xml = 'xmlcomplete#CompleteTags'
"let g:deoplete#omni#functions.perl = 'perlomni#PerlComplete'

"" Deoplete code completion tool; Enable deoplete at startup (old vvv)
"let g:deoplete#complete_method = 'omnifunc'

""set completeopt-=preview

"if !exists('g:deoplete#omni#input_patterns') 
  "let g:deoplete#omni#input_patterns = {} 
"endif
"" }}}DEOPLETE

"" PYTHON-MODE
"let g:pymode_python = 'python3'

"" Neosnippet
" Enable snipMate compatibility feature.
"let g:neosnippet#enable_snipmate_compatibility = 1
let g:neosnippet#enable_completed_snippet = 1
" Tell Neosnippet about the other snippets
"let g:neosnippet#snippets_directory='~/AppData/Local/nvim/snippets...'

"autocmd FileType python setlocal omnifunc=jedi#completions
"let g:jedi#completions_enabled = 0
"let g:jedi#auto_vim_configuration = 0
"let g:jedi#smart_auto_mappings = 0
"let g:jedi#show_call_signatures = 0

"CSS colour Show
"let g:cssColorVimDoNotMessMyUpdatetime = 1

"" SEARCH
" (use :let @/="" to clear search history(it Highlights when push n in normalMode) mapped to leader + Space)
:noh
set incsearch
set nohlsearch
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
"let g:airline#extensions#tabline#left_sep = ' '
"let g:airline#extensions#tabline#left_alt_sep = '|'
"let g:airline#extensions#tabline#right_sep = ' '
"let g:airline#extensions#tabline#right_alt_sep = '|'
let g:airline_left_sep = '░'
let g:airline_right_sep = '░'
"let g:airline_left_alt_sep = '█'
"let g:airline_right_alt_sep = '█' 
let g:airline_symbols.linenr = 'ln'
"let g:airline_symbols.branch = ''
"let g:airline_symbols.paste = ''
""let g:airline_symbols.paste = ''
""let g:airline_symbols.paste = '∥'
let g:airline_symbols.whitespace = 'Ξ'

"let g:colorSchemeName=



"" Airline theme
"let g:airline_solarized_bg='dark'
let g:airline_theme='biogoo' "can be without ( solarized ~ dark_minimal  );(  base16_oceanicnext  );(  onedark ~ deus  );(  monochrome ~ minimalist ~ lucius );( molokai );( base16_tomorrow );( base16_seti ~ bubblegum ~ fruit_punch ~ term ~ wombat );( base16-nord );( ayu_dark );( zenburn ~ biogoo ~ alduin ~ ayu_mirage ~ base16_vim  ~ hybrid 'for iceberg' );( base16_embers );( jellybeans ~ jet ~ violet );( silver ~ qwq !~ raven !~ ravenpower ~ vice );( sol)..
"see in nvim\plugged\vim-airline-themes\autoload\airline\themes
"


"function! AccentDemo()
  "let keys = ['a','b','c','d','e','f','g','h']
  "for k in keys
    "call airline#parts#define_text(k, k)
  "endfor
  "call airline#parts#define_accent('a', 'red')
  "call airline#parts#define_accent('b', 'green')
  "call airline#parts#define_accent('c', 'blue')
  "call airline#parts#define_accent('d', 'yellow')
  "call airline#parts#define_accent('e', 'orange')
  "call airline#parts#define_accent('f', 'purple')
  "call airline#parts#define_accent('g', 'bold')
  "call airline#parts#define_accent('h', 'italic')
  "let g:airline_section_a = airline#section#create(keys)
"endfunction

"autocmd VimEnter * call AccentDemo()


"function! WindowNumber(...)
    "let builder = a:1
    "let context = a:2
    "call builder.add_section('airline_b', '%{tabpagewinnr(tabpagenr())}')
    "return 0
"endfunction
"call airline#add_statusline_func('WindowNumber')
"call airline#add_inactive_statusline_func('WindowNumber')


function! MyLineNumber()
  return substitute(line('.'), '\d\@<=\(\(\d\{3\}\)\+\)$', ',&', 'g'). '/'.
    \    substitute(line('$'), '\d\@<=\(\(\d\{3\}\)\+\)$', ',&', 'g')
endfunction
call airline#parts#define('linenr', {'function': 'MyLineNumber', 'accents': 'bold'})
let g:airline_section_z = airline#section#create(['%3p%%: ', 'linenr', ':%3v'])

"############# AIRLINE ###################

"" NERDTree
"" Toggle NERDTree on the right side by C-n
noremap  <c-n> :NERDTreeToggle<cr>
"" Place NERDTree to left
"let g:NERDTreeWinPos = 'left'
""let g:NERDTreeQuitOnOpen = '1'
let g:NERDTreeDirArrowExpandable = '+'
let g:NERDTreeDirArrowCollapsible = '-'
"" === NERDTree === "
"" Show hidden files/directories
"let g:NERDTreeShowHidden = 1

"" Remove bookmarks and help text from NERDTree
"let g:NERDTreeMinimalUI = 1

"" Custom icons for expandable/expanded directories
"let g:NERDTreeDirArrowExpandable = '⬏'
"let g:NERDTreeDirArrowCollapsible = '⬎'

"" Hide certain files and directories from NERDTree
""let g:NERDTreeIgnore = ['^\.DS_Store$', '^tags$', '\.git$[[dir]]', '\.idea$[[dir]]', '\.sass-cache$']

" ################# NERDTREE #########################


"let g:autocomplete_flow#insert_paren_after_function = 0


"" ALE CONFIGURATION{{{
" keep the sign gutter open at all times
"let g:ale_sign_column_always = 1

"let g:ale_sign_error = '>>'
"let g:ale_sign_warning = '--'
"" Enable completion where available.
"" This setting must be set before ALE is loaded.

"" You should not turn this setting on if you wish to use ALE as a completion
"" source for other completion plugins, like Deoplete.
"let g:ale_completion_enabled = 1
" Use ALE and also some plugin after 'ale' as completion sources for all code.
"let g:deoplete#sources = {'_': ['ale']} 

""be explicit about the tools that are running
"let g:ale_linters_explicit = 1

""format on save
let g:ale_fix_on_save = 1

" }}}ale

"" Prettier format
"By default parsing errors will open the quickfix but can also be disabled
let g:prettier#quickfix_enabled = 1 
"By default we auto focus on the quickfix when there are errors but can also be disabled
let g:prettier#quickfix_auto_focus = 1
""To enable vim-prettier to run in files without requiring the "@format" doc tag. First disable the default autoformat, then update to your own custom behaviour
""Running before saving sync:
"let g:prettier#autoformat = 0
"autocmd BufWritePre *.js,*.jsx,*.mjs,*.ts,*.tsx,*.css,*.less,*.scss,*.json,*.graphql,*.md,*.vue,*.yaml,*.html Prettier
""Running before saving, changing text or leaving insert mode:
"" when running at every change you may want to disable quickfix
"let g:prettier#quickfix_enabled = 0
"let g:prettier#autoformat = 0
"autocmd BufWritePre,TextChanged,InsertLeave *.js,*.jsx,*.mjs,*.ts,*.tsx,*.css,*.less,*.scss,*.json,*.graphql,*.md,*.vue,*.yaml,*.html PrettierAsync

"" Overwrite default prettier configuration
"" Note: vim-prettier default settings differ from prettier intentionally. However they can be configured by:
" max line length that prettier will wrap on, default: 80
"let g:prettier#config#print_width = 80
" number of spaces per indentation level, default: 2
"let g:prettier#config#tab_width = 2
" use tabs over spaces, default: false
"let g:prettier#config#use_tabs = 'false'
" print semicolons, default: true
"let g:prettier#config#semi = 'true'
" single quotes over double quotes, default: false
let g:prettier#config#single_quote = 'true'
" print spaces between brackets, default: true
let g:prettier#config#bracket_spacing = 'false'
" put > on the last line instead of new line, default: false
let g:prettier#config#jsx_bracket_same_line = 'true'
" avoid|always, default: avoid
let g:prettier#config#arrow_parens = 'always'
" none|es5|all, default: none
let g:prettier#config#trailing_comma = 'all'
" flow|babylon|typescript|css|less|scss|json|graphql|markdown, default: babylon
let g:prettier#config#parser = 'flow'
" cli-override|file-override|prefer-file
let g:prettier#config#config_precedence = 'prefer-file'
" always|never|preserve
let g:prettier#config#prose_wrap = 'preserve'
" css|strict|ignore
let g:prettier#config#html_whitespace_sensitivity = 'css'

""}}}Prettier


"" NEOFORMAT
"" define custim formatter, example:
"let g:neoformat_python_autopep8 = {
            "\ 'exe': 'autopep8',
            "\ 'args': ['-s 4', '-E'],
            "\ 'replace': 1 " replace the file, instead of updating buffer (default: 0),
            "\ 'stdin': 1, " send data to stdin of formatter (default: 0)
            "\ 'env': ["DEBUG=1"], " prepend environment variables to formatter command
            "\ 'valid_exit_codes': [0, 23],
            "\ 'no_append': 1,
            "\ }
"let g:neoformat_enabled_python = ['autopep8']

""Configure enabled formatters.
"let g:neoformat_enabled_python = ['autopep8', 'yapf', 'docformatter']
""Have Neoformat use &formatprg as a formatter
"let g:neoformat_try_formatprg = 1

""Enable basic formatting when a filetype is not found. Disabled by default.:
  "" Enable alignment
let g:neoformat_basic_format_align = 1
  "" Enable tab to spaces conversion
let g:neoformat_basic_format_retab = 1
  "" Enable trimmming of trailing whitespace
let g:neoformat_basic_format_trim = 1

""Run all enabled formatters (by default Neoformat stops after the first formatter succeeds)
let g:neoformat_run_all_formatters = 1

""Above options can be activated or deactivated per buffer. For example:
"" runs all formatters for current buffer without tab to spaces conversion
 " let b:neoformat_run_all_formatters = 1
"let b:neoformat_basic_format_retab = 0
""Have Neoformat only msg when there is an error
"let g:neoformat_only_msg_on_error = 1

""}}}Neoformat


"" JAVASCRIPT{{{
" enable syntax highlighting for .js files too instead of just .jsx
let g:jsx_ext_required = 0

" flow syntax highlighting
let g:javascript_plugin_flow = 1

" JSDoc syntax highlighting
"let g:javascript_plugin_jsdoc = 1

" https://github.com/othree/javascript-libraries-syntax.vim is in plugs
let g:used_javascript_libs = 'underscore,react,flux,chai'

let g:ale_fixers = {
\   'javascript': ['prettier'],
\   'css': ['prettier'],
\}
""}}}javascript


"" css help completion
if !exists('g:context_filetype#same_filetypes')
   let g:context_filetype#same_filetypes = {}
endif
let g:context_filetype#same_filetypes.html = 'css'
      


"" Make background transparent for many things
"hi! Normal ctermbg=NONE guibg=NONE
"hi! NonText ctermbg=NONE guibg=NONE
"hi! LineNr ctermfg=NONE guibg=NONE
"hi! SignColumn ctermfg=NONE guibg=NONE
"hi! StatusLine guifg=#16252b guibg=#6699CC
"hi! StatusLineNC guifg=#16252b guibg=#16252b

"""""""""""""""""""""""""""" MAPPINGS """""""""""""""""""""""""""""""""""""

"" Remap leader key to ,
"let g:mapleader=','

"" Toggle comment in visual mode
vmap <silent>/ <Plug>NERDCommenterToggle
vmap <leader>/ <plug>NERDCommenterComment

"" TagbarToggle need to config
"nmap <F8> :TagbarToggle<CR>

"inoremap <C-Space> <c-x><c-o>

"" map the keys Ctrl+j and Ctrl+k to moving between errors for example:
"nmap <silent> <C-k> <Plug>(ale_previous_wrap)
"nmap <silent> <C-j> <Plug>(ale_next_wrap)

"" Select from completion list with SHIFT-j/k
"inoremap <expr> <C-j> ("\<C-n>")
"inoremap <expr> <C-k> ("\<C-p>")

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

"nnoremap H <C-w>h
"nnoremap J <C-w>j
"nnoremap K <C-w>k
"nnoremap L <C-w>l
        
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
nmap <leader><Space> :let<Space>@/=""<CR>

" :Neoformat
nmap <C-f> :Neoformat<CR>
"" Deleting without overriding the default clipboard
"nnoremap <leader>d "_d
"vnoremap <leader>d "_d
"" Prettier format 
nmap <Leader>p <Plug>(Prettier)

"" remap space bar to search
":nnoremap <Space> /\v

""Makes search using regexes require less \s
":nnoremap <leader>s :%s/\v

" deactivate 'Entering Ex mode' prompt
nnoremap Q <Nop>
nnoremap q <Nop>
noremap <C-Z> u


"""""""""""""""""""""""""""""""""""""

"""""""""""""""""""""""""""""""""""""
"let g:SuperTabDefaultCompletionType = '<C-x><C-o>'
"let g:UltiSnipsExpandTrigger = '<C-j>'
"inoremap <expr><Tab> pumvisible() ? '\<C-n>' : '\<Tab>'
"############### SUPERTAB #########################

"" NEOSNIPPETS key-mappings.{{{
" Note: It must be 'imap' and 'smap'.  It uses <Plug> mappings.
imap <C-k>     <Plug>(neosnippet_expand_or_jump)
smap <C-k>     <Plug>(neosnippet_expand_or_jump)
xmap <C-k>     <Plug>(neosnippet_expand_target)

" SuperTab like snippets behavior.
" Note: It must be 'imap' and 'smap'.  It uses <Plug> mappings.
"imap <expr><TAB>
" \ pumvisible() ? '\<C-n>' :
" \ neosnippet#expandable_or_jumpable() ?
" \  '\<Plug>(neosnippet_expand_or_jump)' : '\<TAB>'
"smap <expr><TAB> neosnippet#expandable_or_jumpable() ?
"\ '\<Plug>(neosnippet_expand_or_jump)' : '\<TAB>'



"" For conceal markers.
"if has('conceal')
  "set conceallevel=2 concealcursor=niv
"endif
" }}} neosnippet

"inoremap <C-Z> <ESC>ui
""nnoremap <Leader>p "0p
"" Toggle between last 2 buffers
"nnoremap <leader><tab> <c-^>

