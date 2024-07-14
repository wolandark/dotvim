"===[ Disable a lot of unnecessary internal plugins ]==="
let g:loaded_2html_plugin = 1
let g:loaded_getscriptPlugin = 1
let g:loaded_gzip = 1
let g:loaded_logipat = 1
let g:loaded_rrhelper = 1
let g:loaded_spellfile_plugin = 1
let g:loaded_tarPlugin = 1
let g:loaded_vimballPlugin = 1
let g:loaded_zipPlugin = 1

"===[ VimWiki Prefix ]==="
let g:vimwiki_map_prefix = '<leader>v'

"===[ Encoding ]==="
set encoding=utf-8

"===[ Leader Key ]==="
let mapleader = " "

"===[ Plugins ]==="
call plug#begin()

" Plug 'SirVer/ultisnips'
" Plug 'mhinz/vim-startify'
" Plug 'https://github.com/justinmk/vim-sneak.git'
" Plug 'sheerun/vim-polyglot'
" Plug 'lifepillar/vim-cheat40'
Plug 'ryanoasis/vim-devicons'
Plug 'wolandark/vim-live-server', {'for':['html', 'javascript', 'css']}
Plug 'jwalton512/vim-blade', {'for':['php','blade']}
Plug 'rrethy/vim-hexokinase' ", { 'do': 'make hexokinase','for':['html', 'css', 'javascript', 'php', 'blade', 'markdown', 'vimwiki', 'c', 'vim']}
Plug 'DougBeney/pickachu', {'for':['css','html']}
Plug 'voldikss/vim-floaterm'
Plug 'https://github.com/rhysd/git-messenger.vim.git'
Plug 'airblade/vim-gitgutter'
Plug 'tpope/vim-fugitive'
Plug 'catppuccin/vim', { 'as': 'catppuccin' }
Plug 'https://github.com/rhysd/clever-f.vim.git'
Plug 'https://github.com/monkoose/vim9-stargate.git'
Plug 'tpope/vim-rsi'
Plug 'tpope/vim-repeat'
Plug 'tpope/vim-eunuch'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-unimpaired'
Plug 'honza/vim-snippets', {'for':['html','css','javascript','php','blade','markdown', 'vimwiki','c']}
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'junegunn/vim-peekaboo'
Plug 'https://github.com/godlygeek/tabular.git'
Plug 'https://github.com/markonm/traces.vim.git'
Plug 'vimwiki/vimwiki'
Plug 'https://github.com/preservim/tagbar.git', {'for':['html','css','javascript','php','blade','markdown', 'vimwiki','c']}
Plug 'vim-php/phpctags', {'for':'php'}
Plug 'https://github.com/907th/vim-auto-save.git'
Plug 'neoclide/coc.nvim' ", {'branch': 'release', 'for':['html','css','javascript','php','blade','sh','c','markdown','vim']}
Plug 'iamcco/markdown-preview.nvim', { 'do': 'cd app && npx --yes yarn install', 'for':'markdown' }
Plug 'mileszs/ack.vim'
Plug 'Yggdroot/LeaderF', { 'do': ':LeaderfInstallCExtension' }
Plug 'alvan/vim-closetag', {'for':['html','css','javascript','php','blade','markdown']}
Plug 'ptzz/lf.vim'
Plug 'itchyny/lightline.vim'
Plug 'mengelbrecht/lightline-bufferline'
Plug 'fcpg/vim-farout'
Plug 'https://github.com/habamax/vim-shout.git'
Plug 'mbbill/undotree'
Plug 'junegunn/vim-after-object'
" Plug 'https://github.com/habamax/vim-ii.git'
" Plug 'ubaldot/vim-highlight-yanked'
" Plug 'chriskempson/base16-vim'
" Plug 'https://github.com/Valloric/MatchTagAlways.git', {'for':['markdown','html']}
" Plug 'tpope/vim-commentary'
" Plug 'https://github.com/tpope/vim-dadbod.git', {'for':'php'}
" Plug 'https://github.com/kristijanhusak/vim-dadbod-ui.git', {'for':'php'}
" Plug 'https://github.com/Rican7/php-doc-modded.git', {'for':'php'}
" Plug 'prettier/vim-prettier', { 'do': 'yarn install --frozen-lockfile --production', 'for':['html', 'css', 'javascript'] }
" Plug 'fcpg/vim-fahrenheit'
Plug 'https://github.com/sedm0784/vim-you-autocorrect.git'
Plug 'TaDaa/vimade'
Plug 'ron89/thesaurus_query.vim'
call plug#end()

let g:tq_enabled_backends=["mthesaur_txt"]

let g:vimade = {}
let g:vimade.fadelevel = 0.6
let g:vimade.enablesigns = 1

au! FocusLost * VimadeFadeActive
au! FocusGained * VimadeUnfadeActive

"===[ Theme ]==="
set background=dark
" Inspect $TERM instead of t_Co
if &term =~ '256color'
" 	" Enable true (24-bit) colors instead of (8-bit) 256 colors.
	if has('termguicolors')
		let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
	 	let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"
		let &t_TI = ""
		let &t_TE = ""
		set termguicolors
		set mouse=a
		colorscheme catppuccin_mocha
	endif
	if expand('%:e') == 'wiki'
		let &t_TI = ""
		let &t_TE = ""
		colorscheme retrobox
		autocmd VimEnter * :set rnu!
	endif
