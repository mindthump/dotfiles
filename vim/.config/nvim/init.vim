set runtimepath^=~/.vim runtimepath+=~/.vim/after
let &packpath = &runtimepath
set mouse=a

set showcmd

set encoding=utf-8

" Stop the fucking beeping
set vb t_vb=

" For CircuitPython
set noswapfile

" {{{ Leader

let mapleader = ","
let maplocalleader = "\\"

" }}}

" Use sane regexes.
nnoremap / /\v
vnoremap / /\v

set ignorecase
set smartcase

set tabstop=2       " Number of visual spaces per TAB
set softtabstop=2   " Number of spaces in tab when editing
set shiftwidth=2   " Used when indenting with >> and <<
set shiftround      " Use multiple of shiftwidth when indenting with '<' and '>'
set expandtab       " Tabs are spaces
set smarttab        " Insert tabs on the start of a line according to shiftwidth, not tabstop
set copyindent      " copy the previous indentation on autoindenting

" Turn off search highlight
nnoremap <leader><space> :noh!<cr>

" Toggle wrap
nnoremap <leader>w :set wrap!<CR>

" 'list' mode: start off, flip ",l", change visible markers 
set nolist
nmap <leader>l :set list!<CR>
set showbreak=↪\ 
set listchars=tab:▸\ ,eol:↲,nbsp:␣,trail:•,extends:⟩,precedes:⟨

call plug#begin('~/.vim/plugged')
Plug 'altercation/vim-colors-solarized'
Plug 'easymotion/vim-easymotion'
Plug 'godlygeek/tabular'
Plug 'junegunn/vim-easy-align'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'powerline/powerline'
Plug 'preservim/nerdtree'
Plug 'tomtom/tcomment_vim'
Plug 'tommcdo/vim-exchange'
Plug 'tpope/vim-repeat'
Plug 'tpope/vim-sensible'
Plug 'tpope/vim-surround'
Plug 'vim-airline/vim-airline'
Plug 'whiteinge/diffconflicts'
Plug 'ekalinin/Dockerfile.vim'
Plug 'skanehira/docker-compose.vim'
Plug 'pedrohdz/vim-yaml-folds'
call plug#end()

set number
set relativenumber

let &t_SI.="\e[5 q"
let &t_SR.="\e[4 q"
let &t_EI.="\e[1 q"

" Don't use the .netrwhist
let g:netrw_dirhistmax = 0

let g:NERDTreeShowHidden=1

au BufNewFile,BufRead Jenkinsfile setf groovy

set modeline

" Send to Marked2
nnoremap <leader>m :silent !open -a Marked\ 2.app '%:p'<cr>

