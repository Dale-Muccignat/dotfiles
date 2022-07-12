call plug#begin('~/.vim/plugged')
Plug 'osyo-manga/vim-over'
Plug 'zhou13/vim-easyescape'
Plug 'JuliaEditorSupport/julia-vim'
Plug 'preservim/nerdcommenter'
Plug 'jpalardy/vim-slime'
Plug 'terryma/vim-multiple-cursors'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'JuliaEditorSupport/julia-vim'
Plug 'tpope/vim-fugitive'
"Plug 'autozimu/LanguageClient-neovim', {'branch': 'next', 'do': 'bash install.sh'}
"Plug 'roxma/nvim-completion-manager'  " optional
Plug 'luochen1990/rainbow'
"COC
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
call plug#end()
let g:rainbow_active = 1 "set to 0 if you want to enable it later via :RainbowToggle
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
"set laststatus=2
"set statusline=%f
"set statusline+=%=
"set statusline+=\ %l:%c
"hi StatusLine ctermfg=DarkBlue ctermbg=White
silent! source $VIMRUNTIME/defaults.vim
let g:airline_powerline_fonts = 1
let g:airline_theme='murmur'
