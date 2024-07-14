"===[ PHP ]==="
inoremap 4 $
inoremap $ 4

" for sql syntax highlighting in php files
let php_sql_query = 1
let php_htmlInStrings = 1

iabbrev <buffer> eol . PHP_EOL
iabbrev <buffer> ps public static
" autocmd FileType php iabbrev <buffer> ps public static
" autocmd FileType php iabbrev <buffer> eol . PHP_EOL

" Comment with \\
setlocal commentstring=/\/\ %s
" autocmd FileType php setlocal commentstring=/\/\ %s

let g:tagbar_phpctags_bin='/home/woland/.local/bin/phpctags'
let g:tagbar_phpctags_memory_limit = '512M'

"
" for trimming extra $ with phpactor
set iskeyword+=$
" autocmd FileType php set iskeyword+=$

