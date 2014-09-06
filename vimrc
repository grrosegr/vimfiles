if has('vim_starting')
  set nocompatible
  set runtimepath+=~/.vim/bundle/neobundle.vim/
endif

call neobundle#rc(expand('~/.vim/bundle'))

NeoBundleFetch 'Shougo/neobundle.vim'

" ============================================================================
" CUSTOM CHANGES
" ============================================================================

" Use the , as a leader
let mapleader = ","

" Fast saving
nmap <leader>w :w<cr>

" Quick editing of vimrc
nnoremap <silent> <leader>R :so ~/.vimrc<cr>

" Line numbers (comment out "set relativenumber" if you want normal numbers)
set number
if exists('&relativenumber')
  set relativenumber
endif

" Set how many lines of history to remember
set history=700

" 80/100 character line guide
if exists('&colorcolumn')
  set colorcolumn=80,100
endif

" Use to change colorscheme
silent! colorscheme ir_black
set background=dark

" Highlight trailing whitespace.
match ErrorMsg '\s\+\%#\@<!$'

" Strip trailing whitespace with <leader>S
nnoremap <silent> <leader>S :let _s=@/<Bar>:%s/\s\+$//e<Bar>:let @/=_s<Bar>:nohl<CR>

" Delete trailing whitespace on save.
autocmd FileType c,cpp,java autocmd BufWritePre * :%s/\s\+$//e

" Font for GUI vim
set guifont=Inconsolata:h14

" ============================================================================
" IMPORTANT OPTIONS
" ============================================================================

" Makes the tabs better
set tabstop=2
set shiftwidth=2
set expandtab
set smarttab
set smartindent

" Ignore compiled files
set wildmenu
set wildignore=*.o,*~,*.pyc,.git\*

" Use mouse
set mouse=a

" Show title
set title

" Use semicolon instead of colon
nnoremap ; :

" Doesn't store useless backup stuff
set noswapfile
set nobackup
set nowritebackup

" Code folding
set foldmethod=indent
set foldnestmax=10
set nofoldenable
set foldlevel=1

" Scroll before you get to the very end
set scrolloff=3
set sidescrolloff=5

" Use F2 as a paste toggle
set pastetoggle=<F2>

" Searching
set ignorecase
set smartcase
set incsearch
set showmatch
set hlsearch
set magic
nnoremap <leader><space> :noh<cr>

" Automatically refreshes file
set autoread

" History
set undolevels=1000

" Set long lines to be treated as multiple lines when soft wrapped
nnoremap j gj
nnoremap k gk

" Save on losing focus (I don't think this works)
au FocusLost * :wa

" Swap lines
nnoremap <c-up> ddkP
nnoremap <c-down> ddp

" Ensure that we are in modern vim mode, not backwards-compatible vi mode
set nocompatible
set backspace=indent,eol,start

" Useful metrics
set ruler
set noshowmode

" More secure encryption
set cryptmethod=blowfish

" Enable filetype detection and syntax hilighting
syntax on
filetype plugin indent on

" Show multicharacter commands as they are being typed
set showcmd

" ============================================================================
" PLUGINS
" ============================================================================

NeoBundle 'spolu/dwm.vim'
NeoBundle 'scrooloose/nerdcommenter'
NeoBundle 'ervandew/supertab'
NeoBundle 'scrooloose/syntastic'
NeoBundle 'tpope/vim-surround'
NeoBundle 'tpope/vim-fugitive'
NeoBundle 'beyondmarc/glsl.vim'
NeoBundle 'terryma/vim-expand-region'
NeoBundle 'maciakl/vim-neatstatus'
NeoBundle 'ahf/twelf-syntax'

NeoBundleCheck

let g:NeatStatusLine_color_insert='guifg=#ffffff guibg=#ff0000 gui=bold ctermfg=2 ctermbg=0 cterm=bold'
silent! let g:syntastic_python_checkers = []

