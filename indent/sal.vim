" Sal Syntax File
" Language:     SAL
" Maintainer:   avp

if exists("b:did_indent")
  finish
endif

let b:did_indent = 1
runtime indent/GenericIndent.vim
setlocal indentexpr=GenericIndent()
setlocal indentkeys==end,o,O
let b:indentStmts=''
let b:dedentStmts=''
let b:allStmts=''
call GenericIndentStmts("begin,then,else,loop,for")
call GenericDedentStmts("end,else")
call GenericAllStmts()
