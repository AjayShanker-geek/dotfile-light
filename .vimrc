filetype plugin indent on
syntax on

" call plug#begin('~/.vim/plugged')
"" Initialize plugin system
" call plug#end()

packadd! termdebug
" Backup if OS crash
" set backup
" set backupdir=~/.backup

let g:onedark_termcolors=256
set t_Co=256 
set relativenumber
" Enable CursorLine
set cursorline
set ruler
set number
set autoindent
set smarttab
set smartindent

set wrap "Wrap lines
" set spelllang=en_gb
set smartindent
set tapstop=2
set shiftwidth=2
set mouse=a " activate mouse
set background=dark
" set expandtab

colorscheme onedark

" No annoying sound on errors
set noerrorbells
set novisualbell

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

