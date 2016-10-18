" ==== General ====
setlocal colorcolumn=121
setlocal wrap
setlocal linebreak
setlocal nolist
setlocal spell spelllang=en_us

" ==== TeX specific mappings ====
imap <buffer> [[ \begin{

" ==== Rich text mappings ====
imap <buffer> <C-b> \textbf{
vmap <buffer> <C-b> c\textbf{<C-r>"}<esc>
imap <buffer> <C-e> \textit{
vmap <buffer> <C-e> c\textit{<C-r>"}<esc>

" ==== Environments ====
nnoremap <buffer> <leader>ee O\begin{enumerate}<cr>\end{enumerate}<esc>O\item<space>
nnoremap <buffer> <leader>ea O\begin{align*}<cr>\end{align*}<esc>O

" ==== vimtex ====
let g:vimtex_fold_enabled = 1
let g:vimtex_fold_manual = 1
let g:vimtex_fold_sections = [
			\ 'part',
			\ 'chapter',
			\ 'section',
			\ 'subsection',
			\ 'subsubsection',
			\ 'question',
			\ ]
let g:vimtex_quickfix_ignored_warnings = [
      \ 'Underfull',
      \ 'Overfull',
      \ 'Vertical rules in tables',
      \ 'specifier changed to',
      \ 'LaTeX Font Warning',
      \ ]

if !exists('g:ycm_semantic_triggers')
  let g:ycm_semantic_triggers = {}
endif
let g:ycm_semantic_triggers.tex = [
      \ 're!\\[A-Za-z]*(ref|cite)[A-Za-z]*([^]]*])?{([^}]*,?)*',
      \ 're!\\includegraphics([^]]*])?{[^}]*',
      \ 're!\\(include|input){[^}]*'
      \ ]

if g:os == "Linux"
  let g:vimtex_viewer_zathura = 1
elseif g:os == "Darwin"
  let g:vimtex_view_general_viewer = "/Applications/Skim.app/Contents/SharedSupport/displayline"
  let g:vimtex_view_general_options = "-g -r @line @pdf @tex"
endif
