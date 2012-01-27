call pathogen#infect() 
syntax on " syntax higlighting
filetype plugin indent on

set nocompatible

"""""""""""""""""""""""""""""""""""""""""""""""""""
" SECURITY 
"""""""""""""""""""""""""""""""""""""""""""""""""""
set modelines=0

"""""""""""""""""""""""""""""""""""""""""""""""""""
" TABBING 
"""""""""""""""""""""""""""""""""""""""""""""""""""
set autoindent " auto indent - automatically indent to same as previous line
set smartindent " smart indent - add additional indent after { etc...
set smarttab " smart tab - use tabs at beginning of line, spaces elsewhere
set expandtab " expand tabs to spaces
set shiftwidth=4 " set tabs to 4 space width
set tabstop=4 " set tabs to 4 space width
set softtabstop=4 " ensure 4 spaces are used when hitting tab

"""""""""""""""""""""""""""""""""""""""""""""""""""
" DISPLAY
"""""""""""""""""""""""""""""""""""""""""""""""""""
set number " number the lines, set to relativenumber in 7.3
set showmode " shows whether in insert, visual etc...
set showmatch " show matching braces
set showcmd
set ffs=unix,dos " support these filetypes
set background=dark " set the base color
colorscheme wombat
set encoding=utf-8
set scrolloff=3 " allow for 3 lines on either side of a search
set visualbell
set cursorline
set ttyfast

set backspace=indent,eol,start " fix backspace
set backupdir=~/.vim-tmp,~/.tmp,~/tmp,/var/tmp,/tmp
set directory=~/.vim-tmp,~/.tmp,~/tmp,/var/tmp,/tmp
set autochdir

set ignorecase
set smartcase
set incsearch
set hlsearch
set gdefault

let mapleader=","
map <Leader><space> :noh<cr>

set wildmenu
set wildmode=list:longest " command tab completion in the ruler

set tags+=tags;/

" Go back to the position the cursor was on the last time this file was edited
au BufReadPost * if line("'\"") > 0 && line("'\"") <= line("$")|execute("normal `\"")|endif

"""""""""""""""""""""""""""""""""""""""""""""""""""
" SUPER TAB PLUGIN
"""""""""""""""""""""""""""""""""""""""""""""""""""
let g:SuperTabDefaultCompletionType = "context"
let g:SuperTabContextDefaultCompletionType = "<c-x><c-o>"
let g:SuperTabLongestHighlight = 1

"""""""""""""""""""""""""""""""""""""""""""""""""""
" TABULARIZE
"""""""""""""""""""""""""""""""""""""""""""""""""""
nmap <Leader>a> :Tabularize /=><CR>
vmap <Leader>a> :Tabularize /=><CR>
nmap <Leader>a= :Tabularize /=<CR>
vmap <Leader>a= :Tabularize /=<CR>
nmap <Leader>a: :Tabularize /:\zs<CR>
vmap <Leader>a: :Tabularize /:\zs<CR>

"""""""""""""""""""""""""""""""""""""""""""""""""""
" MAPPINGS
"""""""""""""""""""""""""""""""""""""""""""""""""""
" quit w/o save
map <Leader>q :qa!<CR>
" write
map <Leader>s :w<CR>
" quit and save
map <Leader>x :x<CR>
" map window changing
map <C-J> <C-W>j
map <C-K> <C-W>k
map <C-H> <C-W>h
map <C-L> <C-W>l
" map ,f to display all lines with keyword under cursor and ask which one to
" jump to
nmap <Leader>f [I:let nr = input("Which one: ")<Bar>exe "normal " . nr ."[\t"<CR>
" open filename under cursor in a new window (use current file's working
" directory) 
nmap gf :new %:p:h/<cfile><CR>

nnoremap j gj
nnoremap k gk

inoremap <F1> <ESC>
nnoremap <F1> <ESC>
vnoremap <F1> <ESC>

nnoremap ; :

nnoremap <leader>S ?{<CR>jV/^\s*\}?$<CR>k:sort<CR>:noh<CR>

au BufWritePost .vimrc source $MYVIMRC

"""""""""""""""""""""""""""""""""""""""""""""""""""
" TagList
"""""""""""""""""""""""""""""""""""""""""""""""""""
let Tlist_Auto_Highlight_Tag = 1
let Tlist_Auto_Open = 1
let Tlist_Auto_Update = 1
let Tlist_File_Fold_Auto_Close = 1
let Tlist_Use_Right_Window = 1
let tlist_php_settings = 'php;c:class;f:function;d:constant'
let Tlist_GainFocus_On_ToggleOpen = 1

let g:ctrlp_working_path_mode = 2
