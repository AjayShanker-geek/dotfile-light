
set nocompatible
filetype plugin on

""" Config for OneDark in Iterm (Showing the correct colour)
"Use 24-bit (true-color) mode in Vim/Neovim when outside tmux.
"If you're using tmux version 2.2 or later, you can remove the outermost $TMUX check and use tmux's 24-bit color support
"(see < http://sunaku.github.io/tmux-24bit-color.html#usage > for more information.)
if (empty($TMUX))
	if (has("nvim"))
		"For Neovim 0.1.3 and 0.1.4 < https://github.com/neovim/neovim/pull/2198 >
		let $NVIM_TUI_ENABLE_TRUE_COLOR=1
	endif
	"For Neovim > 0.1.5 and Vim > patch 7.4.1799 < https://github.com/vim/vim/commit/61be73bb0f965a895bfb064ea3e55476ac175162 >
	"Based on Vim patch 7.4.1770 (`guicolors` option) < https://github.com/vim/vim/commit/8a633e3427b47286869aa4b96f2bfc1fe65b25cd >
	" < https://github.com/neovim/neovim/wiki/Following-HEAD#20160511 >
	if (has("termguicolors"))
		set termguicolors
	endif
endif

""" Startify Startup UI

let g:startify_custom_header = [
			\ '         _            _                  _       ', 
			\ '        /\ \     _   /\_\               / /\     ', 
			\ '       /  \ \   /\_\/ / /         _    / /  \    ', 
			\ '      / /\ \ \_/ / /\ \ \__      /\_\ / / /\ \__ ', 
			\ '     / / /\ \___/ /  \ \___\    / / // / /\ \___\', 
			\ '    / / /  \/____/    \__  /   / / / \ \ \ \/___/', 
			\ '   / / /    / / /     / / /   / / /   \ \ \      ', 
			\ '  / / /    / / /     / / /   / / /_    \ \ \     ', 
			\ ' / / /    / / /     / / /___/ / //_/\__/ / /     ', 
			\ '/ / /    / / /     / / /____\/ / \ \/___/ /      ', 
			\ '\/_/     \/_/      \/_________/   \_____\/       ', 
			\ '                                                 ', 
			\]

" let g:startify_padding_left = 80 " Hard coded padding for lists

call plug#begin('~/.vim/plugged')

"" Any valid git URL is allowed
"Plug 'https://github.com/junegunn/vim-github-dashboard.git'

"" On-demand loading
"Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
"" Plug 'tpope/vim-fireplace', { 'for': 'clojure' }

"" Recommended by Prof
Plug 'scrooloose/syntastic'


"Plug 'mhinz/vim-startify'
"Plug 'vim-airline/vim-airline'
"Plug 'vim-airline/vim-airline-themes'

"" Multiple Cursor
"Plug 'mg979/vim-visual-multi', {'branch': 'master'}

"Plug 'mbbill/undotree'
"Plug 'preservim/nerdcommenter'
"" Plug 'haya14busa/incsearch.vim'
"" Theme
"Plug 'joshdick/onedark.vim'
Plug 'justinmk/vim-syntax-extra'
"Plug 'sheerun/vim-polyglot'

"" Plug 'wfxr/minimap.vim'
Plug 'ryanoasis/vim-devicons'
"" Plug 'bagrat/vim-buffet'
"Plug 'voldikss/vim-floaterm'
"Plug 'liuchengxu/vim-which-key'


"" Color Brackets
"" Plug 'luochen1990/rainbow'
"" Follow Profs
"Plug 'frazrepo/vim-rainbow'

"" Indentline
"Plug 'Yggdroot/indentLine'

"Plug 'Raimondi/delimitMate'

"" Initialize plugin system
call plug#end()

packadd! termdebug
" Backup if OS crash
set backup
set backupdir=~/.backup

syntax on
let g:onedark_termcolors=256
set t_Co=256 
" The following should give 16 colors by NUS
" set t_AB=^[[%?%p1%{8}%<%t%p1%{40}%+%e%p1%{92}%+%;%dm
" set t_AF=^[[%?%p1%{8}%<%t%p1%{30}%+%e%p1%{82}%+%;%dm
" set t_Co=16
"

