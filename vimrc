" vim, not vi
set nocompatible

" Use utf-8 as standard
:set encoding=utf-8

" set backup dirs
set backupdir=~/.backup//
set directory=~/.backup//

" show cursor position in lower right corner, line number, and commands
set ruler
set number
set showcmd

" get pathogen and use it. There is no other way
execute pathogen#infect()

syntax on

set background=dark

" turn on solarized colorscheme if it exists
" silent colorscheme solarized


let mapleader = ","

" --- EasyMotion
"  "let g:EasyMotion_leader_key = '<Leader>m' " default is <Leader>w
"  hi link EasyMotionTarget ErrorMsg
"  hi link EasyMotionShade  Comment

" Tabs width
set shiftwidth=2
set tabstop=2
" Insert spaces and not tabs
set expandtab
" Auto and smart indent and tabbing
set autoindent
set smartindent    " auto/smart indent
set smarttab                  " tab and backspace are smart
set pastetoggle=<F2>
" ???
set backspace=indent,eol,start
set linebreak

" set folding to indent
set fdm=indent
set foldlevel=50

" Don't highlight matching brackets
let g:loaded_matchparen= 1 

" recording
map Q @q

" Disable any kind of bell
set t_vb=
set noerrorbells
set novisualbell

" supress warning when switching away from an unsaved buffer
set hidden

" Easier escape and save
imap :w <Esc>:w

" Y yanks from cursor until end of line
noremap Y y$

" <CR> enters an empty line above this one
map <CR> O<Esc>j

" Space inserts a space even in normal mode
map <Space> i<Space><Esc>l

" make cursor move as expected with wrapped lines
inoremap <Down> <c-o>gj
inoremap <Up> <c-o>gk
noremap j gj
noremap k gk

set scrolloff=10 " Keep 20 lines above or below cursor if possible

" move cursor to end of line with "+"
map + $

"  searching
set incsearch                 " incremental search
set ignorecase                " search ignoring case
set hlsearch                  " highlight the search
" toggle search highlighting with F4
nmap <F4> :set hls!<CR>

" tabs (I use splits way more actually)
nnoremap H :tabprevious<CR>
nnoremap L :tabnext<CR>
nnoremap T :tabnew<CR>

" navigating buffers
map <tab> :e #<CR>
map ,q :e #<CR>:bd #<CR>


" navigating splits
map <C-h> <C-w>h
map <C-j> <C-w>j
map <C-k> <C-w>k
map <C-l> <C-w>l

" NerdTree
let NERDTreeIgnore = ['\.aux$']
map <C-n> :NERDTreeToggle<CR>

" EasyMotion
map ,f ,,f
map ,F ,,F
map ,w ,,w
map ,W ,,W

"bufsurf -- https://github.com/ton/vim-bufsurf
" map <C-p> :BufSurfForward<CR>
" map <C-o> :BufSurfBack<CR>

" ctrl p -- git://github.com/kien/ctrlp.vim.git
:nmap <leader>b :CtrlPBuffer<CR>

" highight current line and column
:nnoremap <silent> <Leader>c :set cursorline! cursorcolumn!<CR>

"" git gutter -- https://github.com/airblade/vim-gitgutter
nmap <F1> :GitGutterToggle<CR>

" Toggle fold
map K za


" Function to strip white space
function! <SID>StripTrailingWhitespaces()
    " Preparation: save last search, and cursor position.
    let _s=@/
    let l = line(".")
    let c = col(".")
    " Do the business:
    %s/\s\+$//e
    " Clean up: restore previous search history, and cursor position
    let @/=_s
    call cursor(l, c)
endfunction

" fire stripping white space on saving the file
autocmd BufWritePre *.py,*.js :call <SID>StripTrailingWhitespaces()

