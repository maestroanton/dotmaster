" Visual settings
set number relativenumber
set cursorline
syntax on

" Plugins
call plug#begin("$HOME/.config/nvim/")
Plug 'vim-airline/vim-airline'
Plug 'ap/vim-css-color'
call plug#end()

" Shortcuts
let mapleader = '\'
nnoremap <leader>\ :noh

" Working settings
set nocompatible

" Autocompile
autocmd BufWritePost ~/.local/src/dwm/config.h !cd ~/.local/src/dwm/; sudo make install

autocmd BufWritePost ~/.local/src/dwmblocks/config.h !cd ~/.local/src/dwmblocks/; sudo make install && { killall -q dwmblocks;setsid dwmblocks }

