" ==== General ====
setlocal colorcolumn=120
setlocal wrap
setlocal linebreak
setlocal nolist
setlocal breakindent
setlocal spell spelllang=en_us " Spellcheck

" ==== TeX specific mappings ====
imap <buffer> [[ \begin{
imap <buffer> ]] <Plug>LatexCloseCurEnv
nmap <buffer> <F5> <Plug>LatexChangeEnv
vmap <buffer> <F7> <Plug>LatexWrapSelection
vmap <buffer> <F7> <Plug>LatexEnvWrapSelection

imap <buffer> <C-b> \textbf{
vmap <buffer> <C-b> c\textbf{<C-r>"}<esc>

" ==== Environments ====
nnoremap <buffer> <leader>ee O\begin{enumerate}<cr>\end{enumerate}<esc>O\item<space>
nnoremap <buffer> <leader>ea O\begin{align*}<cr>\end{align*}<esc>O

" ==== LaTeX-Box ====
let g:LatexBox_latexmk_async = 0
let g:LatexBox_latexmk_preview_continuously = 1
let g:LatexBox_latexmk_options = "-pdflatex='pdflatex -synctex=1 \\%O \\%S'"
let g:LatexBox_output_type = "pdf"
let g:LatexBox_quickfix = 2
let g:LatexBox_Folding = 1

if g:os == "Linux"
  let g:LatexBox_viewer = "xdg-open"
elseif g:os == "Darwin"
  let g:LatexBox_viewer = "open -a Skim"
  nnoremap <silent><buffer> <leader>ls :silent
        \ !/Applications/Skim.app/Contents/SharedSupport/displayline -g
        \ <C-R>=line('.')<CR> "<C-R>=LatexBox_GetOutputFile()<CR>"
        \ "%:p" <CR>
endif
