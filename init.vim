set nocp
set nu rnu
set tabstop=2 softtabstop=2 expandtab shiftwidth=2 smarttab
set ai
set mouse=a
set ic
syntax on 
set hlsearch
set nowrap

let g:mapleader = ";"
map <Leader>e :NERDTree<CR>
nmap <Leader>s :NERDTreeFind<CR>
nmap <Leader>t :te<CR>
tnoremap <Esc> <C-\><C-n>

"git clone https://github.com/VundleVim/Vundle.vim.git ~/.config/nvim/bundle/Vundle.vim

"Linux
"set rtp+=~/.config/nvim/bundle/Vundle.vim/
"Mac
set rtp+=~/.config/nvim/bundle/Vundle/
call vundle#rc()

Bundle 'gmarik/vundle'
Bundle 'scrooloose/nerdtree'
"Then go :PluginInstall to get the plugins.

colorscheme industry
