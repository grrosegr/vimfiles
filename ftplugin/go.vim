let g:go_highlight_functions = 1
let g:go_highlight_methods = 1
let g:go_highlight_fields = 1
let g:go_highlight_structs = 1
let g:go_highlight_interfaces = 1
let g:go_highlight_operators = 1
let g:go_highlight_build_constraints = 1
let g:go_fmt_command = "goimports"
let g:go_fmt_autosave = 1

nmap <localleader>r :<C-u>GoRun %<cr>
nmap <localleader>b <Plug>(go-build)
nmap <localleader>e <Plug>(go-rename)

let g:go_highlight_trailing_whitespace_error = 0
