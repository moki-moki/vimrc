syntax on 

set nocompatible
set belloff=all
set number
set laststatus=2
set nobackup
set noswapfile
set ttyfast
set lazyredraw
set scrolloff=10
set wrap
set tabstop=2 softtabstop=2
set shiftwidth=2
set ignorecase
set smartcase
set incsearch
set showmatch
set showcmd
set showmode
set hidden 
set signcolumn=yes

highlight ColorColumn ctermbg=0 guibg=lightgray 

call plug#begin('~/.vim/plugged')

"COC
Plug 'neoclide/coc.nvim', {'branch': 'release'}
"nerd tree
Plug 'preservim/nerdtree'
"nerd comment
Plug 'preservim/nerdcommenter'
"Fuzz finder
Plug 'kien/ctrlp.vim'
"Prettier
Plug 'prettier/vim-prettier', { 'do': 'yarn install' }
"Jsx stuff 
Plug 'maxmellon/vim-jsx-pretty'
"theme
"Plug 'NLKNguyen/papercolor-theme'
Plug 'morhetz/gruvbox'

call plug#end()

"Theme
set t_Co=256
colorscheme	gruvbox 
set background=dark

let g:newtrw_winsize = 80
let g:ctrlp_use_caching = 0

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

