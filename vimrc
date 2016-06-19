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

NeoBundle 'airblade/vim-gitgutter'
NeoBundle 'christoomey/vim-tmux-navigator'
NeoBundle 'justinmk/vim-sneak'
NeoBundle 'mhinz/vim-startify'
NeoBundle 'scrooloose/nerdtree'
NeoBundle 'scrooloose/syntastic'
NeoBundle 'sjl/splice.vim'
NeoBundle 'tpope/vim-abolish'
NeoBundle 'tpope/vim-commentary'
NeoBundle 'tpope/vim-eunuch'
NeoBundle 'tpope/vim-fugitive'
NeoBundle 'tpope/vim-repeat'
NeoBundle 'tpope/vim-surround'
NeoBundle 'tpope/vim-unimpaired'
NeoBundle 'tpope/vim-vinegar'
NeoBundle 'vim-airline/vim-airline'
NeoBundle 'vim-airline/vim-airline-themes'
NeoBundle 'wellle/targets.vim'
NeoBundle 'xolox/vim-easytags', {'external_commands': 'ctags'}
NeoBundle 'xolox/vim-misc'

NeoBundle 'junegunn/fzf', {
      \ 'dir': '~/.fzf',
      \ 'do': 'yes \| ./install'
      \ }
NeoBundle 'junegunn/fzf.vim'

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
      \ 'stay_same': 1,
      \ }

" Snippets
NeoBundle 'SirVer/ultisnips'
NeoBundle 'honza/vim-snippets'

" C/C++
NeoBundleLazy 'derekwyatt/vim-fswitch', {
      \ 'autoload': {'filetypes': ['c', 'cpp']}
      \ }
NeoBundleLazy 'justinmk/vim-syntax-extra', {
      \ 'autoload': {'filetypes': ['c', 'cpp']}
      \ }

" LaTeX
" NeoBundleLazy 'LaTeX-Box-Team/LaTeX-Box', {'autoload': {'filetypes': ['tex']}}
NeoBundleLazy 'lervag/vimtex', {'autoload': {'filetypes': ['tex']}}

" Haskell
NeoBundle 'andy-morris/alex.vim'
NeoBundleLazy 'dag/vim2hs', {'autoload': {'filetypes': ['haskell']}}
NeoBundleLazy 'travitch/hasksyn', {'autoload': {'filetypes': ['haskell']}}
NeoBundleLazy 'bitc/vim-hdevtools', {
      \ 'autoload': {'filetypes': ['haskell']},
      \ 'external_commands': 'hdevtools',
      \ }
NeoBundleLazy 'eagletmt/ghcmod-vim', {
      \ 'autoload': {'filetypes': ['haskell']},
      \ 'external_commands': 'ghc-mod'
      \ }
NeoBundleLazy 'eagletmt/neco-ghc', {
      \ 'autoload': {'filetypes': ['haskell']},
      \ 'external_commands': 'ghc-mod'
      \ }

" PHP
NeoBundleLazy 'hhvm/vim-hack', {'autoload': {'filetypes': ['php']}}
NeoBundleLazy 'mxw/vim-xhp', {'autoload': {'filetypes': ['php']}}

" Go
NeoBundleLazy 'fatih/vim-go', {'autoload': {'filetypes': ['o']}}

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

" Set leaders
let g:mapleader = " "
let g:maplocalleader = "\\"

" Get the current OS
let g:os = substitute(system('uname -s'), "\n", "", "")

" Set how many lines of history to remember
set history=700
set undolevels=1000

" Timeout lengths
set matchtime=1 " Bracket matching (.1 s)
set timeoutlen=500
set ttimeoutlen=10

" Disable annoying pattern not found messages
set shortmess+=c

" Don't increment numbers like they're octal
set nrformats=hex

" Use F12 as a paste toggle
set pastetoggle=<F12>

" Automatically refreshes file
set autoread

" Use mouse
set mouse=a
if has('mouse_sgr')
  set ttymouse=sgr
endif

" Setup fast terminal settings
set ttyfast

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
nnoremap <silent> <leader>R :source $MYVIMRC<cr>

" Substitute all word under cursor.
nnoremap <leader>s :%s/\<<c-r><c-w>\>/

" More logical mapping for Y (yy still yanks an entire line)
nnoremap Y y$

" cd to current directory
nnoremap <silent> <leader>cd :lcd %:p:h<cr>

" Evaluate selection
vmap <silent> <leader>e c<C-r>=<C-r>"<CR><ESC>

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

