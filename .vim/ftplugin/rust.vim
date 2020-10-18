set autoindent

" 100character line klimit
match ErrorMsg '\%>100v .\+'

let g:ctrlp_custom_ignore = 'target\|git'


colorscheme atom-dark
hi StatusLine ctermbg=white ctermfg=black
hi StatusLineNC ctermbg=white ctermfg=black
hi VertSplit ctermbg=white ctermfg=black

nmap <leader>a v<Plug>(coc-codeaction-selected)
