set concealcursor=n
set conceallevel=3
hi Asterisks NONE
hi AsteriskBold term=reverse ctermfg=10 ctermbg=3 guifg=#232530 guibg=#efb993
syn match Asterisks contained "**" conceal
syn match AsteriskBold "\\\@<!\*\*[^"*|]\+\*\*" contains=Asterisks

