vim9script

g:alt_enabled = 1
g:alt_keymap = 'persian'

def SetPersianKeymapAndCursorColor()
    set keymap=persian
	silent !echo -ne "\033]12;cyan\007"
	redraw!
	autocmd VimLeave * silent !echo -ne "\033]112\007"
enddef

def SetBackToEng()
    set keymap=
	silent !echo -ne "\033]112\007"
	redraw!
enddef

def CallToggleKeymap()
    if g:alt_enabled
        call ToggleKeymap()
    endif
enddef

def ToggleKeymap()
    if &keymap == ''
        execute 'setlocal keymap=' .. g:alt_keymap
            silent !echo -ne "\033]12;cyan\007"
            redraw!
            autocmd VimLeave * silent !echo -ne "\033]112\007"
    else
        set keymap= 
            silent !echo -ne "\033]112\007"
            redraw!
    endif
enddef

def ListKeymapFiles()
    :Explore $VIMRUNTIME/keymap/
enddef

defcompile

inoremap <C-p> <C-o>:SwitchKeymap<CR>
nnoremap <C-p> :SwitchKeymap<CR>

command! SwitchKeymap call CallToggleKeymap()
command! SetPersian call SetPersianKeymapAndCursorColor()
command! SetEng call SetBackToEng()
command! ListKeymapFiles call ListKeymapFiles()