" Enable CursorLine
set cursorline
filetype on
set ruler
set number
set autoindent

" Use spaces instead of tabs
" set expandtab

" Be smart when using tabs ;)
set smarttab
set smartindent

set ai "Auto indent
set si "Smart indent
set wrap "Wrap lines
" set spelllang=en_gb
set smartindent
set tapstop=2
set shiftwidth=2
set mouse=a " activate mouse
" set backspace=indent,eol,start                                    " More powerful backspacing
set timeoutlen=300
set background=dark
" set expandtab
set spell spelllang=en_gb
" highlight Normal ctermbg=NONE
" highlight nonText ctermbg=NONE
"
""" Config for minimap
"let g:minimap_auto_start = 1


" let g:onedark_termcolors=16
" let g:onedark_terminal_italics=1
" let g:onedark_hide_endofbuffer=1
"
colorscheme onedark

""" Change Cursor in different mode
let &t_SI = "\<Esc>]50;CursorShape=1\x7"
let &t_SR = "\<Esc>]50;CursorShape=2\x7"
let &t_EI = "\<Esc>]50;CursorShape=0\x7"


" Show matching brackets when text indicator is over them
let g:rainbow_active = 1
let g:rainbow_conf = {
			\  'guifgs': ['lightblue', 'darkorange2', 'darkcyan',  'firebrick', 'seagreen2', 'magenta'],
			\  'ctermfgs': ['green', 'yellow', 'darkblue', 'magenta'],
			\  
			\ }



" Return to last edit position when opening files (You want this!)
autocmd BufReadPost *
			\ if line("'\"") > 0 && line("'\"") <= line("$") |
			\   exe "normal! g`\"" |
			\ endif
" Remember info about open buffers on close
set viminfo^=%

" No annoying sound on errors
set noerrorbells
set novisualbell
set t_vb=
set tm=500

" Spelling mistakes will be colored up red.
hi SpellBad cterm=underline ctermfg=203 guifg=#ff5f5f
hi SpellLocal cterm=underline ctermfg=203 guifg=#ff5f5f
hi SpellRare cterm=underline ctermfg=203 guifg=#ff5f5f
hi SpellCap cterm=underline ctermfg=203 guifg=#ff5f5f

" NERDTree Mappins
" Open Nerd Tree with <Leader>n
map <Leader>n <esc>:NERDTreeToggle<cr>

" Reveal current file in NERDTree with <Leader>r
map <Leader>r <esc>:NERDTreeFind<cr>

"-------------------------------------------------------------
" AIRLINE
" ------------------------------------------------------------

" " enable tabline
" let g:airline#extensions#tabline#enabled = 1
" let g:airline#extensions#tabline#left_sep = ''
" let g:airline#extensions#tabline#left_alt_sep = ''
" let g:airline#extensions#tabline#right_sep = ''
" let g:airline#extensions#tabline#right_alt_sep = ''

" " enable powerline fonts
" let g:airline_powerline_fonts = 1
" let g:airline_left_sep = ''
" let g:airline_right_sep = ''

" " Switch to your current theme
" " let g:airline_theme = 'onedark'

"-------------------------------------------------------------
" lightline
" ------------------------------------------------------------

let g:lightline = {
            \ 'colorscheme': 'one',
            \ 'separator' : { 'left': "\xee\x82\xb4", 'right': "\xee\x82\xb6" },
            \ 'component_function': {
            \   'cocstatus': 'coc#status',
            \   'method': 'CocCurrentFunction'
            \   },
            \ 'component_expand': {
            \   'buffers': 'lightline#bufferline#buffers'
            \   },
            \ 'component_type': {
            \   'buffers': 'tabsel',
            \   },
            \ 'component': {
            \   'left_end': "%#LightlineLeft_active_0_1#\xee\x82\xb6%#LightlineLeft_active_0#",
            \   'right_end': "%#LightlineRight_active_0_1#\xee\x82\xb4%#LightlineRight_active_0#"
            \   },
            \ 'component_visible_condition': {
            \   'left_end': '0',
            \   'right_end': '0',
            \   },
            \ 'active' : {
            \   'right' : [ [ 'lineinfo', 'method', 'spell', 'method' ], [  'fileencoding', 'fileformat', 'filetype', 'cocstatus'] ],
            \   'left': [ [ 'mode', 'paste' ], [ 'readonly', 'filename', 'modified' ] ]
            \   },
            \ 'inactive' : {
            \   'right' : []
            \   },
            \ }

