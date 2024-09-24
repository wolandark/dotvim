vim9script

def CodeRunner()
	silent !clear
    if &ft ==# 'python'
        execute 'RPy'
    elseif &ft ==# 'sh'
        execute 'RB'
	elseif &ft ==# 'javascript'
		execute 'RJs'
	elseif &ft ==# 'php'
		execute 'RPHP'
	elseif &ft ==# 'go'
		execute 'RGo'
	elseif &ft ==# 'perl'
		execute 'RPl'
    endif
enddef

# Execute From Vim
# Define several language specific Run commands 
augroup custom_commands
    au!
    au FileType python command! RPy :!python3 %
    au FileType sh command! RB :!bash %
	au FileType javascript command! RJs :!node %
	au FileType go command! RGo :!go run %
	au FileType php command! RPHP :!php %
	au FileType perl command! RPl :!perl %
augroup end

command! CodeRunner call CodeRunner()
nnoremap <F12> :CodeRunner<CR>

# Compile and Run 
def CompileAndRun()
  var current_file = expand('%')
  var file_name = fnamemodify(current_file, ':t:r')
  var compile_cmd = 'gcc ' .. current_file .. ' -o ' .. file_name

  # Compile the C code
  var compile_result = system(compile_cmd)

  if v:shell_error != 0
    echo "Compilation failed:\n" .. compile_result
    return
  endif

  # Run the compiled binary in a terminal buffer
  execute 'terminal ./' .. file_name
enddef

command! CompileAndRun call CompileAndRun()

nnoremap <F8> :CompileAndRun<CR>

defcompile




# def CompileAndRun()
#   var current_file = expand('%')
#   var file_name = fnamemodify(current_file, ':t:r')
#   var compile_cmd = 'gcc ' .. current_file .. ' -o ' .. file_name .. ' && ./' .. file_name
#   # call system(compile_cmd
#   call '!'.compile_cmd
# enddef

# defcompile

# command! CompileAndRun call CompileAndRun()
# nnoremap <F8> :call CompileAndRun()<CR>
