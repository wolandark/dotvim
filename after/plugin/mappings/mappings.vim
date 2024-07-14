"===[ Custom Mappings ]==="

" Switch Buffers
nnoremap <PageUp> :bn<Cr>
nnoremap <PageDown> :bp<CR>
nnoremap <Del> :bd<CR>

" Border Around 
nnoremap <leader>\ :.!toilet -w 200 -f term -F border<CR>

" nnoremap <leader>T :tabnew file <CR>
" nnoremap <leader>mk :mkview <CR>

"adding empty line above and below cursor
nnoremap <leader>S :normal! O<ESC>jo<ESC>kzzk<CR>
nnoremap <leader>[ :normal! O<ESC>j
nnoremap <leader>] :normal! o<ESC>k

"Quick save and source 
nnoremap <nowait><leader>w :w!<CR>
nnoremap <leader>so :w<CR>:source %<CR>

nmap <leader>k :m .-2<CR>
nmap <leader>j :m .+1<CR>
vnoremap K :m .-2<CR>gv=gv
vnoremap J :m .+1<CR>gv=gv

inoremap <nowait> jj <ESC>

" VimPlug
nnoremap <leader>pli :PlugInstall<CR>
nnoremap <leader>plc :PlugClean<CR>
nnoremap <leader>plu :PlugUpdate<CR>
nnoremap <leader>plg :PlugUpgrade<CR>

"===[ Split Navigation  ]==="
set splitbelow splitright
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l
nnoremap <C-LEFT> <C-w>h
nnoremap <C-DOWN> <C-w>j
nnoremap <C-UP> <C-w>k
nnoremap <C-RIGHT> <C-w>l

nnoremap <leader>R <C-w>R  "rotate window up/left
nnoremap <leader>r <C-w>r  "rotate window down/right

"shift arrows to resize splits
nnoremap <s-Right> :vertical resize +5 <CR>
nnoremap <s-LEFT> :vertical resize -5 <CR>
nnoremap <s-UP> :resize +5 <CR>
nnoremap <s-DOWN> :resize -5 <CR>

"Alt arrows to go to next/previous tab
" nnoremap <M-Left> :tabprevious<CR>
" nnoremap <M-Right> :tabnext<CR>

"Keybindings for tab navigation with leader and number
" nnoremap <leader>1 1gt
" nnoremap <leader>2 2gt
" nnoremap <leader>3 3gt
" nnoremap <leader>4 4gt
" nnoremap <leader>5 5gt
" nnoremap <leader>6 6gt
" nnoremap <leader>7 7gt
" nnoremap <leader>8 8gt
" nnoremap <leader>9 9gt
" nnoremap <leader>0 :tablast<CR>
" nnoremap <leader>x :tabclose<CR>
" nnoremap <leader>tm :tabmove<CR>

" FZF 🙂 
nnoremap \c :Colors<CR>
" nnoremap <nowait><leader>b :Buffers<CR>
" nnoremap <nowait><leader>ff :Files<CR>
" nnoremap <nowait><leader>W :Windows<CR>
" nnoremap <nowait><leader>h :History<CR>
" nnoremap <nowait><leader>hc :History:<CR>
" nnoremap <nowait><leader>rg :Rg <CR>
" nnoremap <nowait><leader>li :Lines <CR>
" nnoremap <nowait><leader>bli :BLines <CR>
" nnoremap <nowait><leader>ju :Jumps <CR>
" nnoremap <nowait><leader>ma :Marks <CR>
" nnoremap <nowait><leader>M :Maps <CR>
" nnoremap <nowait><leader>sn :Snippets <CR>
" nnoremap <nowait><leader>com :Commands <CR>
" nnoremap <nowait><leader>ag :Ag <CR>
" nnoremap <nowait><leader>tag :Tags <CR>

" Tabular
if exists(":Tabularize")
	vnoremap \tb :Tabularize /\|<CR> 
	vnoremap \ta :Tabularize /
endif

" Enuch
nnoremap <nowait><leader>ch :Chmod +x <CR>
" nnoremap <nowait><leader>suw :SudoWrite <CR>
" nnoremap <nowait><leader>sue :SudoEdit <CR>
" nnoremap <nowait><leader>rm :Remove <CR>
" nnoremap <nowait><leader>del :Delete! <CR>
" nnoremap <nowait><leader>mv :Move 
" nnoremap <nowait><leader>dup :Duplicate 
" nnoremap <nowait><leader>mkd :Mkdir

"===[ Live Server ]==="
" nnoremap <F2> :StartBrowserSync <CR>
" nnoremap <F3> :KillBrowserSync <CR>

nnoremap <silent><ESC> <ESC>:noh<CR><ESC>
