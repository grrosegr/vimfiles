if has('vim_starting')
  set nocompatible
  set runtimepath+=~/.vim/bundle/neobundle.vim/
endif

call neobundle#begin(expand('~/.vim/bundle'))

NeoBundleFetch 'Shougo/neobundle.vim'

" ============================================================================
" CUSTOM CHANGES
" ============================================================================

" Use the \ as a leader
let mapleader = "\\"

" Fast saving
nnoremap <leader>w :w<cr>
nnoremap <leader>W :wall<cr>

" Enable block nav shortcuts when { isn't on the first column.
nmap [[ ?{<cr>w99[{
nmap ][ /}<cr>b99]}
nmap ]] j0[[%/{<cr>
nmap [] k$][%?}<cr>

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
silent! colorscheme avp
set background=dark

" Highlight trailing whitespace.
match ErrorMsg '\s\+\%#\@<!$'

" Strip trailing whitespace with <leader>S
nnoremap <silent> <leader>S :let _s=@/<Bar>:%s/\s\+$//e<Bar>:let @/=_s<Bar>:nohl<CR>

" Delete trailing whitespace on save.
autocmd FileType c,cpp,java autocmd BufWritePre * :%s/\s\+$//e

" Substitute all word under cursor.
nnoremap <leader>s :%s/\<<c-r><c-w>\>/

" Font for GUI vim
let os = substitute(system('uname -s'), "\n", "", "")
if os == "Linux"
  set guifont=Inconsolata\ Medium\ 12
elseif os == "Darwin"
  set guifont=Inconsolata\ for\ Powerline:h14
endif

" Bracket matching (.1s)
set matchtime=1

" Timeout lengths
set timeoutlen=500
set ttimeoutlen=10

" Swap lines (in a repeatable way)
nnoremap <leader><up> @='ddkP'<cr>
nnoremap <leader><down> @='ddp'<cr>

" Buffer shortcuts
set hidden
nnoremap <right> :bn<cr>
nnoremap <left> :bp<cr>
nnoremap <leader>l :ls<cr>:b<space>

" NERDTree shortcuts
nnoremap <leader>e :NERDTreeToggle<cr>

" Save on losing focus (I don't think this works) 
au FocusLost * :wall

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

" Use F12 as a paste toggle
set pastetoggle=<F12>

" Searching
set ignorecase
set smartcase
set incsearch
set showmatch
set hlsearch
set magic
nnoremap <silent> <leader><space> :noh<cr>

" Automatically refreshes file
set autoread

" History
set undolevels=1000

" Set long lines to be treated as multiple lines when soft wrapped
nnoremap j gj
nnoremap k gk

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

NeoBundle 'Valloric/YouCompleteMe'
NeoBundle 'ahf/twelf-syntax'
NeoBundle 'bitc/vim-hdevtools'
NeoBundle 'bling/vim-airline'
NeoBundle 'dag/vim2hs'
NeoBundle 'eagletmt/neco-ghc'
NeoBundle 'jalcine/cmake.vim'
NeoBundle 'jlanzarotta/bufexplorer'
NeoBundle 'justinmk/vim-syntax-extra'
NeoBundle 'kien/ctrlp.vim'
NeoBundle 'lervag/vim-latex'
NeoBundle 'scrooloose/nerdcommenter'
NeoBundle 'scrooloose/nerdtree'
NeoBundle 'scrooloose/syntastic'
NeoBundle 'spolu/dwm.vim'
NeoBundle 'terryma/vim-expand-region'
NeoBundle 'tpope/vim-fugitive'
NeoBundle 'tpope/vim-surround'
NeoBundle 'travitch/hasksyn'

call neobundle#end()

NeoBundleCheck

let g:NeatStatusLine_color_insert='guifg=#ffffff guibg=#ff0000 gui=bold ctermfg=2 ctermbg=0 cterm=bold'
silent! let g:syntastic_python_checkers = []

au filetype python setlocal shiftwidth=2
au filetype python setlocal tabstop=2

let g:SuperTabDefaultCompletionType = "context"

" Custom NERDCommenter filetypes
let g:NERDCustomDelimiters = {
      \ 'tutch': { 'left': '%{', 'right': '}%' },
      \ 'twelf': { 'left': '%{', 'right': '}%' }
      \ }

" Custom CtrlP Commands
let g:ctrlp_map = '<C-p>'
let g:ctrlp_cmd = 'CtrlP'

set laststatus=2
let g:airline_powerline_fonts = 1
let g:airline_theme = 'simple'
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#left_sep = ''
let g:airline#extensions#tabline#left_alt_sep = '|'

let g:ycm_global_ycm_extra_conf = "~/.vim/.ycm_extra_conf.py"
let g:ycm_extra_conf_globlist = ['~/dev/*','!~/*']
let g:ycm_register_as_syntastic_checker = 0
let g:ycm_autoclose_preview_window_after_completion = 1
