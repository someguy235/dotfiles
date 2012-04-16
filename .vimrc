" vim mode
" ========
set nocompatible

set number        "show line numbers

" indentations
" ============
set autoindent
set smartindent
set tabstop=2
set shiftwidth=2
set expandtab
set ruler
set foldmethod=indent
set foldnestmax=10
set foldlevel=10

" reselect visual blocks after indentation
vnoremap < <gv
vnoremap > >gv

"
" Line wrap and visual whitespace
" ===============================
set list listchars=tab:\ \ ,trail:·   " Display tabs and trailing spaces visually
set nowrap                            " Don't wrap lines
set linebreak                         " Wrap lines at convenient points

" search
" ======
set hlsearch
set incsearch

filetype plugin on
filetype plugin indent on

" Pathogen Initialization
" =======================

" This loads all the plugins in ~/.vim/bundle
" Use tpope's pathogen plugin to manage all other plugins
runtime bundle/vim-pathogen/autoload/pathogen.vim
call pathogen#infect()
call pathogen#helptags()

" Syntax
" ======
syntax on
syntax enable
let g:solarized_termcolors=256
set t_Co=256
colorscheme solarized
set background=dark

" Toggle paste
" ============
nnoremap <F6> :set invpaste paste?<CR>
set pastetoggle=<F6>
set showmode

set laststatus=2
let mapleader='\'
set statusline=                                 " Override default
set statusline+=\ %f\ %m\ %r                    " Show filename/path
set statusline+=%=                              " Set right-side status info after this line
set statusline+=%l/%L:%v                        " Set <line number>/<total lines>:<column>
set statusline+=\                               " Set ending space


