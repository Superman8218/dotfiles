set nocompatible              " be iMproved, required
filetype off                  " required
"UTF8 Support
set encoding=utf-8
" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" Plugins
Plugin 'jnurmine/Zenburn'
Plugin 'scrooloose/nerdtree'
Plugin 'Lokaltog/powerline', {'rtp': 'powerline/bindings/vim/'}
Plugin 'nvie/vim-flake8'
Plugin 'scrooloose/syntastic'
Plugin 'jmcantrell/vim-virtualenv'
Plugin 'christoomey/vim-tmux-navigator'
Plugin 'scrooloose/nerdcommenter'
Plugin 'tmhedberg/SimpylFold'
Plugin 'vim-scripts/indentpython.vim'
Plugin 'bitc/vim-bad-whitespace'
Bundle 'Valloric/YouCompleteMe'
Plugin 'tpope/vim-surround'
Plugin 'lokaltog/vim-easymotion'
Plugin 'sirver/ultisnips'
Plugin 'rstacruz/sparkup'
Plugin 'ervandew/supertab'
Plugin 'honza/vim-snippets'

call vundle#end()

set clipboard=unnamedplus

:imap jj <Esc>

:let mapleader = ","

"Set tab to always be 4 spaces
set tabstop=4
set softtabstop=4
set shiftwidth=4

"Color
set t_Co=256
set background=dark
colorscheme solarized

"Python indentation
au BufNewFile,BufRead *.py:
    \ set textwidth=79
    \ set expandtab
    \ set autoindent
    \ set fileformat=unix
filetype plugin indent on

"Syntax checking/highlighting
let python_highlight_all=1
syntax on

"Formatting for web languages
au BufNewFile,BufRead *.js, *.html, *.css:
    \ set tabstop=2
    \ set softtabstop=2
    \ set shiftwidth=2


"Line numbering
set nu

"Vim splits
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>
set splitbelow
set splitright

"Enable folding
set foldmethod=indent
set foldlevel=99
"Folding with spacebar
nnoremap <space> za
