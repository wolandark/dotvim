let g:colorscheme_list = []
for f in split(globpath(&runtimepath, 'colors/*.vim'), '\n')
    let name = fnamemodify(f, ':t:r')
    call add(g:colorscheme_list, name)
endfor
let g:current_colorscheme_index = 0

function! NextColorscheme()
    let g:current_colorscheme_index = (g:current_colorscheme_index + 1) % len(g:colorscheme_list)
    execute 'colorscheme ' . g:colorscheme_list[g:current_colorscheme_index]
	redraw
    echo "Colorscheme: " . g:colorscheme_list[g:current_colorscheme_index]
endfunction

function! PrevColorscheme()
    let g:current_colorscheme_index = (g:current_colorscheme_index - 1 + len(g:colorscheme_list)) % len(g:colorscheme_list)
    execute 'colorscheme ' . g:colorscheme_list[g:current_colorscheme_index]
	redraw
    echo "Colorscheme: " . g:colorscheme_list[g:current_colorscheme_index]
endfunction

nnoremap <Leader>n :call NextColorscheme()<CR>
nnoremap <Leader>p :call PrevColorscheme()<CR>

