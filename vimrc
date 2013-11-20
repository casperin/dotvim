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
" supress warning when switching away from an unsaved buffer
set hidden

" get pathogen and use it. There is no other way
execute pathogen#infect()

syntax on

" We will assume we're in a terminal that has 256 colors to work with
set t_Co=256

" turn on solarized colorscheme if it exists
" ...



let mapleader = ","

" --- EasyMotion
"  "let g:EasyMotion_leader_key = '<Leader>m' " default is <Leader>w


" Tabs width
set shiftwidth=4
set tabstop=4
" Insert spaces and not tabs
set expandtab
" Auto and smart indent and tabbing
set autoindent
set smartindent    " auto/smart indent
set smarttab                  " tab and backspace are smart
set pastetoggle=<F2>
filetype indent on
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


" Easier escape and save
imap :w <Esc>:w

" Y yanks from cursor until end of line
noremap Y y$

set scrolloff=10 " Keep 20 lines above or below cursor if possible

" move cursor to end of line with "+"
map + $

"  searching
set incsearch                 " incremental search
set ignorecase                " search ignoring case
set hlsearch                  " highlight the search
" toggle search highlighting with F4
nmap <F4> :set hls!<CR>

" navigating buffers
map <tab> :e #<CR>


" navigating splits
map <C-h> <C-w>h
map <C-j> <C-w>j
map <C-k> <C-w>k
map <C-l> <C-w>l


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

" For use with auto complete ctrl-x ctrl-o
autocmd FileType javascript set omnifunc=javascriptcomplete#CompleteJS
autocmd FileType html set omnifunc=htmlcomplete#CompleteTags
autocmd FileType css set omnifunc=csscomplete#CompleteCSS



"""""""""""
" Plugins "
"""""""""""


" NerdTree
let NERDTreeIgnore = ['\.aux$']
map <C-n> :NERDTreeToggle<CR>
"Set default width for NERDTree panel
"let g:NERDTreeWinSize = 50

" EasyMotion
map ,f ,,f
map ,F ,,F
map ,w ,,w
map ,W ,,W

" ctrl p -- git://github.com/kien/ctrlp.vim.git
:nmap <leader>b :CtrlPBuffer<CR>

" highight current line and column
:nnoremap <silent> <Leader>c :set cursorline! cursorcolumn!<CR>

" git gutter -- https://github.com/airblade/vim-gitgutter
nmap <F1> :GitGutterToggle<CR>


" rainbow parentheses -- https://github.com/kien/rainbow_parentheses.vim
" Turn them on
au VimEnter * RainbowParenthesesToggle
au Syntax * RainbowParenthesesLoadRound
au Syntax * RainbowParenthesesLoadSquare
au Syntax * RainbowParenthesesLoadBraces