let g:lightline.component_raw = {'buffers': 1, 'left_end': 1, 'right_end': 1}
" let g:lightline#bufferline#filename_modifier = ':p:t'
let g:lightline#bufferline#read_only = " \uf023"
" let g:lightline#bufferline#unicode_symbols = 1
" let g:lightline#bufferline#min_buffer_count = 1
" let g:lightline#bufferline#unnamed = "New buffer"
let g:lightline#bufferline#enable_nerdfont = 1
let g:lightline#bufferline#clickable = 1
" let g:lightline#bufferline#auto_hide = 2000
let g:lightline#bufferline#show_number  = 1
let g:lightline#bufferline#shorten_path = 1
let g:lightline#bufferline#unnamed      = '[No Name]'
let g:lightline#bufferline#unicode_symbols = 1
let g:lightline#bufferline#enable_devicons = 1



set laststatus=2
" Always show tabs
set showtabline=2

" We don't need to see things like -- INSERT -- anymore
set noshowmode



"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => GUI related
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Set font according to system
if has("mac") || has("macunix")
	set gfn=IBM\ Plex\ Mono:h14,Hack:h14,Source\ Code\ Pro:h15,Menlo:h15
elseif has("win16") || has("win32")
	set gfn=IBM\ Plex\ Mono:h14,Source\ Code\ Pro:h12,Bitstream\ Vera\ Sans\ Mono:h11
elseif has("gui_gtk2")
	set gfn=IBM\ Plex\ Mono\ 14,:Hack\ 14,Source\ Code\ Pro\ 12,Bitstream\ Vera\ Sans\ Mono\ 11
elseif has("linux")
	set gfn=IBM\ Plex\ Mono\ 14,:Hack\ 14,Source\ Code\ Pro\ 12,Bitstream\ Vera\ Sans\ Mono\ 11
elseif has("unix")
	set gfn=Monospace\ 11
endif


""" Key Bindings

" Quit 
imap jj <Esc>
imap jk <Esc>
imap kj <Esc>

" Press the space bar to type the : character in command mode.
nnoremap <space> :

" Pressing the letter o will open a new line below the current one.
" Exit insert mode after creating a new line above or below the current line.
nnoremap o o<esc>
nnoremap O O<esc>

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

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Parenthesis/bracket                    
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"vnoremap $1 <esc>`>a)<esc>`<i(<esc>
"vnoremap $2 <esc>`>a]<esc>`<i[<esc>
"vnoremap $3 <esc>`>a}<esc>`<i{<esc>
"vnoremap $$ <esc>`>a"<esc>`<i"<esc>
"vnoremap $q <esc>`>a'<esc>`<i'<esc>
"vnoremap $e <esc>`>a`<esc>`<i`<esc>

" Map auto complete of (, ", ', [
"inoremap $1 ()<esc>i
"inoremap $2 []<esc>i
"inoremap $3 {}<esc>i
"inoremap $4 {<esc>o}<esc>O
"inoremap $q ''<esc>i
"inoremap $e ""<esc>i

" Nav
" nmap <Up>    <Nop>
" nmap <Down>  <Nop>
" nmap <Left>  <Nop>
" nmap <Right> <Nop>
"
" :nmap <C-S-tab> :tabprevious<cr>
" :nmap <C-tab> :tabnext<cr>
" :nmap <C-t> :tabnew<cr>
" :map <C-t> :tabnew<cr>
" :map <C-S-tab> :tabprevious<cr>
" :map <C-tab> :tabnext<cr>
" :map <C-w> :tabclose<cr>
" :imap <C-S-tab> <ESC>:tabprevious<cr>i
" :imap <C-tab> <ESC>:tabnext<cr>i
" :imap <C-t> <ESC>:tabnew<cr>

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Search visually selected text
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" map /  <Plug>(incsearch-forward)
" map ?  <Plug>(incsearch-backward)
" map g/ <Plug>(incsearch-stay)

" vim-visual
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Vim Visual Multi
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

let g:VM_maps = {}
let g:VM_maps["Add Cursor Down"]    = '<C-S-j>'   " new cursor down
let g:VM_maps["Add Cursor Up"]      = '<C-S-k>'   " new cursor up


" "" vim-floaterm
" let g:floaterm_keymap_new    = '<F7>'
" let g:floaterm_keymap_prev   = '<F8>'
" let g:floaterm_keymap_next   = '<F9>'
" let g:floaterm_keymap_toggle = '<F12>'


" """ WhichKey  