" Colors
colorscheme avp
set background=dark
set t_Co=256
set fillchars+=vert:│

" 80/100 character line guide
if exists('&colorcolumn')
  set colorcolumn=80,100
  hi ColorColumn ctermbg=darkgray guibg=#444444
endif

" Fonts
if has('guirunning')
  if g:os == "Linux"
    set guifont=Inconsolata\ for\ Powerline\ 11
  elseif g:os == "Darwin"
    set guifont=Inconsolata\ for\ Powerline:h14,Monaco:h14
  endif
  if filereadable('~/.gvimrc')
    source ~/.gvimrc
  endif
endif

" Redraw screen
nnoremap <leader>r :redraw!<cr>

" ============================================================================
" Trailing whitespace
" ============================================================================

" Highlight trailing whitespace.
match ErrorMsg '\s\+\%#\@<!$'

function! StripTrailingWhitespace()
  let l = line(".")
  let c = col(".")
  %s/\s\+$//e
  call cursor(l, c)
endfun

" Strip trailing whitespace with <leader>S
nnoremap <silent> <leader>S :call StripTrailingWhitespace()<cr>

" Delete trailing whitespace on save for select filetypes.
autocmd FileType c,cpp,java,tex,php,haskell,ruby
      \ autocmd BufWritePre * :call StripTrailingWhitespace()

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

" Don't open folds on certain motions
set foldopen-=block

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
set wildmode=longest:full,full
set wildignore=*.o,*~,*.pyc,.git\*

" ============================================================================
" Status bar
" ============================================================================

set ruler
set noshowmode
set cmdheight=1

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
let g:airline_theme = 'avp'
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#left_sep = ''
let g:airline#extensions#tabline#left_alt_sep = '|'

" ==== EasyTags ====
let g:easytags_async = 1
let g:easytags_dynamic_files = 1
let g:easytags_languages = {
      \ 'haskell': {
      \   'cmd': 'hasktags --ctags .',
      \   'args': [],
      \   'fileoutput_opt': '-f',
      \   'stdout_opt': '-f-',
      \   'recurse_flag': '-R',
      \   },
      \ }

" ==== FSwitch ====
nnoremap <leader>F :FSHere<cr>

" ==== fzf ====
nnoremap <silent> <C-p> :<C-u>Files<cr>
nnoremap <silent> <leader>f :<C-u>Files<cr>
nnoremap <silent> <leader>/ :<C-u>Ag<cr>
nnoremap <silent> <leader>g :<C-u>GFiles<cr>
nnoremap <silent> <leader>b :<C-u>Buffers<cr>
nnoremap <silent> <leader>t :<C-u>Tags<cr>
nnoremap <silent> <leader>l :<C-u>Lines<cr>

" ==== NERDTree ====
let NERDTreeQuitOnOpen = 1
nnoremap <leader>T :NERDTreeToggle<cr>
nnoremap <leader>E :edit .<cr>

" ==== Sneak ====
let g:sneak#streak = 1

" ==== Startify ====
let g:startify_session_persistence = 1
let g:startify_bookmarks = [
      \ '~/.vimrc',
      \ '~/zshfiles/zshrc',
      \ '~/zshfiles/avp.zsh'
      \ ]
let g:startify_custom_header =  [
      \ '     _   ________  ___',
      \ '    | | / /  _/  |/  /',
      \ '    | |/ // // /|_/ /',
      \ '    |___/___/_/  /_/',
      \ '',
      \ '',
      \ ]
hi link StartifyHeader String

" ==== Syntastic ====
let g:syntastic_python_checkers = []
let g:syntastic_cpp_compiler = 'g++'
let g:syntastic_cpp_compiler_options = '-std=c++11'
let g:syntastic_cpp_include_dirs = ['../include', 'include', '../common']
let g:syntastic_tex_chktex_args = '-n29'
let g:syntastic_always_populate_loc_list = 1

" ==== UltiSnips ====
let g:UltiSnipsExpandTrigger="<c-l>"
let g:UltiSnipsJumpForwardTrigger="<c-j>"
let g:UltiSnipsJumpBackwardTrigger="<c-k>"

" ==== YouCompleteMe ====
let g:ycm_global_ycm_extra_conf = "~/.vim/.ycm_extra_conf.py"
let g:ycm_extra_conf_globlist = ['~/dev/*','!~/*']
let g:ycm_register_as_syntastic_checker = 0
let g:ycm_autoclose_preview_window_after_completion = 1
