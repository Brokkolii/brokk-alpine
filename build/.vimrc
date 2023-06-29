
"Vundle Setup and Plugins 
set nocompatible
filetype off
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'
Plugin 'jacoborus/tender.vim'
Plugin 'preservim/nerdtree'
Plugin 'junegunn/fzf'
Plugin 'junegunn/fzf.vim'
Plugin 'herringtondarkholme/yats.vim'
Plugin 'othree/yajs.vim'
call vundle#end()
filetype plugin indent on

if (has("termguicolors"))
  set termguicolors
endif

"tender as theme
colorscheme tender
set background=dark

"vim settings
set number
set relativenumber
set hlsearch
syntax on
set autoindent
set smartindent
set tabstop=4
set shiftwidth=4
set encoding=utf-8
set scrolloff=5

"SPACE = <Leader>
let mapleader = "\<Space>"
nnoremap <Space> <Nop>


"NERDTREE
"open with leader + n
map <Leader>n :NERDTreeFind<CR>
"toggle with ctrl + n
nnoremap <C-n> :NERDTreeToggle<CR>
"settings
let NERDTreeShowHidden=1
let NERDTreeQuitOnOpen=1

"FZF
"leader + f => files
map <Leader>f :FZF<CR>
"leader + b => buffer
map <Leader>b :Buffers<CR>
"leader + g => git files
map <Leader>g :GFiles<CR>
