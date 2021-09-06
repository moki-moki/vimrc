syntax enable 

set nocompatible
set belloff=all
set number
set nobackup
set noswapfile
set scrolloff=10
set wrap
set tabstop=4 softtabstop=4
set shiftwidth=4
set ignorecase
set smartcase
set incsearch
set showmatch
set showcmd
set showmode
set hidden 
set signcolumn=yes
set termguicolors
set laststatus=2

highlight ColorColumn ctermbg=0 guibg=darkblue

call plug#begin('~/.vim/plugged')

"COC
Plug 'neoclide/coc.nvim'
"nerd tree
Plug 'preservim/nerdtree'
"nerd comment
Plug 'preservim/nerdcommenter'
"Fuzz finder
Plug 'kien/ctrlp.vim'
"Prettier
Plug 'prettier/vim-prettier'
"Jsx stuff 
Plug 'maxmellon/vim-jsx-pretty'
"Theme
Plug 'sainnhe/everforest'
"Line light
Plug 'itchyny/lightline.vim'
"js stuff
Plug 'pangloss/vim-javascript'

call plug#end()

"Theme
set t_Co=256
colorscheme everforest 
let g:everforest_background = 'hard'
set background=dark

let g:airline_theme = 'everforest'
let g:lightline = {'colorscheme' : 'everforest'}
let g:everforest_ui_contrast = 'high'

"highlight for jsx
let g:vim_jsx_pretty_highlight_close_tag = 1

" COC config
let g:coc_global_extensions = [
  \	'coc-snippets',
  \ 'coc-pairs',
  \ 'coc-tsserver',
  \ 'coc-eslint', 
  \ 'coc-prettier', 
  \ 'coc-json', 
  \ 'coc-css',
  \ ]

" ctrlp ifnore
let g:ctrlp_custom_ignore = 'node_modules\|DS_Store\|git'
let g:ctrlp_user_command = ['.git/', 'git --git-dir=%s/.git ls-files -oc --exclude-standard']
let g:ctrlp_clear_cache_on_exit = 0

let g:prettier#autoformat = 0

autocmd BufWritePre *.js,*.jsx,*.mjs,*.ts,*.tsx,*.css,*.scss,*.json,*.md,*.yaml,*.html PrettierAsync

"coc prettier command fix
command! -nargs=0 Prettier :CocCommand prettier.formatFile

"Starting nerd tree on start
autocmd VimEnter * NERDTree

" mapping shit
nnoremap <leader>n :NERDTreeFocus<CR>
nnoremap <C-n> :NERDTree<CR>
nnoremap <C-t> :NERDTreeToggle<CR>
nnoremap <C-f> :NERDTreeFind<CR>

