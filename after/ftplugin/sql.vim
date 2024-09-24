let line_count = line('$')

if line_count > 1000 
	execute 'set colorcolumn=0'
	execute 'set rnu!'
endif

