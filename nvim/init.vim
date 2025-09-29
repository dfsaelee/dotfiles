set number
set relativenumber
set mouse=a
" Use % to jump
set showmatch

" Highlight Line/search
set cursorline
" set hlsearch
" set incsearch

" Enable Syntax Highlight
syntax on 

set clipboard=unnamedplus

" Spacing Set
set tabstop=4
set shiftwidth=4
set expandtab
set smartindent

" Ctrl C
vnoremap <C-c> "+y

" "t" + ","
nnoremap ,t :w\|:!cargo build<CR>



