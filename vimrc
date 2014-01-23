" Pathogen
silent! execute pathogen#infect()

" ============================================================================
" CUSTOM CHANGES
" ============================================================================

" Use the , as a leader
let mapleader = ","

" Line numbers (comment out "set relativenumber" if you want normal numbers)
set number
if exists('&relativenumber') 
  set relativenumber
endif

" 80 character line guide
if exists('&colorcolumn')
  set colorcolumn=80
endif

" Use to change colorscheme
silent! colorscheme ir_black
set background=dark

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
set wildignore=*.o,*~,*.pyc

" Use mouse
set mouse=a

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
set sidescrolloff=3

" Searching
set ignorecase
set smartcase
set incsearch
set showmatch
set hlsearch
nnoremap <leader><space> :noh<cr>

" Autoformatter (by AVP)
" Only works with HTML right now
" Press <leader>F to call the formatter, by default leader is ,
function Formatter()
  if &filetype == 'html'
    :normal ggVGgJ
    :%s/>\s*</>\r</g
    :normal ggVG=
  endif
endfunction

nnoremap <leader>F :call Formatter()<cr>

" Automatically refreshes file
set autoread

" History
set undolevels=1000
   
" Movement improvement
nnoremap j gj
nnoremap k gk

" Save on losing focus (I don't think this works)
au FocusLost * :wa

" Ensure that we are in modern vim mode, not backwards-compatible vi mode
set nocompatible
set backspace=indent,eol,start

" Useful metrics
set ruler

" Enable filetype detection and syntax hilighting
syntax on
filetype plugin indent on

" Show multicharacter commands as they are being typed
set showcmd

" Syntastic
silent! let g:syntastic_python_checkers = []

" Change color column color - this has to be at the end of the file
highlight ColorColumn ctermbg=237 guibg=237

