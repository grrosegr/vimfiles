" ==== General ====
setlocal colorcolumn=
setlocal wrap
setlocal linebreak
setlocal nolist
setlocal breakindent

" ==== TeX specific mappings ====
imap <buffer> [[ \begin{
imap <buffer> ]] <Plug>LatexCloseCurEnv
nmap <buffer> <F5> <Plug>LatexChangeEnv
vmap <buffer> <F7> <Plug>LatexWrapSelection
vmap <buffer> <F7> <Plug>LatexEnvWrapSelection

" ==== Environments ====
nnoremap <buffer> <leader>ee O\begin{enumerate}<cr>\end{enumerate}<esc>O\item<space>
nnoremap <buffer> <leader>ea O\begin{align*}<cr>\end{align*}<esc>O

" ==== LaTeX-Box ====
if g:os == "Linux"
  let g:LatexBox_viewer = "xdg-open"
elseif g:os == "Darwin"
  let g:LatexBox_latexmk_async = 1
  let g:LatexBox_latexmk_preview_continuously = 1
  let g:LatexBox_quickfix = 2
  let g:LatexBox_viewer = "open -a Skim"
  let g:LatexBox_Folding = 1
endif
