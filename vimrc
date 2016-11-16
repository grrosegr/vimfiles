" ============================================================================
" Plugin setup
" ============================================================================

call plug#begin(expand('~/.vim/bundle'))

Plug 'Shougo/vimproc.vim', {'do': 'make'}
Plug 'airblade/vim-gitgutter'
Plug 'christoomey/vim-tmux-navigator'
Plug 'justinmk/vim-sneak'
Plug 'mhinz/vim-startify'
Plug 'neomake/neomake'
Plug 'scrooloose/nerdtree'
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-eunuch'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-repeat'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-unimpaired'
Plug 'tpope/vim-vinegar'
Plug 'wellle/targets.vim'

if executable('ctags')
  Plug 'xolox/vim-easytags'
  Plug 'xolox/vim-misc'
endif

" Fuzzy finding
Plug 'junegunn/fzf', {
      \ 'dir': '~/.fzf',
      \ 'do': 'yes \| ./install'
      \ }
Plug 'junegunn/fzf.vim'

" Completion
Plug 'Shougo/deoplete.nvim', has('nvim') ? {'do':':UpdateRemotePlugins'} : {'on':[]}
Plug 'Valloric/YouCompleteMe', has('nvim') ? {'on':[]} : {}

" Snippets
if has('python')
  Plug 'SirVer/ultisnips' | Plug 'honza/vim-snippets'
endif

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

" Nim
Plug 'zah/nim.vim'

" Rust
Plug 'rust-lang/rust.vim'

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

" Timeout lengths
set matchtime=1 " Bracket matching (.1 s)
set timeoutlen=500
set ttimeout
set ttimeoutlen=100

" Disable annoying pattern not found messages
set shortmess+=c

" Don't increment numbers like they're octal
set nrformats-=octal

" Delete comment character when joining commented lines
set formatoptions+=j

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

" Rust indentation
let g:rust_recommended_style = 0

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

" Allow clearing line in insert mode
inoremap <C-u> <C-g>u<C-u>

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
nnoremap <expr> k (v:count > 1 ? "m'" . v:count : '') . 'k'
nnoremap <expr> j (v:count > 1 ? "m'" . v:count : '') . 'j'

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
  set colorcolumn=81,101
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

" Remap backspace to switch to previous buffer
nnoremap <silent> <BS> <C-^>

" ============================================================================
" Undo files
" ============================================================================

set undofile
set undodir=$HOME/.vim/undo
set undolevels=1000
set undoreload=10000

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
nnoremap <silent> j gj
nnoremap <silent> k gk

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
if exists('&inccommand')
  set inccommand=split
endif

" Use <leader>n to clear out the highlighting from the search.
nnoremap <silent> <leader>n :nohlsearch<cr>

" Don't jump to next match on *
nnoremap * :keepjumps normal! mi*`i<CR>

" Opening files by searching
set wildmenu
set wildmode=longest,full
set wildignore=*.o,*~,*.pyc,.git\*

" ============================================================================
" Status Line
" ============================================================================

set ruler
set noshowmode
set cmdheight=1
set laststatus=2

" Keep track of the active window
au VimEnter,WinEnter,WinLeave * let g:activeWindow=winnr()

" User colors
function! SetStatusLineModeColor(mode, winnr)
  if winnr() != g:activeWindow
    return ''
  endif

  let result = a:mode
  if a:mode == 'n'
    hi SLMode guifg=#00ff00 guibg=#005000 ctermfg=46 ctermbg=22
    let result = 'N'
  elseif a:mode ==# 'R'
    hi SLMode guifg=#ffafaf guibg=#800000 ctermfg=197 ctermbg=88
    let result = 'R'
  elseif a:mode == 'i'
    hi SLMode guifg=#00d7ff guibg=#0000d7 ctermfg=45 ctermbg=20
    let result = 'I'
  elseif a:mode ==? 'v' || a:mode ==? ''
    hi SLMode guifg=#ffdf00 guibg=#875f00 ctermfg=220 ctermbg=94
    let result = 'V'
  endif

  if &paste
    let result .= ' ⎘'
  endif
  return '  ' . result . ' '
endfunction

hi SLWarning guifg=#ff8700 guibg=#202020 ctermfg=208 ctermbg=235

set statusline=
set statusline+=%#SLMode#%{SetStatusLineModeColor(mode(),winnr())}%*
set statusline+=%<
set statusline+=\ %f%m%r

set statusline+=%=

set statusline+=\ %l:%c\ %y
set statusline+=\ \ %P

set statusline+=\ %#SLWarning#
set statusline+=%{neomake#statusline#LoclistStatus()}
set statusline+=%*

" ============================================================================
" Disable bells
" ============================================================================

set noerrorbells
set novisualbell
set t_vb=

" ============================================================================
" Plugins
" ============================================================================

" ==== Deoplete ====
if has('nvim')
  let g:deoplete#enable_at_startup = 1
  inoremap <expr><tab> pumvisible() ? "\<c-n>" : "\<tab>"
endif

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
nnoremap <silent> <leader>G :<C-u>GFiles?<cr>
nnoremap <silent> <leader>b :<C-u>Buffers<cr>
nnoremap <silent> <leader>t :<C-u>Tags<cr>
nnoremap <silent> <leader>l :<C-u>Lines<cr>

" ==== Neomake ====
autocmd! BufWritePost * Neomake
let g:neomake_python_enabled_makers = ['pyflakes']

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
