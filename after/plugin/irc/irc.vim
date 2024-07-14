vim9script

def Irc()
    exe "IIJoin irc.libera.chat #vim"
    wincmd o
    exe "IIJoin irc.libera.chat #archlinux"
    wincmd L
    exe "IIJoin irc.libera.chat ##programming"
    wincmd h
    exe "IIJoin irc.libera.chat #linux"
enddef
command! Irc Irc()
defcompile
