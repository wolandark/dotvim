vim9script

if exists("b:current_syntax")
    finish
endif

syn match shoutCmdPrompt "\%^\$"
syn match shoutExitCodeErr "^Exit code: .*\%$"
syn match shoutExitCodeNoErr "^Exit code: 0\%$"

syn match shoutCargoPath "-->\s\+.\{-}:\d\+:\d\+" contains=shoutCargoPathNr
syn match shoutCargoPathNr ":\d\+:\d\+" contained

syn match shoutGrepPath "^\S.\{-}\S:\(\d\+:\)\{1,2}" contains=shoutGrepPathNr
syn match shoutGrepPathNr ":\(\d\+:\)\{1,2}" contained

syn match shoutPythonLocation '^\s\+File ".\{-}", line \d\+' contains=shoutPythonPath,shoutPythonNr
syn match shoutPythonPath 'File "\zs.\{-}\ze"' contained
syn match shoutPythonNr "line \zs\d\+" contained

syn match shoutError "\c^\s*error:\ze " nextgroup=shoutMsg
syn match shoutWarning "\c^\s*warning:\ze " nextgroup=shoutMsg
syn match shoutSpecialInfo '^\s\+Compiling\|Finished\|Running\s\+' nextgroup=shoutMsg
syn match shoutMsg ".*$" contained

# erlang escript
syn region shoutError matchgroup=shoutError start="^escript:" matchgroup=shoutMsg end="errors.$" contains=shoutMsg oneline
syn region shoutError matchgroup=shoutError start="^escript: exception error:" end="$" contains=shoutMsg oneline keepend
syn match shoutLocation '^\s\+in function\s\+.\{-}(.\{-}, line \d\+)' contains=shoutPath,shoutNr
syn match shoutPath '(\zs.\{-}\ze, ' contained
syn match shoutNr "line \zs\d\+" contained

syn match shoutTexWarning '^Underfull \\[hv]box (badness \d\+).*$'
syn match shoutTexError '^\s*==> .* <==$'

syn match shoutTodo "\<\(TODO\|FIXME\|XXX\):"

hi def link shoutCmdPrompt Statement
hi def link shoutPath String
hi def link shoutNr Constant

hi def link shoutCargoPath String
hi def link shoutCargoPathNr Constant
hi def link shoutGrepPath String
hi def link shoutGrepPathNr Constant
hi def link shoutPythonPath String
hi def link shoutPythonNr Constant

hi def link shoutError ErrorMsg
hi def link shoutWarning WarningMsg
hi def link shoutMsg Title
hi def link shoutSpecialInfo PreProc

hi def link shoutExitCodeNoErr Comment
hi def link shoutExitCodeErr WarningMsg

hi def link shoutTexWarning WarningMsg
hi def link shoutTexError ErrorMsg

hi def link shoutTodo Todo

b:current_syntax = "shout"
