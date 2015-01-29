" Sal Syntax File
" Language:     SAL
" Maintainer:   avp

if exists("b:current_syntax")
  finish
end

syn case match

syn keyword  sKeyword    begin end
syn keyword  sKeyword    if then else
syn keyword  sKeyword    loop for while finally
syn keyword  sKeyword    from to below downto above by until
syn keyword  sKeyword    exit
syn keyword  sSpecial    exec print play set with define return
syn keyword  sDecl       function variable
syn match    sOperator   "+\|*\|/\|\~\|<\|>"
syn match    sOperator   "&\|\^\|@"
syn match    sOperator   "="
syn match    sOperator   "\s-\s"
syn match    sDelim      "(\|)\|(\|\[\|\]\|{\|}"

syn match	   sNumbers	display transparent "\<\d\|\.\d" contains=sNumber
syn match	   sNumber	display contained "\d\+\(u\=l\{0,2}\|ll\=u\)\>"
syn match    sFloat   display contained "\d\+\.\d*\(e[-+]\=\d\+\)\=[fl]\="
syn match    sFloat   display contained "\.\d\+\(e[-+]\=\d\+\)\=[fl]\=\>"

syn region   sComment start=";" end="$"
syn region   sBlock   start="begin" end="end" fold transparent
syn region   sList    start="{" end="}" fold transparent
syn region   sString  start=+L\="+ skip=+\\\\\|\\"+ end=+"+ contains=cSpecial,cSpecialError,@Spell

syn case ignore
syn match    sPitch "[a-g][sfn]\?[1-6]"
syn match    sPitch "[a-g][1-6][sfn]\?"
syn match    sPitch "p[0-9]\+"
syn case match

hi def link sDecl     Statement
hi def link sOperator Operator
hi def link sSpecial  Special
hi def link sComment  Comment
hi def link sKeyword  Keyword
hi def link sDelim    Delimiter
hi def link sString   String
hi def link sNumbers  Number
hi def link sNumber   Number
hi def link sFloat    Number
hi def link sPitch    Number
hi def link sFunction Function

let b:current_syntax = "sal"