" " Map leader to which_key
" nnoremap <silent> <leader> :silent WhichKey '<Space>'<CR>
" vnoremap <silent> <leader> :silent <c-u> :silent WhichKeyVisual '<Space>'<CR>

" " Create map to add keys to
" let g:which_key_map =  {}
" " Define a separator
" let g:which_key_sep = '→'
" " set timeoutlen=100


" " Not a fan of floating windows for this
" let g:which_key_use_floating_win = 0

" " Change the colors if you want
" highlight default link WhichKey          Operator
" highlight default link WhichKeySeperator DiffAdded
" highlight default link WhichKeyGroup     Identifier
" highlight default link WhichKeyDesc      Function

" " Hide status line
" autocmd! FileType which_key
" autocmd  FileType which_key set laststatus=0 noshowmode noruler
" 			\| autocmd BufLeave <buffer> set laststatus=2 noshowmode ruler

" " Single mappings
" let g:which_key_map['/'] = [ '<Plug>NERDCommenterToggle'  , 'comment' ]
" " let g:which_key_map['t'] = [ ':NERDTreeToggle'  , 'tree' ]
" " let g:which_key_map['e'] = [ ':CocCommand explorer'       , 'explorer' ]
" let g:which_key_map['f'] = [ ':Files'                     , 'search files' ]
" let g:which_key_map['h'] = [ '<C-W>s'                     , 'split below']
" let g:which_key_map['r'] = [ ':Ranger'                    , 'ranger' ]
" let g:which_key_map['S'] = [ ':Startify'                  , 'start screen' ]
" let g:which_key_map['T'] = [ ':Rg'                        , 'search text' ]
" let g:which_key_map['v'] = [ '<C-W>v'                     , 'split right']
" " let g:which_key_map['z'] = [ 'Goyo'                       , 'zen' ]

" " s is for search
" let g:which_key_map.s = {
" 			\ 'name' : '+search' ,
" 			\ '/' : [':History/'     , 'history'],
" 			\ ';' : [':Commands'     , 'commands'],
" 			\ 'a' : [':Ag'           , 'text Ag'],
" 			\ 'b' : [':BLines'       , 'current buffer'],
" 			\ 'B' : [':Buffers'      , 'open buffers'],
" 			\ 'c' : [':Commits'      , 'commits'],
" 			\ 'C' : [':BCommits'     , 'buffer commits'],
" 			\ 'f' : [':Files'        , 'files'],
" 			\ 'g' : [':GFiles'       , 'git files'],
" 			\ 'G' : [':GFiles?'      , 'modified git files'],
" 			\ 'h' : [':History'      , 'file history'],
" 			\ 'H' : [':History:'     , 'command history'],
" 			\ 'l' : [':Lines'        , 'lines'] ,
" 			\ 'm' : [':Marks'        , 'marks'] ,
" 			\ 'M' : [':Maps'         , 'normal maps'] ,
" 			\ 'p' : [':Helptags'     , 'help tags'] ,
" 			\ 'P' : [':Tags'         , 'project tags'],
" 			\ 's' : [':Snippets'     , 'snippets'],
" 			\ 'S' : [':Colors'       , 'color schemes'],
" 			\ 't' : [':Rg'           , 'text Rg'],
" 			\ 'T' : [':BTags'        , 'buffer tags'],
" 			\ 'w' : [':Windows'      , 'search windows'],
" 			\ 'y' : [':Filetypes'    , 'file types'],
" 			\ 'z' : [':FZF'          , 'FZF'],
" 			\ }

