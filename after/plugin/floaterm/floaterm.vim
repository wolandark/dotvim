"===[ Floaterm ]==="
let g:floaterm_autoclose = 1
nnoremap \t  :FloatermToggle<CR>
nnoremap \q :FloatermKill <CR>
nnoremap \n  :FloatermNext<CR>
nnoremap \p  :FloatermPrev<CR>

" Filemanagers
nnoremap \v :FloatermNew! vifm <CR>
nnoremap \ra :FloatermNew! ranger <CR>
" Terminal Right/Bottom
nnoremap \tr :FloatermNew --wintype=vsplit --position=right --width=0.4
nnoremap \tb :FloatermNew --wintype=split --position=bottom --height=0.2

" Run Go Files
nnoremap \rg :FloatermNew --autoclose=0 --wintype=split --position=bottom --height=0.3 go run % <Cr>
" Run Bash Files
nnoremap \rb :FloatermNew --autoclose=0 --wintype=split --position=bottom --height=0.3 bash % <CR>
" Run NodeJs Files
nnoremap \rj :FloatermNew --autoclose=0 --wintype=split --position=bottom --height=0.3 node % <CR>
" Run Python Files
nnoremap \rp :FloatermNew --autoclose=0 --wintype=split --position=bottom --height=0.3 python % <CR>


