set nocompatible
set backspace=indent,eol,start
filetype off

call plug#begin('~/.vim/plugged')

" let's install some plugins
Plug 'christoomey/vim-tmux-navigator'
Plug 'benmills/vimux'
Plug 'Raimondi/delimitMate'
Plug 'bling/vim-airline'
Plug 'bling/vim-bufferline'
Plug 'tpope/vim-fugitive'
Plug 'rodjek/vim-puppet', {'for': 'puppet'}
Plug 'godlygeek/tabular'
Plug 'morhetz/gruvbox'

" Initialize plugin system
call plug#end()

" config
set modelines=0

set hidden
set t_Co=256
set history=1000
set ruler
set nobackup
set encoding=utf-8

" Tab
set expandtab
set tabstop=4
set shiftwidth=4
set textwidth=0
" tab-settings for specific filetypes
autocmd FileType ruby setlocal tabstop=2 shiftwidth=2
autocmd FileType yaml setlocal tabstop=2 shiftwidth=2
autocmd FileType puppet setlocal tabstop=2 shiftwidth=2

set showcmd
set noshowmode
colorscheme gruvbox
set noswapfile
set nowb
set autoindent
set mousehide
set scrolloff=8
set selectmode=mouse
" Command completion
set wildmenu
set wildmode=list:longest

" linenumbers
set number relativenumber

:augroup numbertoggle
:  autocmd!
:  autocmd BufEnter,FocusGained,InsertLeave * set relativenumber
:  autocmd BufLeave,FocusLost,InsertEnter   * set norelativenumber
:augroup END

"""""""""""""""""""""""
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
" saner splits
set splitbelow
set splitright
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

" sudo-save
cmap w!! w !sudo tee > /dev/null %

" gf is built in and will "start editing the file whose name is under the cursor
" gb is not built in and will "Go back to the file which you came from
nnoremap gb <C-o>

" vimux mappings
" Prompt for a command to run
map <Leader>vp :VimuxPromptCommand<CR>
" Run last command executed by VimuxRunCommand
map <Leader>vl :VimuxRunLastCommand<CR>
" Inspect runner pane
map <Leader>vi :VimuxInspectRunner<CR>
" Zoom the tmux runner pane
map <Leader>vz :VimuxZoomRunner<CR>

" vim-airline config
set laststatus=2
let g:airline_theme='dark'
let g:airline_powerline_fonts=0
let g:airline_left_sep='»'
let g:airline_right_sep='«'

" fix to get out of insert mode immedieatly
set ttimeout
set ttimeoutlen=50

"if match($TERM, "screen")!=-1
"	set term=xterm
"endif

" red background for letters after 80 chars
highlight OverLength ctermbg=red ctermfg=white guibg=#592929
match OverLength /\%81v.\+/

" gruvbox specific
let g:gruvbox_italic=0
