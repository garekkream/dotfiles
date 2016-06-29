call plug#begin()
Plug 'The-NERD-tree'
Plug 'Rip-Rip/clang_complete'
Plug 'Python-mode-klen'
Plug 'Syntastic'
Plug 'bling/vim-airline'
Plug 'AutoClose'
Plug 'bufexplorer.zip'
Plug 'fugitive.vim'
Plug 'DoxygenToolkit.vim'
Plug 'Mark'
Plug 'Tagbar'
Plug 'SuperTab'
""Plug 'blindFS/vim-taskwarrior'
Plug 'Indent-Guides'
Plug 'terryma/vim-multiple-cursors'
Plug 'fish.vim'
""Plug 'Chiel92/vim-autoformat'
""Plug 'zhaocai/GoldenView.vim'
""Plug 'bbchung/clighter'
Plug 'airblade/vim-rooter'
Plug 'rust-lang/rust.vim'
Plug 'racer-rust/vim-racer'
Plug 'cespare/vim-toml'

""" Styles
Plug 'vivien/vim-addon-linux-coding-style'

""" Themes
Plug 'jellybeans.vim'
Plug 'Zenburn'
Plug 'badwolf'
Plug 'itchyny/landscape.vim'
Plug 'fxn/vim-monochrome'

call plug#end()

set nocompatible

hi Normal ctermbg=NONE

syntax on

if &shell =~# 'fish$'
    set shell=sh
endif

colorscheme jellybeans

set shiftwidth=4
filetype plugin indent on

