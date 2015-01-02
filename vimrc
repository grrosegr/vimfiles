" ============================================================================
" NeoBundle
" ============================================================================

if has('vim_starting')
  set nocompatible
  set runtimepath+=~/.vim/bundle/neobundle.vim/
endif

call neobundle#begin(expand('~/.vim/bundle'))

NeoBundleFetch 'Shougo/neobundle.vim'

NeoBundle 'Shougo/unite.vim'
NeoBundle 'Shougo/neomru.vim'
NeoBundle 'Valloric/YouCompleteMe'
NeoBundle 'bitc/vim-hdevtools'
NeoBundle 'bling/vim-airline'
NeoBundle 'dag/vim2hs'
NeoBundle 'derekwyatt/vim-fswitch'
NeoBundle 'eagletmt/neco-ghc'
NeoBundle 'justinmk/vim-syntax-extra'
NeoBundle 'lervag/vim-latex'
NeoBundle 'lilydjwg/colorizer'
NeoBundle 'majutsushi/tagbar'
NeoBundle 'scrooloose/nerdcommenter'
NeoBundle 'scrooloose/nerdtree'
NeoBundle 'scrooloose/syntastic'
NeoBundle 'spolu/dwm.vim'
NeoBundle 'tpope/vim-endwise'
NeoBundle 'tpope/vim-fugitive'
NeoBundle 'tpope/vim-repeat'
NeoBundle 'tpope/vim-surround'
NeoBundle 'tpope/vim-unimpaired'
NeoBundle 'travitch/hasksyn'
NeoBundle 'xolox/vim-easytags'
NeoBundle 'xolox/vim-misc'

NeoBundle 'Shougo/vimproc.vim', {
      \ 'build' : {
      \     'windows' : 'tools\\update-dll-mingw',
      \     'cygwin' : 'make -f make_cygwin.mak',
      \     'mac' : 'make -f make_mac.mak',
      \     'linux' : 'make',
      \     'unix' : 'gmake',
      \    },
      \ }

call neobundle#end()

NeoBundleCheck

" ============================================================================
" CUSTOM CHANGES
" ============================================================================

" Use the \ as a leader
let mapleader = "\\"

" Get the current OS
let os = substitute(system('uname -s'), "\n", "", "")

" Fast saving
nnoremap <leader>w :w<cr>
nnoremap <leader>W :wall<cr>

