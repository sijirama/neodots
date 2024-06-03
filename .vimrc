" General Settings
set number                           " Show line numbers
set relativenumber                   " Show relative line numbers
set nowrap                           " Disable line wrapping
set ignorecase                       " Case-insensitive searching
set smartcase                        " Override 'ignorecase' if search pattern contains capital letters
set showcmd                          " Show incomplete commands
set incsearch                        " Incremental search
set autowrite                        " Automatically write the buffer when switching buffers or closing Vim
set autoindent                       " Auto-indent new lines
set tabstop=4                        " Number of spaces that a <Tab> in the file counts for
set softtabstop=4                    " Number of spaces that a <Tab> counts for while editing
set shiftwidth=4                     " Size of an indent
set expandtab                        " Use spaces instead of tabs
set cursorline                       " Highlight the current line
" set cursorcolumn                     " Highlight the current column
set laststatus=2                     " Always show status line

set nocompatible
let mapleader=' ' "use space for leader key
filetype off "required for Vundle
" Cursor behaviour
:autocmd InsertEnter,InsertLeave * set cul!

set ruler
set noerrorbells
set visualbell
set showmode
set splitbelow splitright
" Text searching options
set showmatch
" Syntax and formatting
syntax on
set encoding=utf-8
set formatoptions=tcqrn1
set hidden
" Tabs and indenting
set smartindent
set tabstop=4
set shiftwidth=4
set softtabstop=4
set expandtab
set noshiftround
set scrolloff=3
" Command line completion options
set showcmd
set wildmenu
" Colors
set background=dark
let g:solarized_termcolors=256
let g:solarized_termtrans=1


" Remap jk to escape from insert mode
inoremap jk <Esc>
 
" Easy file navigation with netrw using space-e
nnoremap <Space>e :e <C-R>=expand("%:p:h")<CR>/
nnoremap <Space>E :Explore<CR>

" Key mappings for easy navigation between windows
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

" Enable mouse support
set mouse=a

" Syntax highlighting and filetype detection
syntax on
filetype plugin indent on

" Highlight search results
set hlsearch

" Highlight matching parentheses
set showmatch

" Enable clipboard support
set clipboard=unnamedplus

" Plugins
" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" Vundle plugin to manage vundle, required
Plugin 'VundleVim/Vundle.vim'

" Add custom plugins here
Plugin 'tpope/vim-fugitive'
Plugin 'tpope/vim-surround'
Plugin 'tpope/vim-commentary'
Plugin 'morhetz/gruvbox'
Plugin 'christoomey/vim-tmux-navigator'

call vundle#end()
filetype plugin indent on "required

" Call after plugin is loaded
colorscheme gruvbox
