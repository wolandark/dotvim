set nowrap
set textwidth=80
set scrolloff=50
set relativenumber!
set foldmethod=marker
set list
set listchars=tab:▸\ ,trail:·
colorscheme farout

packadd goyo
packadd limelight
packadd vim-ddgpb
packadd vimdict

nnoremap ]g ]s
nnoremap [g [s
nnoremap <F2> :Dict <CR>
nnoremap <F3> :DDGV <CR>

" :Goya
:Limelight
:EnableAutocorrect

autocmd! User GoyoEnter Limelight
autocmd! User GoyoLeave Limelight!

