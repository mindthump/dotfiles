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
Plug 'junegunn/vim-easy-align'
Plug 'tpope/vim-sensible'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-fugitive'
Plug 'altercation/vim-colors-solarized'
Plug 'easymotion/vim-easymotion'
Plug 'zerowidth/vim-copy-as-rtf'
" Plug 'powerline/powerline'
Plug 'vim-airline/vim-airline'
Plug 'tommcdo/vim-exchange'
Plug 'godlygeek/tabular'
Plug 'rizzatti/dash.vim'
Plug 'preservim/nerdcommenter'
call plug#end()

let g:NERDTreeShowHidden=1
