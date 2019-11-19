set nocompatible              " be iMproved, required
filetype off                  " required

set rtp+=G:/vundle 
autocmd FileType java setlocal omnifunc=javacomplete#Complete
call vundle#begin('G:/bundle/')
Plugin 'vim-airline/vim-airline'
Plugin 'connorholyday/vim-snazzy'



" File navigation
Plugin 'scrooloose/nerdtree', { 'on': 'NERDTreeToggle' }
Plugin 'Xuyuanp/nerdtree-git-Plugin'

" Taglist
Plugin 'majutsushi/tagbar', { 'on': 'TagbarOpenAutoClose' }

" Error checking
Plugin 'w0rp/ale'

" Auto Complete
Plugin 'Valloric/YouCompleteMe'

" Undo Tree
Plugin 'mbbill/undotree/'

" Other visual enhancement
Plugin 'nathanaelkane/vim-indent-guides'
Plugin 'itchyny/vim-cursorword'

" Git
Plugin 'rhysd/conflict-marker.vim'
Plugin 'tpope/vim-fugitive'
Plugin 'mhinz/vim-signify'
Plugin 'gisphm/vim-gitignore', { 'for': ['gitignore', 'vim-Plugin'] }

" HTML, CSS, JavaScript, PHP, JSON, etc.
Plugin 'elzr/vim-json'
Plugin 'hail2u/vim-css3-syntax'
Plugin 'spf13/PIV', { 'for' :['php', 'vim-Plugin'] }
Plugin 'gko/vim-coloresque', { 'for': ['vim-Plugin', 'php', 'html', 'javascript', 'css', 'less'] }
Plugin 'pangloss/vim-javascript', { 'for' :['javascript', 'vim-Plugin'] }
Plugin 'mattn/emmet-vim'

" Python
Plugin 'vim-scripts/indentpython.vim'

