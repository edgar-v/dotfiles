filetype off
call pathogen#infect()
call pathogen#helptags()

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
let c_space_errors = 1

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
let g:miniBufExplShowBufNumbers = 0
nnoremap <Tab> :MBEbn<CR>
nnoremap <S-Tab> :MBEbp<CR>

" NERDTree
map <leader>n :NERDTreeToggle<CR>


nnoremap <Tab> :MBEbn<CR>
nnoremap <S-Tab> :MBEbp<CR>

autocmd BufNewFile,BufRead *.frag,*.vert set filetype=glsl
