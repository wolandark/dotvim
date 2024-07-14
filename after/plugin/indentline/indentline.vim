vim9script 

def ToggleIndentLine()
	if &list
		setlocal nolist
	else
		exe 'setlocal listchars=tab:\|\ ,multispace:\|' .. repeat('\ ', &sw - 1)
		#setlocal listchars=tab:\|\ ,multispace:\|.\ ,extends:>,precedes:<
		setlocal list
	endif
enddef

command! IndentLine call ToggleIndentLine()

defcompile
