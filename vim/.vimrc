set showcmd

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
" set listchars=tab:▸\ ,eol:¬,extends:❯,precedes:❮

call plug#begin('~/.vim/plugged')
Plug 'altercation/vim-colors-solarized'
Plug 'easymotion/vim-easymotion'
Plug 'godlygeek/tabular'
Plug 'junegunn/vim-easy-align'
Plug 'powerline/powerline'
<<<<<<< HEAD
Plug 'preservim/nerdtree'
Plug 'rizzatti/dash.vim'
=======
Plug 'preservim/nerdcommenter'
Plug 'preservim/nerdtree'
Plug 'stephpy/vim-yaml'
>>>>>>> f57b4d559c6120414ff7607550c78b367043d26f
Plug 'tommcdo/vim-exchange'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-sensible'
Plug 'tpope/vim-surround'
Plug 'vim-airline/vim-airline'
Plug 'whiteinge/diffconflicts'
<<<<<<< HEAD
=======
" Mac only
" Plug 'zerowidth/vim-copy-as-rtf'
>>>>>>> f57b4d559c6120414ff7607550c78b367043d26f
call plug#end()

let &t_SI.="\e[5 q"
let &t_SR.="\e[4 q"
let &t_EI.="\e[1 q"

" Don't use the .netrwhist
let g:netrw_dirhistmax = 0

let g:NERDTreeShowHidden=1
