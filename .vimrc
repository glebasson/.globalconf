set number

" vim-plug auto install
if empty(glob('~/.vim/autoload/plug.vim'))
    silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
          \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
    autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

call plug#begin('~/.vim/plugged')
    Plug 'tpope/vim-fugitive'
call plug#end()

" tab settings
set tabstop=4
set shiftwidth=4
set smartindent

" pretty look
syntax on
colorscheme industry
set list
set lcs=tab:>-,trail:-


" From Learn VIM the Hard way
let mapleader = ' '
nnoremap <leader>ev :vsplit $MYVIMRC<CR>
nnoremap <leader>sv :source $MYVIMRC<CR>

" Search common
set hlsearch
set incsearch



