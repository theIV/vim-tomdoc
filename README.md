# vim-tomdoc

Some helper functions to add TomDoc templates to your Ruby code.

* TomDocMethod
* TomDocClassOrModule
* TomDocConstant
* TomDocAttrReader
* TomDocAttrWriter
* TomDocAttrAccessor

## What I have so far

  function! TomDocize()
    let lineNumber = search('def', 'b')
    exec ":" . lineNumber - 1 . "r~/tomdoc.txt"                                                                    
  endfunction
