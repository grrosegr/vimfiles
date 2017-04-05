ClangFormatAutoEnable
let g:clang_format#detect_style_file = 1

let g:neomake_cpp_enabled_makers = ['clang']
let g:neomake_cpp_clang_args = ["-I.", "-std=c++14", "-Wextra", "-Wall"]
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
  set path+=$HOME/hermes/hermes/include/
  let g:neomake_cpp_clangcheck_args = [
        \ "-p=".expand("~")."/hermes/build",
        \ '-extra-arg=-I/usr/lib/clang/3.4.2/include',
        \ '-extra-arg=-fno-color-diagnostics',
        \ ]
  let g:neomake_cpp_gcc_args = ["-p", "/home/avp/hermes/build"]
  let g:neomake_cpp_clang_args = ["-p", "/home/avp/hermes/build"]
  let g:neomake_cpp_clangtidy_args = ["-p", "/home/avp/hermes/build"]
  let g:neomake_cpp_enabled_makers = ['clangcheck']
endif
if g:gitroot =~ "osmeta"
  let g:neomake_cpp_clangcheck_args = ["-p=/Users/avp/osmeta/build/Debug/Darwin-x86_64"]
        " \ '-extra-arg=-I/Users/avp/osmeta/build/Debug/Darwin-x86_64/lib',
        " \ '-extra-arg=-I/Users/avp/osmeta/build/Debug/Darwin-x86_64/include',
        " \ '-extra-arg=-I/usr/lib/clang/3.4.2/include'
        " \ ]
  let g:neomake_cpp_enabled_makers = ['clangcheck']
endif
