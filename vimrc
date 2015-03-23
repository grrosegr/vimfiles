" ============================================================================
" UTF Encoding
" ============================================================================

set encoding=utf-8
scriptencoding utf-8

" ============================================================================
" NeoBundle
" ============================================================================

if has('vim_starting')
  set nocompatible
  set runtimepath+=~/.vim/bundle/neobundle.vim/
endif

call neobundle#begin(expand('~/.vim/bundle'))

NeoBundleFetch 'Shougo/neobundle.vim'

NeoBundle 'Shougo/neomru.vim'
NeoBundle 'Shougo/unite.vim'
NeoBundle 'bling/vim-airline'
NeoBundle 'justinmk/vim-sneak'
NeoBundle 'scrooloose/syntastic'
NeoBundle 'tpope/vim-commentary'
NeoBundle 'tpope/vim-endwise'
NeoBundle 'tpope/vim-eunuch'
NeoBundle 'tpope/vim-fugitive'
NeoBundle 'tpope/vim-repeat'
NeoBundle 'tpope/vim-unimpaired'
NeoBundle 'xolox/vim-easytags', {'external_commands': 'ctags'}
NeoBundle 'xolox/vim-misc'

NeoBundle 'Shougo/vimproc.vim', {
      \ 'build': {
      \     'windows': 'tools\\update-dll-mingw',
      \     'cygwin': 'make -f make_cygwin.mak',
      \     'mac': 'make -f make_mac.mak',
      \     'linux': 'make',
      \     'unix': 'gmake',
      \    },
      \ }

NeoBundle 'Valloric/YouCompleteMe', {
      \ 'vim_version': '7.3.584',
      \ 'disabled': !has('python'),
      \ 'stay_same': 1
      \ }

" C/C++
NeoBundleLazy 'derekwyatt/vim-fswitch', {'autoload': {'filetypes': ['c', 'cpp']}}
NeoBundleLazy 'justinmk/vim-syntax-extra', {'autoload': {'filetypes': ['c', 'cpp']}}

" LaTeX
NeoBundleLazy 'LaTeX-Box-Team/LaTeX-Box', {'autoload': {'filetypes': ['tex']}}

" Haskell
NeoBundleLazy 'bitc/vim-hdevtools', {'autoload': {'filetypes': ['haskell']}}
NeoBundleLazy 'dag/vim2hs', {'autoload': {'filetypes': ['haskell']}}
NeoBundleLazy 'travitch/hasksyn', {'autoload': {'filetypes': ['haskell']}}
NeoBundleLazy 'eagletmt/neco-ghc', {
      \ 'autoload': {'filetypes': ['haskell']},
      \ 'external_commands': 'ghc-mod'
      \ }

call neobundle#end()

NeoBundleCheck

" ============================================================================
" General Settings
" ============================================================================

" Ensure that we are in modern vim mode
set nocompatible
set backspace=indent,eol,start

" Enable filetype detection and syntax highlighting
syntax on
filetype plugin indent on

" Show multicharacter commands as they are being typed
set showcmd

" Use the \ as a leader
let g:mapleader = "\<space>"

" Get the current OS
let g:os = substitute(system('uname -s'), "\n", "", "")

" Set how many lines of history to remember
set history=700
set undolevels=1000

" Timeout lengths
set matchtime=1 " Bracket matching (.1 s)
set timeoutlen=500
set ttimeoutlen=10

" Make ~ work like an operator, like d and y
set tildeop

" Don't increment numbers like they're octal
set nrformats=hex

" Use F12 as a paste toggle
set pastetoggle=<leader>p

" Automatically refreshes file
set autoread

" Use mouse
set mouse=a

" Show title
set title

" Better encryption
set cryptmethod=blowfish

" Use LaTeX instead of TeX
let g:tex_flavor="latex"

" ============================================================================
" Utility Keymaps
" ============================================================================

" Fast saving
nnoremap <leader>w :w<cr>
nnoremap \w :w<cr>
nnoremap <leader>W :wall<cr>

