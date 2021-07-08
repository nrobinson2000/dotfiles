"vim-plug section
call plug#begin('~/.vim/plugged')

"Essential
Plug 'tpope/vim-sensible'
Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }

"Git
Plug 'tpope/vim-fugitive'

"Languages
Plug 'yuezk/vim-js'
Plug 'maxmellon/vim-jsx-pretty'
Plug 'bfrg/vim-cpp-modern'

"fzf
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'

"Formatter
Plug 'google/vim-maktaba'
Plug 'google/vim-glaive', { 'do': { -> glaive#Install() } }
Plug 'google/vim-codefmt', { 'on': 'FormatCode' }

"Linting
Plug 'vim-syntastic/syntastic'

"Solarized theme
Plug 'altercation/vim-colors-solarized'

"Initialize plugin system
call plug#end()

"NERDTree
nnoremap <C-t> :NERDTreeToggle<CR>

"C/C++
let g:cpp_attributes_highlight = 1
let g:cpp_member_highlight = 1
let g:cpp_simple_highlight = 1

"Solarized
color solarized
set background=dark
let g:solarized_termcolors=256

"Syntastic
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*
let g:syntastic_always_populate_loc_list = 0
let g:syntastic_auto_loc_list = 0
let g:syntastic_check_on_open = 0
let g:syntastic_check_on_wq = 0

"Powerline
set showtabline=2
set noshowmode
set laststatus=0
set noruler
set noshowcmd
set shortmess+=F

"Basic settings
syntax on
set ruler
set tabstop=4
set shiftwidth=4
set expandtab
filetype plugin indent on
set mouse=a

"Spell checking
set spell spelllang=en_us
set complete+=kspell

"Line numbering
set number
set relativenumber

"Case insensitive search
set ignorecase
set smartcase
set incsearch

"Disable startup message
set shortmess+=I

"Unbind some useless/annoying default key bindings.
nmap Q :FormatCode<CR>

"Search highlighting
set hlsearch
nnoremap <silent> <Space> :nohlsearch<Bar>:echo<CR>
