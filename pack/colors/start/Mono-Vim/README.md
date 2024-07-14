# Mono-Vim
A somber monochromatic colorscheme with almost no syntax highlights

<div>
	<img src="https://github.com/wolandark/Vim-Mono/assets/107309764/dbf1bac3-3998-46ba-8fb5-f9ac085f3153" style="width:60%">
</div>

### Setup
Your `TERM` variable must report `xterm-256color`. Use a true color (termgui) capable terminal. <br>
Proper settings in `~/.vimrc` are also needed.

``` vim
set background=dark

if &term =~ '256color'
	if has('termguicolors')
		let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
		let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"
		set termguicolors
		colorscheme mono
	endif
endif
```

### Installation
#### Plug
``` lua
Plug 'wolandark/Mono-Vim'
```
#### Lazy
``` lua
{
	"wolandark/Mono-Vim",
	-- optional: activate colorscheme
	config = function()
		vim.cmd.colorscheme('mono')
	end
},

```
or use your favorite plugin manager.

### PR & issues are welcomed

Made with the excellent [vim-rnb](https://github.com/romainl/vim-rnb)