" Markdown
Plugin 'iamcco/markdown-preview.nvim', { 'do': { -> mkdp#util#install_sync() }, 'for' :['markdown', 'vim-Plugin'] }
Plugin 'dhruvasagar/vim-table-mode', { 'on': 'TableModeToggle' }
Plugin 'vimwiki/vimwiki'

" Bookmarks
Plugin 'kshenoy/vim-signature'

" Other useful utilities
Plugin 'terryma/vim-multiple-cursors'
Plugin 'junegunn/goyo.vim' " distraction free writing mode
Plugin 'tpope/vim-surround' " type ysks' to wrap the word with '' or type cs'` to change 'word' to `word`
Plugin 'godlygeek/tabular' " type ;Tabularize /= to align the =
Plugin 'gcmt/wildfire.vim' " in Visual mode, type i' to select all text in '', or type i) i] i} ip
Plugin 'scrooloose/nerdcommenter' " in <space>cc to comment a line

" Dependencies
Plugin 'MarcWeber/vim-addon-mw-utils'
Plugin 'kana/vim-textobj-user'
Plugin 'fadein/vim-FIGlet'
call vundle#end()            " required
"filetype Plugin indent on    " required
" To ignore Pluginin indent changes, instead use:
"filetype Plugin on
"
" Brief help
" :PlugininList       - lists configured Plugins
" :PlugininInstall    - installs Plugins; append `!` to update or just :PlugininUpdate
" :PlugininSearch foo - searches for foo; append `!` to refresh local cache
" :PlugininClean      - confirms removal of unused Plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line
source $VIMRUNTIME/vimrc_example.vim

" Use the internal diff if available.
" Otherwise use the special 'diffexpr' for Windows.

let mapleader=" "
syntax on
syntax match class 'class'
highlight class ctermfg=cyan guifg=#00FFFF
set number
set norelativenumber
set cursorline
set wrap
set showcmd
set wildmenu

set hlsearch
exec "nohlsearch"
set incsearch
set ignorecase
set smartcase


set nocompatible
filetype on
filetype indent on
"filetype Plugin on
"filetype Plugin indent on
set mouse=a
set encoding=utf-8
let &t_ut=''
set expandtab
set tabstop=2
set shiftwidth=2
set softtabstop=2
set list
set listchars=tab:▸\ ,trail:▫
set scrolloff=5
set tw=0
set indentexpr=
set backspace=indent,eol,start
set foldmethod=indent
set foldlevel=99
let &t_SI = "\<Esc>]50;CursorShape=1\x7"
let &t_SR = "\<Esc>]50;CursorShape=2\x7"
let &t_EI = "\<Esc>]50;CursorShape=0\x7"
set laststatus=2
set autochdir
au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif

noremap = nzz
noremap - Nzz
noremap <LEADER><CR> :nohlsearch<CR>

noremap n h
noremap u k
noremap e j
noremap i l
noremap U 5k
noremap E 5j
noremap N 7h
noremap I 7l
" N key: go to the start of the line
noremap <C-n> 0
" I key: go to the end of the line
noremap <C-i> $

noremap k i
noremap K I
noremap l u

inoremap ' ''<ESC>i
inoremap ( ()<ESC>i
inoremap { {<CR>}<ESC>i
map s <nop
map S :w<CR>
map Q :q<CR>
map R :source $MYVIMRC<CR>
map ; :

map si :set splitright<CR>:vsplit<CR>
map sn :set nosplitright<CR>:vsplit<CR>
map su :set nosplitbelow<CR>:split<CR>
map se :set splitbelow<CR>:split<CR>

map <LEADER>i <C-w>l
map <LEADER>u <C-w>k
map <LEADER>n <C-w>h
map <LEADER>e <C-w>j

map <up> :res +5<CR>
map <down> :res -5<CR>
map <left> :vertical resize-5<CR>
map <right> :vertical resize+5<CR>

map tu :tabe<CR>
map tn :-tabnext<CR>
map ti :+tabnext<CR>

map sv <C-w>t<C-w>H
map sh <C-w>t<C-w>K


let g:SnazzyTransparent = 1
color snazzy

" ===
" === NERDTree
" ===
map tt :NERDTreeToggle<CR>
let NERDTreeMapOpenExpl = ""
let NERDTreeMapUpdir = ""
let NERDTreeMapUpdirKeepOpen = "l"
let NERDTreeMapOpenSplit = ""
let NERDTreeOpenVSplit = ""
let NERDTreeMapActivateNode = "i"
let NERDTreeMapOpenInTab = "o"
let NERDTreeMapPreview = ""
let NERDTreeMapCloseDir = "n"
let NERDTreeMapChangeRoot = "y"
let NERDTreeWinPos='left'



" ==
" == NERDTree-git
" ==
let g:NERDTreeIndicatorMapCustom = {
    \ "Modified"  : "✹",
    \ "Staged"    : "✚",
    \ "Untracked" : "✭",
    \ "Renamed"   : "➜",
    \ "Unmerged"  : "═",
    \ "Deleted"   : "✖",
    \ "Dirty"     : "✗",
    \ "Clean"     : "✔︎",
    \ "Unknown"   : "?"
    \ }


" ===
" === You Complete ME
" ===
nnoremap gd :YcmCompleter GoToDefinitionElseDeclaration<CR>
nnoremap g/ :YcmCompleter GetDoc<CR>
nnoremap gt :YcmCompleter GetType<CR>
nnoremap gr :YcmCompleter GoToReferences<CR>
let g:ycm_autoclose_preview_window_after_completion=0
let g:ycm_autoclose_preview_window_after_insertion=1
let g:ycm_use_clangd = 0
let g:ycm_python_interpreter_path = "/bin/python3"
let g:ycm_python_binary_path = "/bin/python3"


" ===
" === ale
" ===
let b:ale_linters = ['pylint']
let b:ale_fixers = ['autopep8', 'yapf']


" ===
" === Taglist
" ===
map <silent> T :TagbarOpenAutoClose<CR>


" ===
" === MarkdownPreview
" ===
let g:mkdp_auto_start = 0
let g:mkdp_auto_close = 1
let g:mkdp_refresh_slow = 0
let g:mkdp_command_for_global = 0
let g:mkdp_open_to_the_world = 0
let g:mkdp_open_ip = ''
let g:mkdp_browser = 'chromium'
let g:mkdp_echo_preview_url = 0
let g:mkdp_browserfunc = ''
let g:mkdp_preview_options = {
    \ 'mkit': {},
    \ 'katex': {},
    \ 'uml': {},
    \ 'maid': {},
    \ 'disable_sync_scroll': 0,
    \ 'sync_scroll_type': 'middle',
    \ 'hide_yaml_meta': 1
    \ }
let g:mkdp_markdown_css = ''
let g:mkdp_highlight_css = ''
let g:mkdp_port = ''
let g:mkdp_page_title = '「${name}」'


" ===
" === vim-table-mode
" ===
map <LEADER>tm :TableModeToggle<CR>

" ===
" === Python-syntax
" ===
let g:python_highlight_all = 1
" let g:python_slow_sync = 0


" ===
" === vim-indent-guide
" ===
let g:indent_guides_guide_size = 1
let g:indent_guides_start_level = 2
let g:indent_guides_enable_on_vim_startup = 1
let g:indent_guides_color_change_percent = 1
silent! unmap <LEADER>ig
autocmd WinEnter * silent! unmap <LEADER>ig


" ===
" === Goyo
" ===
map <LEADER>gy :Goyo<CR>


" ===
" === vim-signiture
" ===
let g:SignatureMap = {
        \ 'Leader'             :  "m",
        \ 'PlaceNextMark'      :  "m,",
        \ 'ToggleMarkAtLine'   :  "m.",
        \ 'PurgeMarksAtLine'   :  "dm-",
        \ 'DeleteMark'         :  "dm",
        \ 'PurgeMarks'         :  "dm/",
        \ 'PurgeMarkers'       :  "dm?",
        \ 'GotoNextLineAlpha'  :  "m<LEADER>",
        \ 'GotoPrevLineAlpha'  :  "",
        \ 'GotoNextSpotAlpha'  :  "m<LEADER>",
        \ 'GotoPrevSpotAlpha'  :  "",
        \ 'GotoNextLineByPos'  :  "",
        \ 'GotoPrevLineByPos'  :  "",
        \ 'GotoNextSpotByPos'  :  "mn",
        \ 'GotoPrevSpotByPos'  :  "mp",
        \ 'GotoNextMarker'     :  "",
        \ 'GotoPrevMarker'     :  "",
        \ 'GotoNextMarkerAny'  :  "",
        \ 'GotoPrevMarkerAny'  :  "",
        \ 'ListLocalMarks'     :  "m/",
        \ 'ListLocalMarkers'   :  "m?"
        \ }


" ===
" === Undotree
" ===
let g:undotree_DiffAutoOpen = 0
map L :UndotreeToggle<CR>
