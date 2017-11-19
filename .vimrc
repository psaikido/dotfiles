set nu
set sw=4
set tabstop=4
set expandtab
set ai
set mouse=a
set ic
syntax on
set hlsearch
set nowrap

:nmap <silent> ;e :NERDTree<CR>
:nmap <silent> ;g <C-W>_<C-W><Bar><CR>
:nmap <silent> ;b <C-W>=<CR>

"find any line with whitespace, 'function' and a '{' at the end, select that
"line, go to the end and match the brace, then fold it
:nmap <silent> ;f :g:^\s*function.*{$:exe "norm V$%zf"<CR>

