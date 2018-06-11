" Colors
syntax enable  	    " Enables syntax highlighting

" Alignment
set tabstop=4       " Number of visual spaces per tab

set softtabstop=4   " Number of spaces in tab when editing

set expandtab 	    " Make tabs spaces

" UI
set mouse=a
set number relativenumber 	        " Show line numbers

" Displays absolute line numbers when in insert mode
augroup numbertoggle
    autocmd!
    autocmd BufEnter,FocusGained,InsertLeave * set relativenumber
    autocmd BufLeave,FocusLost,InsertEnter   * set norelativenumber
augroup END

filetype indent on  " Load filetype-specific indent files

set wildmenu        " Visual autocomplete for commands

set showmatch       " Highlight matching parens and brackets

" Searching 
set incsearch       " Search as characters are entered

set hlsearch        " Highlight matches

" Plugins
call plug#begin('~/.vim/plugged')
Plug 'https://github.com/junegunn/fzf.vim'

call plug#end()
