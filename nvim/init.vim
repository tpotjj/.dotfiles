set tabstop=4 softtabstop=4
set shiftwidth=4
set expandtab
set smartcase
set smartindent
set exrc
set guicursor=
set relativenumber
set nu
set nohlsearch
set hidden
set noerrorbells
set nowrap
set noswapfile
set nobackup
set undodir=~/.vim/undodir
set undofile
set incsearch
set termguicolors
set scrolloff=8
set noshowmode
set completeopt=menuone,noinsert,noselect
set signcolumn=yes
set colorcolumn=80

set cmdheight=2

highlight ColorColumn ctermbg=0 guibg=lightgrey

call plug#begin('~/.vim/plugged')

" Gruvbox theme
Plug 'gruvbox-community/gruvbox'

" Telescope
Plug 'BurntSushi/ripgrep'
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'

" lsp
Plug 'neovim/nvim-lspconfig'

" cmp
Plug 'hrsh7th/cmp-nvim-lsp'
Plug 'hrsh7th/cmp-buffer'
Plug 'hrsh7th/cmp-path'
Plug 'hrsh7th/cmp-cmdline'
Plug 'hrsh7th/nvim-cmp'

" For vsnip users.
Plug 'hrsh7th/cmp-vsnip'
Plug 'hrsh7th/vim-vsnip'

" Flutter
Plug 'akinsho/flutter-tools.nvim'

" Isort && Auto Pairs
Plug 'brentyi/isort.vim'
Plug 'jiangmiao/auto-pairs'

" Python lint/fix
Plug 'dense-analysis/ale'
Plug 'Vimjas/vim-python-pep8-indent'

call plug#end()

colorscheme gruvbox

lua require 'jj'

set completeopt=menu,menuone,noselect

let mapleader = " "

nnoremap <leader>h :wincmd h<CR>
nnoremap <leader>j :wincmd j<CR>
nnoremap <leader>k :wincmd k<CR>
nnoremap <leader>l :wincmd l<CR>


nnoremap <silent> <Leader>+ :vertical resize +5<CR>
nnoremap <silent> <Leader>- :vertical resize -5<CR>

" Fix files with prettier, and then ESLint.
let g:ale_linters = {'python': ['flake8', 'pydocstyle']}
" Equivalent to the above.
let g:ale_fixers = {'python': ['black', 'isort', 'remove_trailing_lines', 'trim_whitespace']}
" Fix on save
let g:ale_fix_on_save = 1