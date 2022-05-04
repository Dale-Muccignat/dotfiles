call plug#begin('~/.vim/plugged')
Plug 'osyo-manga/vim-over'
Plug 'zhou13/vim-easyescape'
Plug 'JuliaEditorSupport/julia-vim'
Plug 'preservim/nerdcommenter'
filetype plugin on
let g:NERDCustomDelimiters = { 'julia' : { 'left' : '#', 'right' : '' } }
let g:easyescape_chars = { "j": 1, "k": 1 }
let g:easyescape_timeout = 100
cnoremap jk <ESC>
cnoremap kj <ESC>
call plug#end()

