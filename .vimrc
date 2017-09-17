set nocompatible              " Disable vi compatability
filetype off                  " To force plugins to load correctly required

" Vim-plug and plugins
call plug#begin('~/.vim/plugged')
  Plug 'ctrlpvim/ctrlp.vim'
  Plug 'tpope/vim-surround'
  Plug 'tpope/vim-rails'
  Plug 'tpope/vim-commentary'
  " turn on after looking into running vim rspec with tmux
  " Plug 'thoughtbot/vim-rspec' 
call plug#end()
" Load plugins before here

" Plugin config
"" Make CtrlP use ag for listing the files. Way faster and no useless files.
let g:ctrlp_user_command = 'ag %s -l --hidden -g ""'
" let g:ctrlp_user_command = 'ag %s -l --hidden --nocolor -g ""'
let g:ctrlp_use_caching = 0
" Keymapping for CtrlP 
nmap <leader>p :CtrlP<cr>
" END Plugin config

let mapleader = "\<Space>"        " Use the space key as our leader

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

" set list
" set listchars=tab:▸\,eol:¬

" Custom Keymappings
nmap <leader>vi :tabe $MYVIMRC<cr>    " Open vimrc in vim tab
nmap <leader>so :source $MYVIMRC<cr>  " Source $MYVIMRC settings

" Navigation
" nmap j gj                         " Navigate wrapped lines in sensable way 
" nmap k gk                         " Navigate wrapped lines in sensable way 

nmap <leader>a ^
nmap <leader>z $
nmap <leader>h :echo 'hi'<cr>

imap jk <esc>
imap kj <esc>
imap jf <esc>
imap fj <esc>

