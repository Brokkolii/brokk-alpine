# brokk-alpine
easy to use alpine-linux docker image

## content
- git
- curl
- nodejs
- npm
- openssl
- fzf
- zsh
    - OH MY ZSH - robbyrussell, af-magic
- vim
    - Vundle
    - tender
    - nerdtree
    - fzf
    - yats 
    - yajs

## usage
```
leader = <space>

nerdtree
<leader> + n => open nerdtree find
<ctrl> + n => nerdtree toggle

fzf
<leader> + f => fuzzy find in files
<leader> + g => fuzzy find in git files
<leader> + b => fuzzy find in buffer
```

## settings

### theme
colorscheme tender
set background=dark

### vim
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

### nerdtree
let NERDTreeShowHidden=1
let NERDTreeQuitOnOpen=1

