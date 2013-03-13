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
" Space to clear search highlighting
nnoremap <leader><space> :noh<cr>
" Match bracket pairs (normal)
nnoremap <tab> %
" Match bracker pairs (visual)
vnoremap <tab> %

" Toggle set list and set listchars
nmap <leader>l :set list!<CR>
set listchars=tab:▸\ ,eol:¬

" NERDTree config
nnoremap <leader>n :NERDTreeToggle<cr>
let NERDChristmasTree = 1
let NERDTreeHighlightCursorline = 1
let NERDTreeMapActivateNode='<CR>'

"Status line

"setup
set statusline=%f						" Tail of filename

"display a warning if not utf-encoding
set statusline+=%{(&fenc!='utf-8'&&&fenc!='')?'['.&fenc.']':''}
set statusline+=%*

set statusline+=%h						" Help file flag
set statusline+=%y						" Filetype
set statusline+=%r						" Read-only flag
set statusline+=%m						" Modified flag

set statusline+=%=						" Left/right separator
set statusline+=[asc=\%03.3b]
set statusline+=\ [hex=\%02.2B]
set statusline+=\ [%c,					" Cursor column
set statusline+=%l/%L					" Cursor line/total lines
set statusline+=\ %P]					" Percent through file
set laststatus=2

if match($TERM, "screen")!=-1
	set term=xterm
endif
