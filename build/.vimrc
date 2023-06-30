
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
Plugin 'prettier/vim-prettier'
call vundle#end()
filetype plugin indent on

if (has("termguicolors"))
  set termguicolors
endif

"tender as theme
try
  colorscheme tender
  set background=dark
catch
  colorscheme default
endtry

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

"QUICK REPLACE
"for a visual selection
 vnoremap <leader>s :s///gc<Left><Left><Left><Left>
 "for the whole file
 nnoremap <leader>s :%s///gc<Left><Left><Left><Left>
 "replace word under cursor for whole file
 nnoremap <leader>r :%s/<C-r><C-w>//gc<Left><Left><Left>

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
