" tomdoc.vim - You should really TomDoc your code.
" Author:   Jesse Cooke <http://jc00ke.com>
" Version:  0.0.1

if exists("g:loaded_tomdoc") || v:version < 700
  finish
endif
let g:loaded_tomdoc = 1
let s:templates_dir = expand("<sfile>:p:h") . "/../templates/"

function! TomDocMethod()
  let lineNumber = search('def', 'b') - 1
  exec ":" . lineNumber . "r" . s:templates_dir . "method.txt"
endfunction

function! TomDocClass()
  let lineNumber = search('class', 'b') - 1
  exec ":" . lineNumber . "r" . s:templates_dir . "class-or-module.txt"
endfunction

function! TomDocModule()
  let lineNumber = search('module', 'b') - 1
  exec ":" . lineNumber . "r" . s:templates_dir . "class-or-module.txt"
endfunction

function! TomDocConstant()
  exec ":-1r" . s:templates_dir . "constant.txt"
endfunction

function! TomDocAttrReader()
  exec ":-1r" . s:templates_dir . "attr_reader.txt"
endfunction

function! TomDocAttrWriter()
  exec ":-1r" . s:templates_dir . "attr_writer.txt"
endfunction

function! TomDocAttrAccessor()
  exec ":-1r" . s:templates_dir . "attr_accessor.txt"
endfunction