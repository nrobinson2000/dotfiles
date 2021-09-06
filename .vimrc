"vim-plug
call plug#begin('~/.vim/plugged')
"fzf
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'

"FormatCode
Plug 'google/vim-maktaba'
Plug 'google/vim-glaive', { 'do': { -> glaive#Install() } }
Plug 'google/vim-codefmt', { 'on': 'FormatCode' }

"Languages
Plug 'bfrg/vim-cpp-modern'
call plug#end()

"Rebindings
nmap Q :FormatCode<CR>
nmap <C-b> :w<CR>:make<CR>

"C/C++
let g:cpp_attributes_highlight = 1
let g:cpp_member_highlight = 1
let g:cpp_simple_highlight = 1

"netrw
let g:netrw_banner = 0
let g:netrw_liststyle = 3
let g:netrw_browse_split = 4
let g:netrw_altv = 1
let g:netrw_winsize = 25
nnoremap <silent> <C-t> :Lexplore<CR>

"Basic
set nocompatible
filetype plugin indent on
syntax enable
color molokai
set ruler
set shortmess+=I
set wildmenu
set autoread

"Indentation
set tabstop=4
set shiftwidth=4
set expandtab
set autoindent
set smarttab

"Line numbering
set number
set relativenumber

"Searching
set ignorecase
set smartcase
set incsearch
set hlsearch
nnoremap <silent> <Space> :nohlsearch<Bar>:echo<CR>

"Status bars
set showtabline=2
set laststatus=2

"Mouse
set mouse=a

"Clipboard (gvim)
set clipboard=unnamedplus

"Format comments when joining
set formatoptions+=j

"Load matchit.vim
runtime! macros/matchit.vim

"vim-airline
let g:airline_theme='powerlineish'
set noshowmode
set noruler
set noshowcmd
set shortmess+=F
set ttimeout
set ttimeoutlen=100

"vim-airline
let g:airline#extensions#tabline#show_tab_nr = 0
let g:airline_symbols_ascii=1
let g:airline_extensions = ['tabline']
let g:airline_highlighting_cache = 1
let g:airline_powerline_fonts = 1
let g:airline_detect_spelllang=0
let g:airline#extensions#tabline#enabled = 0
let g:airline#extensions#tabline#show_buffers = 0
let g:airline#extensions#tabline#buffers_label = 'Bufs'
let g:airline#extensions#tabline#tabs_label = 'Tabs'

"Fix airline symbols
if !exists('g:airline_symbols')
    let g:airline_symbols = {}
    let g:airline_symbols.colnr = ':'
    let g:airline_symbols.linenr = ' '
    let g:airline_symbols.maxlinenr = ''
endif

"vim-airline
let g:airline_section_b='%<%f%m %#__accent_red#%{airline#util#wrap(airline#parts#readonly(),0)}%#__restore__#%#__accent_bold#%#__restore__#%#__accent_bold#%#__restore__#'
let g:airline_section_z='%p%%%#__accent_bold#%{g:airline_symbols.linenr}%l%{g:airline_symbols.maxlinenr}%#__restore__#%{g:airline_symbols.colnr}%v%#__restore__# '
let g:airline_section_c=''