" " Register which key map
" call which_key#register('<Space>', "g:which_key_map")


" Control Tabs
" noremap <Tab> :bn<CR>
" noremap <S-Tab> :bp<CR>
" noremap <Leader><Tab> :Bw<CR>
" noremap <Leader><S-Tab> :Bw!<CR>
" noremap <C-t> :tabnew split<CR>
"

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Moving around, tabs, windows and buffers
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Map <Space> to / (search) and Ctrl-<Space> to ? (backwards search)
" map <space> \
map <C-space> /

" Disable highlight when <leader><cr> is pressed
map <silent> <leader><cr> :noh<cr>

" Smart way to move between windows
"map <C-j> <C-W>j
"map <C-k> <C-W>k
"map <C-h> <C-W>h
"map <C-l> <C-W>l

" Close the current buffer
map <leader>bd :Bclose<cr>:tabclose<cr>gT

" Close all the buffers
map <leader>ba :bufdo bd<cr>

map <leader>l :bnext<cr>
map <leader>h :bprevious<cr>

" Useful mappings for managing tabs
map <leader>tn :tabnew<cr>
map <leader>to :tabonly<cr>
map <leader>tc :tabclose<cr>
map <leader>tm :tabmove
map <leader>t<leader> :tabnext

highlight Visual cterm=NONE ctermbg=0 ctermfg=NONE guibg=Grey10

" Opens a new tab with the current buffer's path
" Super useful when editing files in the same directory
map <leader>te :tabedit <C-r>=expand("%:p:h")<cr>/

" Switch CWD to the directory of the open buffer
map <leader>cd :cd %:p:h<cr>:pwd<cr>

" Specify the behavior when switching between buffers
try
	set switchbuf=useopen,usetab,newtab
	set stal=2
catch
endtry

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" MULTIPURPOSE TAB KEY
" Indent if we're at the beginning of a line. Else, do completion.
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
function! InsertTabWrapper()
    let col = col('.') - 1
    if !col || getline('.')[col - 1] !~ '\k'
        return "\<tab>"
    else
        return "\<c-p>"
    endif
endfunction
inoremap <expr> <tab> InsertTabWrapper()
inoremap <s-tab> <c-n>


" Return to last edit position when opening files (You want this!)
au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Editing mappings
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Remap VIM 0 to first non-blank character
map 0 ^

" Move a line of text using ALT+[jk] or Command+[jk] on mac
nmap <M-j> mz:m+<cr>`z
nmap <M-k> mz:m-2<cr>`z
vmap <M-j> :m'>+<cr>`<my`>mzgv`yo`z
vmap <M-k> :m'<-2<cr>`>my`<mzgv`yo`z

if has("mac") || has("macunix")
	nmap <D-j> <M-j>
	nmap <D-k> <M-k>
	vmap <D-j> <M-j>
	vmap <D-k> <M-k>
endif

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Nerd Tree
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Create default mappings
let g:NERDCreateDefaultMappings = 1
" Add spaces after comment delimiters by default
let g:NERDSpaceDelims = 1
" Use compact syntax for prettified multi-line comments
let g:NERDCompactSexyComs = 1
" Align line-wise comment delimiters flush left instead of following code indentation
let g:NERDDefaultAlign = 'left'
" Set a language to use its alternate delimiters by default
let g:NERDAltDelims_java = 1
" Add your own custom formats or override the defaults
let g:NERDCustomDelimiters = { 'c': { 'left': '/**','right': '*/' } }
" Allow commenting and inverting empty lines (useful when commenting a region)
let g:NERDCommentEmptyLines = 1
" Enable trimming of trailing whitespace when uncommenting
let g:NERDTrimTrailingWhitespace = 1
" Enable NERDCommenterToggle to check all selected lines is commented or not 
let g:NERDToggleCheckAllLines = 1

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => vim-multiple-cursors
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:multi_cursor_use_default_mapping=0

