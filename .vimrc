"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"""VIMRC JESchoett
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""" => General
"""""""""""""""""""""""""""""""""""
"""Set the commands to save in history default number is 20.
set history=1000

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""" => Commands
"""""""""""""""""""""""""""""""""""
"""Auto Remove Tailing Space
autocmd BufWritePre * :%s/\s\+$//e

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""" => VIM user interface
"""""""""""""""""""""""""""""""""""
"""Set line numbers on
set number

"""Enable cursor highlighting
set cursorline
"""Enable Syntax highlighting
syntax on
set syntax=markdown

"""Display some info
set ruler

"""Set cursor line and column highlight colors
"highlight CursorLine ctermfg=0 ctermbg=252 cterm=bold guifg=#2e3440 guibg=#2e3440 g
highlight CursorLine cterm=bold ctermbg=NONE ctermfg=6

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""" => Search
"""""""""""""""""""""""""""""""""""
"""ignore case in searchpattern
set ignorecase
"""be smart in case of case
set smartcase
set showmatch
set hlsearch
set incsearch

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""" => Text, tab and indent related
"""""""""""""""""""""""""""""""""""
"""Set tab/shift width to 4 spaces.
set shiftwidth=4
set tabstop=4

"""Use space characters instead of tabs.
set expandtab

"""Use autoindent
set autoindent

"""Allows pasting of text
set paste

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""" => Files, backups and undo
"""""""""""""""""""""""""""""""""""
" Turn backup off, since most stuff is in git etc. anyway...
set nobackup
set nowb
set noswapfile

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""" => Hotkeys in VI
"""""""""""""""""""""""""""""""""""
"""vimdiff: springe zum nächsten Diff:
map <F7> <Esc>[c
"""vimdiff: springe zum vorigen Diff:
map <F8> <Esc>]c

"""Comment out in COBOL
map <F10> <Esc>7\|R*<Esc>i <Esc>
map <F11> <Esc>7\|R*<Esc>i <Esc>

"""Bash Comment
map <F12> <Esc>i### JE<C-R>=strftime("%y%m%d")<CR> ### <Esc>16hj

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""" => Statuslines
"""""""""""""""""""""""""
"""Setting a line for COB Files at 73 characters {
"""https://stackoverflow.com/questions/5998374/if-filetype-tex

"""Enable type file detection
filetype detect

"echom &filetype
if (&filetype == 'cobol')
    " Highlight column
    set colorcolumn=73
    highlight ColorColumn ctermfg=0 ctermbg=6 cterm=bold guifg=#2E3440 guibg=#88C0D0
endif
"}
"""

"""""""""""""""""""""""""
"""Bottom status line{
"""Clear status line when vimrc is reloaded.
set statusline=

"""Status line left side.
set statusline+=\ %F\ %M\ %Y\ %R

"""Use a divider to separate the left side from the right side.
set statusline+=%=

"""Status line right side.
set statusline+=\ ascii:\ %b\ row:\ %l\ col:\ %c\ percent:\ %p%%

"""Show the status on the second to last line.
set laststatus=2

"""Change active status line color (Nord theme)
highlight StatusLine ctermfg=0 ctermbg=6 cterm=bold guifg=#2E3440 guibg=#88C0D0 gui=

"""Change inactive status line color
highlight StatusLineNC ctermfg=8 ctermbg=236 guifg=#4C566A guibg=#3B4252
"}
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
