let g:neomake_cpp_enabled_makers = ['gcc']
let g:neomake_cpp_clang_args = ["-I.", "-std=c++11", "-Wextra", "-Wall"]
silent! let g:hgroot = system('hg root')
silent! let g:gitroot = system('git rev-parse --show-toplevel')
if g:hgroot =~ "fbsource"
  let g:neomake_cpp_gcc_args = ["-I.", '-Wno-pragma-once-outside-header']
  let g:neomake_cpp_clang_args = ["-I.", '-Wno-pragma-once-outside-header']
  let g:neomake_cpp_clangtidy_args = ["-I.", '-Wno-pragma-once-outside-header']
  let g:neomake_cpp_clangcheck_args = ["-I.", '-Wno-pragma-once-outside-header']
  let g:neomake_cpp_gcc_maker = {
        \ 'cwd': '%:p:h',
        \ }
  let g:neomake_cpp_clang_maker = {
        \ 'cwd': '/home/avp/fbsource/fbcode',
        \ }
endif
if g:gitroot =~ "hermes"
  let g:neomake_cpp_clangcheck_args = [
        \ "-p=/home/avp/hermes/build",
        \ '-extra-arg=-I/usr/lib/clang/3.4.2/include'
        \ ]
  let g:neomake_cpp_gcc_args = ["-p", "/home/avp/hermes/build"]
  let g:neomake_cpp_clang_args = ["-p", "/home/avp/hermes/build"]
  let g:neomake_cpp_clangtidy_args = ["-p", "/home/avp/hermes/build"]
  let g:neomake_cpp_enabled_makers = ['clangcheck']
endif
