set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

Bundle 'christoomey/vim-tmux-navigator'

" Configure Classpath
"let g:syntastic_java_javac_classpath = "~/development/assignment/jars/jsoup-1.9.2.jar"
Bundle 'scrooloose/nerdcommenter'

"Code folding
Plugin 'tmhedberg/SimpylFold'
let g:SimpylFold_docstring_preview=1

"Remap escape key
:imap jj <Esc>

"Python indentation
au BufNewFile,BufRead *.py:
    \ set tabstop=4
    \ set softtabstop=4
    \ set shiftwidth=4
    \ set textwidth=79
    \ set expandtab
    \ set autoindent
    \ set fileformat=unix
set nrformats=
filetype plugin indent on
Plugin 'vim-scripts/indentpython.vim'

"Extra whitespace
Plugin 'bitc/vim-bad-whitespace'

"UTF8 Support
set encoding=utf-8

"Auto-complete
Bundle 'Valloric/YouCompleteMe'
let g:ycm_autoclose_preview_window_after_completion=1
map <leader>g  :YcmCompleter GoToDefinitionElseDeclaration<CR>

"python with virtualenv support
Plugin 'jmcantrell/vim-virtualenv'

"Syntax checking/highlighting
Plugin 'nvie/vim-flake8'
Plugin 'scrooloose/syntastic'
let python_highlight_all=1
syntax on


"Formatting for web languages
au BufNewFile,BufRead *.js, *.html, *.css:
    \ set tabstop=2
    \ set softtabstop=2
    \ set shiftwidth=2

"Set mapleader
:let mapleader = ","

"Color
Plugin 'jnurmine/Zenburn'
colorscheme elflord

"Line numbering
set nu

"Powerline
Plugin 'Lokaltog/powerline', {'rtp': 'powerline/bindings/vim/'}

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

call vundle#end()
