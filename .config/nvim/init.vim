" Visual settings
set number relativenumber
set cursorline
set showcmd 
set smartcase
syntax on

" Plugins
call plug#begin("$HOME/.config/nvim/")
Plug 'vim-airline/vim-airline'
Plug 'ap/vim-css-color'
call plug#end()

" Working settings
set nocompatible
set autoindent

" Autocompile
autocmd BufWritePost ~/.local/src/dwm/config.h !cd ~/.local/src/dwm/; sudo make install

autocmd BufWritePost ~/.local/src/dwmblocks/config.h !cd ~/.local/src/dwmblocks/; sudo make install && killall dwmblocks; dwmblocks & echo done 

" Tab navigation
nnoremap > :bn
nnoremap < :bp
nnoremap >> :bl
nnoremap << :bf
nnoremap <> :bd

" Overall shorcuts
nnoremap cmt i/**/<Esc>hi<Space><Space><Esc>i
