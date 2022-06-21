call plug#begin('~/.vim/plugged')
Plug 'osyo-manga/vim-over'
Plug 'zhou13/vim-easyescape'
Plug 'JuliaEditorSupport/julia-vim'
Plug 'preservim/nerdcommenter'
"Plug 'arthurxavierx/vim-unicoder'
"Plug 'chrisbra/unicode.vim'
Plug 'jpalardy/vim-slime'
"Plug 'mroavi/vim-julia-cell', { 'for': 'julia' }
Plug 'terryma/vim-multiple-cursors'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'JuliaEditorSupport/julia-vim'
"Plug 'autozimu/LanguageClient-neovim', {'branch': 'next', 'do': 'bash install.sh'}
"Plug 'roxma/nvim-completion-manager'  " optional
call plug#end()
"COC
inoremap <silent><expr> <TAB>
      \ pumvisible() ? "\<C-n>" :
      \ CheckBackspace() ? "\<TAB>" :
      \ coc#refresh()
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"
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
silent! source $VIMRUNTIME/defaults.vim
