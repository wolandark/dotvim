"===[ Terminal ]==="
" let g:terminal_height = -10
" set termwinsize=10x200
nnoremap <leader>' :botright terminal<CR>
tnoremap <C-j> <C-\><C-n><C-w>j
tnoremap <C-k> <C-\><C-n><C-w>k
tnoremap <C-Down> <C-\><C-n><C-w>j
tnoremap <C-Up> <C-\><C-n><C-w>k
" tnoremap <C-PageUp> :tabprevious<CR>
" tnoremap <C-PageDown> :tabnext<CR>
set shell=/bin/bash
" Clear Terminal in BG
nnoremap \l :!clear<CR><CR>

