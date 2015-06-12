set nocompatible
set background=dark
colors molokai

" Vundle Plugins
filetype off
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'gmarik/Vundle.vim'
Plugin 'jelera/vim-javascript-syntax'
Plugin 'pangloss/vim-javascript'
Plugin 'nathanaelkane/vim-indent-guides'
Plugin 'terryma/vim-smooth-scroll'

call vundle#end()
filetype plugin indent on

" Indent guides
"autocmd VimEnter * :IndentGuidesEnable
let g:indent_guides_auto_colors = 0
let g:indent_guides_guide_size = 1
autocmd VimEnter,Colorscheme * :hi IndentGuidesEven ctermbg=black

" Whitespace
autocmd BufWritePre * :%s/\s\+$//e
set list
set listchars=tab:>-

" Disable autocomment
autocmd FileType * setlocal formatoptions-=c formatoptions-=r formatoptions-=o

" Wrap cursor
set whichwrap+=<,>,h,l,[,]

" 80 character mark
set colorcolumn=80

" Char position
set ruler

" Search highlight
set hls

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Files and backups
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Turn backup off
set nobackup
set nowb
set noswapfile

" Allow switching of buffers without saving
set hidden

set smartcase
set number
set title
set wrap!
syntax on
set nofoldenable

" Highlight JSON as JavaScript
au BufRead,BufNewFile *.json setfiletype javascript

" Tab widths
autocmd FileType * set tabstop=4|set shiftwidth=4
autocmd FileType ruby set tabstop=2|set shiftwidth=2
set expandtab

" Smooth mouse scroll
set mouse=a
map <ScrollWheelUp> <C-Y><C-Y>
map <ScrollWheelDown> <C-E><C-E>

