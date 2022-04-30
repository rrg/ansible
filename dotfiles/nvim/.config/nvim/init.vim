set smartindent
set guicursor=
set scrolloff=8
set number
set relativenumber
set tabstop=4 softtabstop=4
set shiftwidth=4
set expandtab

call plug#begin('~/.vim/plugged')
Plug 'ayu-theme/ayu-vim'
" Telescope
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'
" Treesitter for syntax highlighting
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
call plug#end()

set termguicolors    
let ayucolor="mirage"
colorscheme ayu

let mapleader = " "

" n = mode you are in, i=insert, v=visual, c, t
" nore = no more remaps, recursive
" map = map leader pv to specified keystrokes
nnoremap <leader>pv :Vex<CR>
nnoremap <leader><CR> :so ~/.config/nvim/init.vim<CR> 

nnoremap <C-p> :GFiles<CR>
nnoremap <leader>pf :Files<CR>

" paste, but still keep the content (dont override
" with deleted content"
" xnoremap <leader>p "_dP
" yank to system clipboard
vnoremap <leader>y "+y
" in normal mode, everything you now select will goto
" system clipboard
nnoremap <leader>y "+y
"nmap <leader>Y "+Y


nnoremap <leader>ff <cmd>Telescope find_files<cr>
nnoremap <leader>fg <cmd>Telescope live_grep<cr>
nnoremap <leader>fb <cmd>Telescope buffers<cr>
nnoremap <leader>fh <cmd>Telescope help_tags<cr>

" avoid pressing q all the time
nnoremap Q q
nnoremap q <Nop>

" Move lines up and down
vnoremap J :m '>+1<CR>gv=gv
vnoremap K :m '<-2<CR>gv=gv
