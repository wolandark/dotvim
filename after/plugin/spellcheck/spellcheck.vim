vim9script

autocmd VimEnter * highlight SpellBad ctermfg=Yellow ctermbg=NONE guifg=Yellow guibg=NONE

set wildmode=longest,list,full

def FixSpell()
	normal! 1z=
enddef

command! FixSpell call FixSpell()

defcompile

nnoremap gs :FixSpell<CR>
nnoremap <F6> :setlocal spell! spelllang=en_us<CR>
