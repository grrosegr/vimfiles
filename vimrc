" ============================================================================
" UTF Encoding
" ============================================================================

set encoding=utf-8
scriptencoding utf-8

" ============================================================================
" Plugin setup
" ============================================================================

call plug#begin(expand('~/.vim/bundle'))

Plug 'Shougo/vimproc.vim', {'build': 'make'}
Plug 'airblade/vim-gitgutter'
Plug 'christoomey/vim-tmux-navigator'
Plug 'justinmk/vim-sneak'
Plug 'mhinz/vim-startify'
Plug 'scrooloose/nerdtree'
Plug 'scrooloose/syntastic'
Plug 'sjl/splice.vim'
Plug 'tpope/vim-abolish'
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-eunuch'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-repeat'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-unimpaired'
Plug 'tpope/vim-vinegar'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'wellle/targets.vim'

if executable('ctags')
  Plug 'xolox/vim-easytags'
  Plug 'xolox/vim-misc'
endif

Plug 'junegunn/fzf', {
      \ 'dir': '~/.fzf',
      \ 'do': 'yes \| ./install'
      \ }
Plug 'junegunn/fzf.vim'

Plug 'Valloric/YouCompleteMe'

" Snippets
Plug 'SirVer/ultisnips' | Plug 'honza/vim-snippets'

" C/C++
Plug 'derekwyatt/vim-fswitch', {'for': ['c', 'cpp']}
Plug 'justinmk/vim-syntax-extra', {'for': ['c', 'cpp']}

" LaTeX
Plug 'lervag/vimtex', {'for': 'tex'}

" Haskell
Plug 'andy-morris/alex.vim'
Plug 'dag/vim2hs', {'for': 'haskell'}
Plug 'travitch/hasksyn', {'for': 'haskell'}
Plug 'bitc/vim-hdevtools', {'for': 'haskell'}
Plug 'eagletmt/ghcmod-vim', {'for': 'haskell'}
Plug 'eagletmt/neco-ghc', {'for': 'haskell'}

" PHP
Plug 'hhvm/vim-hack', {'for': 'php'}
Plug 'mxw/vim-xhp', {'for': 'php'}

" Go
Plug 'fatih/vim-go', {'for': 'go'}

call plug#end()

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
let g:mapleader = "\<space>"
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
set nrformats-=octal

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

" Store relative line number jumps in the jumplist.
nnoremap <expr> j v:count > 1 ? 'm`' . v:count . 'j' : 'gj'
nnoremap <expr> k v:count > 1 ? 'm`' . v:count . 'k' : 'gk'

" ============================================================================
" Appearance
" ============================================================================

" Colors
if has('termguicolors')
  set termguicolors
  set t_8f=[38;2;%lu;%lu;%lum
  set t_8b=[48;2;%lu;%lu;%lum
endif
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
nnoremap <silent> <leader>r :redraw!<cr>

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

if has('nvim')
  nnoremap <bs> :<C-u>TmuxNavigateLeft<cr>
endif

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

" Don't jump to next match on *
nnoremap * :keepjumps normal! mi*`i<CR>

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
