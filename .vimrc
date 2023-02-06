call plug#begin()
Plug '~/.vim/plugged/gruvbox'
Plug '~/.vim/plugged/vim-tmux-navigator'
Plug '~/.vim/plugged/nerdtree'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
call plug#end()

" Better navigation
nnoremap <C-u> <C-u>zz
nnoremap <C-d> <C-d>zz

nnoremap <space>s :so %<cr>
nnoremap <space>e :NERDTree<cr>
nnoremap <C-p> :Files <cr>

let g:NERDTreeShowHidden='1'

set nocompatible
filetype plugin indent on  " Load plugins according to detected filetype.
syntax on                  " Enable syntax highlighting.
set background=dark
set number
set relativenumber
set autoindent             " Indent according to previous line.
set noexpandtab		   " Dont expand tabs
set softtabstop =4         " Tab key indents by 4 spaces.
set shiftwidth  =4         " >> indents by 4 spaces.
set shiftround             " >> indents to next multiple of 'shiftwidth'.
set backspace   =indent,eol,start  " Make backspace work as you would expect.
set hidden                 " Switch between buffers without having to save first.
set laststatus  =2         " Always show statusline.
set display     =lastline  " Show as much as possible of the last line.
set showmode               " Show current mode in command-line.
set showcmd                " Show already typed keys when more are expected.
set incsearch              " Highlight while searching with / or ?.
set hlsearch               " Keep matches highlighted.
set ttyfast                " Faster redrawing.
set lazyredraw             " Only redraw when necessary.
set splitbelow             " Open new windows below the current window.
set splitright             " Open new windows right of the current window.
set cursorline		    " Find the current line quickly.
set nohlsearch
set incsearch
set timeoutlen	=500
set ttimeoutlen =5
set noesckeys
set encoding	=utf-8
set nowrap

colorscheme gruvbox
