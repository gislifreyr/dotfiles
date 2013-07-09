set nocompatible
filetype off
call pathogen#runtime_append_all_bundles()
call pathogen#helptags()
filetype plugin indent on

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
set showmode
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
set gdefault
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

" NERDTree config
nnoremap <leader>n :NERDTreeToggle<cr>
let NERDChristmasTree = 1
let NERDTreeHighlightCursorline = 1
let NERDTreeMapActivateNode='<CR>'

" vim-airline config
set laststatus=2
let g:airline_theme='light'
let g:airline_powerline_fonts=0
let g:airline_left_sep='»'
let g:airline_right_sep='«'
" fix to get out of insert mode immedieatly
set ttimeout
set ttimeoutlen=50

if match($TERM, "screen")!=-1
	set term=xterm
endif