set title
set titlestring=%t%(\ %M%)\ %<%(\ [%{expand(\"%:p:~:h\")}]%)
set laststatus=2
set statusline=%M%t\ \ %<%{expand(\"%:p:~:h\")}\ %=[%p%%\ L=%L\ C=%v][%{&ff}%Y%R%{&fenc!=''?','.&fenc:''}]
set history=512
set spelllang=en,pl
set encoding=utf-8
set tabstop=4
set ai
set si
set wrap
set textwidth=80
set linebreak
set nolist
""set mat=2
set ffs=unix,dos,mac

set anti enc=utf-8
set guifont=Source\ Code\ Pro\ 9

set expandtab
set magic               " Enable extended regexes
set ignorecase
set nosmartcase
set hlsearch            " highlight searches
set incsearch           " do incremental searching
set nocompatible
set number
set showmatch
set showcmd
""set autochdir
""set cursorline
set foldenable
set ruler

set wildmenu            " enhance command-line completion mode
set wildmode=list:longest,full
set wildchar=<Tab>
set wildignore+=*.o,*.obj,*.a,*.so,.svn,.git,*.swp
set lazyredraw

let c_syntax_for_h=1
let c_linux_syntax=1
let g:load_doxygen_syntax=1


" -- Explore:
let mapleader = " "
map <Leader>e :Explore<cr>
let g:netrw_liststyle=3

" -- Clang_Complete:
let g:clang_exec="clang"
let g:clang_use_library=1
let g:clang_complete_copen=1
let g:clang_hl_errors=1
let g:clang_complete_macros=1
let g:clang_complete_patterns=1
let g:clang_memory_percent=75
let g:clang_user_options='|| exit 0'
let g:clang_auto_select=1
let g:clang_sort_algo="priority"
let g:clang_complete_auto=1
let g:clang_periodic_quickfix=1
let g:clang_snippets=1
let g:clang_conceal_snippets=1
let g:clang_csnippets_engine='clang_complete'
let g:clang_close_preview=1
let g:clang_user_options = '-std=c++14'

let g:mwDefaultHighlightingPalette = 'original'

" -- Airline:
let g:airline#extensions#tabline#enabled = 1

" -- tagbar:
nmap <F8> :TagbarToggle<CR>

" -- syntastic:
let g:syntastic_check_on_open=1
let g:syntastic_check_on_wq=0
let g:syntastic_enable_signs=1
let g:syntastic_auto_loc_list=2
let g:syntastic_c_check_header=1
let g:syntastic_c_auto_refresh_include=1
let g:syntastic_c_checkers=['gcc','make', 'splint']
let g:syntastic_c_compiler='clang'
let g:syntastic_cpp_check_header=1
let g:syntastic_cpp_checkers=['gcc']
let g:syntastic_cpp_compiler="clang++"
let g:syntastic_cpp_compiler_options = ' -std=c++14 -stdlib=libc++'
let g:syntastic_cpp_auto_refresh_include=1

if has('unix')
	let g:syntastic_error_symbol = '★'
	let g:syntastic_style_error_symbol = '>'
	let g:syntastic_warning_symbol = '⚠'
	let g:syntastic_style_warning_symbol = '>'
else
	let g:syntastic_error_symbol = '!'
	let g:syntastic_style_error_symbol = '>'
	let g:syntastic_warning_symbol = '.'
	let g:syntastic_style_warning_symbol = '>'
endif

" -- BufExplorer:
let bufExplorerShowDirectories =1
let bufExplorerShowRelativePath =1
let bufExplorerShowTabBuffer =0
let bufExplorerOnlyOneTab =1
let bufExplorerSortBy='name'

map <silent> <C-F10> :BufExplorer<CR>
map <silent> <F10> :BufExplorerHorizontalSplit<CR>

if has("gui_running")
  " GUI is running or is about to start.
  " Maximize gvim window.
  set lines=999 columns=999
  set guioptions-=T
else
  " This is console Vim.
  if exists("+lines")
    set lines=250
  endif
  if exists("+columns")
    set columns=200
  endif
endif

" --- NerdTree
let NERDChristmasTree =0
let NERDTreeCaseSensitiveSort =1
let NERDTreeMinimalUI =1
let NERDTreeIgnore=['\~$', 'core$[[file]]', '.o$[[file]]']
let NERDTreeBookmarksFile =expand('$HOME') . '/.vim/tmp/nerdt_bookmarks'
let NERDTreeHijackNetrw =1
let NERDTreeShowBookmarks =1
let NERDTreeShowHidden =0
let NERDTreeDirArrows = 0
let NERDTreeWinPos ='left'
let NERDTreeWinSize =32

" --- taskwarrior
""let g:task_report_name = 'next'
""let g:task_rc_override = 'defaultwidth=999'
""let g:task_info_vsplit = 0
""let g:task_info_size   = 15

" --- DoxygenToolkit
let g:DoxygenToolkit_authorName="Krzysztof Garczynski <garekkream@gmail.com>"

" --- GoldenView
let g:goldview__enable_at_startup = 0

" --- Rooter
""let g:rooter_manual_only = 1
""let g:rooter_disable_map = 1

" --- Rust
set hidden
let g:rustfmt_autosave = 1
let g:racer_cmd = "/usr/bin/racer"
let $RUST_SRC_PATH = "/usr/src/rust/src"

if has("cscope")
    set nocscopeverbose " suppres 'duplicate connections' error

    """ Load preconfigured linux cscope
    exe "cs add /home/garekkream/Projects/linux/cscope.out /home/garekkream/Projects/linux/"
    """ Load preconfigured uboot cscope
""""    exe "cs add /home/garekkream/Projects/u-boot/cscope.out /home/garekkream/Projects/u-boot/"


    """ Load local cscope if exitsts
    let db = findfile("cscope.out", ".;")
    if(!empty(db))
        let path = strpart(db, 0, match(db, "/cscope.out$"))
        exe "cs add " . db . " " . path
    endif
    set cscopeverbose
endif

set tags+=./tags
set tags+=/home/garekkream/Proejcts/linux/tags
""""set tags+=/home/garekkream/Projects/u-boot/tags

set path+=/home/garekkream/Projects/linux/include
""""set path+=/home/garekkream/Projects/u-boot/include

"map <silent> <F11> :call MyNTreeToggl()<CR>
map <silent> <F11> :NERDTreeToggl<CR>

map <F3> :noh<CR>
map <C-F3> :MarkClear

map <C-j> :bprev<CR>
map <C-k> :bnext<CR>
map <C-h> :tabp<CR>
map <C-l> :tabn<CR>
