set shell=/bin/zsh
set shiftwidth=2
set tabstop=2
set expandtab
set textwidth=0
set autoindent
set hlsearch
set clipboard=unnamed
set number
" change directory automatically
" set autochdir

inoremap jj <ESC>
" switch buffer pattern1
nnoremap <silent> [b :bprevious<CR>
nnoremap <silent> ]b :bnext<CR>
nnoremap <silent> [B :bfirst<CR>
nnoremap <silent> ]B :blast<CR>
" switch buffer pattern2
nnoremap <C-N> :bnext<CR>
nnoremap <C-P> :bprev<CR>

" save file opend at buffer
set hidden

syntax on

call plug#begin()
Plug 'ntk148v/vim-horizon'
Plug 'preservim/nerdtree'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'neoclide/coc.nvim', {'branch': 'release'}
" display buffer below a window
Plug 'bling/vim-bufferline'
call plug#end()

" Start NERDTree when Vim is started without file arguments.
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists('s:std_in') | NERDTree | endif

