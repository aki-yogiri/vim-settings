""""""""""""""""""""""""""""
" Vim Settings
"
""""""""""""""""""""""""""""
if &compatible
  set nocompatible
endif

""""""""""""""""""""""""""""
" Encoding Settings
"
""""""""""""""""""""""""""""
set fileencoding=utf-8
scriptencoding utf-8
set encoding=utf-8
set fileencodings=utf-8,euc-jp,cp932,sjis

""""""""""""""""""""""""""""
" Seach Settings
"
""""""""""""""""""""""""""""
set ignorecase
set smartcase
set incsearch
set wrapscan
set hlsearch

""""""""""""""""""""""""""""
" Edit Settings
"
""""""""""""""""""""""""""""
set backspace=indent,eol,start
set virtualedit=block
set cursorline
set cursorcolumn
set clipboard+=unnamed

""""""""""""""""""""""""""""
" Display Settings
"
""""""""""""""""""""""""""""
set list
set listchars=tab:>-,trail:_
set number
set showcmd
set wildmenu
set laststatus=2
set updatetime=100

""""""""""""""""""""""""""""
" Beep Settings
"
""""""""""""""""""""""""""""
set t_vb=
set visualbell
set noerrorbells

""""""""""""""""""""""""""""
" Buckup Settings
"
""""""""""""""""""""""""""""
set nobackup
set noswapfile

""""""""""""""""""""""""""""
" Keymapping Settings
"
""""""""""""""""""""""""""""
noremap j gj
noremap k gk

""""""""""""""""""""""""""""
" Auto comment Settings
"
""""""""""""""""""""""""""""
augroup vim_auto_comment
	autocmd!
	autocmd BufEnter * setlocal formatoptions-=r
	autocmd BufEnter * setlocal formatoptions-=o
augroup END

""""""""""""""""""""""""""""
" Auto comment Settings
"
""""""""""""""""""""""""""""
filetype plugin indent on
augroup vim_filetype_tabsetting
	autocmd!
	autocmd FileType vim        setlocal sw=4 ts=4 sts=4 noet
	autocmd FileType go         setlocal sw=4 ts=4 sts=4 noet
	autocmd FileType proto      setlocal sw=4 ts=4 sts=4 et
	autocmd FileType javascript setlocal sw=2 ts=2 sts=2 et
	autocmd FileType typescript setlocal sw=2 ts=2 sts=2 et
	autocmd FileType sql        setlocal sw=2 ts=2 sts=2 et
	autocmd FileType yaml       setlocal sw=2 ts=2 sts=2 et
augroup END

""""""""""""""""""""""""""""
" Plugin Settings
"
""""""""""""""""""""""""""""
call plug#begin('~/.vim/plugged')

Plug 'w0rp/ale'
Plug 'fatih/vim-go', { 'tag' : '*', 'do' : 'GoUpdateBinaries' }
Plug 'itchyny/lightline.vim'
Plug 'jonathanfilip/vim-lucius'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
Plug 'airblade/vim-gitgutter'
Plug 'tpope/vim-fugitive'
Plug 'leafgarland/typescript-vim'
Plug 'tmrekk121/prev-md.vim'

call plug#end()

""""""""""""""""""""""""""""
" Linter Settings
"
""""""""""""""""""""""""""""
let g:ale_fixers = {
	\  '*': ['remove_trailing_lines', 'trim_whitespace'],
	\  'javascript': ['eslint'],
	\}

""""""""""""""""""""""""""""
" Color Settings
"
""""""""""""""""""""""""""""
syntax on

let g:lucius_style='dark'
let g:lucius_contrast_bg='high'
let g:lucius_contrast='high'

colorscheme lucius
set background=dark

let g:lightline = {
	\ 'colorscheme': 'PaperColor',
	\ 'active': {
	\   'left': [ [ 'mode', 'paste' ],
	\             [ 'gitbranch', 'readonly', 'filename', 'modified' ] ]
	\ },
	\ 'component_function': {
	\   'gitbranch': 'FugitiveHead'
	\ },
	\ }
