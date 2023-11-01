" Sets how many lines of history VIM has to remember
set history=500

" Enable filetype plugins
filetype plugin on
filetype indent on

" Set utf8 as standard encoding and en_US as the standard language
set encoding=utf8
let $LANG='en'
set langmenu=en

syntax on
let mapleader = ' '

" call plug#begin('~/.vim/plugged')
"" Initialize plugin system
" call plug#end()

colorscheme koehler
" Set regular expression engine automatically
set regexpengine=0

set t_Co=256 
set relativenumber
set background=dark

" Ignore case when searching
set ignorecase

" When searching try to be smart about cases
set smartcase

" Highlight search results
set hlsearch

" Makes search act like search in modern browsers
set incsearch

" Don't redraw while executing macros (good performance config)
set lazyredraw

" For regular expressions turn magic on
set magic

" Show matching brackets when text indicator is over them
set showmatch

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Files, backups and undo
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Turn backup off, since most stuff is in SVN, git etc. anyway...
set nobackup
set nowb
set noswapfile

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Text, tab and indent related
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Use spaces instead of tabs
set expandtab

" Be smart when using tabs ;)
set smarttab

" 1 tab == 4 spaces
set shiftwidth=4
set tabstop=4

" Linebreak on 500 characters
set linebreak
set textwidth=500

set ai "Auto indent
set si "Smart indent
set wrap "Wrap lines


" No annoying sound on errors
set noerrorbells
set novisualbell

" Cursor
let &t_SI = "\e[6 q"
let &t_EI = "\e[2 q"

""" Key Bindings
" Quit 
imap jj <Esc>
imap jk <Esc>
imap kj <Esc>

" You can split the window in Vim by typing :split or :vsplit.
" Navigate the split view easier by pressing CTRL+j, CTRL+k, CTRL+h, or CTRL+l.
nnoremap <c-j> <c-w>j                      
nnoremap <c-k> <c-w>k                       
nnoremap <c-h> <c-w>h                       
nnoremap <c-l> <c-w>l                       

" Move 1 more lines up or down in normal and visual selection modes.
nnoremap K :m .-2<CR>==
nnoremap J :m .+1<CR>==
vnoremap K :m '<-2<CR>gv=gv
vnoremap J :m '>+1<CR>gv=gv


