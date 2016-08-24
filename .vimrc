set nocompatible              " be iMproved, required
filetype off                  " required
syntax on

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

Bundle 'christoomey/vim-tmux-navigator'
"Bundle 'scrooloose/syntastic'
" Configure Classpath
"let g:syntastic_java_javac_classpath = "~/development/assignment/jars/jsoup-1.9.2.jar"
Bundle 'scrooloose/nerdcommenter'

call vundle#end()

:imap jj <Esc>

filetype plugin indent on
set tabstop=4
set shiftwidth=4
set expandtab
set nrformats=
:let mapleader = ","

"Colors
set background=dark
colorscheme solarized