" Enable block nav shortcuts when { isn't on the first column
nmap <silent> [[ ?{<cr>w99[{
nmap <silent> ][ /}<cr>b99]}
nmap <silent> ]] j0[[%/{<cr>
nmap <silent> [] k$][%?}<cr>

" Quick reload of vimrc
nnoremap <silent> <leader>R :so ~/.vimrc<cr>

" Substitute all word under cursor.
nnoremap <leader>s :%s/\<<c-r><c-w>\>/

" More logical mapping for Y (yy still yanks an entire line)
nnoremap Y y$

" cd to current directory
nnoremap <silent> <leader>cd :lcd %:p:h<cr>

" ============================================================================
" Line Numbers
" ============================================================================

" Show the current line number
set number

" For non-current lines, show their relative offsets
if exists('&relativenumber')
  set relativenumber
endif

" ============================================================================
" Appearance
" ============================================================================

" 80/100 character line guide
if exists('&colorcolumn')
  set colorcolumn=80,100
endif

" Colors
colorscheme avp
set background=dark
set t_Co=256
if g:os == "Linux"
  set guifont="Inconsolata Medium 12"
elseif g:os == "Darwin"
  set guifont="Inconsolata for Powerline:h14"
endif

" ============================================================================
" Trailing whitespace
" ============================================================================

" Highlight trailing whitespace.
match ErrorMsg '\s\+\%#\@<!$'

" Strip trailing whitespace with <leader>S
nnoremap <silent> <leader>S :let _s=@/<Bar>:%s/\s\+$//e<Bar>:let @/=_s<Bar>:nohl<CR>

" Delete trailing whitespace on save for c, cpp, java
autocmd FileType c,cpp,java,tex autocmd BufWritePre * :%s/\s\+$//e

" ============================================================================
" Buffers
" ============================================================================

" Allow hiding of unsaved buffers.
set hidden

" Remap left and right to switch between buffers.
nnoremap <silent> <right> :bn<cr>
nnoremap <silent> <left> :bp<cr>

" ============================================================================
" Tags
" ============================================================================

" Preview the target of the tag in the bottom bar with <C-\>
" Useful for things like preprocessor directives.
function! PrintTagTarget()
  let b:target = expand("<cword>")
  execute "silent tag ".b:target
  let b:line = getline('.')
  execute "silent pop"
  echom b:line
endfunction
nnoremap <silent> <leader>] :call PrintTagTarget()<cr>

" ============================================================================
" Indentation
" ============================================================================

set tabstop=2
set shiftwidth=2
set expandtab
set smarttab
set smartindent

" Python shiftwidth
autocmd FileType python set shiftwidth=2
autocmd FileType python set tabstop=2

" ============================================================================
" Backups
" ============================================================================

set noswapfile
set nobackup
set nowritebackup

" ============================================================================
" Folding
" ============================================================================

set foldmethod=indent
set foldnestmax=10
set nofoldenable
set foldlevel=1

" ============================================================================
" Scrolling
" ============================================================================

set scrolloff=3
set sidescrolloff=5

" Set long lines to be treated as multiple lines when soft wrapped
nnoremap j gj
nnoremap k gk

" ============================================================================
" Windows
" ============================================================================

nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

set splitbelow
set splitright

" ============================================================================
" Searching
" ============================================================================

" Search within files
set ignorecase
set smartcase
set incsearch
set showmatch
set hlsearch
set magic

" Use <leader>n to clear out the highlighting from the search.
nnoremap <silent> <leader>n :nohlsearch<cr>

" Opening files by searching
set wildmenu
set wildignore=*.o,*~,*.pyc,.git\*

" ============================================================================
" Status bar
" ============================================================================

set ruler
set noshowmode

" ============================================================================
" Disable bells
" ============================================================================

set noerrorbells
set novisualbell
set t_vb=

" ============================================================================
" Plugins
" ============================================================================

" ==== Airline ====
" Always show status line correctly
set laststatus=2
let g:airline_powerline_fonts = 1
let g:airline_theme = 'simple'
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#left_sep = ''
let g:airline#extensions#tabline#left_alt_sep = '|'

" ==== EasyTags ====
let g:easytags_async = 1

" ==== FSwitch ====
nnoremap <leader>fs :FSHere<cr>

" ==== Sneak ====
let g:sneak#streak = 1

" ==== Syntastic ====
let g:syntastic_python_checkers = []
let g:syntastic_cpp_include_dirs = ['../include', 'include', '../common']
let g:syntastic_tex_chktex_args = '-n29'

" ==== Unite ====
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
  nmap <buffer> <esc> <Plug>(unite_exit)
endfunction
if executable('ag')
  let g:unite_source_rec_async_command= 'ag --nocolor --nogroup -g ""'
endif
call unite#custom_source('file_rec,file_rec/async,file_mru,file,buffer,grep',
      \ 'ignore_pattern', join([
      \ '\.git/',
      \ ], '\|'))
" Bindings
nnoremap <C-p> :<C-u>Unite -buffer-name=files -start-insert buffer file_rec/async:!<cr>
nnoremap <leader>/ :<C-u>Unite -start-insert grep:.<cr>
nnoremap <leader>b :<C-u>Unite -quick-match buffer<cr>
nnoremap <leader>y :<C-u>Unite -buffer-name=yank history/yank<cr>

" ==== YouCompleteMe ====
let g:ycm_global_ycm_extra_conf = "~/.vim/.ycm_extra_conf.py"
let g:ycm_extra_conf_globlist = ['~/dev/*','!~/*']
let g:ycm_register_as_syntastic_checker = 0
let g:ycm_autoclose_preview_window_after_completion = 1
