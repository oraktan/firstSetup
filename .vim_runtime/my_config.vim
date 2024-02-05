set expandtab
set tabstop=4
set softtabstop=4
set shiftwidth=4
 
set autoindent
set textwidth=80
 
colorscheme darkblue
  
iab süs ${}<left>
iab com # <Esc>A
iab ilk #!/bin/bash
set number relativenumber
set pastetoggle=<F2>
iab echo echo ""<left>
iab if if [[ ]]; then<CR>  <CR>fi<Esc><up><up><right><right><right>
iab { {}<left>
iab for for ((i=0; i<; i++))<CR>do<CR> echo " "<CR>done
