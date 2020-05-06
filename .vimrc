syntax on
set t_Co=256
set term=xterm-256color
set hlsearch
set number
set ts=4
set shiftwidth=4
set showmatch
set paste
set ruler
set mousemodel=extend
set mouse=r
set nocompatible
set expandtab
set laststatus=2
"set encoding=utf-8
set title
set nobackup
set noswapfile
set shell=/bin/bash

set autoindent

noremap <Up> <NOP>
noremap <Down> <NOP>
noremap <Left> <NOP>
noremap <Right> <NOP>

syntax enable
set background=dark
colorscheme solarized

set backspace=2
set backspace=indent,eol,start

set list listchars=tab:.\ ,trail:$
highlight SpecialKey ctermfg=DarkGrey

filetype on
filetype plugin on

match ErrorMsg '\%>80v.\+'

" overwrite
hi CursorLine cterm=NONE ctermbg=darkgrey guibg=darkgray
hi Search cterm=NONE ctermfg=white ctermbg=cyan
hi SignColumn ctermbg=232

execute pathogen#infect()

" vim fugitive
map <F2> :10Gstatus<CR>
map <F3> :Gdiff<CR>

" ctrlp
map <C-l> :CtrlPBuffer<CR>

" statusline
set statusline=%t               "tail of the filename
set statusline+=\ %m            "modified flag
set statusline+=\ %r            "read only flag
set statusline+=\ %y            "filetype
set statusline+=%=              "left/right separator
set statusline+=%l:%c           "cursor row:col
