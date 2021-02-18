set showcmd

set encoding=utf-8

" {{{ Leader

let mapleader = ","
let maplocalleader = "\\"

" }}}

" Use sane regexes.
nnoremap / /\v
vnoremap / /\v

" Turn off search highlight
nnoremap <leader><space> :noh<cr>

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
Plug 'powerline/powerline'
Plug 'preservim/nerdtree'
Plug 'tommcdo/vim-exchange'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-repeat'
Plug 'tpope/vim-sensible'
Plug 'tpope/vim-surround'
" Plug 'svermeulen/vim-easyclip'
Plug 'vim-airline/vim-airline'
Plug 'whiteinge/diffconflicts'
Plug 'ekalinin/Dockerfile.vim'
Plug 'skanehira/docker-compose.vim'
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
