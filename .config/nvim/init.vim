" Visual settings
set number relativenumber
set cursorline
syntax on

" Shortcuts
let mapleader = '\'
nnoremap <leader>\ :noh

" Working settings
set nocompatible

" Autocompile
autocmd BufWritePost *.h execute "!sudo make install %"


