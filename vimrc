set nocompatible

call pathogen#runtime_append_all_bundles()
call pathogen#helptags()

set t_Co=256
set history=1000
set ruler
set nobackup
set tabstop=4
set shiftwidth=4
set textwidth=0
set showcmd
set number
set incsearch

set hlsearch
colorscheme elflord
set noswapfile
set nowb
set autoindent
set ignorecase
set smartcase
set mousehide
set scrolloff=8
set selectmode=mouse
syntax on
set mouse=a
"Status line

"setup
set statusline=%f	"tail of filename

"display a warning if not utf-encoding
set statusline+=%{(&fenc!='utf-8'&&&fenc!='')?'['.&fenc.']':''}
set statusline+=%*

set statusline+=%h		"help file flag
set statusline+=%y		"filetype
set statusline+=%r		"read-only flag
set statusline+=%m		"modified flag

set statusline+=%=      "left/right separator
set statusline+=[asc=\%03.3b]
set statusline+=\ [hex=\%02.2B]
set statusline+=\ [%c,     "cursor column
set statusline+=%l/%L   "cursor line/total lines
set statusline+=\ %P]    "percent through file
set laststatus=2

if match($TERM, "screen")!=-1
	set term=xterm
endif
