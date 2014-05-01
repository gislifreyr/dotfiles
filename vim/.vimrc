set nocompatible
filetype off

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'

" let's install some plugins
Plugin 'Raimondi/delimitMate'
Plugin 'bling/vim-airline'
Plugin 'bling/vim-bufferline'
Plugin 'tpope/vim-fugitive'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" Brief help
" :PluginList          - list configured plugins
" :PluginInstall(!)    - install (update) plugins
" :PluginSearch(!) foo - search (or refresh cache first) for foo
" :PluginClean(!)      - confirm (or auto-approve) removal of unused plugins
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line

set modelines=0

set hidden
set t_Co=256
set history=1000
set ruler
set nobackup
set encoding=utf-8
" Tab
set tabstop=4
set shiftwidth=4
set textwidth=0

set showcmd
set noshowmode
set number
colorscheme elflord
set noswapfile
set nowb
set autoindent
set mousehide
set scrolloff=8
set selectmode=mouse
" Command completion
set wildmenu
set wildmode=list:longest

"""""""""""""""""""""""
" vim 7.3 only...
" set relativenumber
" set undofile
"""""""""""""""""""""""
set cursorline

syntax on

"Mapleader
let mapleader= ","

" ; same as :
nnoremap ; :

"searching moving
set ignorecase
set smartcase
set incsearch
set hlsearch
set showmatch
" moving between splits
nnoremap <C-H> <C-W><C-H>
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
" Space to clear search highlighting
nnoremap <leader><space> :noh<cr>
" Match bracket pairs (normal)
nnoremap <tab> %
" Match bracker pairs (visual)
vnoremap <tab> %

" Toggle set list and set listchars
nmap <leader>l :set list!<CR>
set listchars=tab:▸\ ,eol:¬

" Toggle between paste and nopaste
nmap <leader>p :set paste!<CR>

" gf is built in and will "start editing the file whose name is under the cursor
" gb is not built in and will "Go back to the file which you came from
nnoremap gb <C-o>

" NERDTree config
nnoremap <leader>n :NERDTreeToggle<cr>
let NERDChristmasTree = 1
let NERDTreeHighlightCursorline = 1
let NERDTreeMapActivateNode='<CR>'

" vim-airline config
set laststatus=2
let g:airline_theme='dark'
let g:airline_powerline_fonts=0
let g:airline_left_sep='»'
let g:airline_right_sep='«'

" fix to get out of insert mode immedieatly
set ttimeout
set ttimeoutlen=50

if match($TERM, "screen")!=-1
	set term=xterm
endif
