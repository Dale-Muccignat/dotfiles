call plug#begin('~/.vim/plugged')
Plug 'osyo-manga/vim-over'
Plug 'zhou13/vim-easyescape'
Plug 'JuliaEditorSupport/julia-vim'
Plug 'preservim/nerdcommenter'
Plug 'arthurxavierx/vim-unicoder'
filetype plugin on
let mapleader=","
let g:NERDCreateDefaultMappings = 1
let g:NERDCustomDelimiters = { 'julia' : { 'left' : '#', 'right' : '' } }
let g:easyescape_chars = { "j": 1, "k": 1 }
let g:easyescape_timeout = 100
cnoremap jk <ESC>
cnoremap kj <ESC>
set laststatus=2
set statusline=%f
set statusline+=%=
set statusline+=\ %l:%c
hi StatusLine ctermfg=DarkBlue ctermbg=White
call plug#end()

