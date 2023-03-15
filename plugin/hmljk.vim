" HMLjk_move: let u move easily and freely through a markdown document.
" Version: 1.0
" Author: Wish <https://github.com/wishrivers>
" Birth: 2023-03-15 20:53:47

if exists("g:loaded_hmljk")
    finish
endif
let g:loaded_hmljk = 1

" Keys
nnoremap gh :call hmljk#move('H')<cr>
nnoremap gm :call hmljk#move('M')<cr>
nnoremap gl :call hmljk#move('L')<cr>
nnoremap gj :call hmljk#move('J')<cr>
nnoremap gk :call hmljk#move('K')<cr>
