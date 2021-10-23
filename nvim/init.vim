"  _      _____ _       __     ___    _ _____  _____ _____ 
" | |    |_   _| |      \ \   / / |  | |  __ \|  __ \_   _|
" | |      | | | |       \ \_/ /| |  | | |__) | |__) || |  
" | |      | | | |        \   / | |  | |  ___/|  ___/ | |  
" | |____ _| |_| |____     | |  | |__| | |    | |    _| |_ 
" |______|_____|______|    |_|   \____/|_|    |_|   |_____|
"                                                          

""""""""""""""""""""""""""""""
" 		General settings 
""""""""""""""""""""""""""""""

set mouse=a 				" enable mouse
set tabstop=4
set shiftwidth=4
set number
set ignorecase
set encoding=UTF-8
" disable backup
set nobackup
set nowb
set noswapfile

syntax on

" Enable copying from vim to clipboard
if has('win32')
	set clipboard=unnamed
else
	set clipboard=unnamedplus
endif

""""""""""""""""""""""""""""""""
" 			Plugin
""""""""""""""""""""""""""""""""

call plug#begin('~/.config/nvim/plugged')
" Theme
	Plug 'joshdick/onedark.vim', 					" Dark theme

" File browser
	Plug 'preservim/nerdtree',
	Plug 'ryanoasis/vim-devicons',

" Status bar
	Plug 'vim-airline/vim-airline',
	Plug 'vim-airline/vim-airline-themes',

" File search
	Plug 'junegunn/fzf', 
		\ { 'do': { -> fzf#install() } } 			" Fuzzy finder 
	Plug 'junegunn/fzf.vim'

" Code syntax highlight
	Plug 'yuezk/vim-js' 							" Javascript
	Plug 'MaxMEllon/vim-jsx-pretty' 				" JSX/React
	Plug 'jackguo380/vim-lsp-cxx-highlight'			" C++ syntax

" Code intellisense
	Plug 'neoclide/coc.nvim', {'branch': 'release'} " Language server 
	Plug 'jiangmiao/auto-pairs'
	Plug 'mattn/emmet-vim'

call plug#end()

"""""""""""""""""""""""""""""""""""""
" 			Plugin settings
"""""""""""""""""""""""""""""""""""""

" Set theme
colorscheme onedark

" Disable automatic comment in newline
autocmd FileType * setlocal formatoptions-=c formatoptions-=r formatoptions-=o

" Other setting
for setting_file in split(glob(stdpath('config').'/settings/*.vim'))
	execute 'source' setting_file
endfor
