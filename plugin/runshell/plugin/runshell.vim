" function! RunShellCommand(command)
"   " Run the command and capture the output
"   let output = system(a:command)
  
"   " Split the output into a list of lines
"   let lines = split(output, "\n")

"   " Set the quickfix list with the output lines
"   call setqflist(map(lines, '{ "filename": "", "lnum": 1, "col": 1, "text": v:val }'))

"   " Open the quickfix window
"   copen
" endfunction

" " Map the function to a command for easy use
" command! -nargs=1 RunShell call RunShellCommand(<q-args>)

function! RunShellCommand(command)
  " Expand % to the current file name
  let expanded_command = substitute(a:command, '%', expand('%:p'), 'g')
  
  " Run the expanded command and capture the output
  let output = system(expanded_command)
  
  " Split the output into a list of lines
  let lines = split(output, "\n")

  " Set the quickfix list with the output lines
  call setqflist(map(lines, '{ "filename": "", "lnum": 1, "col": 1, "text": v:val }'))

  " Open the quickfix window
  copen
endfunction

" Map the function to a command for easy use
command! -nargs=1 RunShell call RunShellCommand(<q-args>)

