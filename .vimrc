vnoremap . :norm.<CR>
inoremap jk <ESC>
let mapleader="\<Space>"
filetype plugin indent on
syntax on
set encoding=utf-8
execute pathogen#infect()
set tabstop=8 softtabstop=0 expandtab shiftwidth=4 smarttab

set history=700
" Substitute globally on lines
set gdefault

" Keep cursor 5 lines from window borders when scrolling
set scrolloff=5

" Always show the status line
set laststatus=2

" Status line
set statusline=%t   " File name of the file in the buffer
set statusline+=%m  " Modified flag
set statusline+=%5{v:register} "Which active register
set statusline+=%=  " Align to the right from now on
set statusline+=[%{fugitive#head()}]   " Current branch
set statusline+=\ \  " Blank space
set statusline+=%y   " Type of file in the buffer
set statusline+=%5l  " Current line
set statusline+=,    " Comma
set statusline+=%c   " Current Column
set statusline+=/    " Slash
set statusline+=%-5L " Total lines
set statusline+=%p%% " Percentage through the file

" Open vertical splits to the right
set splitright
" Open horizontal splits below
set splitbelow

" Show tab bar if there are at least two tabs
set showtabline=1

" make Y behave like D and C
nnoremap Y y$

" Resize vertical split
nnoremap <silent> <Leader>> :exe "vertical resize +5"<CR>
nnoremap <silent> <Leader>< :exe "vertical resize -5"<CR>

" Copy/paste to system clipboard
vmap <Leader>y "+y
vmap <Leader>d "+d
nmap <Leader>yy "+yy
nmap <Leader>p "+p
nmap <Leader>P "+P
vmap <Leader>p "+p
vmap <Leader>P "+P

" Interpret numbers like 07 as decimal, not octal
set nrformats=hex

" Leader mappings
nnoremap <Leader>w :w<CR>
nnoremap <Leader>q :q<CR>

" Open file explorer
nnoremap <Leader>e :e.<CR>
nnoremap <Leader>o :o<Space>

" Generate ctags
nnoremap <C-c> :! ctags -R .<CR><CR>
nnoremap <leader>. :CtrlPTag<cr>
nnoremap <silent> <Leader>b :TagbarToggle<CR>

" Default to display line rather than actual line
nnoremap k gk
nnoremap j gj
nnoremap gk k
nnoremap gj j

" Disable markdown folding
let g:vim_markdown_folding_disabled = 1

" Use GFM for tables etc.
let vim_markdown_preview_github=1
