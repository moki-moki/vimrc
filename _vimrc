syntax on 

set belloff=all

set number
set laststatus=2
" Do not save backup files.
set nobackup
"rendering
set ttyfast
" Do not let cursor scroll below or above N number of lines when scrolling.
set scrolloff=10
" White space.
set wrap
set tabstop=2 softtabstop=2
set shiftwidth=2

" search stuff.
set incsearch
set ignorecase

set smartcase
set smartindent

" Show partial command you type in the last line of the screen.
set showcmd
" Show the mode you are on the last line.
set showmode
" Show matching words during a search.
set showmatch

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
Plug 'NLKNguyen/papercolor-theme'

call plug#end()

set colorcolumn=80
set t_Co=256
set termguicolors

"Theme
"colorscheme molokai
"let g:rehash256 = 1
"let g:molokai_original = 1

colorscheme PaperColor
set background=dark

let g:newtrw_winsize = 25
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

" ctrlp
let g:ctrlp_user_command = ['.git/', 'git --git-dir=%s/.git ls-files -oc --exclude-standard']

let g:prettier#autoformat = 0
autocmd BufWritePre *.js,*.jsx,*.mjs,*.ts,*.tsx,*.css,*.less,*.scss,*.json,*.graphql,*.md,*.vue,*.yaml,*.html PrettierAsync

"coc prettier command fix
command! -nargs=0 Prettier :CocCommand prettier.formatFile

"Starting nerd tree on start
autocmd VimEnter * NERDTree

" mapping shit
nnoremap <leader>n :NERDTreeFocus<CR>
nnoremap <C-n> :NERDTree<CR>
nnoremap <C-t> :NERDTreeToggle<CR>
nnoremap <C-f> :NERDTreeFind<CR>

