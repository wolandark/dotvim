let line_count = line('$')

if line_count > 1000
	silent execute 'CocDisable'
	colorscheme habamax
	set rnu!
	set laststatus=0
	set showtabline=0
else
	set wrap
	set wrapmargin=2
	set textwidth=0
	set scrolloff=50
	set relativenumber!
	set foldmethod=marker
	set list
	set listchars=tab:▸\ ,trail:·
	colorscheme farout

	" packadd goyo
	" packadd limelight
	packadd vim-ddgpb
	packadd vimdict

	nnoremap ]g ]s
	nnoremap [g [s

	" :Goya
	:Limelight
	:EnableAutocorrect

	autocmd! User GoyoEnter Limelight
	autocmd! User GoyoLeave Limelight!

endif



