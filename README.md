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
basic use *(only cmd)*
```
docker run -it --rm -v %cd%:/workdir brokkolii/brokk-alpine /bin/zsh
```

with git creds from .env file
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
- proxies
