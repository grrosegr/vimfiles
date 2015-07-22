let g:airline#themes#avp#palette = {}

let s:N1   = [ '#000000' , '#00d700' , 16  , 40  ]
let s:N2   = [ '#eeeeee' , '#005f00' , 255 , 22  ]
let s:N3   = [ '#00d700' , '#1c1c1c' , 40  , 234 ]
let g:airline#themes#avp#palette.normal = airline#themes#generate_color_map(s:N1, s:N2, s:N3)

let g:airline#themes#avp#palette.normal_modified = {
      \ 'airline_c': [ '#ffffff' , '#4e4e4e' , 231     , 239     , ''     ] ,
      \ }


let s:I1 = [ '#00005f' , '#00d7ff' , 17  , 45  ]
let s:I2 = [ '#eeeeee' , '#005fff' , 255 , 27  ]
let s:I3 = [ '#00d7ff' , '#1c1c1c' , 45  , 234 ]
let g:airline#themes#avp#palette.insert = airline#themes#generate_color_map(s:I1, s:I2, s:I3)
let g:airline#themes#avp#palette.insert_modified = {
      \ 'airline_c': [ '#ffffff' , '#4e4e4e' , 231     , 239     , ''     ] ,
      \ }


let g:airline#themes#avp#palette.replace = copy(g:airline#themes#avp#palette.insert)
let g:airline#themes#avp#palette.replace.airline_a = [ s:I2[0]   , '#af0000' , s:I2[2] , 124     , ''     ]
let g:airline#themes#avp#palette.replace_modified = g:airline#themes#avp#palette.insert_modified


let s:V1 = [ '#000000' , '#ffaf00' , 232 , 214 ]
let s:V2 = [ '#000000' , '#ff5f00' , 232 , 202 ]
let s:V3 = [ '#ffffff' , '#5f0000' , 202  , 234 ]
let g:airline#themes#avp#palette.visual = airline#themes#generate_color_map(s:V1, s:V2, s:V3)
let g:airline#themes#avp#palette.visual_modified = {
      \ 'airline_c': [ '#ffffff' , '#4e4e4e' , 231     , 239      , ''     ] ,
      \ }


let s:IA1 = [ '#4e4e4e' , '#1c1c1c' , 239 , 234 , '' ]
let s:IA2 = [ '#4e4e4e' , '#262626' , 239 , 235 , '' ]
let s:IA3 = [ '#4e4e4e' , '#303030' , 239 , 236 , '' ]
let g:airline#themes#avp#palette.inactive = airline#themes#generate_color_map(s:IA1, s:IA2, s:IA3)
let g:airline#themes#avp#palette.inactive_modified = {
      \ 'airline_c': [ '#875faf' , '' , 97 , '' , '' ] ,
      \ }


let g:airline#themes#avp#palette.accents = {
      \ 'red': [ '#d70000' , '' , 160 , ''  ]
      \ }
