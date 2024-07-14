"===[ Theme ]==="
" set background=dark
" " Inspect $TERM instead of t_Co
" if &term =~ '256color'
" 	" Enable true (24-bit) colors instead of (8-bit) 256 colors.
" 	if has('termguicolors')
" 		let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
" 		let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"
" 		let &t_TI = ""
" 		let &t_TE = ""
" 		set termguicolors
" 		set mouse=a
" 		colorscheme catppuccin_mocha
" 	endif
" 	if expand('%:e') == 'wiki'
" 		colorscheme base16-horizon-dark
" 		let &t_TI = ""
" 		let &t_TE = ""
"         autocmd VimEnter * :set rnu!
" 	else
" 		colorscheme catppuccin_mocha
" 		let &t_TI = ""
" 		let &t_TE = ""
" 	endif
" endif

" if has('gui_running')
" 	set mouse=a
" 	set guicursor+=a:blinkon0
" 	set guifont=FiraCodeNerdFont\ 12
" 	colorscheme catppuccin_mocha
" endif

"===[ Curosr Shape ]==="
" let &t_SI = "\<Esc>[6 q"
" let &t_SR = "\<Esc>[4 q"
" let &t_EI = "\<Esc>[2 q"
