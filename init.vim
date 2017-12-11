set nocp
set nu rnu
set tabstop=2 softtabstop=2 expandtab shiftwidth=2 smarttab
set ai
set mouse=a
set ic
syntax on 
set hlsearch
set nowrap
colorscheme industry
filetype off

" Key mappings
let g:mapleader = ";"
map <Leader>e :NERDTree<CR> "Invoke NERDTree 
nmap <Leader>s :NERDTreeFind<CR> "Synchonise NERDTree with current file
nmap <Leader>z <C-W>_<C-W><Bar><CR> "Zoom in on window
nmap <Leader>b <C-W>=<CR> "Equalise windows
nmap <Leader>t :sp <Bar> te<CR><C-w><C-r> "Invoke terminal emulator in a horizontal split below current window
tnoremap <Esc> <C-\><C-n> "Get out of editing mode in a terminal


"Plugins
"git clone https://github.com/VundleVim/Vundle.vim.git ~/.config/nvim/bundle/Vundle.vim
"Linux
set rtp+=~/.config/nvim/bundle/Vundle.vim/
"Mac
"set rtp+=~/.config/nvim/bundle/Vundle/
call vundle#begin()
Bundle 'gmarik/vundle'
Bundle 'scrooloose/nerdtree'
"Then go :PluginInstall to get the plugins.
call vundle#end()

filetype plugin indent on 

