"===[ Startify ]==="
" " let g:startify_padding_left = 3
" let g:startify_disable_at_vimenter = 1
" let g:startify_custom_header = [
" 			\'                        ',
" 			\'    ██╗    ██╗██╗███╗   ███╗',
" 			\'    ██║    ██║██║████╗ ████║',
" 			\'    ██║ █╗ ██║██║██╔████╔██║',
" 			\'    ██║███╗██║██║██║╚██╔╝██║',
" 			\'    ╚███╔███╔╝██║██║ ╚═╝ ██║',
" 			\'     ╚══╝╚══╝ ╚═╝╚═╝     ╚═╝',
" 			\ ]
" let g:startify_custom_footer = split(system('fortune'), '\n') + ['','']
" " let g:startify_custom_footer =
"            " \ ['RIP Bram Moolenaar', '', 'Wim, an opionated Vim configuration', 'By Wolandark', ]
" "Bookmarks. Syntax is clear.add yours
" let g:startify_bookmarks = [ {'B': '~/.bashrc'},{'V': '~/.vim/vimrc'}]
" let g:startify_lists = [
"       \ { 'type': 'bookmarks' , 'header': ['   Bookmarks']      } ,
"       \ { 'type': 'files'     , 'header': ['   Recent'   ]      } ,
"       \ { 'type': 'sessions'  , 'header': ['   Sessions' ]      } ,
"       \ { 'type': 'commands'  , 'header': ['   Commands' ]      } ,
"       \ ]

" hi StartifyBracket ctermfg=240
" hi StartifyFile    ctermfg=147
" hi StartifyFooter  ctermfg=240
" hi StartifyHeader  ctermfg=114
" hi StartifyNumber  ctermfg=215
" hi StartifyPath    ctermfg=245
" hi StartifySlash   ctermfg=240
" hi StartifySpecial ctermfg=240

" nnoremap <leader>i :Startify <CR> 

