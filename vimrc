set nocompatible    " vim, not vi

:set encoding=utf-8 " Use utf-8 as standard

" set backup dirs
set backupdir=~/.backup//
set directory=~/.backup//

set ruler           " position of cursor
set number          " line number
set showcmd         " commands
set hidden          " supress warning when switching away from an unsaved buffer

" get pathogen and use it. There is no other way
execute pathogen#infect()

syntax on           " colors!
set t_Co=256        " We will assume we're in a terminal that has 256 colors to work with

" Tabs width
set shiftwidth=4
set tabstop=4
set expandtab       " Insert spaces and not tabs
set autoindent      " auto indent
set smartindent     " smart indent
set smarttab        " tab and backspace are smart
filetype indent on  " mostly for its use with `=`
set backspace=indent,eol,start  " Makes backspace work like in most other programs
set linebreak       " don't makes line breaks in the middle of a word
set incsearch       " incremental search

" set folding to indent
set fdm=indent
set foldlevel=50

set scrolloff=10    " Keep 10 lines above or below cursor if possible


let g:loaded_matchparen= 1  " Don't highlight matching brackets

" Disable any kind of bell
set t_vb=
set noerrorbells
set novisualbell


" For use when creating own shortcuts
let mapleader = ","

" recording -- qq to record, and Q to play it
map Q @q

" Easier escape and save
imap :w <Esc>:w

" Y yanks from cursor until end of line
noremap Y y$

" move cursor to end of line with "+"
map + $
" toggle search highlighting with F4
nmap <F4> :set hls!<CR>

" navigating buffers
map <tab> :e #<CR>

" highight current line and column
:nnoremap <silent> <Leader>c :set cursorline! cursorcolumn!<CR>


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

" git gutter -- https://github.com/airblade/vim-gitgutter
nmap <F1> :GitGutterToggle<CR>

" rainbow parentheses -- https://github.com/kien/rainbow_parentheses.vim
" Turn them on
au VimEnter * RainbowParenthesesToggle
au Syntax * RainbowParenthesesLoadRound
au Syntax * RainbowParenthesesLoadSquare
au Syntax * RainbowParenthesesLoadBraces

" Emnet -- https://github.com/mattn/emmet-vim/
" Only in html and css
let g:user_emmet_install_global = 0
autocmd FileType html,css EmmetInstall
