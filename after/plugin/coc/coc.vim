"===[Coc.nvim]==="
" let g:coc_node_path = "/usr/bin/node"

inoremap <silent><expr> <CR> coc#pum#visible() ? coc#_select_confirm() : "\<C-g>u\<CR>"
" use <tab> to trigger completion and navigate to the next complete item
function! CheckBackspace() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

inoremap <silent><expr> <Tab>
      \ coc#pum#visible() ? coc#pum#next(1) :
      \ CheckBackspace() ? "\<Tab>" :
      \ coc#refresh()
inoremap <expr><s-tab> coc#pum#visible() ? coc#pum#prev(1) : "\<c-h>"

" Enhanced <CR> for pairs
inoremap <silent><expr> <CR> coc#pum#visible() ? coc#pum#confirm()
			\: "\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"

" Disable < expansion for pairs
autocmd FileType * let b:coc_pairs_disabled = ["<"]

" on demand hover diagnostics 
nnoremap <silent> <leader>? :call CocAction('diagnosticInfo') <CR>
" refresh 
" nnoremap <silent><expr> \co coc#refresh()
 nnoremap <silent> \rc :CocRestart<CR>
"===[ Coc-Explorer ]==="
" set up coc-explorer to open in the current directory
let g:coc_explorer_global_mirror = 0
let g:coc_explorer_disable_default_keybindings = 1
let g:coc_explorer_global_root = 'current'
nnoremap <leader>e <Cmd>CocCommand explorer<CR>

"===[ Coc Global Extensions ]==="
let g:coc_global_extensions = [
  \ 'coc-tsserver',
  \ 'coc-sh',
  \ 'coc-explorer',
  \ 'coc-vimlsp',
  \ 'coc-html',
  \ 'coc-css',
  \ 'coc-pyright',
  \ 'coc-pairs',
  \ 'coc-emmet',
  \ 'coc-marketplace'
\ ]

" GoTo code navigation
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)

" Use `[g` and `]g` to navigate diagnostics
" Use `:CocDiagnostics` to get all diagnostics of current buffer in location list
nmap <silent> [g <Plug>(coc-diagnostic-prev)
nmap <silent> ]g <Plug>(coc-diagnostic-next)
"
" List code actions available for the current buffer
nmap <leader>ca  <Plug>(coc-codeaction)

nnoremap <silent> K :call ShowDocumentation()<CR>
function! ShowDocumentation()
  if CocAction('hasProvider', 'hover')
    call CocActionAsync('doHover')
  else
    call feedkeys('K', 'in')
  endif
endfunction

" Add `:Format` command to format current buffer
command! -nargs=0 Format :call CocActionAsync('format')
" Formatting selected code
vmap <leader>f  <Plug>(coc-format-selected)

"=== coc-pairs
"=== disable characters for a specified filetypes
autocmd FileType markdown let b:coc_pairs_disabled = ['txt']

"===[ Coc-Snippets ]==="
"Use <C-l> for trigger snippet expand.
" imap <C-l> <Plug>(coc-snippets-expand)

" "Use <C-j> for select text for visual placeholder of snippet.
" vmap <C-j> <Plug>(coc-snippets-select)

" "Use <C-j> for jump to next placeholder, it's default of coc.nvim
" let g:coc_snippet_next = '<c-j>'

" "Use <C-k> for jump to previous placeholder, it's default of coc.nvim
" let g:coc_snippet_prev = '<c-k>'

" "Use <C-j> for both expand and jump (make expand higher priority.)
imap <C-j> <Plug>(coc-snippets-expand-jump)

" "Use <leader>x for convert visual selected code to snippet
" xmap <leader>x  <Plug>(coc-convert-snippet)











" Navigations
" nmap <Leader>o <Plug>(coc-definition)
" nmap <Leader>O <Plug>(coc-type-definition)
" nmap <Leader>I <Plug>(coc-implementation)
" nmap <Leader>R <Plug>(coc-references)

" Hover
" nmap K :call <SID>show_documentation()<CR>
" function! s:show_documentation()
" 	if (index(['vim','help'], &filetype) >= 0)
" 		execute 'h '.expand('<cword>')
" 	else
" 		call CocAction('doHover')
" 	endif
" endfunction
" Use K to show documentation in preview window

