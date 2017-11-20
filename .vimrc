set nocp
set nu
set tabstop=4 softtabstop=4 expandtab shiftwidth=4 smarttab
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

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

Bundle 'gmarik/vundle'
Bundle 'scrooloose/nerdtree'


