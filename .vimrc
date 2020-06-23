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
" Auto comment Settings
"
""""""""""""""""""""""""""""
augroup vim_auto_comment
	autocmd!
	autocmd BufEnter * setlocal formatoptions-=r
	autocmd BufEnter * setlocal formatoptions-=o
augroup END

""""""""""""""""""""""""""""
" Plugin Settings
"
""""""""""""""""""""""""""""
call plug#begin('~/vimfiles/plugged')

Plug 'fatih/vim-go', { 'tag' : '*' }

Plug 'jonathanfilip/vim-lucius'

call plug#end()

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
