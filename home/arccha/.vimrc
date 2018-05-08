set nocompatible
filetype off
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'
call vundle#end()
filetype plugin indent on

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
set shiftwidth=4
set softtabstop=4
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

