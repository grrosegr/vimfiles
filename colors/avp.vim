" avp color scheme - forked from ir_black

set background=dark
hi clear

if exists("syntax_on")
 syntax reset
endif

let colors_name = "avp"

" General colors
hi Normal guifg=#FFCC00 guibg=black gui=NONE ctermfg=NONE ctermbg=NONE cterm=NONE
hi NonText guifg=#070707 guibg=black gui=NONE ctermfg=black ctermbg=NONE cterm=NONE

hi Cursor guifg=black guibg=white gui=NONE ctermfg=black ctermbg=white cterm=reverse
hi LineNr guifg=#6C6C6C guibg=black gui=NONE ctermfg=242 ctermbg=NONE cterm=NONE
hi CursorLineNr guifg=#5FFF00 guibg=black gui=NONE ctermfg=82 ctermbg=NONE cterm=NONE

hi VertSplit guifg=#202020 guibg=#202020 gui=NONE ctermfg=darkgray ctermbg=NONE cterm=NONE
hi StatusLine guifg=#CCCCCC guibg=#202020 gui=italic ctermfg=white ctermbg=darkgray cterm=NONE
hi StatusLineNC guifg=black guibg=#202020 gui=NONE ctermfg=blue ctermbg=darkgray cterm=NONE

hi TabLineFill guifg=#202020 guibg=#101010 ctermfg=235 ctermbg=darkgray
hi TabLine guifg=#afafaf guibg=#202020 ctermfg=248 ctermbg=235
hi TabLineSel guifg=#00df00 guibg=#000000 ctermfg=46 ctermbg=16

hi Folded guifg=#a0a8b0 guibg=#384048 gui=NONE ctermfg=NONE ctermbg=NONE cterm=NONE
hi Title guifg=#c6c3c8 guibg=NONE gui=bold ctermfg=NONE ctermbg=NONE cterm=NONE
hi Visual guifg=NONE guibg=#262D51 gui=NONE ctermfg=NONE ctermbg=NONE cterm=REVERSE

hi SpecialKey guifg=#808080 guibg=#343434 gui=NONE ctermfg=NONE ctermbg=NONE cterm=NONE

hi WildMenu guifg=green guibg=yellow gui=NONE ctermfg=black ctermbg=yellow cterm=NONE
hi PmenuSbar guifg=black guibg=white gui=NONE ctermfg=black ctermbg=white cterm=NONE
"hi Ignore guifg=gray guibg=black gui=NONE ctermfg=NONE ctermbg=NONE cterm=NONE

hi Error guifg=NONE guibg=NONE gui=undercurl ctermfg=white ctermbg=red cterm=NONE guisp=#FF6C60 " undercurl color
hi ErrorMsg guifg=white guibg=#FF6C60 gui=BOLD ctermfg=white ctermbg=red cterm=NONE
hi WarningMsg guifg=white guibg=#FF6C60 gui=BOLD ctermfg=white ctermbg=red cterm=NONE
hi LongLineWarning guifg=NONE guibg=#371F1C gui=underline ctermfg=NONE ctermbg=NONE cterm=underline

hi SpellBad guifg=#D70000 guibg=NONE gui=undercurl ctermfg=160 ctermbg=NONE cterm=underline guisp=#FF0000

" Message displayed in lower left, such as --INSERT--
hi ModeMsg guifg=black guibg=#C6C5FE gui=BOLD ctermfg=black ctermbg=cyan cterm=BOLD

if version >= 700 " Vim 7.x specific colors
 hi CursorLine guifg=NONE guibg=#121212 gui=NONE ctermfg=NONE ctermbg=NONE cterm=BOLD
 hi CursorColumn guifg=NONE guibg=#121212 gui=NONE ctermfg=NONE ctermbg=darkgray cterm=BOLD
 hi ColorColumn guibg=#444444 ctermbg=darkgray
 hi MatchParen guifg=#f6f3e8 guibg=#857b6f gui=BOLD ctermfg=white ctermbg=darkgray cterm=NONE
 hi Pmenu guifg=#f6f3e8 guibg=#444444 gui=NONE ctermfg=NONE ctermbg=NONE cterm=NONE
 hi PmenuSel guifg=#000000 guibg=#cae682 gui=NONE ctermfg=NONE ctermbg=NONE cterm=NONE
 hi Search guifg=NONE guibg=#2F2F00 gui=underline ctermfg=NONE ctermbg=NONE cterm=underline
endif

" Syntax highlighting
hi Comment guifg=#7C7C7C guibg=NONE gui=NONE ctermfg=gray ctermbg=NONE cterm=NONE
hi String guifg=#A8FF60 guibg=NONE gui=NONE ctermfg=47 ctermbg=NONE cterm=NONE
hi Number guifg=#07AADD guibg=NONE gui=NONE ctermfg=39 ctermbg=NONE cterm=NONE

hi Keyword guifg=#F8A089 guibg=NONE gui=NONE ctermfg=194 ctermbg=NONE cterm=NONE
hi PreProc guifg=#96CBFE guibg=NONE gui=NONE ctermfg=45 ctermbg=NONE cterm=NONE
hi Conditional guifg=#FFFFB6 guibg=NONE gui=NONE ctermfg=194 ctermbg=NONE cterm=NONE " if else end