else
	let &t_TI = ""
	let &t_TE = ""
	colorscheme zaibatsu
endif

if has('gui_running')
	set mouse=a
	set guicursor+=a:blinkon0
	" set guifont=FiraCodeNerdFont\ 12
	set guifont=JetBrainsMono\ Nerd\ Font\ 12
	colorscheme catppuccin_mocha
endif

"===[ Curosr Shape ]==="
let &t_SI = "\<Esc>[6 q"
let &t_SR = "\<Esc>[4 q"
let &t_EI = "\<Esc>[2 q"

"===[ Auto Save ]==="
nnoremap <nowait>\a :call AutoSaveToggle()<CR>

"===[ Clipboard ]==="
set clipboard=unnamedplus,unnamed

"===[ Close Tag ]==="
let g:closetag_filenames = '*.html,*.php,*.phtml, *.md'
let g:closetag_filetypes = 'html,xhtml,phtml,php,md'
" let g:closetag_shortcut = '>'

"===[ Custom Cheat40.txt ]==="
let g:cheat40_use_default = 0

"===[ Never Leave Vim ]==="
nnoremap \w :bwipeout <CR>

"===[ MRU }==="
nnoremap \h :Leaderf mru <CR>

"===[ skeletons ]==="
augroup go
	au BufNewFile *.go 0r ~/.vim/skeleton/skeleton.go
augroup end

augroup php
	au BufNewFile *.php 0r ~/.vim/skeleton/skeleton.php
augroup end

"===[ Replace Easier ]==="
function! ReplaceParams(param1, param2)
	execute '%s/' . a:param1 . '/' . a:param2 . '/g'
endfunction

command! -nargs=* S call ReplaceParams(<f-args>)

"=== [ sneak ]==="
nmap \S <Plug>Sneak_S
let g:sneak#label = 1

"===[ Lightline Statusbar ]==="
" Syntax Item In Ststus
function! SyntaxItem()
	" let res = synIDattr(synID(line("."),col("."),1),"name")
	" return res
	return "S:" . synIDattr(synID(line("."),col("."),1),"name")
endfunction

function! HLG()
	return "H:" . synIDattr(synIDtrans(synID(line("."), col("."), 1)), "name")
endfunction

" column number
function ColumnNumber() 
	return "C:" . col(".")
endfunction

" word count
function! WordCount()
    let lines = getline(1, '$')
    let full_text = join(lines, " ")
    let words = split(full_text, '\W\+')
    let word_count = len(words)
    return "W:" . word_count
endfunction

let g:lightline = {
			\ 'colorscheme': 'catppuccin_mocha',
			\ 'active': {
			\ 'right': [ [ 'lineinfo' ], [ 'column'], [ 'percent' ], [ 'filetype' ], ['syntaxitem'], ['hlg'], ['wordcount'] , ['bufnum' ] ],
			\ 'left': [ [ 'mode' ], [ 'readonly' ], [ 'absolutepath' ], [ 'gitbranch' ] , [ 'modified' ] ],
			\ },
			\ 'component_function': {
			\ 'gitbranch': 'FugitiveHead',
			\ 'syntaxitem': 'SyntaxItem',
			\ 'columnnumber': 'ColumnNumber',
			\ 'wordcount': 'WordCount',
			\ 'hlg': 'HLG',
			\ },
			\ 'component': {
			\ 'charvaluehex': '0x%B',
			\ 'lineinfo': '%l\%L',
			\ },
			\ 'tabline': {
			\   'left': [ ['buffers'] ],
			\   'right': [ ['close'] ]
			\ },
			\ 'component_expand': {
			\   'buffers': 'lightline#bufferline#buffers'
			\ },
			\ 'component_type': {
			\   'buffers': 'tabsel'
			\ }
			\ }

let g:lightline.separator={ 'left': "\ue0b0", 'right': "\ue0b2" }
let g:lightline.subseparator={ 'left': "\ue0b1", 'right': "\ue0b3" }

let g:lightline#bufferline#enable_devicons=1
let g:lightline#bufferline#enable_nerdfont=1

"=== Seoul
let g:seoul256_background = 233

"=== RNB
nnoremap \rnb :!erb -T - % > %<.vim <CR>

"===[ Help ]==="
command! -nargs=1 -complete=help H :h <args> | only
command! -nargs=1 -complete=help Hv :vert h <args>
command! -nargs=1 -complete=help Hh :vert h <args>

" === Dict Colors
" let g:dict_popup_term_fgcolor = '240'
" let g:dict_popup_term_bgcolor = '16'
let g:dict_popup_gui_fgcolor = '#1e1e2e'
let g:dict_popup_gui_bgcolor = '#f9f9f9'

"===[ packadd ]==="
packadd comment
packadd justify
packadd matchit
packadd goyo
packadd limelight
" packadd vim-ddgpb
" packadd dict

let g:tagbar_ctags_bin = '~/.vim/uctags/bin/ctags'

command! Vimrc :edit ~/.vim/vimrc
nnoremap <leader>iV :Vimrc<CR>

set updatetime=50

nnoremap Q mmgqG`mzt
nnoremap Y y$

function SetUpForWriting()
	packadd goyo
	packadd limelight
	packadd vim-ddgpb
	packadd dict
	:Goyo
	:Limelight
	:colo farout
	:set so=50
endfunction

command! Writer call SetUpForWriting()
