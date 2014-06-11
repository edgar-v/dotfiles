filetype off
call pathogen#infect()
call pathogen#helptags()
syntax on
filetype on
filetype plugin indent on
set number
set incsearch
set hlsearch
set cursorline
set wildmenu
set lazyredraw
set showmatch

" Key remaps

let mapleader=","
nnoremap <up> <nop>
nnoremap <down> <nop>
nnoremap <left> <nop>
nnoremap <right> <nop>
nnoremap j gj
nnoremap k gk
nnoremap <leader>e $
nnoremap <leader>b ^
map <leader>td <Plug>TaskList
map <leader>g :GundoToggle<CR>
nnoremap <leader><space> :nohlsearch<CR>

" Folding
set foldmethod=indent
set foldlevel=99

" Pep8
let g:pep8_map='<leader>8'

" Supertab
au FileType python set omnifunc=pythoncomplete#Complete
let g:SuperTabDefaultCompletionType = "context"
set completeopt=menuone,longest,preview
