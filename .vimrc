" DON'T PUT ANYTHING IN YOUR VIMRC THAT YOU DON'T UNDERSTAND.
" Vimrc should be customized to suit your needs you might endup
" making your vim experience more complicated than needed.

set number relativenumber " show line numbers
syntax on " enable syntax highlighting
set ruler " show file status in a bottom status bar
set tabstop=4 " number of visual spaces per TAB
set softtabstop=4  " number of spaces in tab when editing
set expandtab  " tabs are spaces
set showcmd " show command in the bottom bar
set cursorline " highlight cursor line
filetype indent on " load file specific indent
set wildmenu " autocomplete for commands like ide intellisense
set showmatch " highlight matching brackets/braces/prenthesis
set lazyredraw " don't redraw in between executions of macros
set incsearch " search as characters are entered
set hlsearch " highlight search matches
set clipboard=unnamedplus " link yanking/deleting/pasting operations to the system clipboard
set encoding=utf-8
nnoremap <C-y> "+y
vnoremap <C-y> "+y
nnoremap <C-p> "+gP
vnoremap <C-p> "+gP

