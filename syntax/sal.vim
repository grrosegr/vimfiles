" Sal Syntax File
" Language:     SAL
" Maintainer:   avp

if exists("b:current_syntax")
  finish
end

syn case match

syn keyword     sDecl       function
syn keyword     sKeyword    begin end
syn keyword     sKeyword    if then else
syn keyword     sKeyword    loop for while finally
syn keyword     sKeyword    to below downto above by until
syn keyword     sKeyword    exec print play set with
syn keyword     sKeyword    exit
syn match       sOperator   "+\|*\|/\|\~\|<\|>"
syn match       sOperator   "&\|\^\|@"
syn match       sOperator   "="
syn match       sOperator   "\s-\s"
syn match       sDelim      "(\|)\|(\|\[\|\]"

syn region sComment         start=";" end="$"
syn region sBlock           start="begin" end="end" fold

hi def link sDecl Statement
hi def link sOperator Operator
hi def link sSpecial Special
hi def link sComment Comment
hi def link sKeyword Keyword
hi def link sDelim Delimiter

let b:current_syntax = "sal"
