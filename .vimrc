set nocp
set rnu
set tabstop=2 softtabstop=2 expandtab shiftwidth=2 smarttab
set ai
set mouse=a
set ic
syntax on 
set hlsearch
set nowrap

:nmap <silent> ;e :NERDTree<CR>
:nmap <silent> ;s :NERDTreeFind<CR>

"find any line with whitespace, 'function' and a '{' at the end, select that
"line, go to the end and match the brace, then fold it
:nmap <silent> ;f :g:^\s*function.*{$:exe "norm V$%zf"<CR>

"git clone https://github.com/gmarik/vundle.git ~/.vim/bundle/vundle
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

Bundle 'gmarik/vundle'
Bundle 'scrooloose/nerdtree'
"Then go :PluginInstall to get the plugins.

colorscheme industry
