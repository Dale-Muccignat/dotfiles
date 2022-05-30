call plug#begin('~/.vim/plugged')
Plug 'osyo-manga/vim-over'
Plug 'zhou13/vim-easyescape'
Plug 'JuliaEditorSupport/julia-vim'
Plug 'preservim/nerdcommenter'
Plug 'arthurxavierx/vim-unicoder'
Plug 'chrisbra/unicode.vim'
Plug 'jpalardy/vim-slime'
Plug 'mroavi/vim-julia-cell', { 'for': 'julia' }
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
"------------------------------------------------------------------------------
" slime configuration 
"------------------------------------------------------------------------------
let g:slime_target = 'tmux'
let g:slime_default_config = {"socket_name": "default", "target_pane": "{right-of}"}
let g:slime_dont_ask_default = 1

"------------------------------------------------------------------------------
" julia-cell configuration
"------------------------------------------------------------------------------
" Use '##' tags to define cells
let g:julia_cell_delimit_cells_by = 'tags'

" map <Leader>jr to run entire file
nnoremap <Leader>jr :JuliaCellRun<CR>

" map <Leader>jc to execute the current cell
nnoremap <Leader>jc :JuliaCellExecuteCell<CR>

" map <Leader>jC to execute the current cell and jump to the next cell
nnoremap <Leader>jC :JuliaCellExecuteCellJump<CR>

" map <Leader>jl to clear Julia screen
nnoremap <Leader>jl :JuliaCellClear<CR>

" map <Leader>jp and <Leader>jn to jump to the previous and next cell header
nnoremap <Leader>jp :JuliaCellPrevCell<CR>
nnoremap <Leader>jn :JuliaCellNextCell<CR>

" map <Leader>je to execute the current line or current selection
nmap <Leader>je <Plug>SlimeLineSend
xmap <Leader>je <Plug>SlimeRegionSend
