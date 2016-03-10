setlocal commentstring=(*\ %s\ *)
setlocal iskeyword+='

let s:cm = syntastic#util#findGlobInParent('*.cm', expand('%:p:h', 1))
if s:cm !=# ''
  let s:buf = bufnr('')
  call setbufvar(s:buf, 'syntastic_sml_smlnj_args', '-m ' . syntastic#util#shescape(s:cm))
  call setbufvar(s:buf, 'syntastic_sml_smlnj_fname', '')
endif
