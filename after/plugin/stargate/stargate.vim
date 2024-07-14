" For 1 character to search before showing hints
noremap \f <Cmd>call stargate#OKvim(1)<CR>

" For 2 consecutive characters to search
noremap \F <Cmd>call stargate#OKvim(2)<CR>

let g:stargate_name = 'Master of The Arcane Art of Vim, I Beg Thee'
" Instead of 1 or 2 you can use any higher number, but it isn't much practical
" and it is easier to use `/` or `?` for that
