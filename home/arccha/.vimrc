set nocompatible
filetype off
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'Chiel92/vim-autoformat'
Plugin 'tomtom/tcomment_vim'
Plugin 'mattn/emmet-vim'

Plugin 'VundleVim/Vundle.vim'
call vundle#end()
filetype indent plugin on

""" General

" Use system clipboard
set clipboard=unnamedplus
" Timeout on keycodes, but not on mappings
set notimeout ttimeout ttimeoutlen=200
" Syntax highlighting
syntax on
" Relative line numbers with absolute current line
set number relativenumber
" Use spaces instead of tabs
set shiftwidth=2
set softtabstop=2
set expandtab
" Put backup/undo files in /tmp
set backupdir=/tmp
set undodir=/tmp
" Try to be smart about cases
set smartcase
set ignorecase
" Highlight search results
set hlsearch
set incsearch
set magic
" Better command line completion
set wildmenu
" Show partial commands
set showcmd
" Allow backspacing over autoindent, line breaks and start of insert action
set backspace=indent,eol,start
set autoindent
" Display cursor position
set ruler
" Ask to save changes instead of failing
set confirm

" Autoformat
let g:formatdef_php_formatter = '"php-formatter"'
let g:formatters_php = ['php_formatter']

