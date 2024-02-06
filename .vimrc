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
set cursorcolumn                     " Highlight the current column
set laststatus=2                     " Always show status line

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