hi Todo guifg=#ff0000 guibg=NONE gui=NONE ctermfg=red ctermbg=black cterm=NONE
hi Constant guifg=#99CC99 guibg=NONE gui=NONE ctermfg=cyan ctermbg=NONE cterm=NONE

hi Identifier guifg=#C6C5FE guibg=NONE gui=NONE ctermfg=cyan ctermbg=NONE cterm=NONE
hi Function guifg=#9AD5C1 guibg=NONE gui=NONE ctermfg=49 ctermbg=NONE cterm=NONE
hi Type guifg=#6FB412 guibg=NONE gui=NONE ctermfg=40 ctermbg=NONE cterm=NONE
hi Statement guifg=#FFFFB6 guibg=NONE gui=NONE ctermfg=194 ctermbg=NONE cterm=NONE

hi Special guifg=#F8A089 guibg=NONE gui=NONE ctermfg=166 ctermbg=NONE cterm=NONE
hi Delimiter guifg=#CCCCCC guibg=NONE gui=NONE ctermfg=white ctermbg=NONE cterm=NONE
hi Operator guifg=#FFFFFF guibg=NONE gui=NONE ctermfg=white ctermbg=NONE cterm=NONE

hi link Character Constant
hi link Boolean Constant
hi link Float Number
hi link Repeat Statement
hi link Label Statement
hi link Exception Statement
hi link Include PreProc
hi link Define PreProc
hi link Macro PreProc
hi link PreCondit PreProc
hi link StorageClass Special
hi link Structure Type
hi link Typedef Type
hi link Tag Special
hi link SpecialChar Special
hi link SpecialComment Special
hi link Debug Special

" Special for C
"hi cFunction guifg=#88D2A7 guibg=NONE gui=NONE ctermfg=brown ctermbg=NONE cterm=NONE
"hi cIdentifier guifg=#FF0000 guibg=NONE gui=NONE ctermfg=brown ctermbg=NONE cterm=NONE

" Special for Ruby
hi rubyRegexp guifg=#B18A3D guibg=NONE gui=NONE ctermfg=brown ctermbg=NONE cterm=NONE
hi rubyRegexpDelimiter guifg=#FF8000 guibg=NONE gui=NONE ctermfg=brown ctermbg=NONE cterm=NONE
hi rubyEscape guifg=white guibg=NONE gui=NONE ctermfg=cyan ctermbg=NONE cterm=NONE
hi rubyInterpolationDelimiter guifg=#00A0A0 guibg=NONE gui=NONE ctermfg=blue ctermbg=NONE cterm=NONE
hi rubyControl guifg=#6699CC guibg=NONE gui=NONE ctermfg=blue ctermbg=NONE cterm=NONE "and break, etc
"hi rubyGlobalVariable guifg=#FFCCFF guibg=NONE gui=NONE ctermfg=lightblue ctermbg=NONE cterm=NONE "yield
hi rubyStringDelimiter guifg=#336633 guibg=NONE gui=NONE ctermfg=lightgreen ctermbg=NONE cterm=NONE
"rubyInclude
"rubySharpBang
"rubyAccess
"rubyPredefinedVariable
"rubyBoolean
"rubyClassVariable
"rubyBeginEnd
"rubyRepeatModifier
"hi link rubyArrayDelimiter Special " [ , , ]
"rubyCurlyBlock { , , }

hi link rubyClass Keyword
hi link rubyModule Keyword
hi link rubyKeyword Keyword
hi link rubyOperator Operator
hi link rubyIdentifier Identifier
hi link rubyInstanceVariable Identifier
hi link rubyGlobalVariable Identifier
hi link rubyClassVariable Identifier
hi link rubyConstant Type


" Special for Java
" hi link javaClassDecl Type
hi link javaScopeDecl Identifier
hi link javaCommentTitle javaDocSeeTag
hi link javaDocTags javaDocSeeTag
hi link javaDocParam javaDocSeeTag
hi link javaDocSeeTagParam javaDocSeeTag

hi javaDocSeeTag guifg=#CCCCCC guibg=NONE gui=NONE ctermfg=darkgray ctermbg=NONE cterm=NONE
hi javaDocSeeTag guifg=#CCCCCC guibg=NONE gui=NONE ctermfg=darkgray ctermbg=NONE cterm=NONE
"hi javaClassDecl guifg=#CCFFCC guibg=NONE gui=NONE ctermfg=white ctermbg=NONE cterm=NONE


" Special for XML
hi link xmlTag Keyword
hi link xmlTagName Conditional
hi link xmlEndTag Identifier


" Special for HTML
hi link htmlTag Keyword
hi link htmlTagName Conditional
hi link htmlEndTag Identifier


" Special for Javascript
hi link javaScriptNumber Number


" Special for Python
hi link pythonEscape Keyword
hi link pythonStatement Statement


" Special for CSharp
hi link csXmlTag Keyword

" Special for Neomake
hi NeomakeErrorMsg guifg=#ff0000 guibg=NONE ctermfg=red ctermbg=NONE
hi NeomakeWarningMsg guifg=#ffff00 guibg=NONE ctermfg=yellow ctermbg=NONE
