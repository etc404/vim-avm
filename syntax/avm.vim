" Vim syntax file
" Language:	.avm files
" Maintainer:	Etc404 <etc404@pm.me>
" Last Change:	2021 Aug 11

if exists("b:current_syntax")
  finish
endif

syn region xHeaderBlock start=/\[/ end=/\]/
syn region xTodoBlock start=/{/ end=/}/
syn match xComment "#.*$"
syn match xInt "[0-9]"
syn match xList "•"
syn region xBold start="<" end=">"
syn match xPipe "[|\-_]"

hi def link xHeaderBlock    Constant
hi def link xTodoBlock      Todo
hi def link xComment        Comment
hi def link xInt            String
hi def link xList           PreProc
hi def link xBold           PreProc
hi def link xPipe           PreProc

let b:current_syntax = "avm"

" vim: ts=8 sw=2
