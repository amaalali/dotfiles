set nocompatible              " Disable vi compatability
filetype off                  " To force plugins to load correctly required


" Load plugins before here

set t_Co=256
syntax on                         " Turn on syntax highlighting
set ruler                         " Display cursor position in buffer
" set cursorline
set showcmd                       " Display incomplete commands.
set showmode                      " Display the mode you're in.
set incsearch                     " Show match when typing
set hlsearch                      " Highlight all search matches
set laststatus=2                  " Always show status bar
set lazyredraw                    " Dont redraw between macros
set timeoutlen=500                " Time to wait for second key press

" Tab settingss
set tabstop=2                    " Global tab width.
set shiftwidth=2                 " And again, related.
set softtabstop=2
set expandtab                    " Use spaces instead of tabs

set number                        " Enable numbers
set hidden                        " Unsaved changes to buffer. :ls to see buffers. :b[n] to switch buffer
set autoindent

set wrap                          " Turn on line wrapping.
:au BufWinEnter * let w:m2=matchadd('ErrorMsg', '\%>120v.\+', -1) " Highlight error if line over 120 characters

set undofile

set list
set listchars=tab:▸\ ,eol:¬

