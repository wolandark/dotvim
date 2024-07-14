vim9script

# Use dictionary for Vimwiki settings
var wiki = {
    'path': '~/vimwiki/',
    'nested_syntaxes': {
        'php': 'php',
        'bash': 'bash',
        'python': 'python',
        'c++': 'cpp',
        'javascript': 'javascript',
        'awk': 'awk'
    }
}

# Set global variables using legacy VimL syntax with g: prefix
g:vimwiki_global_ext = 0
g:vimwiki_root_dir = '~/vimwiki/'
g:vimwiki_list = [wiki]
g:vimwiki_map_prefix = '<leader>v'

# Use legacy VimL for mappings
nmap <leader>vw <Plug>VimwikiIndex

# Define custom command for diary index
command! Diary VimwikiDiaryIndex

# Use augroup and autocmds in legacy VimL
augroup vimwikigroup
    autocmd!
    # Automatically update links on read diary
    autocmd BufRead,BufNewFile diary.wiki VimwikiDiaryGenerateLinks
augroup end

