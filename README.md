<div align="center">
  <h1>brokk-alpine</h1>
  <h5>easy to use alpine-linux docker image</h5>
</div>

## content
- git
- curl
- nodejs
- npm
- openssl
- fzf
- zsh & theme
- vim & theme & plugins

## use
### quickuse
```
docker run -it --rm -v %cd%:/workdir brokkolii/brokk-alpine
```

### complete setup
- get project
```
git clone https://github.com/Brokkolii/brokk-alpine.git
cd brokk-alpine
```
- create .env for git credentials
```
cp .env-example .env
```
- add your credentials to .env

- add start folder to PATH

### advanced
- get latest version
```
docker pull brokkolii/brokk-alpine:latest
```
- if you are behind a proxy use the ENV-Variables `HTTP_PROXY`, `HTTPS_PROXY` and `NO_PROXY`
- with git settings from .env file
```
docker run -it --rm --env-file %env_file% -v %cd%:/workdir brokkolii/brokk-alpine
```

## vim
### keybindings
```
leader = <space>

nerdtree
<leader> + n => open nerdtree find
<ctrl> + n => nerdtree toggle

fzf
<leader> + f => fuzzy find in files
<leader> + g => fuzzy find in git files
<leader> + b => fuzzy find in buffer

replacing
<leader> + s => searchString / replaceString
<leader> + r => word under cursor / replaceString
```

### settings

#### theme
```
colorscheme tender
set background=dark
```

#### vim
```
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
```

#### nerdtree
```
let NERDTreeShowHidden=1
let NERDTreeQuitOnOpen=1
```

## plans
- prettier
- language server (js, ts)
