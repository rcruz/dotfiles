set tabstop=4
set shiftwidth=4
set expandtab
set t_Co=256 
set number
set nowrap
set noswapfile
colorscheme molokai
autocmd BufRead,BufNewFile *.json setfiletype javascript

" Vundle
set nocompatible               " be iMproved
filetype off                   " required!
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

Bundle 'gmarik/vundle'
Bundle "pangloss/vim-javascript"

filetype plugin indent on     " required!
