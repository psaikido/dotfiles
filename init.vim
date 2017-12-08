set nocp
set nu rnu
set tabstop=2 softtabstop=2 expandtab shiftwidth=2 smarttab
set ai
set mouse=a
set ic
syntax on 
set hlsearch
set nowrap

:map ;e :NERDTree<CR>
:nmap ;s :NERDTreeFind<CR>

"git clone https://github.com/VundleVim/Vundle.vim.git ~/.config/nvim/bundle/Vundle.vim
set rtp+=~/.config/nvim/bundle/Vundle.vim/
call vundle#rc()

Bundle 'gmarik/vundle'
Bundle 'scrooloose/nerdtree'
"Then go :PluginInstall to get the plugins.

colorscheme industry