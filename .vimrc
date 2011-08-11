syntax on
:colorscheme lucius

" set font and font size
set guifont=Monospace\ 9 

" turn on line numbers
set number

"toggle line numbers and fold column for easy copying
nnoremap <F2> :set nonumber!<CR>:set foldcolumn=0<CR>

"bind ctrl-t to fuzzy finder
nnoremap <C-t> :FufCoverageFile<CR>

filetype plugin indent on
autocmd FileType python set complete+=k~/.vim/syntax/python.vim isk+=.,(

" set tab settings
set tabstop=4
set shiftwidth=4
set expandtab

if has("gui_running")
    set guioptions=-t
endif

let NERDTreeIgnore = ['\.pyc$']

" copy and paste
nmap <C-V> "+gP
imap <C-V> <ESC><C-V>i
vmap <C-C> "+y
