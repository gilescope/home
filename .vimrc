set nocompatible              " be iMproved, required
filetype off                  " required

"Use system clipboard by default
set clipboard=unnamed

set tabstop=4 softtabstop=0 expandtab shiftwidth=4

set shell=bash
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

" turn hybrid line numbers on
set number relativenumber
set nu rnu

"CTRL-t to toggle tree view with CTRL-t
nmap <silent> <C-t> :NERDTreeToggle<CR>



""close NERDtree if that is the last window left
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif



let g:autofmt_autosave = 1

"enable mouse support
set mouse=a

call plug#begin('~/.vim/plugged')
"Plug 'rust-lang/rust.vim'
"Plug 'junegunn/seoul256.vim'
"Plug 'junegunn/goyo.vim'
"Plug 'junegunn/limelight.vim'
Plug 'ntpeters/vim-better-whitespace'
Plug 'zxqfl/tabnine-vim'
"Plug 'Valloric/YouCompleteMe'
Plug 'vim-syntastic/syntastic'
Plug 'scrooloose/nerdtree'
call plug#end()
