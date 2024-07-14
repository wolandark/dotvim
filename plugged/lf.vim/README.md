lf.vim
======

[lf](https://github.com/gokcehan/lf) integration in vim and neovim

![lf.vim](https://user-images.githubusercontent.com/56180050/100401445-70299b00-3094-11eb-945a-7caa04de696d.png)

Installation
------------

Install it with your favorite plugin manager. Example with vim-plug:

        Plug 'ptzz/lf.vim'

Then, add the vim-floaterm dependency:

        Plug 'voldikss/vim-floaterm'

**Note:** lf.vim should be loaded before vim-floaterm to override vim-floaterm's lf wrapper.

To install with vim pack you would need to enforce the loading order, by making both packages optional:

        ~$ ls .vim/pack/plugins/opt/
        lf.vim	vim-floaterm

And adding them manually in `.vimrc`:

        packadd! vim-floaterm
        packadd! lf.vim

**Note:** for [some](https://stackoverflow.com/questions/67930489/native-vim-plugin-load-order) [reason](https://github.com/vim/vim/issues/7056) the loading is reversed

How to use it
-------------

The default shortcut for opening lf is `<leader>f` (\f by default).
To disable the default key mapping, add this line in your .vimrc or init.vim: `let g:lf_map_keys = 0`.
Then you can add a new mapping with this line: `map <leader>f :Lf<CR>`.

To set the floating window width and height, set `g:lf_width` and `g:lf_height` accordingly. If not found, it will default to `g:floaterm_width` and `g:floaterm_height`.

The command for opening lf in the current file's directory is `:Lf`.
When opening (default 'l' and '\<right\>') a file from the lf window,
vim will open the selected file in the current window. To open the selected
file in a new tab instead use `:LfNewTab`.

(Note that the lf `open` command is required to return to the originating vim session.
E.g. the `edit` command opens a new process of $EDITOR.)

For opening lf in the current workspace, run `:LfWorkingDirectory`.
Vim will open the selected file in the current window.
`:LfWorkingDirectoryNewTab` will open the selected file in a new tab instead.

For changing the current directory via lf, run `:Lfcd`or run `:Lflcd` for the current window.

List of commands:
```vim
" Change directory with lf via cd or lcd
Lfcd
Lflcd

Lf " Open current file by default
LfCurrentFile " Default Lf behaviour
LfCurrentDirectory
LfWorkingDirectory

" Always open in new tabs
LfNewTab
LfCurrentFileNewTab
LfCurrentDirectoryNewTab
LfWorkingDirectoryNewTab

" Open tab if it exists or in new tab if it does not
LfCurrentFileExistingOrNewTab
LfCurrentDirectoryExistingOrNewTab
LfWorkingDirectoryExistingOrNewTab
```

The old way to make vim open the selected file in a new tab was to add
`let g:lf_open_new_tab = 1` in your .vimrc or init.vim. That way is still
supported but deprecated.

### Opening lf instead of netrw when you open a directory
If you want to see vim opening lf when you open a directory (ex: nvim ./dir or :edit ./dir), please add this in your .(n)vimrc.
```vim
let g:NERDTreeHijackNetrw = 0 " Add this line if you use NERDTree
let g:lf_replace_netrw = 1 " Open lf when vim opens a directory
```

### Setting a custom lf command
By default lf is opened with the command `lf` but you can set an other custom command by setting the `g:lf_command_override` variable in your .(n)vimrc.

For instance if you want to display the hidden files by default you can write:
```vim
let g:lf_command_override = 'lf -command "set hidden"'
```
