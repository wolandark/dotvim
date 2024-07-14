" ===[ vimgrep additions ]==="

set grepprg=ag\ --vimgrep\ --no-heading\ --smart-case

function! Grep(...)
    return system(join([&grepprg] + a:000, ' '))
endfunction

command! -nargs=+ -complete=file_in_path -bar Grep  cgetexpr Grep(<f-args>)
command! -nargs=+ -complete=file_in_path -bar LGrep lgetexpr Grep(<f-args>)

autocmd QuickFixCmdPost [^l]* nested cwindow
autocmd QuickFixCmdPost    l* nested lwindow

