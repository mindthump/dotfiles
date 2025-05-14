" These are for vim, defaults in nvim
set showcmd
set encoding=utf-8
set smarttab

" Stop the fucking beeping
set vb t_vb=

" Stop from starting with everything folded
set nofoldenable

" For CircuitPython
set noswapfile

" Leader
let mapleader = ","
let maplocalleader = "\\"

" Use sane regexes.
nnoremap / /\v
vnoremap / /\v

set ignorecase
set smartcase

set number
set relativenumber

" Tabs & Indents
set tabstop=2       " Number of visual spaces per TAB
set softtabstop=2   " Number of spaces in tab when editing
set shiftwidth=2   " Used when indenting with >> and <<
set shiftround      " Use multiple of shiftwidth when indenting with '<' and '>'
set expandtab       " Tabs are spaces
set copyindent      " copy the previous indentation on autoindenting

" TOGGLES
" Search highlight
nnoremap <leader><space> :noh<cr>
" Wrap
nnoremap <leader>w :set wrap!<CR>
" List
set nolist
nmap <leader>l :set list!<CR>
set showbreak=↪\ 
set listchars=tab:▸\ ,eol:↲,nbsp:␣,trail:•,extends:⟩,precedes:⟨

call plug#begin('~/.vim/plugged')
Plug 'altercation/vim-colors-solarized'
Plug 'easymotion/vim-easymotion'
Plug 'godlygeek/tabular'
Plug 'junegunn/vim-easy-align'
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
Plug 'junegunn/vim-peekaboo'
Plug 'airblade/vim-rooter'
Plug 'NoahTheDuke/vim-just' " justfiles
Plug 'chrisbra/unicode.vim'
Plug 'elzr/vim-json'
Plug 'wellle/targets.vim'
call plug#end()

" What is this? No idea...
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
