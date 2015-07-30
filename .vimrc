filetype off
call pathogen#infect()
call pathogen#helptags()

set t_Co=256
colorscheme torte

set shiftwidth=4
set tabstop=4
set expandtab
set softtabstop=4
set autoindent

syntax on
filetype plugin indent on
set number
set incsearch
set hlsearch
set cursorline
set wildmenu
set lazyredraw
set showmatch
set ignorecase

" Key remaps

let mapleader=","
nnoremap <up> <nop>
nnoremap <down> <nop>
nnoremap <left> <nop>
nnoremap <right> <nop>
nnoremap <leader>v <Plug>TaskList
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
let g:SuperTabClosePreviewOnPopupClose = 1
set completeopt=menuone,longest,preview

" MBE
let g:miniBufExplForceSyntaxEnable = 1
let g:miniBufExplCheckDupeBufs = 0

" NERDTree
map <leader>n :NERDTreeToggle<CR>


nnoremap <Tab> :MBEbn<CR>
nnoremap <S-Tab> :MBEbp<CR>

