"basic configuration
syntax on
set t_Co=256
set term=xterm-256color
set hlsearch
set number
set ts=4
set shiftwidth=4
set showmatch
set ruler
set mousemodel=extend
set mouse=r
set nocompatible
set expandtab
set laststatus=2
set encoding=utf-8
set title
set nobackup
set noswapfile
set shell=/bin/bash
set autoindent
set ff=unix

" disable arrows
noremap <Up> <NOP>
noremap <Down> <NOP>
noremap <Left> <NOP>
noremap <Right> <NOP>

" theme
syntax enable
set background=dark
colorscheme solarized

set backspace=2
set backspace=indent,eol,start

" highlight special characters
set list listchars=tab:.\ ,trail:$
highlight SpecialKey ctermfg=DarkGrey

" file type configs
filetype on
filetype plugin on

" 80 character line klimit
match ErrorMsg '\%>80v.\+'

" overwrite
hi CursorLine cterm=NONE ctermbg=darkgrey guibg=darkgray
hi Search cterm=NONE ctermfg=black ctermbg=yellow
hi SignColumn ctermbg=232

" paste mode toggle
set pastetoggle=<F9>
noremap  <F9>   :set invpaste paste?<CR>
inoremap <F9>   <C-O>:set invpaste<CR>

execute pathogen#infect()

" vim fugitive
map <F2> :10Gstatus<CR>
map <F3> :Gdiff<CR>

" terminal
nmap <leader>t :below term<CR>

" ctrlp
map <C-l> :CtrlPBuffer<CR>
set runtimepath^=~/.vim/bundle/ctrlp.vim

" statusline
set statusline=
set statusline+=\ %f            "relative file path
set statusline+=\ %m            "modified flag
set statusline+=\ %r            "read only flag
set statusline+=\ %y            "filetype
set statusline+=%=              "left/right separator
set statusline+=%l:%c           "cursor row:col

