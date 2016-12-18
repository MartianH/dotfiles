syntax on
set number
set laststatus=2
"colorscheme onedark
"let g:neocomplete#enable_at_startup = 1
let g:lightline = {
	\ 'colorscheme': 'powerline',
	\ }

if &compatible
  set nocompatible
endif
set runtimepath+=~/.bin/dein.vim

call dein#begin("~/.bin/dein.vim/plugins")

call dein#add("~/.bin/dein.vim")
call dein#add('Shougo/neocomplete.vim')
call dein#add('mattn/emmet-vim')
call dein#add('tpope/vim-fugitive.vim')
call dein#add('itchyny/lightline.vim')
call dein#add('flazz/vim-colorschemes.vim')
call dein#add('scrooloose/nerdtree')

call dein#end()

filetype plugin indent on
