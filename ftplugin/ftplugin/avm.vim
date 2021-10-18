" Only do this when not done yet for this buffer
if (exists("b:did_ftplugin"))
  finish
endif
let b:did_ftplugin = 1

" Start in avm mode
let g:avm_edit = 1

nmap ` :call TodoEditToggle()<CR>

function! TodoEditToggle()
  if g:avm_edit
    let g:avm_edit = 0
    nmap <silent> l i• 
    nmap <silent> h i[  ] <ESC><LEFT><LEFT>
    nmap <silent> t i{ } 
    nmap <silent> v ro
    nmap <silent> n r/
    nmap <silent> x r 
    nmap <silent> ] :call search('[')<CR>
    nmap <silent> [ :call search('[', 'b')<CR>
    nmap > :call search('[\\|•\\|{')<CR>
    nmap < :call search('[\\|•\\|{', 'b')<CR>
  else
    let g:avm_edit = 1
    unmap l
    unmap h
    unmap t
    unmap v
    unmap n
    unmap x
    unmap ]
    unmap [
    unmap >
    unmap <
  endif
endfunction

call TodoEditToggle()
