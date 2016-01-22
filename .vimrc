set nocompatible	" Use Vim defaults (much better!)
filetype off
set rtp+=~/Library/Python/2.7/lib/python/site-packages/powerline/bindings/vim
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'Valloric/YouCompleteMe'
call vundle#end()
filetype plugin indent on

syntax enable
syntax on

set bs=indent,eol,start		" allow backspacing over everything in insert mode
set ai			" always set autoindenting on
set nobackup		" keep a backup file
set viminfo='20,\"50	" read/write a .viminfo file, don't store more
			" than 50 lines of registers
set history=50		" keep 50 lines of command line history
set ruler		" show the cursor position all the time
set nu			" show the number of lines
set ts=4
set expandtab
set softtabstop=4
set cindent shiftwidth=4
set autoindent shiftwidth=4
set smartindent
set directory-=.
set laststatus=2
set showcmd

set incsearch
set hlsearch
set autoread
colorscheme default

let mapleader=","
inoremap jj <ESC>
inoremap <leader>w <ESC>:w<CR>
nnoremap <leader>w :w<CR> 
inoremap <leader>f <C-x><C-f>
inoremap <leader>p <ESC>"+p
vmap <leader>y "+y

if has("gui_running")
	set background=light
else
	set background=dark
endif


" Don't wake up system with blinking cursor:
" http://www.linuxpowertop.org/known.php
let &guicursor = &guicursor . ",a:blinkon0"
set t_Co=256