" Enable block nav shortcuts when { isn't on the first column.
nmap <silent> [[ ?{<cr>w99[{
nmap <silent> ][ /}<cr>b99]}
nmap <silent> ]] j0[[%/{<cr>
nmap <silent> [] k$][%?}<cr>

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

" Appearance
silent! colorscheme avp
set background=dark
if os == "Linux"
  set guifont=Inconsolata\ Medium\ 12
elseif os == "Darwin"
  set guifont=Inconsolata\ for\ Powerline:h14
endif

" Highlight trailing whitespace.
match ErrorMsg '\s\+\%#\@<!$'

" Strip trailing whitespace with <leader>S
nnoremap <silent> <leader>S :let _s=@/<Bar>:%s/\s\+$//e<Bar>:let @/=_s<Bar>:nohl<CR>

" Delete trailing whitespace on save.
autocmd FileType c,cpp,java autocmd BufWritePre * :%s/\s\+$//e

" Substitute all word under cursor.
nnoremap <leader>s :%s/\<<c-r><c-w>\>/

" Timeout lengths
set matchtime=1 " Bracket matching (.1 s)
set timeoutlen=500
set ttimeoutlen=10

" Buffer shortcuts
set hidden
nnoremap <right> :bn<cr>
nnoremap <left> :bp<cr>
nnoremap <leader>l :ls<cr>:b<space>

" Tags
function! PrintTagTarget()
  let target = expand("<cword>")
  execute "tag ".target
  let line = getline('.')
  execute "pop"
  echo line
endfunction
nnoremap <silent> <C-\> :call PrintTagTarget()<cr>

" ======= PLUGINS =======

" Airline
" Always show status line correctly
set laststatus=2
let g:airline_powerline_fonts = 1
let g:airline_theme = 'simple'
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#left_sep = ''
let g:airline#extensions#tabline#left_alt_sep = '|'

" Ag
nnoremap <leader>g :Ag<space>
nnoremap <leader>G :Ag <cword><cr>

" FSwitch
nnoremap <leader>fs :FSHere<cr>

" NERDTree
nnoremap <leader>e :NERDTreeToggle<cr>

" Syntastic
silent! let g:syntastic_python_checkers = []

" Tagbar
nnoremap <leader>t :TagbarOpenAutoClose<cr>

" CtrlP
let g:ctrlp_map = '<C-p>'
let g:ctrlp_cmd = 'CtrlP'
if exists("g:ctrlp_user_command")
  unlet g:ctrlp_user_command
endif
if executable('ag')
  " Use ag over grep
  set grepprg=ag\ --nogroup\ --nocolor

  " Use ag in CtrlP for listing files. Lightning fast and respects .gitignore
  let g:ctrlp_user_command =
        \ 'ag %s --files-with-matches -g "" --ignore "\.git$\|\.hg$\|\.svn$"'

  " ag is fast enough that CtrlP doesn't need to cache
  let g:ctrlp_use_caching = 0
else
  " Otherwise deal with git manually.
  let g:ctrlp_user_command = ['.git/', 'git --git-dir=%s/.git ls-files -oc --exclude-standard']
endif

" YouCompleteMe
let g:ycm_global_ycm_extra_conf = "~/.vim/.ycm_extra_conf.py"
let g:ycm_extra_conf_globlist = ['~/dev/*','!~/*']
let g:ycm_register_as_syntastic_checker = 0
let g:ycm_autoclose_preview_window_after_completion = 1

" ======= Unite =======
" Options
let g:unite_enable_start_insert = 1
let g:unite_split_rule = "botright"
let g:unite_force_overwrite_statusline = 0
let g:unite_winheight = 10
let g:unite_source_history_yank_enable = 1
call unite#filters#matcher_default#use(['matcher_fuzzy'])
call unite#filters#sorter_default#use(['sorter_rank'])
autocmd FileType unite call s:unite_settings()
function! s:unite_settings()
  let b:SuperTabDisabled=1
  imap <buffer> <C-j> <Plug>(unite_select_next_line)
  imap <buffer> <C-k> <Plug>(unite_select_previous_line)
  imap <silent><buffer><expr> <C-x> unite#do_action('split')
  imap <silent><buffer><expr> <C-v> unite#do_action('vsplit')
  imap <silent><buffer><expr> <C-t> unite#do_action('tabopen')
  nmap <buffer> <ESC> <Plug>(unite_exit)
endfunction
if executable('ag')
  let g:unite_source_rec_async_command= 'ag --nocolor --nogroup --hidden -g ""'
endif
call unite#custom_source('file_rec,file_rec/async,file_mru,file,buffer,grep',
      \ 'ignore_pattern', join([
      \ '\.git/',
      \ ], '\|'))

" Bindings
nnoremap <C-p> :<C-u>Unite -buffer-name=files -start-insert buffer file_rec/async:!<cr>
nnoremap <leader>/ :Unite -start-insert grep:.<cr>
nnoremap <leader>b :<C-u>Unite -quick-match buffer<cr>
nnoremap <leader>y :<C-u>Unite -buffer-name=yank history/yank<cr>

" ============================================================================
" IMPORTANT OPTIONS
" ============================================================================

" Makes the tabs better
set tabstop=2
set shiftwidth=2
set expandtab
set smarttab
set smartindent

au filetype python setlocal shiftwidth=2
au filetype python setlocal tabstop=2

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
set pastetoggle=<leader>p

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