" Default mapping
let g:multi_cursor_start_word_key      = '<C-s>'
let g:multi_cursor_select_all_word_key = '<A-s>'
let g:multi_cursor_start_key           = 'g<C-s>'
let g:multi_cursor_select_all_key      = 'g<A-s>'
let g:multi_cursor_next_key            = '<C-s>'
let g:multi_cursor_prev_key            = '<C-p>'
let g:multi_cursor_skip_key            = '<C-x>'
let g:multi_cursor_quit_key            = '<Esc>'

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Nerd Tree
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:NERDTreeWinPos = "right"
let NERDTreeShowHidden=0
let NERDTreeIgnore = ['\.pyc$', '__pycache__']
let g:NERDTreeWinSize=35
map <leader>nn :NERDTreeToggle<cr>
map <leader>nb :NERDTreeFromBookmark<Space>
map <leader>nf :NERDTreeFind<cr>

"""
autocmd BufRead,BufWritePre *.c normal gg=G

iab com /**
      \<CR><CR>
      \
      \<CR><CR>
      \@param[in, out] ...
      \<CR><CR>
      \@return Returns ...
      \<CR><CR>
      \@pre ...
      \<CR>
      \/<Up><Up><Up><Up><Up><Up><Up>

iabbrev #i #include 
iabbrev #d #define  
iabbrev s struct    
iabbrev t typedef

autocmd FileType c iabbrev start #include <stdio.h>
                                     \<CR>
                                     \#include <stdlib.h>
                                     \<CR>
                                     \#include <stdbool.h>
                                     \<CR>
                                     \<CR>
                                     \int main() {
                                     \<CR>
                                     \  printf("hello\n");
                                     \<CR>
                                     \  return 0;
                                     \<CR>
                                     \}

iabbrev fort for (size_t i = 0; i <= NUM; i += 1) {<CR><CR>}<Esc>?NUM<CR>cw
iabbrev forl for (long i = 0; i <= NUM; i += 1) {<CR><CR>}<Esc>?NUM<CR>cw

ab csrl cs1010_read_long(
ab csrd cs1010_read_double(
ab csrll cs1010_read_line(
ab csrw cs1010_read_word(
ab csrs_t cs1010_read_size_t(

ab csrla cs1010_read_long_array(
ab csrda cs1010_read_double_array(
ab csrlla cs1010_read_line_array(
ab csrwa cs1010_read_word_array(

ab cspld cs1010_println_double(
ab cspll cs1010_println_long(
ab cspls cs1010_println_string(
ab csplp cs1010_println_pointer(
ab cspls_t cs1010_println_size_t(

ab cspl cs1010_print_long(
ab cspd cs1010_print_double(
ab cspl cs1010_print_long(
ab csps cs1010_print_string(
ab cspp cs1010_print_pointer(
ab csps_t cs1010_print_size_t(

ab cscs cs1010_clear_screen(



""" NOT ALLOWED IN EXAM!!!!
" For syntastic
set laststatus=2
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_error_symbol = '✗'
let g:syntastic_warning_symbol = '⚠'
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

let g:syntastic_c_checkers = [ 'clang_tidy', 'clang' ]
let g:syntastic_c_compiler = 'clang'
let g:syntastic_c_clang_args = '-Wall -Werror -Wextra -Iinclude'
let g:syntastic_c_clang_tidy_args = '-checks=*'
let g:syntastic_c_compiler_options = '-Wall -Iinclude'
let g:syntastic_c_include_dirs = [ '../include', 'include' ]
let g:syntastic_c_clang_tidy_post_args = ""



