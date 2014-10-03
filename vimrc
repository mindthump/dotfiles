execute pathogen#infect()
se hls
se ic
se wrap
se ai
se ts=4
se sw=4
se et

syntax on

vmap  <expr>  h        DVB_Drag('left')   
vmap  <expr>  l        DVB_Drag('right') 
vmap  <expr>  j        DVB_Drag('down') 
vmap  <expr>  k        DVB_Drag('up')  

" Shortcut to rapidly toggle `set list`
nmap <leader>l :set list!<CR>

" Symbols for tabstops and EOLs
set listchars=tab:▸\ ,eol:¬
