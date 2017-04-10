set number

set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" added nerdtree
Plugin 'scrooloose/nerdtree.git'
let NERDTreeShowBookmarks=1

" nerd tree automatically close after you open a file
" let g:NERDTreeQuitOnOpen = 1

" use the F2 button to open or hide file explorer 
map <F2> :NERDTreeToggle<CR>
" automaticlly open the nerd tree
autocmd vimenter * NERDTree
" let cursor on the current document when open this file instead of the nerd
" tree
autocmd VimEnter * wincmd p

Plugin 'altercation/vim-colors-solarized'  " New line!!

Plugin 'Valloric/YouCompleteMe'

" All of your Plugins must be added before the following line
call vundle#end()            " required

" Some settings to enable the theme:
set number        " Show line numbers
syntax enable     " Use syntax highlighting
set background=dark
let g:solarized_termcolors = 256
colorscheme solarized


" no recursive mapping the f3, f4 to gT, gt for walking through the tabs
nnoremap <f4> gT
nnoremap <f3> gt
inoremap <f4> gT
inoremap <f3> gt
cnoremap <f4> gT
cnoremap <f3> gt


filetype plugin indent on    " required
