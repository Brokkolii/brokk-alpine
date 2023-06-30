
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
Plugin 'neoclide/coc.nvim'
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

"PRETTIER
"format on save
autocmd BufWritePre *.js,*.jsx,*.mjs,*.ts,*.tsx,*.css,*.less,*.scss,*.json,*.graphql,*.md,*.vue,*.yaml,*.html Prettier

"COC

" Some servers have issues with backup files, see #649
set nobackup
set nowritebackup

" Having longer updatetime (default is 4000 ms = 4s) leads to noticeable
" delays and poor user experience
set updatetime=300

" Always show the signcolumn, otherwise it would shift the text each time
" diagnostics appear/become resolved
set signcolumn=yes

" Use tab for trigger completion with characters ahead and navigate
" NOTE: There's always complete item selected by default, you may want to
" enable
" no select by `"suggest.noselect": true` in your configuration file
" NOTE: Use command ':verbose imap <tab>' to make sure tab is not mapped by
" other plugin before putting this into your config
inoremap <silent><expr> <TAB>
	\ coc#pum#visible() ? coc#pum#next(1) :
    \ CheckBackspace() ? "\<Tab>" :
    \ coc#refresh()
inoremap <expr><S-TAB> coc#pum#visible() ? coc#pum#prev(1) : "\<C-h>"

" Make <CR> to accept selected completion item or notify
" coc.nvim to format
" <C-g>u breaks current undo, please make your own choice
inoremap <silent><expr> <CR> coc#pum#visible() ? coc#pum#confirm()
	\: "\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"

function! CheckBackspace()
	abort
	let col = col('.') - 1
	return !col || getline('.')[col - 1] =~# '\s'
endfunction

inoremap <silent><expr> <CR> coc#pum#confirm()
