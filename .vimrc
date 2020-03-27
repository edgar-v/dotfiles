filetype off


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
set scrolloff=5
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

" ctags
set tags=./tags;/
nnoremap <leader>j <C-]>
nnoremap <leader>k <C-T>

function ClangFormat()
    let l:lines="all"
    py3f /usr/share/vim/addons/syntax/clang-format-6.0.py
endfunction

map <C-L> :call ClangFormat()<CR>
imap <C-L> :call ClangFormat()<CR>


nnoremap <F5> :e <C-R>=expand('%:p:h') . '/../tester.txt' <CR><CR>v$hy :e tester/modules/<C-r>"/c/tester.c <CR>

" Folding
set foldmethod=indent
set foldlevel=99


autocmd BufNewFile,BufRead *SCons* set filetype=scons
autocmd BufNewFile,BufRead *.frag,*.vert set filetype=glsl

" Make Vim jump to the last position when reopening a file
if has("autocmd")
    au BufReadPost * if line("'\"") > 0 && line("'\"") <= line("$")
        \| exe "normal! g'\"" | endif
endif
