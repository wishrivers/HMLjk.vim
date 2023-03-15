" HMLjk_move: let u move easily and freely through a markdown document.
" Version: 1.0
" Author: Wish <https://github.com/wishrivers>
" Birth: 2023-03-15 21:19:11

" CONSTANT
" direction: UP/DOWN
let s:UP = 0
let s:DOWN = 1

" FUNCTION
function! s:lookup_header(direction, start)
    " direction: 0-Up, 1-Down 2023-03-15 16:16:22
    let l:cur = a:start
    let l:max = line("$")

    " search next header
    let l:next = a:direction == s:UP ? l:cur - 1 : l:cur + 1
    while 0 < l:next && l:next <= l:max && getline(l:next)[0] != '#'
        let l:next = a:direction == s:UP ? l:next - 1 : l:next + 1
    endwhile

    return l:next
endfunction
 
function! hmljk#move(type)
    " H: begin, M: middle, L: end; K/J: prev/next header 2023-03-15 16:36:54

    " only support: '# Header' First Line and '.md' File Type
    if getline("1")[0] != '#' && expand('%:e') != 'md'
        echo "only support '.md' file"
        return
    endif

    " 1. Lookup prev/next Header
    let l:cur = line(".")
    if a:type == 'H'
        let l:goto = s:lookup_header(s:UP, l:cur) + 1
    elseif a:type == 'M'
        let l:goto = ( s:lookup_header(s:UP, l:cur) + s:lookup_header(s:DOWN, l:cur) ) / 2
    elseif a:type == 'L'
        let l:goto = s:lookup_header(s:DOWN, l:cur) - 1
    elseif a:type == 'J'
        let l:goto = s:lookup_header(s:DOWN, l:cur)
    elseif a:type == 'K'
        let l:goto = s:lookup_header(s:UP, l:cur)
    endif

    " 2. goto
    exec ":"..l:goto
endfunction
