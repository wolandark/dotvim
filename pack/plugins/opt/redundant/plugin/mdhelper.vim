"redundant

" A bunch of redundant functions to work with markdown and HTML
" I use a lot of HTML in my markdowns because of rtl
"
" yes I know pandoc exists 😒 
"
" This plugin is usefull for me, ymmv!
"
" By Wolandark
" https://github.com/wolandark/redundant

function! MakeHeaderCur(lev)
	    execute '.s/^#/<h' . a:lev . '>/ | .s/$/<\/h' . a:lev . '>/'
endfunction

function! MakeHeaderAll(lev)
	execute	'%s/\v^(#.*)/\1 <\/h' . a:lev . '>/'
	execute '%s,^#,<h' . a:lev . '>'
	execute '%s/\#//g'
endfunction

function! MakeHeaderCurSmart()
    .s@^\(#\+\) \(.\+\)@\='<h'.len(submatch(1)).'>'.submatch(2).'</h'.len(submatch(1)).'>'@
endfunction

function! MakeHeaderAllSmart()
    %s@^\(#\+\) \(.\+\)@\='<h'.len(submatch(1)).'>'.submatch(2).'</h'.len(submatch(1)).'>'@
endfunction

function! MakeRTlCur()
	execute '.s,^,<div dir="rtl">, | s,$,</div>,'
endfunction

function! MakeCenterCur()
	execute '.s,^,<div align="center">, | s,$,</div>,'
endfunction

function! MakeBlock()
	execute 'normal! O```'| execute 'normal! jo```'
endfunction

function! MakeStrong()
	execute '.s,^,<strong>, | s,$,</strong>,'
endfunction

function! MakeSmall()
	execute '.s,^,<small>, | s,$,</small>,'
endfunction

function! MakeRed()
	execute '.s,^,<div style="color:red;">, | s,$,</div>,'
endfunction

function! MakeYellow()
	execute '.s,^,<div style="color:yellow;">, | s,$,</div>,'
endfunction

command! -nargs=1 MKHeaderCur call MakeHeaderCur(<args>)
command! -nargs=1 MKHeaderAll call MakeHeaderAll(<args>)
command! MKHeaderCurSmart call MakeHeaderCurSmart()
command! MKHeaderAllSmart call MakeHeaderAllSmart()
command! MKRTlCur call MakeRTlCur()
command! MKCenterCur call MakeCenterCur()
command! MKBlock call MakeBlock()
command! MKStrong call MakeStrong()
command! MKSmall call MakeSmall()
command! MKRed call MakeRed()
command! MKYellow call MakeYellow()
